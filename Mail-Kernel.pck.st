'From Cuis 5.0 [latest update: #4579] on 26 May 2021 at 10:40:32 am'!
'Description Provides mail envelope reading and writing

Author: Josef Philip Bernhart (jpb)
License: MIT'!
!provides: 'Mail-Kernel' 1 57!
SystemOrganization addCategory: 'Mail-Kernel-Tests'!
SystemOrganization addCategory: 'Mail-Kernel'!


!classDefinition: #MailMessageHeader category: 'Mail-Kernel'!
Association subclass: #MailMessageHeader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailMessageHeader class' category: 'Mail-Kernel'!
MailMessageHeader class
	instanceVariableNames: ''!

!classDefinition: #MailAddressTokenizer category: 'Mail-Kernel'!
Stream subclass: #MailAddressTokenizer
	instanceVariableNames: 'cachedToken text pos'
	classVariableNames: 'CSNonAtom CSParens CSSpecials'
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailAddressTokenizer class' category: 'Mail-Kernel'!
MailAddressTokenizer class
	instanceVariableNames: ''!

!classDefinition: #MailAddressParserTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailAddressParserTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailAddressParserTest class' category: 'Mail-Kernel-Tests'!
MailAddressParserTest class
	instanceVariableNames: ''!

!classDefinition: #MailDateStreamerTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailDateStreamerTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailDateStreamerTest class' category: 'Mail-Kernel-Tests'!
MailDateStreamerTest class
	instanceVariableNames: ''!

!classDefinition: #MailLineStreamerTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailLineStreamerTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailLineStreamerTest class' category: 'Mail-Kernel-Tests'!
MailLineStreamerTest class
	instanceVariableNames: ''!

!classDefinition: #MailMessageHeaderTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailMessageHeaderTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailMessageHeaderTest class' category: 'Mail-Kernel-Tests'!
MailMessageHeaderTest class
	instanceVariableNames: ''!

!classDefinition: #MailMessageIdDefaultBuilderTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailMessageIdDefaultBuilderTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailMessageIdDefaultBuilderTest class' category: 'Mail-Kernel-Tests'!
MailMessageIdDefaultBuilderTest class
	instanceVariableNames: ''!

!classDefinition: #MailMessageStreamerTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailMessageStreamerTest
	instanceVariableNames: 'usedClass fixtures'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailMessageStreamerTest class' category: 'Mail-Kernel-Tests'!
MailMessageStreamerTest class
	instanceVariableNames: ''!

!classDefinition: #MailMessageTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MailMessageTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailMessageTest class' category: 'Mail-Kernel-Tests'!
MailMessageTest class
	instanceVariableNames: ''!

!classDefinition: #MaildirRepositoryTest category: 'Mail-Kernel-Tests'!
TestCase subclass: #MaildirRepositoryTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MaildirRepositoryTest class' category: 'Mail-Kernel-Tests'!
MaildirRepositoryTest class
	instanceVariableNames: ''!

!classDefinition: #MailTestFixtures category: 'Mail-Kernel-Tests'!
Object subclass: #MailTestFixtures
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel-Tests'!
!classDefinition: 'MailTestFixtures class' category: 'Mail-Kernel-Tests'!
MailTestFixtures class
	instanceVariableNames: ''!

!classDefinition: #MailAddressParser category: 'Mail-Kernel'!
Object subclass: #MailAddressParser
	instanceVariableNames: 'tokens addresses storeNames curAddrTokens'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailAddressParser class' category: 'Mail-Kernel'!
MailAddressParser class
	instanceVariableNames: ''!

!classDefinition: #MailAddressToken category: 'Mail-Kernel'!
Object subclass: #MailAddressToken
	instanceVariableNames: 'type text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailAddressToken class' category: 'Mail-Kernel'!
MailAddressToken class
	instanceVariableNames: ''!

!classDefinition: #MailBrowser category: 'Mail-Kernel'!
Object subclass: #MailBrowser
	instanceVariableNames: 'mailSelectionIndex mailRepository recordsList recordsListFetchedAt newMailMessage mailSender'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailBrowser class' category: 'Mail-Kernel'!
MailBrowser class
	instanceVariableNames: ''!

!classDefinition: #MailMessage category: 'Mail-Kernel'!
Object subclass: #MailMessage
	instanceVariableNames: 'body headers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailMessage class' category: 'Mail-Kernel'!
MailMessage class
	instanceVariableNames: ''!

!classDefinition: #MailRecord category: 'Mail-Kernel'!
Object subclass: #MailRecord
	instanceVariableNames: 'identifier repository'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailRecord class' category: 'Mail-Kernel'!
MailRecord class
	instanceVariableNames: ''!

!classDefinition: #MaildirRecord category: 'Mail-Kernel'!
MailRecord subclass: #MaildirRecord
	instanceVariableNames: 'createdAt flags mailContents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MaildirRecord class' category: 'Mail-Kernel'!
MaildirRecord class
	instanceVariableNames: ''!

!classDefinition: #MailRegistry category: 'Mail-Kernel'!
Object subclass: #MailRegistry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailRegistry class' category: 'Mail-Kernel'!
MailRegistry class
	instanceVariableNames: ''!

!classDefinition: #MailRepository category: 'Mail-Kernel'!
Object subclass: #MailRepository
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailRepository class' category: 'Mail-Kernel'!
MailRepository class
	instanceVariableNames: ''!

!classDefinition: #MaildirRepository category: 'Mail-Kernel'!
MailRepository subclass: #MaildirRepository
	instanceVariableNames: 'repositoryDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MaildirRepository class' category: 'Mail-Kernel'!
MaildirRepository class
	instanceVariableNames: ''!

!classDefinition: #MailSender category: 'Mail-Kernel'!
Object subclass: #MailSender
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailSender class' category: 'Mail-Kernel'!
MailSender class
	instanceVariableNames: ''!

!classDefinition: #MailStreamer category: 'Mail-Kernel'!
Object subclass: #MailStreamer
	instanceVariableNames: 'currentStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailStreamer class' category: 'Mail-Kernel'!
MailStreamer class
	instanceVariableNames: ''!

!classDefinition: #MailDateStreamer category: 'Mail-Kernel'!
MailStreamer subclass: #MailDateStreamer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailDateStreamer class' category: 'Mail-Kernel'!
MailDateStreamer class
	instanceVariableNames: ''!

!classDefinition: #MailLineStreamer category: 'Mail-Kernel'!
MailStreamer subclass: #MailLineStreamer
	instanceVariableNames: 'lineNumber linePosition pedanticMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailLineStreamer class' category: 'Mail-Kernel'!
MailLineStreamer class
	instanceVariableNames: ''!

!classDefinition: #MailMessageStreamer category: 'Mail-Kernel'!
MailStreamer subclass: #MailMessageStreamer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailMessageStreamer class' category: 'Mail-Kernel'!
MailMessageStreamer class
	instanceVariableNames: ''!

!classDefinition: #MessageIdBuilder category: 'Mail-Kernel'!
Object subclass: #MessageIdBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MessageIdBuilder class' category: 'Mail-Kernel'!
MessageIdBuilder class
	instanceVariableNames: ''!

!classDefinition: #MailMessageIdStyle1Builder category: 'Mail-Kernel'!
MessageIdBuilder subclass: #MailMessageIdStyle1Builder
	instanceVariableNames: 'domainName time additionalData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Kernel'!
!classDefinition: 'MailMessageIdStyle1Builder class' category: 'Mail-Kernel'!
MailMessageIdStyle1Builder class
	instanceVariableNames: ''!


!MailMessageHeader commentStamp: '<historical>' prior: 0!
I represent a mail message header as defined in standards like in RFC 5322!

!MailAddressTokenizer commentStamp: '<historical>' prior: 0!
Divides an address into tokens, as specified in RFC 822.  Used by MailAddressParser.!

!MailMessageIdDefaultBuilderTest commentStamp: '<historical>' prior: 0!
Tests different message-id generation styles!

!MailAddressParser commentStamp: '<historical>' prior: 0!
Parse mail addresses.  The basic syntax is:

	addressList _ MailAddressParser addressesIn: aString

This currently only returns the bare addresses, but it could also return a list of the address "source codes".  For example, if you give it "Joe <joe@foo>, <jane>", it will currently return a list ('joe@foo' 'jane').  It would be nice to also get a list ('Joe <joe@foo>'  '<jane>').!

!MailAddressToken commentStamp: '<historical>' prior: 0!
a single token from an RFC822 mail address.  Used internally in MailAddressParser!

!MailBrowser commentStamp: '<historical>' prior: 0!
A model for browsing mail!

!MailMessage commentStamp: '<historical>' prior: 0!
I represent a Internet mail or news message as defined in RFC 5322, which does not include media types (MIME types), attachments, pictures or similiar additions!

!MailRecord commentStamp: '<historical>' prior: 0!
Represents a record within a mail message repository, it knows how to read itself from the repository!

!MaildirRecord commentStamp: '<historical>' prior: 0!
Represents a mail record within a maildir on-disk repository.!

!MailRegistry commentStamp: '<historical>' prior: 0!
A registry for the mail kernel, it contains global shared utility functionalities!

!MailRepository commentStamp: '<historical>' prior: 0!
Represents a store for mail messages.!

!MaildirRepository commentStamp: '<historical>' prior: 0!
Reads mails from a maildir repository, a Maildir repository is an on-disk directory which contains directories cur/, new/ and tmp/ for storing mails.

See https://web.archive.org/web/19971012032244/http://www.qmail.org/qmail-manual-html/man5/maildir.html
and the current "formal" specification: https://cr.yp.to/proto/maildir.html
!

!MailSender commentStamp: '<historical>' prior: 0!
Represents a mechanism, which is able to send mail.!

!MailStreamer commentStamp: '<historical>' prior: 0!
Baseclass for "streamers" (classes which work on streams and do reading and writing operations) in relation to internet mail messages (also known as E-Mail)!

!MailLineStreamer commentStamp: '<historical>' prior: 0!
This streamer reads or writes lines of a mail message as defined in RFC 5322. It wraps lines, which are longer than 78 characters, everything it writes out is encoded in US-ASCII.!

!MailMessageStreamer commentStamp: '<historical>' prior: 0!
Streamer for reading and writing E-Mail message envelopes according to RFC 5322!

!MessageIdBuilder commentStamp: '<historical>' prior: 0!
Represents a builder for message-ids, as some systems use UUIDs, Matt Curtin / Jamie Zawinski styled IDs or other means, it could be interesting for people to provide a different implementation for a message-id generation mechanism, not that it's expected that this will happen often.!

!MailMessageIdStyle1Builder commentStamp: '<historical>' prior: 0!
Builds message-ids as recommended by https://datatracker.ietf.org/doc/html/draft-ietf-usefor-message-id-01!

!MailAddressToken methodsFor: 'printing' stamp: 'ls 9/12/1998 20:40'!
printOn: aStream
	aStream nextPut: $[.
	aStream nextPutAll: self type asString.
	aStream nextPut: $|.
	aStream nextPutAll: self text.
	aStream nextPut: $].! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 16:24:09'!
is: queryName
	^#canBeStoredIntoMailMessage = queryName or: [ super is: queryName ]! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 16:58:02'!
isDestinationAddressField
	"Returns true if the header is according to the RFC 5322 a destination address field (see https://tools.ietf.org/html/rfc5322#section-3.6.3)"
	^#('To' 'Cc' 'Bcc') includes: self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/28/2021 16:36:17'!
isIdentificationField
	"Returns true if the header is according to the RFC 5322 an identification field (see https://tools.ietf.org/html/rfc5322#section-3.6.4)"
	^#('Message-ID' 'In-Reply-To' 'References') includes: self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 17:08:31'!
