'From Cuis 5.0 [latest update: #4579] on 22 May 2021 at 5:26:27 pm'!
'Description Sends mails out with the operating system "sendmail" facility

License: MIT
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Mail-Sendmail-Sender' 1 0!
!requires: 'OSProcess' 1 17 nil!
SystemOrganization addCategory: 'Mail-Sendmail-Sender'!


!classDefinition: #MailSendmailSender category: 'Mail-Sendmail-Sender'!
MailSender subclass: #MailSendmailSender
	instanceVariableNames: 'sendmailCommand storeFilename recipientAddress accountAddress'
	classVariableNames: 'InternalSoftwareError OkExit UnavailableError UnknownHostnameError UnknownUserError UsageError'
	poolDictionaries: ''
	category: 'Mail-Sendmail-Sender'!
!classDefinition: 'MailSendmailSender class' category: 'Mail-Sendmail-Sender'!
MailSendmailSender class
	instanceVariableNames: ''!


!MailSendmailSender commentStamp: '<historical>' prior: 0!
Sends out a mail through a local "sendmail" compatible program (postfix, msmtp, exim, etc)!

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 16:56:55'!
cleanupMessage
	| storeEntry |
	storeFilename ifNil: [ ^self ].
	
	storeEntry _ ('/tmp/' , storeFilename).
	
	(OSProcess fileExists: storeEntry)
		ifTrue: [ 	OSProcess deleteFileNamed: storeEntry. ].
		
	storeFilename _ nil.! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 12:32:32'!
initialize
	super initialize.

	sendmailCommand _ 'sendmail'.! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 16:26:55'!
newStoreFilename
	| time parts base baseName |
	time _ DateAndTime now.
	base _ 2 raisedTo: 16.
	
	parts _ {
		time yearNumber * base atRandom. 
		time monthIndex * base atRandom.
		time dayOfMonth * base atRandom. 
		time hour24 * base atRandom.
		time minute * base atRandom.
		time second * base atRandom.
	}.

	baseName _ String streamContents: [:stream |
		parts do: [:part |
			(part + base atRandom) printOn: stream base: 36  ]].
	
	^baseName , '.eml'! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 17:04:30'!
newStoreStreamNamed: aString
	| actualPath | 
	
	actualPath _ '/tmp/' , aString.
	
	(OSProcess fileExists: actualPath)
		ifTrue: [ OSProcess deleteFileNamed: actualPath ].
	
	^OSProcess newFileNamed: actualPath! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 17:25:10'!
runSendmail
	| storeEntry sendCommand |

	storeEntry _ ('/tmp/' , storeFilename).
	sendCommand _  'cat ' , storeEntry , ' | ' , sendmailCommand.
	
	(OSProcess fileExists: storeEntry)
		ifTrue: [ | newProcess |
			newProcess _ OSProcess command: sendCommand.
			[ newProcess isRunning ] whileTrue: [ "do nothing" ].				
		]! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 17:09:46'!
sendMessage: aMailMessage
	
	[
		self storeMessage: aMailMessage.
		self runSendmail.
	] ensure: [ 	self cleanupMessage ].
	! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 17:00:59'!
sendmailCommand: newCommand
	sendmailCommand _ newCommand! !

!MailSendmailSender methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 17:13:14'!
storeMessage: aMailMessage
	| storeStream |
	
	storeFilename _ storeFilename ifNil: [ self newStoreFilename ].
	storeStream _ self newStoreStreamNamed: storeFilename.
	
	[
		| streamer |
		streamer _ MailMessageStreamer on: storeStream.
		streamer nextPut: aMailMessage.
	] ensure: [ storeStream close ].
	
	accountAddress _ aMailMessage from.
	! !

!MailSendmailSender class methodsFor: 'as yet unclassified' stamp: 'jpb 5/22/2021 11:36:58'!
initialize
	OkExit _ 0.
	UsageError _ 64.
	UnknownUserError _ 67.
	UnknownHostnameError _ 68.
	UnavailableError _ 69.
	InternalSoftwareError _ 70.
! !
MailSendmailSender initialize!
