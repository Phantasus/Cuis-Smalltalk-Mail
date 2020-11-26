'From Squeak5.3 of 3 March 2020 [latest update: #19431] on 20 April 2020 at 10:05:47 pm'!
Stream subclass: #MailAddressTokenizer
	instanceVariableNames: 'cachedToken text pos'
	classVariableNames: 'CSNonAtom CSParens CSSpecials'
	poolDictionaries: ''
	category: 'Network-RFC822'!
!MailAddressTokenizer commentStamp: '<historical>' prior: 0!
Divides an address into tokens, as specified in RFC 822.  Used by MailAddressParser.!


!MailAddressTokenizer methodsFor: 'initialization' stamp: 'ls 9/12/1998 20:13'!
initialize: aString
	text := aString.
	pos := 1.! !


!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:53'!
atEnd
	^self peek == nil! !

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:51'!
next
	| ans |
	cachedToken ifNil: [ ^self nextToken ].
	ans := cachedToken.
	cachedToken := nil.
	^ans! !

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:53'!
peek
	cachedToken ifNil: [ cachedToken := self nextToken. ].
	
	^cachedToken	! !


!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:51'!
atEndOfChars
	^pos > text size! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 4/1/2015 23:41'!
nextAtom
	| start end |
	start := pos.
	pos := text indexOfAnyOf: self class nonAtomSet startingAt: start ifAbsent: [ text size + 1].
	end := pos - 1.
	^MailAddressToken
		type: #Atom
		text: (text copyFrom: start to: end)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:52'!
nextChar
	self atEndOfChars ifTrue: [ ^nil ].
	pos := pos + 1.
	^text at: (pos-1)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 2/27/2017 00:18'!
nextComment
	| start nestLevel paren |
	start := pos.
	pos := pos + 1.
	nestLevel := 1.

	[ nestLevel > 0 ] whileTrue: [
		pos := text indexOfAnyOf: self class parenthesesSet startingAt: pos.
		pos = 0 ifTrue: [ 
			self error: 'unterminated comment.  ie, more (''s than )''s' ].

		paren := self nextChar.
		paren = $( ifTrue: [ nestLevel := nestLevel + 1 ] ifFalse: [ nestLevel := nestLevel - 1 ]].
	^ MailAddressToken type: #Comment
		text: (text copyFrom: start to: pos - 1)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 2/27/2017 00:38'!
nextDomainLiteral
	| start end |
	start := pos.
	end := text indexOf: $] startingAt: start.
	end = 0 ifTrue: [
		"not specified"
		self error: 'saw [ without a matching ]' ].

	pos := end+1.

	^MailAddressToken
		type: #DomainLiteral
		text: (text copyFrom: start to: end)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:51'!
nextQuotedString
	| res c |
	res := WriteStream on: String new.
	res nextPut: self nextChar.   "record the starting quote"
	[ self atEndOfChars ] whileFalse: [
		c := self nextChar.
		c = $\ ifTrue: [
			res nextPut: c.
			res nextPut: self nextChar ]
		ifFalse: [
			c = $" ifTrue: [
				res nextPut: c.
				^MailAddressToken type: #QuotedString  text: res contents ]
			ifFalse: [
				res nextPut: c ] ] ].

	"hmm, never saw the final quote mark"
	^MailAddressToken type: #QuotedString  text: (res contents, '"')! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:44'!
nextSpecial
	| c |
	c := self nextChar.
	^MailAddressToken type: c  text: c asString.! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 4/1/2015 23:42'!
nextToken
	| c |
	self skipSeparators.
	c := self peekChar.
	c ifNil: [ ^nil ].
	c = $( ifTrue: [ ^self nextComment ].
	c = $" ifTrue: [ ^self nextQuotedString ].
	c = $[ ifTrue: [ ^self nextDomainLiteral ].
	(self class specialsSet includes: c) ifTrue: [ ^self nextSpecial ].
	^self nextAtom! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:15'!
peekChar
	^text at: pos ifAbsent: [ nil ]! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 4/1/2015 19:44'!
skipSeparators
	pos := text indexOfAnyOf: CharacterSet nonSeparators  startingAt: pos  ifAbsent: [ text size + 1 ].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MailAddressTokenizer class
	instanceVariableNames: ''!

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'ul 4/1/2015 23:41'!
cleanUp: aggressive

	CSParens := CSSpecials := CSNonAtom := nil! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'ul 5/18/2018 12:45'!
nonAtomSet
	"Create a ByteCharacterSet to ensure quick parsing of the email address string, which must be a ByteString (UTF-8 encoded)"

	^CSNonAtom ifNil: [
		CSNonAtom := CharacterSet new
			"Atom characters as defined in RFC 2822 3.2.4"
			addAll: ($A to: $Z);
			addAll: ($a to: $z);
			addAll: ($0 to: $9);
			addAll: '!!#$%&''*+-/=?^_`{|}~';
			"RFC 6531 allows characters with value > 127 encoded as UTF-8, which means values between 128 and 255 may appear as part of atoms."
			addAll: ((Character value: 128) to: (Character value: 255));
			byteComplement ]! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'ul 4/1/2015 23:39'!
parenthesesSet

	^CSParens ifNil: [ CSParens:= CharacterSet newFrom: '()' ]! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'ul 4/1/2015 23:39'!
specialsSet

	^CSSpecials ifNil: [ CSSpecials := CharacterSet newFrom: '()<>@,;:\".[]' ]! !


!MailAddressTokenizer class methodsFor: 'instance creation' stamp: 'ls 9/12/1998 20:54'!
forString: aString
	^super basicNew initialize: aString! !

!MailAddressTokenizer class methodsFor: 'instance creation' stamp: 'ls 9/13/1998 01:34'!
tokensIn: aString
	"return a collection of the tokens in aString"
	^(self forString: aString) upToEnd! !