isInformationalField
	"Returns true if the header is according to the RFC 5322 an identification field (see https://tools.ietf.org/html/rfc5322#section-3.6.5)"
	^#('Subject' 'Comments' 'Keywords') includes: self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 18:11:05'!
isOptionalField
	"Returns true if the field is 'optional' according to the RFC5322 (See https://tools.ietf.org/html/rfc5322#section-3.6.8). Extensions are optional fields, like MIME"
	^(self isDestinationAddressField
		or: [ self isOriginationDateField | self isInformationalField ]
		or: [ self isOriginatorField | self isIdentificationField ]
		or: [ self isResentField ]
		or: [ self isTraceField ]) not! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 17:58:38'!
isOriginationDateField
	"Returns true if the field is the origination date field (See https://tools.ietf.org/html/rfc5322#section-3.6.1)"
	
	^'Date' = self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 16:56:16'!
isOriginatorField
	"Returns true if the header is according to the RFC 5322 an originator field (see https://tools.ietf.org/html/rfc5322#section-3.6.2)"
	^#('From' 'Sender' 'Reply-To') includes: self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 17:10:41'!
isResentField
	"Returns true if the header is according to the RFC 5322 an identification field (see https://tools.ietf.org/html/rfc5322#section-3.6.6)"
	^#(
		'Resent-Date' 'Resent-From' 'Resent-Sender'
		'Resent-To' 'Resent-Cc' 'Resent-Bcc'
		'Resent-Message-Id'
	) includes: self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 17:21:47'!
isTraceField
	"Returns true if the header is according to the RFC 5322 a trace field (see https://tools.ietf.org/html/rfc5322#section-3.6.7)"
	^#('Return-Path' 'Received') includes: self key asString! !

!MailMessageHeader methodsFor: 'testing' stamp: 'jpb 4/27/2021 18:15:01'!
isUnstructuredField
	"Returns true if the field has no syntax of how it's supposed to look like according to https://tools.ietf.org/html/rfc5322#section-2.2.1"
	
	| cheapTest |
	
	cheapTest _ #( 'Subject' 'Comments' ) includes: self key asString.
	
	cheapTest ifTrue: [ ^true ].
	
	^self isOptionalField! !

!MailMessageHeader methodsFor: 'accessing' stamp: 'jpb 4/28/2021 16:34:49'!
key: newKey
	"Assigns a new field name, is converted for more pleasant reading before assignment"
	
	super key: (self class findHeaderNameByString: newKey asString)! !

!MailMessageHeader class methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 16:34:03'!
findHeaderNameByString: aString
	"Returns a normalized header name by the given string"
	| normalizedName |
	
	normalizedName _ self findNormalizedHeaderNameByString: aString.
	
	'Message-Id' = normalizedName ifTrue: [ ^'Message-ID' ].
	
	^normalizedName ! !

!MailMessageHeader class methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 16:30:13'!
findNormalizedHeaderNameByString: aString
	"Returns a normalized header name by the given string"
	| actualKey foundSeparator |
	
	foundSeparator _ true.
	actualKey _ String streamContents: [:contentStream |
		aString do: [:keyChar |
			foundSeparator
				ifTrue: [ contentStream nextPut: keyChar asUppercase ]
				ifFalse: [ 	contentStream nextPut: keyChar asLowercase ].
				
			foundSeparator  _ keyChar = $-.		
		]
	].

	^actualKey ! !

!MailAddressTokenizer methodsFor: 'initialization' stamp: 'jpb 4/23/2021 09:45:45'!
initializeWith: aString
	text _ aString.
	pos _ 1.! !

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:53'!
atEnd
	^self peek == nil! !

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:51'!
next
	| ans |
	cachedToken ifNil: [ ^self nextToken ].
	ans _ cachedToken.
	cachedToken _ nil.
	^ans! !

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:53'!
peek
	cachedToken ifNil: [ cachedToken _ self nextToken. ].
	
	^cachedToken	! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:51'!
atEndOfChars
	^pos > text size! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 4/1/2015 23:41'!
nextAtom
	| start end |
	start _ pos.
	pos _ text indexOfAnyOf: self class nonAtomSet startingAt: start ifAbsent: [ text size + 1].
	end _ pos - 1.
	^MailAddressToken
		type: #Atom
		text: (text copyFrom: start to: end)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:52'!
nextChar
	self atEndOfChars ifTrue: [ ^nil ].
	pos _ pos + 1.
	^text at: (pos-1)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 2/27/2017 00:18'!
nextComment
	| start nestLevel paren |
	start _ pos.
	pos _ pos + 1.
	nestLevel _ 1.

	[ nestLevel > 0 ] whileTrue: [
		pos _ text indexOfAnyOf: self class parenthesesSet startingAt: pos.
		pos = 0 ifTrue: [ 
			self error: 'unterminated comment.  ie, more (''s than )''s' ].

		paren _ self nextChar.
		paren = $( ifTrue: [ nestLevel _ nestLevel + 1 ] ifFalse: [ nestLevel _ nestLevel - 1 ]].
	^ MailAddressToken type: #Comment
		text: (text copyFrom: start to: pos - 1)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 2/27/2017 00:38'!
nextDomainLiteral
	| start end |
	start _ pos.
	end _ text indexOf: $] startingAt: start.
	end = 0 ifTrue: [
		"not specified"
		self error: 'saw [ without a matching ]' ].

	pos _ end+1.

	^MailAddressToken
		type: #DomainLiteral
		text: (text copyFrom: start to: end)! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:51'!
nextQuotedString
	| res c |
	res _ WriteStream on: String new.
	res nextPut: self nextChar.   "record the starting quote"
	[ self atEndOfChars ] whileFalse: [
		c _ self nextChar.
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
	c _ self nextChar.
	^MailAddressToken type: c  text: c asString.! !

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ul 4/1/2015 23:42'!
nextToken
	| c |
	self skipSeparators.
	c _ self peekChar.
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
	pos _ text indexOfAnyOf: CharacterSet nonSeparators  startingAt: pos  ifAbsent: [ text size + 1 ].! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'jpb 5/5/2021 13:38:12'!
newAtomSet
	"Create a ByteCharacterSet to ensure quick parsing of the email address string, which must be a ByteString (UTF-8 encoded)"

	^CharacterSet new
		"Atom characters as defined in RFC 2822 3.2.4"
		addAll: ($A to: $Z);
		addAll: ($a to: $z);
		addAll: ($0 to: $9);
		addAll: '!!#$%&''*+-/=?^_`{|}~';
		"RFC 6531 allows characters with value > 127 encoded as UTF-8, which means values between 128 and 255 may appear as part of atoms."
		addAll: ((Character asciiValue: 128) to: (Character asciiValue: 255));
		yourself! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'jpb 4/23/2021 10:20:55'!
nonAtomSet
	"Create a ByteCharacterSet to ensure quick parsing of the email address string, which must be a ByteString (UTF-8 encoded)"

	^CSNonAtom ifNil: [		CSNonAtom _ self newAtomSet	 	complement ]! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'jpb 4/25/2021 23:15:07'!
parenthesesSet

	^CSParens ifNil: [ CSParens _ CharacterSet newFrom: '()' ]! !

!MailAddressTokenizer class methodsFor: 'class initialization' stamp: 'ul 4/1/2015 23:39'!
specialsSet

	^CSSpecials ifNil: [ CSSpecials _ CharacterSet newFrom: '()<>@,;:\".[]' ]! !

!MailAddressTokenizer class methodsFor: 'instance creation' stamp: 'jpb 4/23/2021 09:45:45'!
forString: aString
	^super basicNew initializeWith: aString! !

!MailAddressTokenizer class methodsFor: 'instance creation' stamp: 'ls 9/13/1998 01:34'!
tokensIn: aString
	"return a collection of the tokens in aString"
	^(self forString: aString) upToEnd! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 20:22:29'!
setUp
	usedClass _ MailAddressParser ! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/21/2021 22:51:35'!
testReadingDomainNames3
	| addresses |
	
	addresses _ usedClass domainNamesIn: 'Mary Smith <mary@x.test>, jdoe@example.org, Who? <one@y.test>'.
	
	self assert: 3 equals: addresses size.
	self assert: 'x.test' equals: (addresses at: 1).
	self assert: 'example.org' equals: (addresses at: 2).
	self assert: 'y.test' equals: (addresses at: 3).! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/21/2021 22:52:06'!
testReadingDomainNames4
	| addresses |
	
	addresses _ usedClass domainNamesIn: '"Joe Q. Public" <john.q.public@example.com>'.
	
	self assert: 1 equals: addresses size.
	self assert: 'example.com' equals: (addresses at: 1).
! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/21/2021 22:52:36'!
testReadingDomainNames5
	| addresses |
	
	addresses _ usedClass domainNamesIn: '<boss@nil.test>, "Giant; \"Big\" Box" <sysservices@example.net>'.
	
	self assert: 2 equals: addresses size.
	self assert: 'nil.test' equals: (addresses at: 1).
	self assert: 'example.net' equals: (addresses at: 2).
! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/21/2021 22:53:22'!
testReadingDomainNames6
	| addresses |
	
	addresses _ usedClass domainNamesIn: 'Undisclosed recipients:;'.
	
	self assert: 0 equals: addresses size.! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/21/2021 22:49:10'!
testReadingMailAddressDomains1
	| domains |
	"Taken from https://tools.ietf.org/html/rfc5322#appendix-A.6.1"
	domains _ usedClass domainNamesIn: 'Mary Smith <@node.test:mary@example.net>, , jdoe@test  . example'.
	
	self assert: 2 equals: domains size.
	self assert: '@node.test:mary@example.net' equals: (domains at: 1).
	self assert: 'test.example' equals: (domains at: 2).! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/21/2021 22:50:32'!
testReadingMailAddressDomains2
	| domains |
	domains _ usedClass domainNamesIn: 'John Doe <jdoe@machine.example>'.
	
	self assert: 1 equals: domains size.
	self assert: 'machine.example' equals: domains first.! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 20:26:16'!
testReadingRfcExample1
	| addresses |
	
	addresses _ usedClass addressesIn: 'John Doe <jdoe@machine.example>'.
	
	self assert: 1 equals: addresses size.
	self assert: 'jdoe@machine.example' equals: addresses first.! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 20:29:56'!
testReadingRfcExample2
	| addresses |
	
	addresses _ usedClass addressesIn: 'Mary Smith <mary@x.test>, jdoe@example.org, Who? <one@y.test>'.
	
	self assert: 3 equals: addresses size.
	self assert: 'mary@x.test' equals: (addresses at: 1).
	self assert: 'jdoe@example.org' equals: (addresses at: 2).
	self assert: 'one@y.test' equals: (addresses at: 3).! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 20:36:27'!
testReadingRfcExample3
	| addresses |
	
	addresses _ usedClass addressesIn: '<boss@nil.test>, "Giant; \"Big\" Box" <sysservices@example.net>'.
	
	self assert: 2 equals: addresses size.
	self assert: 'boss@nil.test' equals: (addresses at: 1).
	self assert: 'sysservices@example.net' equals: (addresses at: 2).
! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 20:37:14'!
testReadingRfcExample4
	| addresses |
	
	addresses _ usedClass addressesIn: '"Joe Q. Public" <john.q.public@example.com>'.
	
	self assert: 1 equals: addresses size.
	self assert: 'john.q.public@example.com' equals: (addresses at: 1).
! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 08:13:57'!
testReadingRfcExample5
	| addresses |
	
	addresses _ usedClass addressesIn: 'A Group:Ed Jones <c@a.test>,joe@where.test,John <jdoe@one.test>;'.
	
	self assert: 3 equals: addresses size.
	self assert: 'c@a.test' equals: (addresses at: 1).
	self assert: 'joe@where.test' equals: (addresses at: 2).
	self assert: 'jdoe@one.test' equals: (addresses at: 3).! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 23:42:48'!
testReadingRfcExample6
	| addresses |
	
	addresses _ usedClass addressesIn: 'Undisclosed recipients:;'.
	
	self assert: 0 equals: addresses size.! !

!MailAddressParserTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 08:22:31'!
testReadingRfcExample7
	| addresses |
	"Taken from https://tools.ietf.org/html/rfc5322#appendix-A.6.1"
	addresses _ usedClass addressesIn: 'Mary Smith <@node.test:mary@example.net>, , jdoe@test  . example'.
	
	self assert: 2 equals: addresses size.
	self assert: '@node.test:mary@example.net' equals: (addresses at: 1).
	self assert: 'jdoe@test.example' equals: (addresses at: 2).! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 11:58:23'!
newReaderOn: aString
	^usedClass on: aString readStream! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 11:57:44'!
setUp
	usedClass _ MailDateStreamer.! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 23:19:09'!
testReadingDateFormat1
	| reader expected |
	
	reader _ self newReaderOn: 'April 5, 1982'.
	
	expected _ Date year: 1982 month: 4 day: 5. 
	
	self assert: expected equals: reader nextDate.	
	self assert: expected equals: (usedClass readDateFrom: 'April 5, 1982' readStream)! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 23:19:21'!
testReadingDateFormat2
	| reader expected |
	
	reader _ self newReaderOn: '5 April 1982'.
	
	expected _ Date year: 1982 month: 4 day: 5. 
	
	self assert: expected equals: reader nextDate.	
	self assert: expected equals: (usedClass readDateFrom: '5 April 1982' readStream)! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 23:19:27'!
testReadingDateFormat3
	| reader expected |
	
	reader _ self newReaderOn: '4/5/82'.
	
	expected _ Date year: 82 month: 4 day: 5. 
	
	self assert: expected equals: reader nextDate.	
	self assert: expected equals: (usedClass readDateFrom: '4/5/82' readStream)! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 23:19:32'!
testReadingDateFormat4
	| reader expected |
	
	reader _ self newReaderOn: 'Tue, November 14, 1989'.
	
	expected _ Date year: 1989 month: 11 day: 14. 
	
	self assert: expected equals: reader nextDate.	
	self assert: expected equals: (usedClass readDateFrom:  'Tue, November 14, 1989' readStream)! !

!MailDateStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 19:29:53'!
testReadingTimeFormat1
	| reader expected |
	
	reader _ self newReaderOn: 'Thu, 22 Jun 2000 14:17:47 -500'.
	
	expected _ DateAndTime year: 2000 month: 6 day: 22 hour: 19 minute: 17 second: 47. 
	
	self assert: expected equals: reader nextDateAndTime.	
	self assert: expected equals: (usedClass readTimeFrom:  'Thu, 22 Jun 2000 14:17:47 -500' readStream)! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 14:46:14'!
setUp
	usedClass _ MailLineStreamer ! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 15:41:35'!
testReading
	| streamer lines |
	lines _ #(
		'My first line'
		'My second line'
		'3rd line'
	).
	streamer _ usedClass on: (String crlfString join: lines) readStream.
	
	self assert: 'My first line' equals: streamer next.
	self assert: streamer atEnd not.
	
	self assert: 'My second line' equals: streamer next.
	self assert: streamer atEnd not.
	
	self assert: '3rd line' equals: streamer next.
	self assert: streamer atEnd.! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 16:17:10'!
