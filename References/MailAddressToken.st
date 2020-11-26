'From Squeak5.3 of 3 March 2020 [latest update: #19431] on 20 April 2020 at 10:05:43 pm'!
Object subclass: #MailAddressToken
	instanceVariableNames: 'type text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-RFC822'!
!MailAddressToken commentStamp: '<historical>' prior: 0!
a single token from an RFC822 mail address.  Used internally in MailAddressParser!


!MailAddressToken methodsFor: 'access' stamp: 'ls 9/12/1998 20:42'!
text
	^text! !

!MailAddressToken methodsFor: 'access' stamp: 'ls 9/12/1998 20:42'!
type
	^type! !


!MailAddressToken methodsFor: 'printing' stamp: 'ls 9/12/1998 20:40'!
printOn: aStream
	aStream nextPut: $[.
	aStream nextPutAll: self type asString.
	aStream nextPut: $|.
	aStream nextPutAll: self text.
	aStream nextPut: $].! !


!MailAddressToken methodsFor: 'private' stamp: 'ls 9/12/1998 20:24'!
type: type0  text: text0
	type := type0.
	text := text0.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MailAddressToken class
	instanceVariableNames: ''!

!MailAddressToken class methodsFor: 'instance creation' stamp: 'ls 9/12/1998 20:31'!
type: type  text: text
	^self new type: type text: text! !
