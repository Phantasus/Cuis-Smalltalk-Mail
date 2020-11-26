'From Squeak5.3 of 3 March 2020 [latest update: #19431] on 20 April 2020 at 10:05:14 pm'!
AppRegistry subclass: #MailSender
	instanceVariableNames: ''
	classVariableNames: 'SmtpServer SmtpServerPort UserEmail UserName UserPassword'
	poolDictionaries: ''
	category: 'System-Applications'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MailSender class
	instanceVariableNames: ''!

!MailSender class methodsFor: 'accessing' stamp: 'pre 5/8/2017 10:58'!
smtpServer
	"Answer the server for sending email"

	self isSmtpServerSet ifFalse: [self setSmtpServer].
	SmtpServer isEmpty ifTrue: [ self error: 'no SMTP server specified' ].

	^SmtpServer! !

!MailSender class methodsFor: 'accessing' stamp: 'pre 5/8/2017 11:07'!
smtpServerPort
	"Answer the server for sending email"

	self isSmtpServerPortSet ifFalse: [self setSmtpServerPort].
	SmtpServerPort isNil ifTrue: [ self error: 'no SMTP server port specified' ].

	^SmtpServerPort! !

!MailSender class methodsFor: 'accessing' stamp: 'pre 5/8/2017 11:10'!
userEmail
	"Answer the user name to be used for sending out messages."

	self isUserEmailSet ifFalse: [self setUserEmail].

	UserEmail isEmpty ifTrue: [ self error: 'no user email specified' ].

	^UserEmail! !

!MailSender class methodsFor: 'accessing' stamp: 'pre 5/8/2017 11:10'!
userName
	"Answer the user name to be used for sending out messages."

	self isUserNameSet ifFalse: [self setUserName].

	UserName isEmpty ifTrue: [ self error: 'no user name specified' ].

	^UserName! !

!MailSender class methodsFor: 'accessing' stamp: 'pre 5/8/2017 11:01'!
userPassword

	self isUserPasswordSet ifFalse: [self setUserPassword].

	UserPassword isEmpty ifTrue: [ self error: 'no user name specified' ].

	^ UserPassword! !


!MailSender class methodsFor: 'communication' stamp: 'ads 5/11/2003 21:11'!
sendMessage: aMailMessage

	self default ifNotNil: [self default sendMailMessage: aMailMessage]! !


!MailSender class methodsFor: 'settings' stamp: 'rbb 3/1/2005 10:59'!
setSmtpServer
	"Set the SMTP server used to send outgoing messages via"
	SmtpServer ifNil: [SmtpServer := ''].
	SmtpServer := UIManager default
		request: 'What is your mail server for outgoing mail?'
		initialAnswer: SmtpServer.
! !

!MailSender class methodsFor: 'settings' stamp: 'pre 5/8/2017 11:16'!
setSmtpServerPort
	"Set the SMTP server port used to send outgoing messages via"
	SmtpServerPort ifNil: [SmtpServerPort := 25].
	SmtpServerPort := (UIManager default
		request: 'What is your mail server port for outgoing mail?'
		initialAnswer: SmtpServerPort asString) asNumber.
! !

!MailSender class methodsFor: 'settings' stamp: 'pre 5/8/2017 11:11'!
setUserEmail
	"Change the user's email for use in composing messages."

	(UIManager default
			request: 'What is your email address?\(This is the address other people will reply to you)' withCRs
			initialAnswer: (UserEmail ifNil: [UserEmail := '']))
		ifNotNil: [:answer | UserEmail := answer]! !

!MailSender class methodsFor: 'settings' stamp: 'pre 5/8/2017 11:11'!
setUserName

	(UIManager default
			request: 'What is your user name on the SMTP server?' withCRs
			initialAnswer: (UserName ifNil: [UserName := '']))
		ifNotNil: [:answer | UserName := answer]! !

!MailSender class methodsFor: 'settings' stamp: 'pre 5/8/2017 11:13'!
setUserPassword

	UserPassword ifNil: [UserPassword := ''].
	(UIManager default
			requestPassword: 'What is your server passwort?' withCRs)
		ifNotNil: [:answer | UserPassword := answer]! !


!MailSender class methodsFor: 'testing' stamp: 'pre 5/8/2017 11:06'!
isSmtpServerPortSet
	^ SmtpServerPort notNil and: [SmtpServerPort isNumber]
! !

!MailSender class methodsFor: 'testing' stamp: 'dvf 5/11/2002 01:31'!
isSmtpServerSet
	^ SmtpServer notNil and: [SmtpServer notEmpty]
! !

!MailSender class methodsFor: 'testing' stamp: 'pre 5/8/2017 11:11'!
isUserEmailSet
	^ UserEmail notNil and: [UserEmail notEmpty]
! !

!MailSender class methodsFor: 'testing' stamp: 'pre 5/8/2017 10:58'!
isUserNameSet
	^ UserName notNil and: [UserName notEmpty]
! !

!MailSender class methodsFor: 'testing' stamp: 'pre 5/8/2017 11:00'!
isUserPasswordSet
	^ UserPassword notNil and: [UserPassword notEmpty]
! !


!MailSender class methodsFor: 'initialize-release' stamp: 'pre 5/8/2017 11:15'!
reset

	UserName := UserPassword := UserEmail := SmtpServer := SmtpServerPort := nil.! !
