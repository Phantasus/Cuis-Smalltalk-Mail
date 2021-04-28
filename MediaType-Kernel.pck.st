'From Cuis 5.0 [latest update: #4567] on 28 April 2021 at 6:05:30 pm'!
'Description Media types also known as mime types in E-mails and in protocols can be managed, registered and changed.

Author: Josef Philip Bernhart (jpb)
License: MIT'!
!provides: 'MediaType-Kernel' 1 13!
SystemOrganization addCategory: 'MediaType-Kernel-Tests'!
SystemOrganization addCategory: 'MediaType-Kernel'!


!classDefinition: #MediaTypeEntry category: 'MediaType-Kernel'!
Dictionary subclass: #MediaTypeEntry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel'!
!classDefinition: 'MediaTypeEntry class' category: 'MediaType-Kernel'!
MediaTypeEntry class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeEntityTest category: 'MediaType-Kernel-Tests'!
TestCase subclass: #MediaTypeEntityTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel-Tests'!
!classDefinition: 'MediaTypeEntityTest class' category: 'MediaType-Kernel-Tests'!
MediaTypeEntityTest class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeEntryTest category: 'MediaType-Kernel-Tests'!
TestCase subclass: #MediaTypeEntryTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel-Tests'!
!classDefinition: 'MediaTypeEntryTest class' category: 'MediaType-Kernel-Tests'!
MediaTypeEntryTest class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeRegistryTest category: 'MediaType-Kernel-Tests'!
TestCase subclass: #MediaTypeRegistryTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel-Tests'!
!classDefinition: 'MediaTypeRegistryTest class' category: 'MediaType-Kernel-Tests'!
MediaTypeRegistryTest class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeStreamerTest category: 'MediaType-Kernel-Tests'!
TestCase subclass: #MediaTypeStreamerTest
	instanceVariableNames: 'usedClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel-Tests'!
!classDefinition: 'MediaTypeStreamerTest class' category: 'MediaType-Kernel-Tests'!
MediaTypeStreamerTest class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeEntity category: 'MediaType-Kernel'!
Object subclass: #MediaTypeEntity
	instanceVariableNames: 'content mediaType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel'!
!classDefinition: 'MediaTypeEntity class' category: 'MediaType-Kernel'!
MediaTypeEntity class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeRegistry category: 'MediaType-Kernel'!
Object subclass: #MediaTypeRegistry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel'!
!classDefinition: 'MediaTypeRegistry class' category: 'MediaType-Kernel'!
MediaTypeRegistry class
	instanceVariableNames: ''!

!classDefinition: #MediaTypeStreamer category: 'MediaType-Kernel'!
Object subclass: #MediaTypeStreamer
	instanceVariableNames: 'currentStream model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MediaType-Kernel'!
!classDefinition: 'MediaTypeStreamer class' category: 'MediaType-Kernel'!
MediaTypeStreamer class
	instanceVariableNames: ''!


!MediaTypeEntry commentStamp: '<historical>' prior: 0!
Represents a media type, can be tested serialized and in other ways treated!

!MediaTypeEntity commentStamp: '<historical>' prior: 0!
Represents a document which has a content of a certain media type (previously known as MIME type and defined in RFC 2045)!

!MediaTypeRegistry commentStamp: '<historical>' prior: 0!
Represents the main entry point for media types. Here media types can be registered.!

!MediaTypeStreamer commentStamp: '<historical>' prior: 0!
A media type streamer reads media type strings or writes them out in a media type entry or any other kind of collection.!

!MediaTypeEntry methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 13:34:00'!
storeOn: aStream
	| streamer |
	
	streamer _ MediaTypeStreamer on: aStream.
	streamer nextPut: self.! !

!MediaTypeEntry methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 20:30:41'!
init: newSize
	super init: newSize.
	
	self at: #type put: 'text'.
	self at: #subType put: 'plain'.
	self at: #charset put: 'utf-8'! !

!MediaTypeEntityTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/24/2021 22:07:16'!
setUp
	usedClass _ MediaTypeEntity ! !

!MediaTypeEntityTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 13:50:45'!
testCreating
	| document |
	document _ usedClass new.
	
	self assert: 'text/plain; charset="utf-8"' equals: document mediaType storeString.
	self assert: document isEmpty.! !

!MediaTypeEntryTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/24/2021 21:03:10'!
setUp
	usedClass _ MediaTypeEntry ! !

!MediaTypeEntryTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 13:51:29'!
testCreating
	| entry |
	entry _ usedClass new.
	
	self assert: 'text/plain; charset="utf-8"' equals: entry storeString.
! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:28:39'!
setUp
	usedClass _ MediaTypeRegistry ! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:44:44'!
testReadingEmptyType5
	| entry |
	entry _ usedClass readOnlyTypeFrom: '' readStream.
	
	self assert: '' equals: entry.! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:32:26'!
testReadingType1
	| entry |
	entry _ usedClass readOnlyTypeFrom: 'text/gemini; lang=en' readStream.
	
	self assert: 'text/gemini' equals: entry.! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:33:17'!
testReadingType2
	| entry |
	entry _ usedClass readOnlyTypeFrom: 'text/plain; charset="utf-8"' readStream.
	
	self assert: 'text/plain' equals: entry.! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:33:07'!
testReadingType3
	| entry |
	entry _ usedClass readOnlyTypeFrom: 'text/plain; charset=utf-8' readStream.
	
	self assert: 'text/plain' equals: entry.! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:37:30'!
testReadingType4
	| entry |
	entry _ usedClass readOnlyTypeFrom: 'application/vnd.sun.xml.calc.template' readStream.
	
	self assert: 'application/vnd.sun.xml.calc.template' equals: entry.! !

!MediaTypeRegistryTest methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:37:55'!
testReadingType5
	| entry |
	entry _ usedClass readOnlyTypeFrom: 'application/vnd.oma.drm.rights+wbxml' readStream.
	
	self assert: 'application/vnd.oma.drm.rights' equals: entry.! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/24/2021 21:27:47'!
setUp
	usedClass _ MediaTypeStreamer ! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 22:31:27'!