testReadingEmpty
	| streamer |
	streamer _ usedClass on: '' readStream.
	
	self assert: streamer atEnd.
	self assert: '' equals: streamer next.
	self assert: streamer atEnd.! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:18:01'!
testReadingEmptyLines
	| streamer lines |
	lines _ {
		String crlfString.
		String crlfString.
		String crlfString.
		String crlfString.
	}.
	streamer _ usedClass on: ('' join: lines) readStream.
	
	self assert: streamer atEnd not.
	self assert: '' equals: streamer next.

	self assert: streamer atEnd not.
	self assert: '' equals: streamer next.
	
	self assert: streamer atEnd not.
	self assert: '' equals: streamer next.

	self assert: streamer atEnd not.
	self assert: '' equals: streamer next.

	self assert: streamer atEnd.! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 12:53:54'!
testReadingFoldedLine
	| streamer lines |
	lines _ #(
		'My first line'
		' which is folded'
		' and two lines'
		'Not folded line'
	).
	streamer _ usedClass on: (String crlfString join: lines) readStream.
	
	self assert: 'My first line which is folded and two lines' equals: streamer next.
	self assert: streamer atEnd not.
	
	self assert: 'Not folded line' equals: streamer next.
	self assert: streamer atEnd.
	! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 16:14:26'!
testReadingWithError1
	| streamer lines |
	lines _ #(
		'My first line'
		'My seÄcond line'
		'3rd line'
	).
	streamer _ usedClass on: (String crlfString join: lines) readStream.
	
	self assert: 'My first line' equals: streamer next.
	self assert: streamer atEnd not.
	
	self should: [ streamer next ] raise: Error.
	self assert: streamer atEnd not.
	! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 21:25:25'!
testWriteEmpty
	| streamer content |
	content _ '' writeStream.
	streamer _ usedClass on: content.
	
	streamer nextPut: ''.
	
	self assert: String crlfString equals: content contents.! !

!MailLineStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 21:25:33'!
testWriteFullLine
	| streamer content lineText |
	content _ '' writeStream.
	streamer _ usedClass on: content.
	
	lineText _ '' join: ((1 to: 78) collect: [:x| 'X' ]).
	
	streamer nextPut: lineText.
	
	self assert: lineText , String crlfString equals: content contents.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 16:31:00'!
setUp
	usedClass _ MailMessageHeader ! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 16:39:57'!
testCreating
	| header |
	header _ usedClass new.
	
	header key: 'from'.
	header value: 'Jane Doe <jane.doe@example.com>'.
	
	self assert: 'From' equals: header key.
	self assert: 'Jane Doe <jane.doe@example.com>' equals: header value.
	! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 16:40:34'!
testCreating2
	| header |
	header _ usedClass new.
	
	header key: 'sender'.
	header value: 'Jane Doe <jane.doe@example.com>'.
	
	self assert: 'Sender' equals: header key.
	self assert: 'Jane Doe <jane.doe@example.com>' equals: header value.
	! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 16:41:07'!
testCreating3
	| header |
	header _ usedClass new.
	
	header key: 'rePly-to'.
	header value: 'Jane Doe <jane.doe@example.com>'.
	
	self assert: 'Reply-To' equals: header key.
	self assert: 'Jane Doe <jane.doe@example.com>' equals: header value.
	! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 16:33:50'!
testCreatingEmpty
	| header |
	header _ usedClass new.
	
	self assert: header key isNil.
	self assert: header value isNil.
	! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:03:04'!
testDestinationAddressTesting
	| header |
	header _ usedClass key: 'to' value: ''.
	
	self assert: header isDestinationAddressField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'cc' value: ''.
	self assert: header isDestinationAddressField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'bcc' value: ''.
	self assert: header isDestinationAddressField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:03:29'!
testIdentificationFieldTesting
	| header |
	header _ usedClass key: 'Message-ID' value: ''.
	
	self assert: header isIdentificationField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'In-reply-To' value: ''.
	self assert: header isIdentificationField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'referenceS' value: ''.
	self assert: header isIdentificationField.
	self assert: header isUnstructuredField not.	
	self assert: header isOptionalField not.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:04:20'!
testInformationalFieldTesting
	| header |
	header _ usedClass key: 'subject' value: ''.
	self assert: header isInformationalField.
	self assert: header isUnstructuredField.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'comments' value: ''.
	self assert: header isInformationalField.
	self assert: header isUnstructuredField.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'keyworDs' value: ''.
	self assert: header isInformationalField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:04:45'!
testOptionalFieldTesting
	| header |
	header _ usedClass key: 'Content-Type' value: 'text/foo; charset=bar'.
	self assert: header isOptionalField.
	self assert: header isUnstructuredField.
	
	header _ usedClass key: 'Content-Transfer-Encoding' value: 'base64'.
	self assert: header isOptionalField.
	self assert: header isUnstructuredField.
	
	header _ usedClass key: 'MIME-Version' value: '1.0'.
	self assert: header isOptionalField.
	self assert: header isUnstructuredField.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 17:55:57'!
testOriginationDateFieldTesting
	| header |
	header _ usedClass key: 'Date' value: ''.
	self assert: header isOptionalField not.
	self assert: header isUnstructuredField not.
	self assert: header isOriginationDateField.
	
	header _ usedClass key: 'daTe' value: 'Thu, 13 Feb 1969 23:32:54 -0330'.
	self assert: header isOptionalField not.
	self assert: header isUnstructuredField not.
	self assert: header isOriginationDateField.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:05:15'!
testOriginatorTesting
	| header |
	header _ usedClass key: 'frOm' value: ''.
	self assert: header isOriginatorField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'senDer' value: ''.
	self assert: header isOriginatorField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'reply-to' value: ''.
	self assert: header isOriginatorField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:06:12'!
testResentFieldTesting
	| header |
	header _ usedClass key: 'Resent-Date' value: ''.
	self assert: header isResentField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'Resent-From' value: ''.
	self assert: header isResentField.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'Resent-Sender' value: ''.
	self assert: header isResentField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.

	header _ usedClass key: 'Resent-To' value: ''.
	self assert: header isResentField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'Resent-Cc' value: ''.
	self assert: header isResentField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'Resent-Bcc' value: ''.
	self assert: header isResentField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'Resent-Message-ID' value: ''.
	self assert: header isResentField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.! !

!MailMessageHeaderTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/27/2021 18:06:29'!
testTraceFieldTesting
	| header |
	header _ usedClass key: 'Return-Path' value: ''.
	self assert: header isTraceField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.
	
	header _ usedClass key: 'Received' value: ''.
	self assert: header isTraceField.
	self assert: header isUnstructuredField not.
	self assert: header isOptionalField not.! !

!MailMessageIdDefaultBuilderTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 09:54:31'!
setUp
	usedClass _ MailMessageIdStyle1Builder ! !

!MailMessageIdDefaultBuilderTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 09:57:19'!
testGeneratingDefaultMessageId
	| builder |
	
	builder _ usedClass new.
	builder domainName: 'example.net'.
	builder time: (DateAndTime year: 2021 month: 5 day: 22 hour: 9 minute: 55).
	builder additionalData: 200.
	
	self assert: '<1K55M91J00.5K@example.net>' equals: builder buildMessageId.! !

!MailMessageIdDefaultBuilderTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 10:04:44'!
testGeneratingDefaultMessageId2
	| builder messageId |
	
	builder _ usedClass new.
	builder domainName: 'example.net'.
	
	messageId _ builder findNewMessageId.
	
	self assert: messageId size >= '<xx.xx@example.net>' size.
	self assert: 'example.net>' equals: (messageId copyAfter: $@).
	self assert: $< equals: (messageId at: 1).
	! !

!MailMessageStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 16:53:11'!
newHeader: headerName value: headerValue
	^MailMessageHeader key: headerName value: headerValue! !

!MailMessageStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 16:51:34'!
newMailMessage
	^MailMessage new! !

!MailMessageStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:48:30'!
setUp
	usedClass _ MailMessageStreamer.
	fixtures _ MailTestFixtures new.! !

!MailMessageStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:36:37'!
testReadingEmpty
	| streamer |
	streamer _ usedClass on: '' readStream.
	
	self assert: streamer next isEmpty.! !

!MailMessageStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 17:22:34'!
testReadingSimpleMessage1
	| streamer message |
	streamer _ usedClass on: fixtures simpleRfc5322AppendixExample1 readStream.
	message _ streamer next.
	
	self assert: streamer atEnd.
	self assert: message isEmpty not.
	
	self assert: 5 equals: message headers size.
	self assert: 'From' equals: (message headers at: 1) key.
	self assert: 'John Doe <jdoe@machine.example>' equals: (message headers at: 1) value.
	
	self assert: 'To' equals: (message headers at: 2) key.
	self assert: 'Mary Smith <mary@example.net>' equals: (message headers at: 2) value.
	
	self assert: 'Subject' equals: (message headers at: 3) key.
	self assert: 'Saying Hello' equals: (message headers at: 3) value.
	
	self assert: 'Date' equals: (message headers at: 4) key.
	self assert: 'Fri, 21 Nov 1997 09:55:06 -0600' equals: (message headers at: 4) value.
	
	self assert: 'Message-ID' equals: (message headers at: 5) key.
	self assert: '<1234@local.machine.example>' equals: (message headers at: 5) value.
	
	self assert: 'This is a message just to say hello.' , String newLineString , 		'So, "Hello".' , String newLineString
		equals: message body.
	
	self assert: message isSendable! !

!MailMessageStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 17:17:01'!
testWritingSimpleMessage1
	| streamer message messageSerialized |
	messageSerialized _ '' writeStream.
	streamer _ usedClass on: messageSerialized.
	
	message _ self newMailMessage.
	message addHeader: (self newHeader: 'From' value: 'John Doe <jdoe@machine.example>').
	message addHeader: (self newHeader: 'To' value: 'Mary Smith <mary@example.net>').
	message addHeader: (self newHeader: 'Subject' value: 'Saying Hello').
	message addHeader: (self newHeader: 'Date' value: 'Fri, 21 Nov 1997 09:55:06 -0600').
	message addHeader: (self newHeader: 'Message-ID' value: '<1234@local.machine.example>').

	message body: 'This is a message just to say hello.' , String newLineString , 		'So, "Hello".'.

	self assert: 5 equals: message headers size.	
	self assert: message isSendable.
		
	streamer nextPut: message.

	self assert: fixtures simpleRfc5322AppendixExample1 equals: messageSerialized contents.! !

!MailMessageTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 10:45:13'!
setUp
	usedClass _ MailMessage ! !

!MailMessageTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 11:46:58'!
testCreatingEmpty
	| message |
	message _ usedClass new.
	
	self assert: message from isEmpty.
	self assert: message to isEmpty.
	self assert: message cc isEmpty.
	self assert: message references isEmpty.
	self assert: message messageId isEmpty.
	
	self assert: message isSendable not.! !

!MailMessageTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/5/2021 13:58:35'!
testCreatingMinimalSendableMessage
	| message |
	message _ usedClass new.
	
	message to: 'Mary Smith <mary@example.net>'.
	message from: 'John Doe <jdoe@machine.example>'.
	message date: 'Fri, 21 Nov 1997 09:55:06 -0600'.
	
	self assert: message from isEmpty not.
	self assert: message to isEmpty not.
	self assert: message date isEmpty not.
	self assert: message body isEmpty.
	
	self assert: message isSendable.! !

!MaildirRepositoryTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/24/2021 11:36:40'!
setUp
	usedClass _ MaildirRepository ! !

!MaildirRepositoryTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/24/2021 14:38:23'!
testFindingFlagsByFilenames
	
	self assert: #(replied seen)
		equals: (usedClass findMailFlagsByFilename: '12061230370.66187_0.flabz:2,RS').
	
	self assert: #(draft)
		equals: (usedClass findMailFlagsByFilename: 'xxxxxx_13.dodge:2,D').
		
	self assert: #(trashed)
		equals: (usedClass findMailFlagsByFilename: '1602025370.66187_0.flabz:2,T').
		
	self assert: #(flagged)
		equals: (usedClass findMailFlagsByFilename: '1602025370.66187_0.flabz:2,F').! !

!MaildirRepositoryTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/24/2021 14:38:57'!
testFindingIdentifiersByFilenames

	self assert: '1606050370.66187_0.flabz' 
		equals: (usedClass findMailIdentifierByFilename: '1606050370.66187_0.flabz:2,RS').
	
	self assert: 'xxxxxx_13.dodge'
		equals: (usedClass findMailIdentifierByFilename: 'xxxxxx_13.dodge:2,D')! !

!MailTestFixtures methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 17:30:21'!
newMessageText: lines
	"Creates a new message text, where each line is ended by CRLF"
	
	| outputStream crlfString |
	outputStream _ '' writeStream.
	crlfString _ String crlfString.
	
	lines do: [:newLine |
		outputStream nextPutAll: newLine.
		outputStream 	nextPutAll: crlfString.
	].

	^outputStream contents! !

!MailTestFixtures methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 17:28:32'!
simpleRfc5322AppendixExample1
	"Example for a simple E-Mail message (See https://tools.ietf.org/html/rfc5322#appendix-A.1.1)"
	
	^self newMessageText: self simpleRfc5322AppendixExample1Lines ! !

!MailTestFixtures methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:45:35'!
simpleRfc5322AppendixExample1Lines
	"Example for a simple E-Mail message (See https://tools.ietf.org/html/rfc5322#appendix-A.1.1)"
	
	^#(
		'From: John Doe <jdoe@machine.example>'
		'To: Mary Smith <mary@example.net>'
		'Subject: Saying Hello'
		'Date: Fri, 21 Nov 1997 09:55:06 -0600'
  		'Message-ID: <1234@local.machine.example>'
		''
		'This is a message just to say hello.'
		'So, "Hello".'
	).! !

!MailTestFixtures methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 17:28:46'!
simpleRfc5322AppendixExample2
	"Example for a simple E-Mail message (See https://tools.ietf.org/html/rfc5322#appendix-A.1.1)"
	
	^self newMessageText: self simpleRfc5322AppendixExample2Lines .! !

!MailTestFixtures methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:45:46'!
simpleRfc5322AppendixExample2Lines
	"Example for a simple E-Mail message (See https://tools.ietf.org/html/rfc5322#appendix-A.1.1)"
	
	^#(
		'From: John Doe <jdoe@machine.example>'
   		'Sender: Michael Jones <mjones@machine.example>'
   		'To: Mary Smith <mary@example.net>'
   		'Subject: Saying Hello'
   		'Date: Fri, 21 Nov 1997 09:55:06 -0600'
   		'Message-ID: <1234@local.machine.example>'
		''
		'This is a message just to say hello.'
   		'So, "Hello".'
	).! !

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:31'!
addToAddress
	"add the last token to the address.  removes the token from the collection"
	curAddrTokens addFirst: (tokens removeLast)! !

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:30'!
finishAddress
	"we've finished one address.  Bundle it up and add it to the list of addresses"
	| address |

	address _ String streamContents: [ :str |
		curAddrTokens do: [ :tok | str nextPutAll: tok text ] ].

	addresses addFirst: address.

	curAddrTokens _ nil.! !

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:30'!
startNewAddress
	"set up data structures to begin a new address"
	(curAddrTokens ~~ nil) ifTrue: [
		self error: 'starting new address before finishing the last one!!' ].

	curAddrTokens _ OrderedCollection new.
	! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:46'!
grabAddressWithRoute
	"grad an address of the form 'Descriptive Text <real.address@c.d.e>"
	
	| name |
	self startNewAddress.
	
	tokens removeLast.	"remove the >"

	"grab until we see a $<"
	[ tokens isEmpty ifTrue: [self error: '<> are not matched' ].
	  tokens last type = $<] 
		whileFalse: [ self addToAddress ].

	tokens removeLast.  "remove the <"
	self finishAddress.
	
	name _ self grabName.
	
	storeNames ifTrue: [addresses addFirst: {name . addresses removeFirst}].! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:13'!
