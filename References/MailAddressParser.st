'From Squeak5.3 of 3 March 2020 [latest update: #19431] on 20 April 2020 at 10:05:34 pm'!
Object subclass: #MailAddressParser
	instanceVariableNames: 'tokens addresses storeNames curAddrTokens'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-RFC822'!
!MailAddressParser commentStamp: '<historical>' prior: 0!
Parse mail addresses.  The basic syntax is:

	addressList := MailAddressParser addressesIn: aString

This currently only returns the bare addresses, but it could also return a list of the address "source codes".  For example, if you give it "Joe <joe@foo>, <jane>", it will currently return a list ('joe@foo' 'jane').  It would be nice to also get a list ('Joe <joe@foo>'  '<jane>').!


!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:31'!
addToAddress
	"add the last token to the address.  removes the token from the collection"
	curAddrTokens addFirst: (tokens removeLast)! !

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:30'!
finishAddress
	"we've finished one address.  Bundle it up and add it to the list of addresses"
	| address |

	address := String streamContents: [ :str |
		curAddrTokens do: [ :tok | str nextPutAll: tok text ] ].

	addresses addFirst: address.

	curAddrTokens := nil.! !

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:30'!
startNewAddress
	"set up data structures to begin a new address"
	(curAddrTokens ~~ nil) ifTrue: [
		self error: 'starting new address before finishing the last one!!' ].

	curAddrTokens := OrderedCollection new.
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
	
	name := self grabName.
	
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
		
		token := tokens last.

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
	
	storeNames := true.
	
	self grabAddresses.
	
	addresses := addresses collect: [:a |
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
	
	name := self grabName.
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

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/9/2017 11:47'!
grabName

	| name |
	name := ''.
	[tokens isEmpty not and: [#(Atom QuotedString $. $@) includes: (tokens last type) ]] 
		whileTrue: [ name := {tokens removeLast text copyWithoutAll: '"'. name} joinSeparatedBy: Character space ].
	^ name withBlanksTrimmed! !

!MailAddressParser methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:20'!
removePhrase
	"skip most characters to the left of this"

	[tokens isEmpty not and: [#(Atom QuotedString $. $@) includes: (tokens last type)]] 
		whileTrue: [ tokens removeLast ].
! !


!MailAddressParser methodsFor: 'private-initialization' stamp: 'pre 9/6/2017 14:33'!
initialize

	storeNames := false.! !

!MailAddressParser methodsFor: 'private-initialization' stamp: 'ls 9/13/1998 01:25'!
initialize: tokenList
	tokens := tokenList asOrderedCollection copy.
	addresses := OrderedCollection new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MailAddressParser class
	instanceVariableNames: ''!

!MailAddressParser class methodsFor: 'parsing' stamp: 'pre 9/6/2017 14:22'!
addressesAndNamePairsIn: aString
	"return a collection of the addresses and the corresponding names listed in aString"
	| tokens |
	tokens := MailAddressTokenizer tokensIn: aString.
	^(self new initialize: tokens) grabAddressesAndNames! !

!MailAddressParser class methodsFor: 'parsing' stamp: 'ls 9/13/1998 01:34'!
addressesIn: aString
	"return a collection of the bare addresses listed in aString"
	| tokens |
	tokens := MailAddressTokenizer tokensIn: aString.
	^(self new initialize: tokens) grabAddresses! !