testReadinRfcExample1
	| streamer entry |
	streamer _ usedClass on: 'text/plain; charset=ISO-8859-1' readStream.
	entry _ streamer next.
	
	self assert: 'text/plain; charset="iso-8859-1"' equals: entry storeString.
	self assert: 'iso-8859-1' equals: (entry at: #charset).! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 21:39:52'!
testReadingSimpleType1
	| streamer entry |
	streamer _ usedClass on: 'text/plain' readStream.
	entry _ streamer next.
	
	self assert: 'text/plain' equals: entry storeString.
! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 20:37:30'!
testReadingSimpleType2
	| streamer entry |
	streamer _ usedClass on: 'text/plain; charset="utf-8"' readStream.
	entry _ streamer next.
	
	self assert: 'text/plain; charset="utf-8"' equals: entry storeString.
	self assert: 'utf-8' equals: (entry at: #charset).! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 22:19:01'!
testReadingSimpleType3
	| streamer entry |
	streamer _ usedClass on: 'text/plain; charset="utf-8"  ' readStream.
	entry _ streamer next.
	
	self assert: 'text/plain; charset="utf-8"' equals: entry storeString.
	self assert: 'utf-8' equals: (entry at: #charset).! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 22:22:27'!
testReadingType4
	| streamer entry |
	streamer _ usedClass on: 'Application/JSON; Charset="utf-8"  ' readStream.
	entry _ streamer next.
	
	self assert: 'application/json; charset="utf-8"' equals: entry storeString.
	self assert: 'utf-8' equals: (entry at: #charset).! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 22:23:02'!
testReadingType5
	| streamer entry |
	streamer _ usedClass on: 'text/plain; charset=us-ascii' readStream.
	entry _ streamer next.
	
	self assert: 'text/plain; charset="us-ascii"' equals: entry storeString.
	self assert: 'us-ascii' equals: (entry at: #charset).! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 21:31:27'!
testWritingSimpleType1
	| streamer contentStream |
	contentStream _ '' writeStream.
	streamer _ usedClass on: contentStream.
	streamer nextPut: MediaTypeEntry new.
	
	self assert: 'text/plain; charset="utf-8"' equals: contentStream contents.
! !

!MediaTypeStreamerTest methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 21:40:07'!
testWritingSimpleType2
	| streamer contentStream entry |
	contentStream _ '' writeStream.
	streamer _ usedClass on: contentStream.
	entry _ MediaTypeEntry new.
	entry at: #charset put: 'utf-8'.
	
	streamer nextPut: entry.
	
	self assert: 'text/plain; charset="utf-8"' equals: contentStream contents.
! !

!MediaTypeEntity methodsFor: 'as yet unclassified' stamp: 'jpb 4/24/2021 20:28:27'!
content
	^content! !

!MediaTypeEntity methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 13:49:55'!
initialize
	mediaType _ MediaTypeEntry new.
	content _ ''! !

!MediaTypeEntity methodsFor: 'as yet unclassified' stamp: 'jpb 4/24/2021 20:28:39'!
mediaType
	^mediaType! !

!MediaTypeEntity methodsFor: 'testing' stamp: 'jpb 4/25/2021 21:41:00'!
isEmpty
	^content isNil or: [ content isEmpty ]! !

!MediaTypeRegistry class methodsFor: 'media type - reading' stamp: 'jpb 2/8/2021 19:44:02'!
readOnlyTypeFrom: aStream
	"Reads only the media type from the given input stream, it ignores any parameters or suffixes"
	| spaceChar |
	spaceChar _ Character space.
	
	^String streamContents: [:resultStream |
		[
			| peekedChar |
		
			peekedChar _ aStream peek.
		
			aStream atEnd
				or: [ $+ = peekedChar ]
				or: [ spaceChar = peekedChar ]
				or: [ $; = peekedChar ]
		 ] whileFalse: [ resultStream nextPut: aStream next ].
	]! !

!MediaTypeRegistry class methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:46:32'!
initialize! !

!MediaTypeRegistry class methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:25:14'!
lookup: aString! !

!MediaTypeRegistry class methodsFor: 'as yet unclassified' stamp: 'jpb 2/8/2021 19:24:53'!
register: newMediaType! !

!MediaTypeStreamer methodsFor: 'media type parameters' stamp: 'jpb 4/25/2021 22:20:08'!
findParameterKeyNameByName: parameterName
	
	^parameterName asLowercase asSymbol! !

!MediaTypeStreamer methodsFor: 'media type parameters' stamp: 'jpb 4/25/2021 22:20:16'!
findParameterNameByKeyName: keyName
	
	^keyName asString asLowercase! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 21:39:10'!
clearParameters
	| knownParameters |
	knownParameters _ #(#language charset).
	
	knownParameters do: [:keyName | model removeKey: keyName ifAbsent: [ nil ] ].! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 12:01:09'!
next
	self newModel.
	
	self skipUpToMediaTypeStart.
	
	self readType.
	self readSubType.
	
	self readParameters.
	
	^model! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 11:30:38'!
nextChar
	^currentStream next asCharacter ! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 11:53:31'!
peekChar
	^currentStream peek
		ifNotNil: [:value | value asCharacter ]! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 21:36:00'!
readParameterName
	self skipWhitespace.

	^self findParameterKeyNameByName: self readToken! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 21:34:19'!
readParameterValue
	self skipWhitespace.
	
	self atMediaTypeEnd 
		ifTrue: [ ^'' ].
	
	self peekChar = $"
		ifTrue: [ ^self readQuotedString ]
		ifFalse: [ ^self readToken ].! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 21:38:03'!
readParameters

	self clearParameters.
	
	[ self atMediaTypeEnd not and: [ self peekChar = $; ] ]
		whileTrue: [ 
			| attributeName attributeValue |
			self skipAfter: $;.
			
			attributeName _ self readParameterName.
			self skipAfter: $=.
			
			attributeValue _ self readParameterValue.	
			
			model at: attributeName asSymbol put: attributeValue
		]! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 13:04:25'!
readQuotedString	
	| readBuffer |

	self skipWhitespace.

	self atEnd ifTrue: [ ^'' ].
	self atMediaTypeEnd ifTrue: [ ^'' ].
	
	self skipAfter: $".
	readBuffer _ '' writeStream.
	
	[ self atMediaTypeEnd or: [ self peekChar = $" ] ]
		whileFalse: [ readBuffer nextPut: self nextChar ].
			
	self skipAfter: $".
	
	^readBuffer contents.! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 22:18:28'!
readSubType
	"Reads the image/ part of a media type"
	| readBuffer |
	readBuffer _ '' writeStream.
	
	[ self atMediaTypeEnd or: [ self peekChar = $; ] ]
		whileFalse: [ readBuffer nextPut: self nextChar ].
	
	model at: #subType put: readBuffer contents asLowercase.! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 22:18:41'!
readToken
	| readBuffer |
	
	readBuffer _ '' writeStream.
	
	[ self atTokenEnd ]
	 	whileFalse: [ readBuffer nextPut: self nextChar asLowercase ].
		
	^readBuffer contents! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 22:18:37'!
readType
	"Reads the image/ part of a media type"
	| readBuffer |
	readBuffer _ '' writeStream.
	
	[ self atMediaTypeEnd or: [ self peekChar = $/ ] ]
		whileFalse: [ readBuffer nextPut: self nextChar ].
		
	self skipAfter: $/.
	
	model at: #type put: readBuffer contents asLowercase.! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 11:56:14'!
skipAfter: skipCharacter
	| readChar |
	
	readChar _ self nextChar.
	
	skipCharacter = readChar
		ifTrue: [ ^self ]
		ifFalse: [ self error: 'Unexpected character: ' , readChar printString ]! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 11:59:55'!
skipNext
	self nextChar.
	
	^self! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 11:59:05'!
skipUpToMediaTypeStart
	"Skips the stream until it finds a possible media type start"
	[ self atMediaTypeStart ]
		whileFalse: [ self skipNext ].! !

!MediaTypeStreamer methodsFor: 'stream - reading' stamp: 'jpb 4/25/2021 12:42:05'!
skipWhitespace
	| lineEnding |
	
	lineEnding _ String crlfString.

	[
		| peekedChar |
		 self atEnd ifTrue: [ ^self ].

		peekedChar _ self peekChar.
			
		peekedChar isSeparator
			or: [ lineEnding includes: peekedChar ]
	 ]
	whileTrue: [ self nextChar ].! !

!MediaTypeStreamer methodsFor: 'stream - writing' stamp: 'jpb 4/25/2021 21:18:16'!
nextPut: anObject

	currentStream nextPutAll: (anObject at: #type).
	currentStream nextPut: $/.
	currentStream nextPutAll: (anObject at: #subType).

	self nextPutParametersOf: anObject.! !

!MediaTypeStreamer methodsFor: 'stream - writing' stamp: 'jpb 4/25/2021 21:30:57'!
nextPutParameter: keyName of: anObject
	| parameterName parameterValue |

	parameterValue _ anObject at: keyName ifAbsent: [ ^self ].	
	parameterName _ self findParameterNameByKeyName: keyName.
	
	currentStream nextPutAll: '; '.
	currentStream nextPutAll: parameterName.
	currentStream nextPut: $=.

	currentStream nextPut: $".
	currentStream nextPutAll: parameterValue.
	currentStream nextPut: $".! !

!MediaTypeStreamer methodsFor: 'stream - writing' stamp: 'jpb 4/25/2021 21:20:13'!
nextPutParametersOf: anObject
	"Writes out all the media type parameters, if present"
	
	self nextPutParameter: #charset of: anObject.
	self nextPutParameter: #language of: anObject.	
	! !

!MediaTypeStreamer methodsFor: 'stream - testing' stamp: 'jpb 4/25/2021 11:30:25'!
atEnd
	^currentStream atEnd! !

!MediaTypeStreamer methodsFor: 'stream - testing' stamp: 'jpb 4/25/2021 11:39:10'!
atMediaTypeEnd
	| peekedChar |
	
	peekedChar _ self peekChar.

	^self atEnd
		or: [ peekedChar isSeparator ]! !

!MediaTypeStreamer methodsFor: 'stream - testing' stamp: 'jpb 4/25/2021 11:59:19'!
atMediaTypeStart
	^self atMediaTypeEnd not! !

!MediaTypeStreamer methodsFor: 'stream - testing' stamp: 'jpb 4/25/2021 12:52:13'!
atTokenEnd
	| peekedChar disallowedChars |

	self atMediaTypeEnd 
		ifTrue: [ ^true ].
			
	peekedChar _ self peekChar.
	disallowedChars _ '()<>@,;:\"/[]?='.
	
	peekedChar asciiValue > 32
		ifFalse: [ ^true ].
	
	(disallowedChars includes: peekedChar)
		ifTrue: [ ^true ].
		
	^false! !

!MediaTypeStreamer methodsFor: 'initialization' stamp: 'jpb 4/25/2021 13:25:15'!
newModel
	"Creates a new model used for reading and writing"
	model _ MediaTypeEntry new! !

!MediaTypeStreamer methodsFor: 'initialization' stamp: 'jpb 4/24/2021 21:46:57'!
setStream: newStream
	currentStream _ newStream! !

!MediaTypeStreamer class methodsFor: 'as yet unclassified' stamp: 'jpb 4/24/2021 21:26:37'!
on: newStream
	| streamer |
	streamer _ self new.
	streamer setStream: newStream.
	
	^streamer! !

!MediaTypeStreamer class methodsFor: 'as yet unclassified' stamp: 'jpb 4/25/2021 11:51:21'!
readFromString: aString
	| streamer |
	streamer _ self on: aString readStream.
	
	^streamer next! !
MediaTypeRegistry initialize!