grabAddresses
	
	| token |
	"remove comments"
	tokens removeAllSuchThat: [:t | t type == #Comment].
	
	"grab one address or address group each time through this loop"
	[ [tokens isEmpty not and: [ tokens last type = $, ]] 
		whileTrue: [ tokens removeLast ].
	  tokens isEmpty ] whileFalse: [
		
		token _ tokens last.

		"delegate, depending on what form the address is in"
		"the from can be determined from the last token"
		token type = $> 
			ifTrue: [self grabAddressWithRoute ]
			ifFalse: [ (#(Atom DomainLiteral QuotedString) includes: token type)  
						ifTrue: [self grabBasicAddress ]
						ifFalse: [token type = $; 
								ifTrue: [self grabGroupAddress ]
								ifFalse: [self error: 'un-recognized address format' ]]]].

	^ addresses! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:32'!
grabAddressesAndNames
	
	storeNames _ true.
	
	self grabAddresses.
	
	addresses _ addresses collect: [:a |
		a isString 
			ifTrue: [{'' . a}]
			ifFalse: [a] ].

	^ addresses! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:49'!
grabBasicAddress
	"grad an address of the form a.b@c.d.e"
	| name |
	self startNewAddress.
	"grab either the domain if specified, or the domain if not"
	self addToAddress.
	[tokens isEmpty not and: [ tokens last type = $.] ] 
		whileTrue: 
			["add name-dot pairs of tokens"
			self addToAddress.
			(#(Atom QuotedString ) includes: tokens last type)
				ifFalse: [self error: 'bad token in address: ' , tokens last text].
			self addToAddress].
	(tokens isEmpty or: [tokens last type ~= $@])
		ifTrue: ["no domain specified"
			self finishAddress]
		ifFalse: 
			["that was the domain.  check that no QuotedString's slipped in"
			curAddrTokens do: [:tok | tok type = #QuotedString ifTrue: [self error: 'quote marks are not allowed within a domain name (' , tok text , ')']].
			"add the @ sign"
			self addToAddress.
			"add the local part"
			(#(Atom QuotedString ) includes: tokens last type)
				ifFalse: [self error: 'invalid local part for address: ' , tokens last text].
			self addToAddress.
			"add word-dot pairs if there are any"
			[tokens isEmpty not and: [tokens last type = $.]]
				whileTrue: 
					[self addToAddress.
					(tokens isEmpty not and: [#(Atom QuotedString ) includes: tokens last type])
						ifTrue: [self addToAddress]].
			self finishAddress].
	
	name _ self grabName.
	storeNames ifTrue: [addresses addFirst: {name . addresses removeFirst}].! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:34'!
grabGroupAddress
	"grab an address of the form 'phrase : address, address, ..., address;'"
	"I'm not 100% sure what this format means, so I'm just returningthe list of addresses between the : and ;   -ls  (if this sounds right to someone, feel free to remove this comment :)"

	"remove the $; "
	tokens removeLast.

	"grab one address each time through this loop"
	[     "remove commas"
		[tokens isEmpty not and: [ tokens last type = $, ]] 
			whileTrue: [ tokens removeLast ].

		tokens isEmpty ifTrue: ["no matching :" ^ self error: 'stray ; in address list'].
		tokens last type = $:] 
			whileFalse: [
				
				"delegate to either grabAddressWithRoute, or grabBasicAddress.  nested groups are not allowed"
				tokens last type = $> 
					ifTrue: [self grabAddressWithRoute ]
					ifFalse: [ (#(Atom DomainLiteral QuotedString) includes: tokens last type)  
								ifTrue: [self grabBasicAddress ]
								ifFalse: [^ self error: 'un-recognized address format' ]]].

	tokens removeLast.   "remove the :"

	self removePhrase.! !

!MailAddressParser methodsFor: 'parsing' stamp: 'jpb 4/27/2021 20:25:29'!
grabName

	| name spaceChar |
	name _ ''.
	spaceChar _  ' '.
	
	[tokens isEmpty not and: [#(Atom QuotedString $. $@) includes: (tokens last type) ]] 
		whileTrue: [ name _ spaceChar join: {tokens removeLast text copyWithoutAll: '"'. name} ].
	^ name withBlanksTrimmed! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:20'!
removePhrase
	"skip most characters to the left of this"

	[tokens isEmpty not and: [#(Atom QuotedString $. $@) includes: (tokens last type)]] 
		whileTrue: [ tokens removeLast ].
! !

!MailAddressParser methodsFor: 'private-initialization' stamp: 'pre 9/6/2017 14:33'!
initialize

	storeNames _ false.! !

!MailAddressParser methodsFor: 'private-initialization' stamp: 'jpb 4/23/2021 09:45:45'!
initializeWith: tokenList
	tokens _ tokenList asOrderedCollection copy.
	addresses _ OrderedCollection new.! !

!MailAddressParser class methodsFor: 'parsing' stamp: 'jpb 4/23/2021 09:45:45'!
addressesIn: aString
	"return a collection of the bare addresses listed in aString"
	| tokens |
	tokens _ MailAddressTokenizer tokensIn: aString.
	^(self new initializeWith: tokens) grabAddresses! !

!MailAddressParser class methodsFor: 'parsing' stamp: 'jpb 5/21/2021 22:47:30'!
domainNamesIn: aString
	"Returns the domain names in a given string, which contains mail addresses"

	| addressList | 
	addressList _ self addressesIn: aString.
	
	^addressList collect: [:mailAddress | mailAddress copyAfter: $@ ]! !

!MailAddressToken methodsFor: 'access' stamp: 'ls 9/12/1998 20:42'!
text
	^text! !

!MailAddressToken methodsFor: 'access' stamp: 'ls 9/12/1998 20:42'!
type
	^type! !

!MailAddressToken methodsFor: 'private' stamp: 'ls 9/12/1998 20:24'!
type: type0  text: text0
	type _ type0.
	text _ text0.! !

!MailAddressToken class methodsFor: 'instance creation' stamp: 'ls 9/12/1998 20:31'!
type: type  text: text
	^self new type: type text: text! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:52:01'!
fetchRecordsList
	recordsList _ mailRepository findAllMailRecords.
	recordsListFetchedAt _ DateAndTime now.! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/26/2021 09:44:15'!
formatMailMessage: aMailMessage
	| newLine |
	newLine _ String newLineString.

	^String streamContents: [:stringStream |
		
		stringStream nextPutAll: 'Subject: '.
		stringStream nextPutAll: aMailMessage subject asString.
		stringStream nextPutAll: newLine.
	
		stringStream nextPutAll: 'From: '.
		stringStream nextPutAll: aMailMessage from asString.
		stringStream nextPutAll: newLine.
		
		stringStream nextPutAll: 'To: '.
		stringStream nextPutAll: aMailMessage to asString.
		stringStream nextPutAll: newLine.
	
		stringStream nextPutAll: newLine.
		stringStream nextPutAll: aMailMessage body asString	
	]
	! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 18:51:23'!
initialize
	super initialize.
	
	mailSelectionIndex _ 0.
	recordsList _ #()! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 18:55:55'!
isRefetchNeeded
	"Returns true if the records list needs to be re-fetched"
	recordsListFetchedAt isNil ifTrue: [ ^true ].
	
	^(recordsListFetchedAt + 5 minutes) < DateAndTime now! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 22:02:16'!
mailRecordsList
	self isRefetchNeeded ifTrue: [ self fetchRecordsList ].
		
	^recordsList ! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 22:02:29'!
selectedMailContents
	| foundRecord |	
	recordsList isEmpty ifTrue: [ ^'' ].
	mailSelectionIndex isNil ifTrue: [ ^'' ].
	mailSelectionIndex <= 0 ifTrue: [ ^'' ].
	
	foundRecord _ recordsList at: mailSelectionIndex ifAbsent: [ ^'' ].
	
	^self formatMailMessage: foundRecord mail.
	
	! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:46:21'!
selectedMailRecordIndex
	^mailSelectionIndex ! !

!MailBrowser methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:46:44'!
selectedMailRecordIndex: aSmallInteger 
	mailSelectionIndex _ aSmallInteger.
	
	
	self changed: #selectedMailRecordIndex.
	self changed: #selectedMailContents.! !

!MailBrowser methodsFor: 'accessing' stamp: 'jpb 5/25/2021 00:40:43'!
mailRepository: newRepository
	mailRepository _ newRepository ! !

!MailBrowser methodsFor: 'accessing' stamp: 'jpb 5/25/2021 23:16:05'!
mailSender: newSender
	"Overwrites a new mail sender, so that editted mails can actually be sent out"
	mailSender _ newSender.! !

!MailBrowser methodsFor: 'mail actions' stamp: 'jpb 5/25/2021 22:39:20'!
newMail
	"Creates a new mail form, for editing"
	newMailMessage _ MailMessage new.
	
	self changed: #newMailContents! !

!MailBrowser methodsFor: 'mail actions' stamp: 'jpb 5/25/2021 22:38:38'!
newMailContents
	"Returns the new mail, which is currently edited for later delivery"
	newMailMessage isNil
		ifTrue: [^'' ]
		ifFalse: [ ^self formatMailMessage: newMailMessage ]! !

!MailBrowser methodsFor: 'mail actions' stamp: 'jpb 5/25/2021 22:56:12'!
newMailContents: aString
	"Sets the contents of the new mail to the one given by the string"
	| streamer inputStream lineStream foundMessage |
	
	newMailMessage isNil ifTrue: [ ^self ].
	
	inputStream _ aString readStream.
	streamer _ MailMessageStreamer new.
	lineStream _ MailLineStreamer on: inputStream.
	lineStream beTolerant.
	streamer setStream: lineStream.
	
	foundMessage _ [ streamer next ] on: Error do: [ ^self ].
	
	"Copy fields over"
	newMailMessage from: foundMessage from.
	newMailMessage to: foundMessage to.
	newMailMessage subject: foundMessage subject.
	newMailMessage body: foundMessage body.
	
	self changed: #newMailContents.
	
	^true
	! !

!MailBrowser methodsFor: 'mail actions' stamp: 'jpb 5/25/2021 23:17:23'!
sendMail
	"Sends out a currently edited message"
	newMailMessage ifNil: [ ^self "do nothing" ].	
	mailSender ifNil: [ ^self "do nothing" ].
	
	newMailMessage isSendable ifFalse: [ self inform: 'Message is not yet sendable'. ^self ].
	
	mailSender sendMessage: newMailMessage.
	
	newMailMessage _ nil.
	self changed: #newMailContents! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 4/28/2021 14:40:18'!
addHeader: newHeader
	headers add: newHeader! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 4/28/2021 10:51:33'!
findAllHeadersNamed: aString ifAbsent: aBlock
	"return a list of all fields with the given name"
	self notYetImplemented ! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 4/28/2021 11:01:07'!
findHeaderNamed: aString ifAbsent: aBlock
	"return the value of the field with the specified name.  If there is more than one field, then return the first one"
	self headersDo: [:headerField | 
		headerField key = aString ifTrue: [ ^headerField ]].
	
	^aBlock value! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 4/28/2021 11:04:14'!
hasHeaderNamed: aString
	| foundHeader | 
	foundHeader _ self findHeaderNamed: aString ifAbsent: [ nil ].
	
	^foundHeader isNil not! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 4/28/2021 10:46:33'!
headersNamed: fieldName do: aBlock
	"Evalue aBlock once for each header field which matches fieldName.  The block is valued with one parameter, the value of the field"
	self headerFieldsDo: [:headerField |
		headerField key = fieldName
			ifTrue: [ aBlock value: headerField ]].! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 5/5/2021 11:29:39'!
newHeaderNamed: headerName
	"Creates a new header for use in this message model. Here specific kinds of header fields could be created for special kind of mail messages (e.g MIME based messages with attachments)"
	
	^self class newHeaderNamed: headerName. ! !

!MailMessage methodsFor: 'header fields' stamp: 'jpb 4/28/2021 10:49:19'!
removeHeaderNamed: name
	"remove all fields with the specified name"
	self notYetImplemented ! !

!MailMessage methodsFor: 'initialize-release' stamp: 'jpb 4/28/2021 10:48:21'!
body: newBody
	body _ newBody asString! !

!MailMessage methodsFor: 'initialize-release' stamp: 'jpb 4/28/2021 10:48:09'!
initialize
	"initialize as an empty message"
	headers _ OrderedCollection new.
	body _ ''.! !

!MailMessage methodsFor: 'initialize-release' stamp: 'jpb 4/28/2021 10:47:21'!
readFromString: aString 
	"Parse aString to initialize myself."
	
	self readFrom: aString readStream.! !

!MailMessage methodsFor: 'streaming' stamp: 'jpb 4/28/2021 10:32:13'!
readFrom: parseStream
	| newStreamer |
	newStreamer _ MailMessageStreamer on: parseStream.
	
	newStreamer readInto: self.! !

!MailMessage methodsFor: 'streaming' stamp: 'jpb 4/28/2021 17:31:54'!
writeTo: outputStream
	| newStreamer |
	newStreamer _ MailMessageStreamer on: outputStream.
	
	newStreamer nextPut: self.! !

!MailMessage methodsFor: 'testing' stamp: 'jpb 4/28/2021 14:19:22'!
isEmpty
	^headers isEmpty and: [ body isEmpty ]! !

!MailMessage methodsFor: 'testing' stamp: 'jpb 5/5/2021 10:39:54'!
isSendable
	"Returns true if the message could be send out with some mail sending mechanism as it's in a proper form for doing so"
	| withDate withFrom withTo |
	withDate _ 0.
	withFrom _ 0.
	withTo _ 0.
	
	self headersDo: [:headerField |
		headerField key = 'Date' ifTrue: [ withDate _ withDate + 1 ].
		headerField key = 'From' ifTrue: [ withFrom _ withFrom + 1 ].
		headerField key = 'To' ifTrue: [ withTo _ withTo + 1 ].
	].

	^(withDate = 1) & (withFrom = 1) & (withTo = 1) ! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/28/2021 10:38:37'!
bcc
	self notYetImplemented ! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/28/2021 08:57:31'!
bcc: commaSeperatedListOfEmailAddresses
	self notYetImplemented ! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/27/2021 15:53:36'!
body
	"return just the body of the message"
	^body asString! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 10:47:25'!
cc
	^(self findHeaderNamed: 'Cc' ifAbsent: [ ^'' ]) value.! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 14:01:51'!
cc: anObject
	self notYetImplemented ! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 11:35:19'!
date
	^(self findHeaderNamed: 'Date' ifAbsent: [ ^'' ]) value! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 14:02:13'!
date: anObject 
	| foundHeader |
	foundHeader _ self findHeaderNamed: 'Date' 
		ifAbsent: [ | newHeader | 
			newHeader _ self newHeaderNamed: 'Date'.
			self addHeader: newHeader.
			newHeader  ].
	
	foundHeader value: anObject.! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 11:26:53'!
from
	^(self findHeaderNamed: 'From' ifAbsent: [ ^'' ]) value! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 14:02:33'!
from: anObject
	| foundHeader |
	foundHeader _ self findHeaderNamed: 'From' ifAbsent: [
		| newHeader |
		newHeader _  self newHeaderNamed: 'From'.
		self addHeader: newHeader.
		newHeader ].
	
	foundHeader value: anObject.! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/27/2021 16:03:03'!
headers
	"return the internal fields structure.  This is private and subject to change!!"
	^ headers! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/28/2021 11:01:38'!
headersDo: aBlock
	headers do: aBlock! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/28/2021 11:04:53'!
messageId

	^(self findHeaderNamed: 'Message-Id' ifAbsent: [ ^'' ]) value! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/28/2021 08:58:00'!
messageId: aString
	self notYetImplemented ! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 4/28/2021 10:51:07'!
references

	^ (self hasHeaderNamed: 'references')
		ifTrue: [(self findHeaderNamed: 'references' ifAbsent: [self error: 'Something changed the mail between the check and now']) 
					mainValue , ', ' , self messageId]
		ifFalse: [self messageId].! !

!MailMessage methodsFor: 'accessing' stamp: 'pre 9/14/2017 11:58'!
replyReceiver

	 ^ (self 
		fieldNamed: 'reply-to' 
		ifAbsent: [self 
			fieldNamed: 'from' 
			ifAbsent: [self error: 'there is a field missing in the original message']]) mainValue.
		! !

!MailMessage methodsFor: 'accessing' stamp: 'pre 9/14/2017 11:58'!
replySubject

	 ^ (self subject asLowercase beginsWith: 're:')
		ifTrue: [self subject]
		ifFalse: ['Re: ' , self subject].! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/25/2021 21:26:13'!
subject

	^ (self findHeaderNamed: 'Subject' ifAbsent: [ ^'' ])  value! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/22/2021 16:33:53'!
subject: aString
	| foundHeader |
	foundHeader _ self findHeaderNamed: 'Subject' 
		ifAbsent: [ | newHeader | 
			newHeader _ self newHeaderNamed: 'Subject'.
			self addHeader: newHeader.
			newHeader  ].
	
	foundHeader value: aString.! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 10:46:59'!
to
	^(self findHeaderNamed: 'To' ifAbsent: [^'' ]) value! !

!MailMessage methodsFor: 'accessing' stamp: 'jpb 5/5/2021 14:02:54'!
to: anObject
	| foundHeader |
	foundHeader _ self findHeaderNamed: 'To'
		 ifAbsent: [ | newHeader | 
			newHeader _ self newHeaderNamed: 'To'.
			self addHeader: newHeader.
			newHeader ].
	
	foundHeader value: anObject.! !

!MailMessage class methodsFor: 'preferences' stamp: 'jpb 4/22/2021 21:06:50'!
omittedHeaderFields
	"Reply a list of fields to omit when displaying a nice simple message"

	"Note that heads of the form
		X-something: value
	are filtered programatically.  This is done since we don't want any of them
	and it is impossible to predict them in advance."

	^ #(
			'comments'
			'priority'
			'disposition-notification-to'
			'content-id'
			'received'
			'return-path'
			'newsgroups'
			'message-id'
			'path'
			'in-reply-to'
			'sender'
			'fonts'
			'mime-version'
			'status'
			'content-type'
			'content-transfer-encoding'
			'errors-to'
			'keywords'
			'references'
			'nntp-posting-host'
			'lines'
			'return-receipt-to'
			'precedence'
			'originator'
			'distribution'
			'content-disposition'
			'importance'
			'resent-to'
			'resent-cc'
			'resent-message-id'
			'resent-date'
			'resent-sender'
			'resent-from'
			'delivered-to'
			'user-agent'
			'content-class'
			'thread-topic'
			'thread-index'
			'list-help'
			'list-post'
			'list-subscribe'
			'list-id'
			'list-unsubscribe'
			'list-archive'
		)
! !

!MailMessage class methodsFor: 'header fields' stamp: 'jpb 5/5/2021 11:32:37'!
findHeaderNameByString: aString
	"Finds the header name for this kind of mail message. This is a customization hook which redirects to the specific implementation for retrieving the header name"

	^MailMessageHeader findHeaderNameByString: aString! !

!MailMessage class methodsFor: 'header fields' stamp: 'jpb 5/5/2021 11:33:20'!
newHeaderNamed: headerName
	"Creates a new header for use in this message model. Here specific kinds of header fields could be created for special kind of mail messages (e.g MIME based messages with attachments)"
	
	^MailMessageHeader
		key: (self findHeaderNameByString: headerName asString)
		value: ''! !

!MaildirRecord methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:08:57'!
addFlag: newFlag
	flags _ flags , { newFlag }! !

!MaildirRecord methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:14:32'!
displayStringOrText
	"Returns a meaningfull representation of the mailrecord within the repository"
	| spaceChar |
	spaceChar _ Character space.
	
	^String streamContents: [:stringStream |
		"iso date"
		createdAt printYMDOn: stringStream.
		
		"spacing"
		5 timesRepeat: [ 		stringStream nextPut: spaceChar ].
		
		"identifier"
		stringStream nextPutAll: identifier.
			
		"spacing"
		(40 - identifier size) + 5 timesRepeat: [ 		stringStream nextPut: spaceChar ].
		
		"flags"
		stringStream nextPut: $(.
		flags do: [:flag| flag printOn: stringStream. stringStream nextPut: spaceChar ].
		stringStream nextPut: $).
	]! !

!MaildirRecord methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:28:13'!
mail
	"Fetches the mail contents from the on-disk maildir repository"
	[ ^repository findMailByIdentifier: identifier ]
		on: Error do: [ ^MailMessage new ]
	
	! !

!MaildirRecord methodsFor: 'as yet unclassified' stamp: 'jpb 5/25/2021 21:59:33'!
mailContents
	"Fetches the mail contents from the on-disk maildir repository"
	
	| fileEntry | 
	mailContents isNil
		ifTrue: [
			fileEntry _ repository findFileByIdentifier: identifier.
			fileEntry ifNotNil: [ mailContents _ fileEntry fileContents ]].
			
	^mailContents
	! !

!MaildirRecord methodsFor: 'accessing' stamp: 'jpb 5/25/2021 21:53:46'!
<= aMaildirRecord 
	^aMaildirRecord createdAt <= createdAt.! !

!MaildirRecord methodsFor: 'accessing' stamp: 'jpb 5/25/2021 21:54:04'!
createdAt
	^createdAt! !

!MaildirRecord methodsFor: 'accessing' stamp: 'jpb 5/25/2021 18:31:24'!
createdAt: newTime
	createdAt _ newTime! !

!MaildirRecord methodsFor: 'accessing' stamp: 'jpb 5/25/2021 18:32:44'!
flags: anArray 
	flags _ anArray! !

!MaildirRecord methodsFor: 'accessing' stamp: 'jpb 5/25/2021 18:30:51'!
identifier: newIdentifier
	identifier _ newIdentifier ! !

!MaildirRecord methodsFor: 'accessing' stamp: 'jpb 5/25/2021 18:31:13'!
repository: newRepository
	repository _ newRepository.! !

!MaildirRepository methodsFor: 'file - querying' stamp: 'jpb 5/24/2021 12:55:16'!
findCurrentFileByIdentifier: mailIdentifier
	"Returns a file entry holding a mail message by the given identifier in the cur/ directory of the repository"
	| directoryEntry fileEntry |
	repositoryDirectory ifNil: [ self error: 'mail not found' ].
	
	directoryEntry _ repositoryDirectory / 'cur'.
	fileEntry _ directoryEntry fileMatching: mailIdentifier , ':#,*'.
	
	fileEntry ifNil: [ self error: 'mail not found' ].
	
	^fileEntry! !

!MaildirRepository methodsFor: 'file - querying' stamp: 'jpb 5/25/2021 19:47:47'!
findFileByIdentifier: mailIdentifier
	"Returns a file entry holding a mail message by the given identifier"
	|  fileEntry |
	fileEntry _ [ self findCurrentFileByIdentifier: mailIdentifier ]
		on: Error do: [ nil ].
	
	fileEntry ifNotNil: [ ^fileEntry ].
	
	fileEntry _ self findNewFileByIdentifier: mailIdentifier.
	
	^fileEntry! !

!MaildirRepository methodsFor: 'file - querying' stamp: 'jpb 5/24/2021 12:56:29'!
findNewFileByIdentifier: mailIdentifier
	"Returns a file entry holding a mail message by the given identifier in the new/ directory of the repository"
	| fileEntry |
	repositoryDirectory ifNil: [ self error: 'mail not found' ].
	
	fileEntry _ repositoryDirectory / 'new' // mailIdentifier.
	fileEntry exists 		ifTrue: [ ^fileEntry ].
	
	self error: 'mail not found'! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 18:30:29'!
buildMailRecordWith: fileEntry
	"Creates a new mail record for the given file entry"
	| newRecord filename |
	
	newRecord _ MaildirRecord new.
	filename _ fileEntry name.
	
	newRecord repository: self.
	newRecord identifier: (self class findMailIdentifierByFilename: filename).
	newRecord flags: (self class findMailFlagsByFilename: filename).
	newRecord createdAt: fileEntry creationTime.

	^newRecord! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/23/2021 21:55:00'!
countAllCurrentMessages
	"Returns the total number of new mails"
	| count |
	repositoryDirectory ifNil: [ ^0 ].
	
	count _ 0.
	
	(repositoryDirectory / 'cur')
		filesDo: [:fileEntry | count _ count + 1 ].
		
	^count! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/23/2021 21:55:00'!
countAllMessages
	"Returns the number of all messages in the repository"
	
	^self countAllNewMessages + self countAllCurrentMessages ! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/23/2021 21:53:35'!
countAllNewMessages
	"Returns the total number of new mails"
	| count |
	repositoryDirectory ifNil: [ ^0 ].
	
	count _ 0.
	
	(repositoryDirectory / 'new')
		filesDo: [:fileEntry | count _ count + 1 ].
		
	^count! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 14:38:37'!
findAllCurrentMailIdentifiers
	"Returns a list of all the mail identifiers in the cur/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'cur')
		filesDo: [:fileEntry | 
			foundIdentifiers add: (self class findMailIdentifierByFilename: fileEntry name )].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 17:50:21'!
findAllCurrentMailIdentifiersByQuery: query
	"Returns a list of all the mail identifiers in the cur/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'cur')
		filesDo: [:fileEntry | 
			(query value: fileEntry)
				ifTrue: [ foundIdentifiers add: (self class findMailIdentifierByFilename: fileEntry name )]].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 18:27:34'!
findAllCurrentMailRecords
	"Returns a list of all the mail records in the cur/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'cur')
		filesDo: [:fileEntry | 
			foundIdentifiers add: (self buildMailRecordWith: fileEntry)].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 18:27:24'!
findAllCurrentMailRecordsByQuery: query
	"Returns a list of all the mail records in the cur/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'cur')
		filesDo: [:fileEntry | 
			(query value: fileEntry)
				ifTrue: [ foundIdentifiers add: (self buildMailRecordWith: fileEntry )]].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 11:07:30'!
findAllMailIdentifiers
	"Returns a list of all the mail identifiers in the repository"
	| foundIdentifiers |
	
	repositoryDirectory ifNil: [ ^#() ].
	
	foundIdentifiers _ self findAllNewMailIdentifiers.
	
	^foundIdentifiers , self findAllCurrentMailIdentifiers! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 18:00:04'!
findAllMailIdentifiersByQuery: query
	"Returns a list of all the mail identifiers in the repository"
	| foundIdentifiers |
	
	repositoryDirectory ifNil: [ ^#() ].
	
	foundIdentifiers _ self findAllNewMailIdentifiersByQuery: query.
	
	^foundIdentifiers , (self findAllCurrentMailIdentifiersByQuery: query).! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 21:52:21'!
findAllMailRecords
	"Returns a list of all the mail records in the repository"
	| foundIdentifiers |
	
	repositoryDirectory ifNil: [ ^#() ].
	
	foundIdentifiers _ self findAllNewMailRecords .
	
	^(foundIdentifiers , self findAllCurrentMailRecords) sorted! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 18:25:03'!
findAllMailRecordsByQuery: query
	"Returns a list of all the mail identifiers in the repository"
	| foundIdentifiers |
	
	repositoryDirectory ifNil: [ ^#() ].
	
	foundIdentifiers _ self findAllNewMailRecordsByQuery: query.
	
	^foundIdentifiers , (self findAllCurrentMailRecordsByQuery: query).! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 12:41:48'!
findAllNewMailIdentifiers
	"Returns a list of all the mail identifiers in new/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'new')
		filesDo: [:fileEntry |  foundIdentifiers add: fileEntry name ].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 17:50:02'!
findAllNewMailIdentifiersByQuery: query
	"Returns a list of all the mail identifiers in new/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'new')
		filesDo: [:fileEntry |  
			(query value: fileEntry) 
				ifTrue: [ foundIdentifiers add: fileEntry name ] ].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 21:07:48'!
findAllNewMailRecords
	"Returns a list of all the mail identifiers in new/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'new')
		filesDo: [:fileEntry | 
			| newRecord |
			newRecord _ self buildMailRecordWith: fileEntry.
			newRecord addFlag: #new.
			foundIdentifiers add: newRecord ].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/25/2021 21:09:42'!
findAllNewMailRecordsByQuery: query
	"Returns a list of all the mail records in new/ directory of the repository"
	| foundIdentifiers |
	
	foundIdentifiers _ OrderedCollection new.
	
	repositoryDirectory ifNil: [ ^#() ].
	
	(repositoryDirectory / 'new')
		filesDo: [:fileEntry |  
			(query value: fileEntry) 
				ifTrue: [
					| newRecord |
					newRecord _ self buildMailRecordWith: fileEntry.
					newRecord addFlag: #new.
					foundIdentifiers add: newRecord] ].
	
	^foundIdentifiers asArray
	! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 12:57:47'!
findCurrentMailByIdentifier: mailIdentifier
	"Returns a mail message by the given identifier"
	| fileEntry |
	
	fileEntry _ self findCurrentFileByIdentifier: mailIdentifier.
	
	fileEntry readStreamDo: [:fileStream |
		| streamer lineStreamer | 
		streamer _ MailMessageStreamer new.
		lineStreamer _ MailLineStreamer on: fileStream.
		lineStreamer beTolerant.
		streamer setStream: lineStreamer.
		^streamer next ].! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 11:29:51'!
findMailByIdentifier: mailIdentifier
	"Returns a mail message by the given identifier"
	| mailMessage |
	repositoryDirectory ifNil: [ self error: 'mail not found' ].
	
	mailMessage _ [ self findNewMailByIdentifier: mailIdentifier ]
		on: Error do: [ nil ].
	
	mailMessage ifNotNil: [ ^mailMessage ].
		
	mailMessage _ [ self findCurrentMailByIdentifier: mailIdentifier ]
		on: Error do: [ nil ].
	
	mailMessage ifNotNil: [ ^mailMessage ].
	
	self error: 'mail not found'.! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 14:36:21'!
findMailCreatedAtByIdentifier: mailIdentifier
	"Returns the creation timestamp within the repository for a mail identifier"
	| directoryEntry fileEntry |
	repositoryDirectory ifNil: [ self error: 'record not found' ].
	
	directoryEntry _ repositoryDirectory / 'new'.
	fileEntry _ directoryEntry fileMatching: mailIdentifier.
		
	fileEntry ifNotNil: [ ^fileEntry creationTime ].
	
	directoryEntry _ repositoryDirectory / 'cur'.
	fileEntry _ directoryEntry fileMatching: mailIdentifier , ':#,*'.
		
	fileEntry ifNotNil: [ ^fileEntry creationTime ].
	
	self error: 'record not found'.! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 14:35:45'!
findMailExistenceByIdentifier: mailIdentifier
	"Returns true if a record with the given mail identifier exists within the repository"	
	| fileEntry |
	fileEntry _ 	[ self findFileByIdentifier: mailIdentifier ]
		on: Error do: [ ^false ].
	
	fileEntry ifNotNil: [ ^true ].
	
	^false! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 14:37:57'!
findMailFlagsByIdentifier: mailIdentifier
	"Returns a file entry holding a mail message by the given identifier"
	|  fileEntry |
	fileEntry _ [ self findCurrentFileByIdentifier: mailIdentifier ]
		on: Error do: [ nil ].
	
	fileEntry ifNotNil: [ ^self class findMailFlagsByFilename: fileEntry name ].
	
	fileEntry _ self findNewFileByIdentifier: mailIdentifier.
		
	fileEntry ifNotNil: [ ^#(new ) ].
! !

!MaildirRepository methodsFor: 'mail - querying' stamp: 'jpb 5/24/2021 12:57:14'!
findNewMailByIdentifier: mailIdentifier
	"Returns a mail message by the given identifier"
	| fileEntry |
	
	fileEntry _ self findNewFileByIdentifier: mailIdentifier.
	
	fileEntry readStreamDo: [:fileStream |
		| streamer lineStreamer | 
		streamer _ MailMessageStreamer new.
		lineStreamer _ MailLineStreamer on: fileStream.
		lineStreamer beTolerant.
		streamer setStream: lineStreamer.
		^streamer next ].! !

!MaildirRepository methodsFor: 'accessing' stamp: 'jpb 5/23/2021 21:26:42'!
directory: repositoryLocation
	| directoryEntry |

	directoryEntry _ repositoryLocation asDirectoryEntry.
	
	directoryEntry exists
		ifFalse: [ self error: 'directory does not exist: ' , repositoryLocation asString ].
	
	(directoryEntry / 'tmp') exists
		ifFalse: [ self error: 'directory not in maildir format: ' , repositoryLocation asString ].

	(directoryEntry / 'cur') exists
		ifFalse: [ self error: 'directory not in maildir format: ' , repositoryLocation asString ].

	(directoryEntry / 'new') exists
		ifFalse: [ self error: 'directory not in maildir format: ' , repositoryLocation asString ].
				


	repositoryDirectory _ directoryEntry.! !

!MaildirRepository methodsFor: 'initialization' stamp: 'jpb 5/23/2021 21:23:07'!
initialize
	repositoryDirectory _ nil! !

!MaildirRepository class methodsFor: 'as yet unclassified' stamp: 'jpb 5/24/2021 14:37:25'!
findMailFlagsByFilename: aString 
	"Extracts the flags which are encoded into a maildir file"
	| flags flagPart filenameStream |
	flags _ OrderedCollection new.
	flagPart _ false.

	filenameStream _ aString readStream.

	[ filenameStream atEnd ]
		whileFalse: [ 
			| char |
			char _ filenameStream next.
			char	= $: ifTrue: [ 
				filenameStream next = $2	 ifFalse: [ ^#() ].
				filenameStream next = $, ifFalse: [ ^#() ].
				flagPart _ true.
			].
			flagPart ifTrue: [
				char = $P ifTrue: [ flags add: #passed ].
				char = $R ifTrue: [ flags add: #replied ].
				char = $S ifTrue: [ flags add: #seen ].
				char = $T ifTrue: [ flags add: #trashed ].
				char = $D ifTrue: [ flags add: #draft ].
				char = $F ifTrue: [ flags add: #flagged ].	
			]
		].
	^flags asArray! !

!MaildirRepository class methodsFor: 'as yet unclassified' stamp: 'jpb 5/24/2021 14:37:30'!
findMailIdentifierByFilename: aString
	"Returns a mail identifier, for querying mails"
	^aString copyUpTo: $: ! !

!MailSender methodsFor: 'mail sending' stamp: 'jpb 5/22/2021 10:45:44'!
sendMessage: aMailMessage
	"Takes the given mail message and sends it out"
	self subclassResponsibility.! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 18:50:11'!
atEnd
	^currentStream atEnd! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 13:28:03'!
initialize
	currentStream _ nil.! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 13:22:01'!
next
	self subclassResponsibility ! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 13:27:49'!
nextChar
	| readChar |
	
	readChar _ currentStream next.
	
	^readChar! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 13:22:05'!
nextPut: anObject
	self subclassResponsibility ! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 13:22:10'!
nextPutAll: anObject
	self subclassResponsibility ! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 11:54:10'!
peek
	^currentStream peek! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 18:49:33'!
peekChar
	^currentStream peek! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 13:27:56'!
setStream: newStream
	currentStream _ newStream.! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 18:50:57'!
skipNext
	currentStream next! !

!MailStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 18:51:48'!
skipSeparators
	currentStream skipSeparators ! !

!MailStreamer class methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 11:48:31'!
on: aStream
	| newStreamer | 
	newStreamer _ self new.
	
	newStreamer setStream: aStream.
	
	^newStreamer! !

!MailDateStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 19:06:35'!
nextDate
	"Parse a date from the given stream and answer nil if the date can't be parsed. The date may be in any of the following forms:
		<day> <monthName> <year>		(5 April 1982; 5-APR-82)
		<monthName> <day> <year>		(April 5, 1982)
		<monthNumber> <day> <year>		(4/5/82)
	In addition, the date may be preceded by the day of the week and an optional comma, such as:
		Tue, November 14, 1989"

	| day month year |
	self skipWeekdayName: currentStream.
	self peekChar isDigit ifTrue: [day _ Integer readFrom: currentStream].

	[self peekChar isAlphaNumeric]
		whileFalse: [currentStream skip: 1].
		
	self peekChar isLetter
		ifTrue:		"month name or weekday name"
			[
				month _ WriteStream on: (String new: 10).
			 [self peekChar isLetter] whileTrue: [month nextPut: currentStream next].
			 month _ month contents.
			
			 day isNil ifTrue:		"name/number..."
				[[self peekChar isAlphaNumeric] whileFalse: [currentStream skip: 1].
				 (self peekChar isDigit) ifFalse: [^nil].
				 day _ Integer readFrom: currentStream]]
		ifFalse:		"number/number..."
			[month _ Date nameOfMonth: day.
			 day _ Integer readFrom: currentStream].
		
	[self peekChar isAlphaNumeric] whileFalse: [currentStream skip: 1].
	(self peekChar isDigit) ifFalse: [^nil].
	
	year _ Integer readFrom: currentStream.
	
	^ Date newDay: day month: month year: year! !

!MailDateStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 19:15:31'!
nextDateAndTime 
	^DateAndTime fromSeconds: self nextTimeEpoch  + (Date newDay: 1 year: 1980) secondsSinceSqueakEpoch! !

!MailDateStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 19:22:00'!
nextTimeEpoch
	"Parse the date and time (rfc822) and answer the result as the number of seconds 
	since the start of 1980."

	| t rawDelta delta plusOrMinus |

	"date part"
	t _ (self nextDate ifNil: [Date today]) secondsSinceSqueakEpoch.

	[self atEnd or: [self peekChar isAlphaNumeric]]
		whileFalse: [ self skipNext ].

	"time part"
	self atEnd ifFalse: ["read time part (interpreted as local, regardless of sender's timezone)"
		(self peekChar isDigit)
			ifTrue: [ t _ t + (Time readFrom: currentStream) asDurationSinceMidnight totalSeconds ] ].
	
	self skipSeparators.

	"Check for a numeric time zone offset"
	('+-' includes: self peekChar) ifTrue:  [
		plusOrMinus _ self nextChar.
		rawDelta _ (self peekChar isDigit)
			ifTrue: [Integer readFrom: currentStream]
			ifFalse: [0].
		
		delta _ (rawDelta // 100 * 60 + (rawDelta \\ 100)) * 60.
		
		t _ plusOrMinus = $+ ifTrue: [t - delta] ifFalse: [t + delta]].

	"We ignore text time zone offsets like EST, GMT, etc..."

	^ t - (Date newDay: 1 year: 1980) secondsSinceSqueakEpoch 

"MailMessage new timeFrom: 'Thu, 22 Jun 2000 14:17:47 -500'"
"MailMessage new timeFrom: 'Thu, 22 Jun 2000 14:17:47 --500'"
"MailMessage new timeFrom: 'on, 04 apr 2001 14:57:32'"! !

!MailDateStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 19:00:28'!
skipWeekdayName: aStream
	"If the given stream starts with a weekday name or its abbreviation, advance the stream to the first alphaNumeric character following the weekday name."

	| position name abbrev |
	aStream skipSeparators.
	
	(aStream peek isDigit) ifTrue: [^self].
	(aStream peek isLetter) ifTrue: [
		position _ aStream position.
		name _ WriteStream on: (String new: 10).
		
		[aStream peek isLetter]
			whileTrue: [name nextPut: aStream next].
		
		abbrev _ (name contents copyFrom: 1 to: (3 min: name position)).
		abbrev _ abbrev asLowercase.
		
		(#('sun' 'mon' 'tue' 'wed' 'thu' 'fri' 'sat') includes: abbrev asLowercase)
			ifTrue:
				["found a weekday; skip to the next alphanumeric character"
				 [aStream peek isAlphaNumeric] whileFalse: [aStream skip: 1]]
			ifFalse:
				["didn't find a weekday so restore stream position"
				 aStream position: position]].! !

!MailDateStreamer class methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 18:52:47'!
readDateFrom: aStream
	"Reads the date from the given stream and returns it"
	| streamer |
	
	streamer _ self on: aStream.
	
	^streamer nextDate! !

!MailDateStreamer class methodsFor: 'as yet unclassified' stamp: 'jpb 4/23/2021 19:11:02'!
readTimeFrom: aStream
	"Reads the date from the given stream and returns it"
	| streamer |
	
	streamer _ self on: aStream.
	
	^streamer nextDateAndTime! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 15:40:36'!
atEndOfLine
	| peekedChar |
	
	peekedChar _ self peekChar.
	
	^peekedChar = Character cr or: [ peekedChar = Character lf ]! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:11:04'!
atFoldedLine
	"Return true if the next line looks like a folded line. Only call after a read line"
	| peekedChar |
	self atEnd ifTrue: [ ^false ].
	
	peekedChar _ self peekChar.
	
	peekedChar = Character tab ifTrue: [ ^true ].
	peekedChar = Character space ifTrue: [ ^true ].
	
	^false! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 5/23/2021 22:29:52'!
bePedantic
	"Enables the pedantig reading mode"
	pedanticMode _ true.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 5/23/2021 22:29:40'!
beTolerant
	"Enables the tolerant reading mode"
	pedanticMode _ false.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 21:32:10'!
beginNewLine
	currentStream nextPutAll: String crlfString.

	linePosition _ 1.
	lineNumber _ lineNumber + 1.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 5/23/2021 22:20:08'!
initialize
	pedanticMode _ true! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:00:15'!
next
	^self nextFoldedLine! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 16:16:12'!
nextChar
	| readChar |
	readChar _ super nextChar.
	
	readChar asciiValue <= 127
		ifFalse: [ self error: 'Not an US-ASCII character: ' , readChar printString ].
			
	linePosition _ linePosition + 1.
	
	^readChar! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:08:31'!
nextFoldedLine
	| newLine |
	
	newLine _ self nextLine.
	newLine isNil ifTrue: [ ^nil ].
	
	[ self atFoldedLine ] whileTrue: [
		| lineStream foldedLine |
		"lines starting with white space are continuation lines"
		foldedLine _ self nextLine.
		foldedLine isNil ifTrue: [ ^newLine ].
		
		lineStream _ ReadStream on: foldedLine.
		lineStream skipSeparators.
			
		newLine _ newLine , ' ', lineStream upToEnd ].
	
	^newLine! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 10:10:08'!
nextLine
	| newLine |
	newLine _ '' writeStream.
	
	[ self atEnd or: [ self atEndOfLine ] ]
		whileFalse: [ newLine nextPut: self nextChar ].
		
	self atEndOfLine ifTrue: [ self skipNewline ].
	
	
	^newLine contents! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 21:32:38'!
nextPut: newText
	newText do: [:lineChar | self nextPutChar: lineChar ].

	self beginNewLine! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 21:27:34'!
nextPutAll: textLines
	textLines do: [:newLine | self nextPut: newLine ].! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 21:30:41'!
nextPutChar: lineChar
	linePosition > 78
		ifTrue: [ self error: 'Line too long: ' , self streamPosition asString ].
			
	lineChar asciiValue <= 127
		ifFalse: [ self error: 'Invalid character: ' , lineChar printString , ' ' , self streamPosition asString ].
 		
	currentStream nextPut: lineChar.
	linePosition _ linePosition + 1.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 15:08:25'!
setStream: newStream
	super setStream: newStream.
	
	lineNumber _ 1.
	linePosition _ 1.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 5/23/2021 22:22:35'!
skipNewline
	pedanticMode 
		ifTrue: [ self skipNewlinePedanticly ]
		ifFalse: [ self skipNewlineTolerantly ]! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 5/23/2021 22:21:33'!
skipNewlinePedanticly
	self nextChar = Character cr
		ifFalse: [ self error: 'Unexpected character at ' , self streamPosition asString ].
	
	self nextChar = Character lf
		ifFalse: [ self error: 'Unexpected character at ' , self streamPosition asString ].
	
	lineNumber _ lineNumber + 1.
	linePosition _ 1.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 5/23/2021 22:28:25'!
skipNewlineTolerantly
	| foundChar |
	foundChar _ self nextChar.
	
	foundChar = Character lf
		ifTrue: [ 
			lineNumber _ lineNumber + 1.
			linePosition _ 1.
			^self ].

	foundChar = Character cr
		ifFalse: [ self error: 'Unexpected character at ' , self streamPosition asString ].
	
	self peekChar = Character lf
		ifTrue: [ self skipNext "Skip char" ].
	
	lineNumber _ lineNumber + 1.
	linePosition _ 1.! !

!MailLineStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/26/2021 15:12:31'!
streamPosition
	"Returns the current position in the stream"
 	^linePosition 	@ lineNumber! !

!MailMessageStreamer methodsFor: 'stream - writing' stamp: 'jpb 4/28/2021 17:10:33'!
nextPut: aMailMessage
	aMailMessage isSendable
		ifFalse: [ self error: 'Can''t serialize unsendable messages' ].
		
	self writeHeaderFieldsFrom: aMailMessage.
	currentStream nextPut: ''.
	
	self writeBodyFrom: aMailMessage.! !

!MailMessageStreamer methodsFor: 'stream - writing' stamp: 'jpb 4/28/2021 17:13:42'!
writeBodyFrom: aMailMessage
	aMailMessage body linesDo: [:newLine |
		currentStream nextPut: newLine
	].! !

!MailMessageStreamer methodsFor: 'stream - writing' stamp: 'jpb 4/28/2021 17:09:23'!
writeHeaderFieldsFrom: aMailMessage
	"Writes the headers of the given mail message out into the stream"
	aMailMessage headersDo: [:headerField |
		| newHeaderStream |
		
		newHeaderStream _ '' writeStream.
		
		newHeaderStream nextPutAll: headerField key asString.
		newHeaderStream nextPutAll: ': '.
		newHeaderStream nextPutAll: headerField value asString.
		
		currentStream nextPut: newHeaderStream contents.	
	]! !

!MailMessageStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/28/2021 13:53:23'!
next
	| mailMessage | 
	mailMessage _ self newMessage.
	
	self readInto: mailMessage.
	
	^mailMessage! !

!MailMessageStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/28/2021 17:21:24'!
readBodyInto: aMailMessage 
	| bodyText newLine |
	
	bodyText _ '' writeStream.
	newLine _ String newLineString.
	
	[ self atEnd ]
		whileFalse: [
			bodyText nextPutAll: currentStream nextLine.
			bodyText nextPutAll: newLine.	
		].
		
	aMailMessage body: bodyText contents.! !

!MailMessageStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/28/2021 13:33:49'!
readHeaderFieldsInto: aMailMessage
	"Invoke the given block with each of the header fields from the given stream. The block arguments are the field name and value. The streams position is left right after the empty line separating header and body."

	| headerLine |
	
	[ currentStream atEnd ] whileFalse: [
		headerLine _ currentStream nextFoldedLine.
		headerLine isEmpty ifTrue: [ ^self ].  "quit when we hit a blank line"

		self storeHeaderLine: headerLine into: aMailMessage ]		! !

!MailMessageStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/28/2021 11:55:01'!
readInto: aMailMessage
	self readHeaderFieldsInto: aMailMessage.
	self readBodyInto: aMailMessage.
	
	^aMailMessage! !

!MailMessageStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/28/2021 14:43:29'!
storeHeaderLine: headerLine into: aMailMessage
	| headerName headerBody headerStream newHeader |
	
	headerStream _ headerLine readStream.
	headerName _ headerStream upTo: $:.
	headerStream skipSeparators.
	
	headerBody _ headerStream upToEnd.
	
	headerName isNil ifTrue: [ ^self ].
	headerBody isNil ifTrue: [ ^self ].
	
	headerName isEmpty ifTrue: [ ^self ].
	headerBody isEmpty ifTrue: [ ^self ].
	
	newHeader _ self newHeaderField.
	newHeader key: headerName.
	newHeader value: (headerBody ).
	
	aMailMessage addHeader: newHeader.! !

!MailMessageStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 14:39:44'!
newHeaderField
	^MailMessageHeader new! !

!MailMessageStreamer methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 11:53:20'!
newMessage
	^MailMessage new! !

!MailMessageStreamer class methodsFor: 'as yet unclassified' stamp: 'jpb 4/28/2021 13:51:08'!
on: newStream
	^super on: (MailLineStreamer on: newStream).! !

!MessageIdBuilder methodsFor: 'builder' stamp: 'jpb 5/21/2021 21:22:14'!
findNewMessageId
	self subclassResponsibility ! !

!MessageIdBuilder methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 09:20:22'!
findNewMessageIdForMessage: mailMessage
	self subclassResponsibility ! !

!MailMessageIdStyle1Builder methodsFor: 'builder' stamp: 'jpb 5/22/2021 09:25:22'!
buildMessageId
	"Builds a message-id together based on the current state"
	| localPart domainPart |
		
	localPart _ self findMessageIdLocalPart.
	domainPart _ self findDomainPart.

	^'<' , localPart , '@' , domainPart , '>'! !

!MailMessageIdStyle1Builder methodsFor: 'builder' stamp: 'jpb 5/21/2021 22:32:50'!
findDomainPart
	"Returns the domain part of a message-id"
	^domainName ifNil: [ 'localhost' ]! !

!MailMessageIdStyle1Builder methodsFor: 'builder' stamp: 'jpb 5/22/2021 09:18:41'!
findMessageIdLocalPart
	"Returns a message at the specific dateTime and seed"
	^String streamContents: [:stream |
		time yearNumber printOn: stream base: 36.
		time monthIndex printOn: stream base: 36.
		time dayOfMonth printOn: stream base: 36.
		time hour24 printOn: stream base: 36.
		time minute printOn: stream base: 36.
		time second printOn: stream base: 36.
		(time nanoSecond // 1000) printOn: stream base: 36.
	
		stream nextPut: $..
	
		additionalData printOn: stream base: 36.
	].
	! !

!MailMessageIdStyle1Builder methodsFor: 'builder' stamp: 'jpb 5/22/2021 09:24:42'!
findNewMessageId
	"Returns a fresh message-id, generated with the current time"

	time _ DateAndTime now.
	additionalData _ (2 raisedTo: 64) atRandom.
	
	^self buildMessageId ! !

!MailMessageIdStyle1Builder methodsFor: 'builder' stamp: 'jpb 5/22/2021 09:22:19'!
findNewMessageIdForMessage: mailMessage
	"Returns a new message-id for the given mail message"
	domainName _ (MailAddressParser domainNamesIn: mailMessage from) first.
	
	^self findNewMessageId ! !

!MailMessageIdStyle1Builder methodsFor: 'accessing' stamp: 'jpb 5/22/2021 09:19:28'!
additionalData: newSalt
	additionalData _ newSalt! !

!MailMessageIdStyle1Builder methodsFor: 'accessing' stamp: 'jpb 5/22/2021 09:24:14'!
domainName: newDomainName
	"Sets the domain part used for generating a message-id"
	domainName _ newDomainName ! !

!MailMessageIdStyle1Builder methodsFor: 'accessing' stamp: 'jpb 5/22/2021 09:19:05'!
time: newTime
	time _ newTime! !
