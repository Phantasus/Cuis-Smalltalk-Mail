'From Cuis 5.0 [latest update: #4579] on 28 May 2021 at 6:26:06 pm'!
'Description Clients for POP3, SMTP and IMAP protocols

Author: Others (see AUTHORs.md) and Josef Philip Bernhart (jpb)
License: MIT'!
!provides: 'Mail-Remote' 1 1!
SystemOrganization addCategory: 'Mail-Remote'!


!classDefinition: #ICAddressBook category: 'Mail-Remote'!
OrderedCollection subclass: #ICAddressBook
	instanceVariableNames: ''
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICAddressBook class' category: 'Mail-Remote'!
ICAddressBook class
	instanceVariableNames: ''!

!classDefinition: #SMTPClientTest category: 'Mail-Remote'!
TestCase subclass: #SMTPClientTest
	instanceVariableNames: 'smtp socket'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'SMTPClientTest class' category: 'Mail-Remote'!
SMTPClientTest class
	instanceVariableNames: ''!

!classDefinition: #ICNullStream category: 'Mail-Remote'!
SocketStream subclass: #ICNullStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICNullStream class' category: 'Mail-Remote'!
ICNullStream class
	instanceVariableNames: ''!

!classDefinition: #ICAccountInfo category: 'Mail-Remote'!
Object subclass: #ICAccountInfo
	instanceVariableNames: 'accountName host port username password ssl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICAccountInfo class' category: 'Mail-Remote'!
ICAccountInfo class
	instanceVariableNames: ''!

!classDefinition: #ICCommand category: 'Mail-Remote'!
Object subclass: #ICCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICCommand class' category: 'Mail-Remote'!
ICCommand class
	instanceVariableNames: ''!

!classDefinition: #ICEmail category: 'Mail-Remote'!
Object subclass: #ICEmail
	instanceVariableNames: 'body header folder messageID uniqueID'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICEmail class' category: 'Mail-Remote'!
ICEmail class
	instanceVariableNames: ''!

!classDefinition: #ICEndPoint category: 'Mail-Remote'!
Object subclass: #ICEndPoint
	instanceVariableNames: 'stream accountInfo loggedIn rootFolder lastResponse uids hierarchyDelimiter currentFolderName fatalErrorOccured folderNameOfTrash readWriter'
	classVariableNames: 'ConnectionConfigurations'
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICEndPoint class' category: 'Mail-Remote'!
ICEndPoint class
	instanceVariableNames: ''!

!classDefinition: #ICFileReadWriter category: 'Mail-Remote'!
Object subclass: #ICFileReadWriter
	instanceVariableNames: 'directoryToFolderDictionary endpoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICFileReadWriter class' category: 'Mail-Remote'!
ICFileReadWriter class
	instanceVariableNames: ''!

!classDefinition: #ICFolder category: 'Mail-Remote'!
Object subclass: #ICFolder
	instanceVariableNames: 'parent childFolders folderName emails endpoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICFolder class' category: 'Mail-Remote'!
ICFolder class
	instanceVariableNames: ''!

!classDefinition: #ICParser category: 'Mail-Remote'!
Object subclass: #ICParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICParser class' category: 'Mail-Remote'!
ICParser class
	instanceVariableNames: ''!

!classDefinition: #ICProtocolFolder category: 'Mail-Remote'!
Object subclass: #ICProtocolFolder
	instanceVariableNames: 'hierarchyDelimiter folderPath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICProtocolFolder class' category: 'Mail-Remote'!
ICProtocolFolder class
	instanceVariableNames: ''!

!classDefinition: #ICStreamWrapper category: 'Mail-Remote'!
Object subclass: #ICStreamWrapper
	instanceVariableNames: 'host port stream lastResponse ssl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ICStreamWrapper class' category: 'Mail-Remote'!
ICStreamWrapper class
	instanceVariableNames: ''!

!classDefinition: #POP3Client category: 'Mail-Remote'!
Object subclass: #POP3Client
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'POP3Client class' category: 'Mail-Remote'!
POP3Client class
	instanceVariableNames: ''!

!classDefinition: #SMTPClient category: 'Mail-Remote'!
ProtoObject subclass: #SMTPClient
	instanceVariableNames: ''
	classVariableNames: 'UseTLSIfAvailable'
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'SMTPClient class' category: 'Mail-Remote'!
SMTPClient class
	instanceVariableNames: ''!


!ICAddressBook commentStamp: 'LW 8/1/2020 11:23' prior: 0!
An ICAddressBook is a collection for the user's contacts containing email addresses of all accounts.
This is a singleton which can be accessed with #new.!

!ICNullStream commentStamp: 'tg 7/25/2019 12:25' prior: 0!
An ICNullStream is a Null Object resembling an SocketStream. !

!ICAccountInfo commentStamp: 'LW 8/1/2020 11:20' prior: 0!
An ICAccountInfo is a dataobject holding information needed to connect to a server such as server address and user credentials. It also ensures basic IMAP datatype validity.

Instance Variables

	accountName: Name of the account set by the user.
	host: Hostname of the IMAP server.
	port: Port of the IMAP service on the server. Default: 993.
	username: Username to login at the IMAP server.
	password: Password of the user to login at the server. Will be deleted after login.
	
	!

!ICCommand commentStamp: 'pm 7/23/2019 15:11' prior: 0!
ICCommands builds commands to send to the server.
The commands are conform to the IMAProtocol.!

!ICEmail commentStamp: 'tg 7/19/2019 10:33' prior: 0!
An ICEmail is an object resembling an email residing on a remote server. This is automatically created when calling ICFolder>>fetchHeaders.

Instance Variables
	body:		The body of the ICEmail. ICEmail>>retrieveBody needs to be called to fill the body.
	folder:		The ICFolder this ICEmail resides in.
	header:		The header of the ICEmail. This gets parsed into the instance variables date, from, to and subject.
	date:		https://tools.ietf.org/html/rfc2822#page-14, date represents the local time and the zone is the timezone information.
			!

!ICEndPoint commentStamp: 'LW 8/2/2020 14:03' prior: 0!
An ICEndPoint is main class for our framework, handling server communication.

Instance Variables
	stream:					Contains an ICStreamWrapper, resembling the connection to the server.
	accountInfo:			Contains the ICAccountInfo, i.e. the username and password of the current connection.
	loggedIn:				Returns a boolean value indicating if the user is currently logged in.
	rootFolder:				A virtual ICFolder containing all parsed folders from the server as children.
	lastResponse:			Contains the complete (possibly multi-line) answer for the last sent command.
	uids: 					Collection of unique ids of messages.
	hierarchyDelimiter:		Symbol indicating the delimiter for hierachies.
	currentFolderName: 	Folder name string of the currently requesting folder.
	fatalErrorOccured: 		Boolean indicator whether an error occured or not after a request.
      folderNameOfTrash: 	Folder name string of the trash folder on the server.
	readWriter: 			Responsible for disk I/O. Instance of ICFileReadWriter.!

!ICFileReadWriter commentStamp: 'LW 8/1/2020 11:14' prior: 0!
An ICFileReadWriter is a JSON File Writer and Reader handling the file system storage of mails.

Instance Variables:
	directoryToFolderDictionary: Dictionary that maps a folder instance to each directory.
	endpoint: Endpoint instance.!

!ICFolder commentStamp: 'jwe 7/28/2016 14:20' prior: 0!
An ICFolder is an object resembling an IMAP folder on a remote server.


Instance Variables
	childFolders:		All child folders of this folder. This is automatically filled in by the ICEndPoint.
	emails:		This contains all ICEmails of this folder after calling ICFolder>>fetchHeaders.
	endpoint:		Back reference to the ICEndPoint who created this ICFolder.
	name:		The name of the folder.
	parent:		The parent ICFolder. This is automatically filled in by the ICEndPoint.			!

!ICParser commentStamp: 'pm 7/12/2019 20:20' prior: 0!
An ICParser is a stateless method bin that can parse a header, email body and folder path from a response.!

!ICProtocolFolder commentStamp: 'pm 7/12/2019 18:04' prior: 0!
An ICProtocolFolder is a wrapper for a folder and contains a folder path and a hierarchy delimiter

Instance Variables
	folderPath:					String
	hierarchyDelimiter:		String
!

!ICStreamWrapper commentStamp: 'ms 7/28/2016 11:51' prior: 0!
An ICStreamWrapper capsules low-level stream interactions.

Instance Variables
	host:		Contains the host name.
	lastResponse:		Contains the (possibly multi-line) response to our last sent command.
	port:		Contains the port.
	ssl:		A boolean flag indicating whether SSL is enabled.
	stream:		Contains the SocketStream (if SSL is disabled) or SecureSocketStream (if SSL is enabled) of our connection.!

!POP3Client commentStamp: '<historical>' prior: 0!
This class implements POP3 (Post Office Protocol 3) as specified in RFC 1939.  (see http://www.ietf.org/rfc.html)

You can use it to download email from the mail server to your personal mail program.

To see an example of it's use, see POPSocket class>>example.!

!SMTPClient commentStamp: '<historical>' prior: 0!
This class implements the SMTP (mail sending) protocol specified in RFC 821.

HELO <SP> <domain> <CRLF>

MAIL <SP> FROM:<reverse-path> <CRLF>

RCPT <SP> TO:<forward-path> <CRLF>

DATA <CRLF>

RSET <CRLF>

SEND <SP> FROM:<reverse-path> <CRLF>

SOML <SP> FROM:<reverse-path> <CRLF>

SAML <SP> FROM:<reverse-path> <CRLF>

VRFY <SP> <string> <CRLF>

EXPN <SP> <string> <CRLF>

HELP [<SP> <string>] <CRLF>

NOOP <CRLF>

QUIT <CRLF>

TURN <CRLF>

!

!ICAccountInfo methodsFor: 'printing' stamp: 'fr 7/26/2019 16:52'!
printOn: aStream

	aStream nextPut: ({
		self accountName.
		self host.
		self port.
		self username.
		self password.
		self ssl
	} joinSeparatedBy: ' ')! !

!ICAddressBook methodsFor: 'action' stamp: 'LW 6/16/2020 09:51'!
addEmail: aString

	self addIfNotPresent: aString
	
! !

!ICAddressBook methodsFor: 'action' stamp: 'LW 6/16/2020 09:51'!
find: anEntry

	| index |
	index := self indexOf: anEntry.
	^ self at: index! !

!ICAddressBook methodsFor: 'initialize' stamp: 'LW 6/16/2020 09:51'!
feedMeWithEntries: anEmailCollection

	anEmailCollection do: [:emailAccount | 
		self 
			readRootFoldersMailsFrom: emailAccount;
			readChildFoldersMailsFrom: emailAccount.]! !

!ICAddressBook methodsFor: 'initialize' stamp: 'LW 6/16/2020 09:50'!
readChildFoldersMailsFrom: anEmailAccount

	anEmailAccount rootFolder recursiveChildFolders do: [:childFolder |
			childFolder emails do: [:childFolderEmail | 
				self addEmail: childFolderEmail senderAddressFromHeader]]! !

!ICAddressBook methodsFor: 'initialize' stamp: 'LW 6/10/2020 13:32'!
readRootFoldersMailsFrom: anEmailAccount

	anEmailAccount rootFolder emails do: [:rootFolderEmail | 
			self addEmail: rootFolderEmail senderAddressFromHeader]! !

!ICAddressBook class methodsFor: 'instance creation' stamp: 'hg 6/24/2020 12:34'!
new
	Instance ifNil: [Instance := super new: 10].
	^ Instance! !

!SMTPClientTest methodsFor: 'running' stamp: 'fbs 3/22/2004 13:11'!
setUp
	socket := MockSocketStream on: ''.
	smtp := SMTPClient new.
	smtp stream: socket.! !

!SMTPClientTest methodsFor: 'testing' stamp: 'fbs 3/23/2004 17:15'!
testMailFrom
	smtp mailFrom: 'frank@angband.za.org'.
	self assert: socket outStream contents = ('MAIL FROM: <frank@angband.za.org>', String crlf).
	
	socket resetOutStream.
	smtp mailFrom: '<frank@angband.za.org>'.
	self assert: socket outStream contents = ('MAIL FROM: <frank@angband.za.org>', String crlf).
	
	socket resetOutStream.
	smtp mailFrom: 'Frank <frank@angband.za.org>'.
	self assert: socket outStream contents = ('MAIL FROM: <frank@angband.za.org>', String crlf).! !

!ICNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:02'!
close

	^ true! !

!ICNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:04'!
isConnected

	^ false! !

!ICNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:02'!
nextLine

	^ String empty! !

!ICNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:07'!
sendCommand: aString

	^ false! !

!ICAccountInfo methodsFor: 'comparing' stamp: 'NH 7/15/2020 10:31'!
= anotherAccountInfo
	^ (self class = anotherAccountInfo class)
		and: [self asDictionary = anotherAccountInfo asDictionary]! !

!ICAccountInfo methodsFor: 'comparing' stamp: 'LW 8/1/2020 12:04'!
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self username bitXor: (self accountName bitXor: (self host bitXor: self port hash))! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:20'!
accountName

	^ accountName ifNil: [accountName := self class initialAccountName]! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:35'!
accountName: aString

	accountName := aString! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:06'!
host

	^ host ifNil: [host := self class invalidHost]! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:11'!
host: aString

	host := aString! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'JJ 6/12/2020 11:43'!
missingFields
	
	^ (self asDictionary select: [ :value | (value asString isEmpty) | (value = nil asString) ]) keys! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/15/2019 12:11'!
password
	
	^ password ifNil: [password := self class invalidPassword]! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:18'!
password: aString
	
	(self canConvert: aString) ifFalse: [self error: (aString, ' is not IMAP convertable')].
	password := aString! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:09'!
port

	^ port ifNil: [port := self class invalidPort]! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:11'!
port: aNumber

	port := aNumber! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:21'!
ssl

	^ ssl ifNil: [ssl := self class initialSsl]! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:34'!
ssl: aBool

	ssl := aBool! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'fr 7/26/2019 15:37'!
username

	^ username ifNil: [username := self class invalidUsername]! !

!ICAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:18'!
username: aString

	(self canConvert: aString) ifFalse: [self error: (aString, ' is not IMAP convertable')].
	username := aString! !

!ICAccountInfo methodsFor: 'validating' stamp: 'NH 7/15/2020 09:58'!
accountNameUnused

	^ ICEndPoint connectionConfigurations
			noneSatisfy: [:each | (self accountName) = (each accountName)]! !

!ICAccountInfo methodsFor: 'validating' stamp: 'fr 7/26/2019 15:37'!
canConvert: aString
	
	^ ('"|\\' asRegex matchesIn: aString) isEmpty! !

!ICAccountInfo methodsFor: 'validating' stamp: 'tg 7/15/2019 12:08'!
hasValidServerInfo

	^ self host ~= self class invalidHost
		and: [self port ~= self class invalidPort]! !

!ICAccountInfo methodsFor: 'validating' stamp: 'tg 7/15/2019 12:08'!
hasValidUserInfo

	^ self username ~= self class invalidUsername
		and: [self password ~= self class invalidPassword]! !

!ICAccountInfo methodsFor: 'validating' stamp: 'fr 7/26/2019 15:57'!
isValid

	^ self hasValidServerInfo and: [self hasValidUserInfo]! !

!ICAccountInfo methodsFor: 'converting' stamp: 'tg 7/18/2019 23:07'!
asDictionary
	
	| dict |
	dict := Dictionary new.
	dict at: 'ssl' put: self ssl;
		at: 'accountName' put: self accountName;
		at: 'address' put: self host;
		at: 'port' put: self port;
		at: 'username' put: self username;
		at: 'password' put: self password.
	
	^ dict
	! !

!ICAccountInfo methodsFor: 'converting' stamp: 'tg 7/10/2019 17:18'!
passwordAsIMAPString
	
	^ '"', self password, '"'! !

!ICAccountInfo methodsFor: 'converting' stamp: 'tg 7/10/2019 17:18'!
usernameAsIMAPString

	^ '"', self username, '"'! !

!ICAccountInfo methodsFor: 'action' stamp: 'LW 7/31/2020 11:39'!
eraseStoredPassword
	
	self password: ''! !

!ICAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 17:43'!
initialAccountName

	^ String empty! !

!ICAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 17:43'!
initialSsl

	^ true! !

!ICAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:08'!
invalidHost

	^ String empty! !

!ICAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:10'!
invalidPassword

	^ String empty! !

!ICAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:09'!
invalidPort

	^ -1! !

!ICAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:10'!
invalidUsername

	^ String empty! !

!ICAccountInfo class methodsFor: 'instance creation' stamp: 'NH 7/15/2020 10:14'!
newWith: aDataDictionary
	
	^ self new
		accountName: (aDataDictionary at: 'accountName' ifAbsent: [nil]);
		host: (aDataDictionary at: 'address' ifAbsent: [self invalidHost]);
		port: ((aDataDictionary at: 'port' ifAbsent: [self invalidPort]) asNumber);
		username: (aDataDictionary at: 'username' ifAbsent: [self invalidUsername]);
		password: (aDataDictionary at: 'password' ifAbsent: [self invalidPassword]);
		ssl: (aDataDictionary at: 'ssl' ifAbsent: [self initialSsl])! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:18'!
allUIDs

	^ self join: {'UID SEARCH ALL'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:46'!
deleteEmail: aMessageId

	^ self join: {'STORE' . aMessageId . '+FLAGS \Deleted'}! !

!ICCommand class methodsFor: 'commands' stamp: 'NH 8/2/2020 11:35'!
expungeEmails

	^ self join: {'EXPUNGE'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:48'!
fetchBody: aMessageId

	^ self join: {'FETCH' . aMessageId . 'body[TEXT]'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/24/2019 21:18'!
fetchFlagsForUIDsFrom: aBeginUID to: anEndUID

	^ self join: {'UID FETCH' . (aBeginUID asString, ':', anEndUID asString) . '(FLAGS)'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/24/2019 21:18'!
fetchHeadersForUIDsFrom: aBeginId to: anEndId

	^ self join: {
		'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:50'!
listSubfoldersOf: aFolder filterBy: aFilter

	^ self join: {'LIST' . self putInQuotes: aFolder . self putInQuotes: aFilter}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:52'!
loginWith: anAccountInfo

	^ self join: {'LOGIN' . anAccountInfo usernameAsIMAPString . anAccountInfo passwordAsIMAPString}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:53'!
logout

	^ self join: {'LOGOUT'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:54'!
moveEmail: aMessageId to: aFolder

	^ self join: {'MOVE' . aMessageId . self putInQuotes: aFolder}
! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 15:09'!
noop

	^ self join: {'NOOP'}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 18:29'!
resetFlag: aFlagString for: aMessageId

	(self isValidFlag: aFlagString) ifFalse: [self error: 'Trying to send invalid Flag'].
	^ self join: {'STORE' . aMessageId . '-FLAGS \', aFlagString withFirstCharacterUppercase}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 18:24'!
select: aFolder

	^ self join: {'SELECT' . self putInQuotes: aFolder}! !

!ICCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 18:29'!
setFlag: aFlagString for: aMessageId

	(self isValidFlag: aFlagString) ifFalse: [self error: 'Trying to send invalid Flag'].
	^ self join: {'STORE' . aMessageId . '+FLAGS \', aFlagString withFirstCharacterUppercase}! !

!ICCommand class methodsFor: 'validation' stamp: 'JJ 7/31/2020 13:55'!
isValidFlag: aFlagString

	^ {'Seen' . 'Flagged' . 'Deleted'} includes: aFlagString withFirstCharacterUppercase! !

!ICCommand class methodsFor: 'command building' stamp: 'pm 7/24/2019 21:24'!
join: aCommandArray

	^ aCommandArray asOrderedCollection
			addFirst: self protocolCommandStart;
			joinSeparatedBy: self protocolBlank! !

!ICCommand class methodsFor: 'command building' stamp: 'pm 7/25/2019 17:25'!
putInQuotes: aString

	^ ICCommand protocolQuote, aString, ICCommand protocolQuote! !

!ICCommand class methodsFor: 'constants' stamp: 'pm 7/24/2019 21:21'!
protocolBlank

	^ ' '! !

!ICCommand class methodsFor: 'constants' stamp: 'pm 7/24/2019 21:21'!
protocolCommandStart

	^ '.'! !

!ICCommand class methodsFor: 'constants' stamp: 'pm 7/24/2019 21:21'!
protocolQuote

	^ '"'! !

!ICEmail methodsFor: 'comparing' stamp: 'hg 7/30/2020 11:06'!
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ self header = anObject header
		and: [ 
			self messageID = anObject messageID
				and: [ self body = anObject body and: [ self folder = anObject folder and: [ self uniqueID = anObject uniqueID ] ] ] ]! !

!ICEmail methodsFor: 'comparing' stamp: 'hg 7/30/2020 11:06'!
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self header hash
		bitXor: (self messageID hash bitXor: (self body hash bitXor: (self folder hash bitXor: self uniqueID hash)))! !

!ICEmail methodsFor: 'converting' stamp: 'AR 7/28/2016 14:06'!
asString

	^ self headerAsString, String cr, String cr, self bodyAsString, String cr! !

!ICEmail methodsFor: 'converting' stamp: 'AR 7/28/2016 13:58'!
bodyAsString

	^ self body asString

	! !

!ICEmail methodsFor: 'converting' stamp: 'C.G. 7/25/2018 13:47'!
headerAsString

	| headerFields |
	
	headerFields := self header keys sorted.
	^ (headerFields collect: [:headerField |
		headerField, ': ', (self header at: headerField)]) joinSeparatedBy: String cr! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/3/2019 21:27'!
body

	^ body ifNil: [body := String empty]! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:34'!
body: aString

	body := aString! !

!ICEmail methodsFor: 'accessing' stamp: 'tg 7/19/2019 11:31'!
dateFormatted

	| date formatted |
		
	date := DateAndTime fromSeconds: self dateInSecondsSinceSqueakEpoch + DateAndTime localOffset asSeconds.
	
	formatted := ((date dayOfMonth asString padded: #left to: 2 with: $0) ,'.', 
			 (date month asString padded: #left to: 2 with: $0), '.',
			 (date year asString padded: #left to: 2 with: $0),' ',
			 (date hour24 asString padded: #left to: 2 with: $0),':',
			 (date minute asString padded: #left to: 2 with: $0)).
			
	^ formatted! !

!ICEmail methodsFor: 'accessing' stamp: 'tg 7/26/2019 21:04'!
dateInSecondsSince1980
	
	^ MailMessage new timeFrom: self date
! !

!ICEmail methodsFor: 'accessing' stamp: 'tg 7/19/2019 10:35'!
dateInSecondsSinceSqueakEpoch	
	
	^ self dateInSecondsSince1980 + (DateAndTime year: 1980 day: 1) asSeconds
! !

!ICEmail methodsFor: 'accessing' stamp: 'ms 7/10/2016 13:31'!
folder

	^ folder! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/14/2019 14:44'!
folder: anICFolder

	folder := anICFolder! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/3/2019 21:28'!
header

	^ header ifNil: [header := Dictionary new]! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:37'!
header: aDictionary

	header := aDictionary! !

!ICEmail methodsFor: 'accessing' stamp: 'ms 7/10/2016 13:59'!
messageID

	^ messageID! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:41'!
messageID: aNumber

	messageID := aNumber! !

!ICEmail methodsFor: 'accessing' stamp: 'hg 7/29/2020 15:25'!
serializeToJson

	^ Json render: (
		JsonObject newFrom: {
			'header' -> (JsonObject newFrom: self header).
			'body' -> self body.
			'messageID' -> self messageID.
			'uid' -> self uniqueID})! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/2/2019 15:58'!
uniqueID

	^ uniqueID ifNil: [uniqueID := 0]! !

!ICEmail methodsFor: 'accessing' stamp: 'pm 6/2/2019 15:58'!
uniqueID: aString

	uniqueID := aString! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentTransferEncoding

	^ self header at: #contentTransferEncoding ifAbsent: String empty! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentTransferEncoding: aContentTransferEncoding

	self header at: #contentTransferEncoding put: aContentTransferEncoding! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentType

	^ self header at: #contentType ifAbsent: String empty! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentType: aContentType

	self header at: #contentType put: aContentType! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
date

	^ self header at: #date ifAbsent: String empty! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
date: aDate

	self header at: #date put: aDate! !

!ICEmail methodsFor: 'accessing-header' stamp: 'DH 7/19/2018 21:58'!
deleted

	^ self header at: #deleted ifAbsent: [false]! !

!ICEmail methodsFor: 'accessing-header' stamp: 'DH 7/19/2018 19:43'!
deleted: aFlag

	self header at: #deleted put: aFlag ! !

!ICEmail methodsFor: 'accessing-header' stamp: 'LW 8/1/2020 12:06'!
deserializeFrom: aJson

	self header: (Dictionary newFrom: (aJson at: 'header' ifAbsent: [JsonObject new]));
		body: (aJson at: 'body');
		messageID: (aJson at: 'messageID');
		uniqueID: (aJson at: 'uid')! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
flagged

	^ self header at: #flagged ifAbsent: false! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
flagged: aFlag

	self header at: #flagged put: aFlag! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
from

	^ self header at: #from ifAbsent: String empty! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
from: aSender

	self header at: #from put: aSender! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
seen

	^ self header at: #seen ifAbsent: true! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
seen: aFlag

	self header at: #seen put: aFlag! !

!ICEmail methodsFor: 'accessing-header' stamp: 'hg 7/3/2020 16:10'!
sender

	| fromCollection |
	fromCollection := self from findBetweenSubStrs: '<>'.
	^ (fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: [ '' ]])! !

!ICEmail methodsFor: 'accessing-header' stamp: 'LW 8/2/2020 13:58'!
senderAddressFromHeader

	^ (MailAddressParser addressesIn: self from) first! !

!ICEmail methodsFor: 'accessing-header' stamp: 'tg 7/19/2019 11:45'!
subject

	^ self header at: #subject ifAbsent: String empty! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
subject: aSubject

	self header at: #subject put: aSubject! !

!ICEmail methodsFor: 'accessing-header' stamp: 'hg 7/30/2020 11:25'!
to

	^ self header at: #to ifAbsent: Array new! !

!ICEmail methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
to: aReceiver

	self header at: #to put: aReceiver! !

!ICEmail methodsFor: 'action' stamp: 'lvm 5/20/2018 20:10'!
open

	ICEmailDialog openWith: self! !

!ICEmail methodsFor: 'action' stamp: 'JJ 8/2/2020 15:33'!
retrieveBody
	
	"this is the only action that the email has to be responsible for, because it is called when an email is opened"
	self folder endpoint retrieveBody: self.

	^'Content-Type: ', (self contentType), Character cr,
		'Content-Transfer-Encoding: ', self contentTransferEncoding,
		Character cr, Character cr, self body! !

!ICEmail class methodsFor: 'instance creation' stamp: 'hg 7/30/2020 09:50'!
newFromJsonStream: aStream
	
	^ self basicNew
		deserializeFrom: (Json readFrom: aStream);
		initialize;
		yourself! !

!ICEndPoint methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:23'!
accountInfo

	^ accountInfo ifNil: [accountInfo := ICAccountInfo new]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:24'!
accountInfo: anICAccountInfo

	accountInfo := anICAccountInfo! !

!ICEndPoint methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 13:50'!
currentFolderName

	^ currentFolderName! !

!ICEndPoint methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 13:50'!
currentFolderName: aFolderName

	currentFolderName := aFolderName! !

!ICEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 21:05'!
fatalErrorOccured

	^ fatalErrorOccured ifNil: [fatalErrorOccured := false]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 21:05'!
fatalErrorOccured: aBoolean
	
	fatalErrorOccured := aBoolean! !

!ICEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 14:12'!
folderNameOfTrash

	^ folderNameOfTrash! !

!ICEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 14:13'!
folderNameOfTrash: aNameString

	folderNameOfTrash := aNameString! !

!ICEndPoint methodsFor: 'accessing' stamp: 'mw 5/11/2018 10:37'!
hierarchyDelimiter

	^ hierarchyDelimiter
	! !

!ICEndPoint methodsFor: 'accessing' stamp: 'mw 5/11/2018 10:37'!
hierarchyDelimiter: aSymbol

	hierarchyDelimiter := aSymbol

	! !

!ICEndPoint methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:09'!
host

	^ self accountInfo host! !

!ICEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:10'!
lastResponse

	^ lastResponse ifNil: [lastResponse := OrderedCollection new]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'lvm 5/24/2018 10:16'!
lastResponse: anOrderedCollection

	lastResponse := anOrderedCollection! !

!ICEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:07'!
loggedIn

	^ loggedIn ifNil: [loggedIn := false]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'js 5/15/2016 13:09'!
loggedIn: aBool

	loggedIn := aBool! !

!ICEndPoint methodsFor: 'accessing' stamp: 'NH 7/30/2020 21:43'!
readWriter
	^ readWriter ifNil: [readWriter := ICFileReadWriter newWith: self]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'NH 7/30/2020 21:42'!
readWriter: anObject
	readWriter := anObject! !

!ICEndPoint methodsFor: 'accessing' stamp: 'hg 7/29/2020 10:50'!
rootDirectoryName
	
	^ (SecureHashAlgorithm new 
		hashMessage: self host, self username) 
			asString first: self class accountFolderHashRelevantCharacters! !

!ICEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:09'!
rootFolder

	^ rootFolder ifNil: [rootFolder := ICFolder newRootFolderWith: self]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'js 6/10/2016 15:09'!
rootFolder: anICFolder

	rootFolder := anICFolder! !

!ICEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:08'!
stream

	^ stream ifNil: [stream := ICStreamWrapper new]! !

!ICEndPoint methodsFor: 'accessing' stamp: 'js 6/7/2016 10:17'!
stream: anICStreamWrapper

	stream := anICStreamWrapper! !

!ICEndPoint methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 13:59'!
uids

	^ uids! !

!ICEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:52'!
uids: anOrderedCollection

	uids := anOrderedCollection! !

!ICEndPoint methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:09'!
username

	^ self accountInfo username! !

!ICEndPoint methodsFor: 'error handling' stamp: 'tg 7/10/2019 19:29'!
checkConnected
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	self stream isConnected 
		ifFalse: [
			self fatalErrorOccured: true.
			^ false].
  
	^ true! !

!ICEndPoint methodsFor: 'error handling' stamp: 'pm 7/25/2019 17:59'!
checkForBadRequest

	(self fatalErrorOccured)
 		ifTrue: [^ false].
  
	(ICParser responseIsError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		^ Error signal: self class errorBadProtocol].
 
	^ false! !

!ICEndPoint methodsFor: 'error handling' stamp: 'tg 7/26/2019 11:43'!
checkForParameterError
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	(ICParser responseIsParameterError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		self inform: 'Wrong username or password'.
		^ true].
  
	^ false! !

!ICEndPoint methodsFor: 'login' stamp: 'tg 7/15/2019 12:44'!
checkLoggedIn
  
	(self fatalErrorOccured)
		ifTrue: [^ false].
 
	self loggedIn ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	
	^ true
 
! !

!ICEndPoint methodsFor: 'login' stamp: 'LW 8/2/2020 16:30'!
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.

	[self 
		connect;
		login]
	valueWithin: 5 seconds 
	onTimeout: [self handleTimeout]! !

!ICEndPoint methodsFor: 'login' stamp: 'JJ 8/2/2020 16:43'!
login
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^false].
  	(self throwErrorIfAccountInvalid) ifFalse: [^false].
	
	self sendLoginCommand.
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^false].
	
	(ICFileReadWriter newWith: self) readEmailsFromDisk.
	^ true! !

!ICEndPoint methodsFor: 'login' stamp: 'tg 7/25/2019 12:42'!
logout

	self checkConnected.
	self sendCommand: ICCommand logout.
	self
		fetchNextResponse;
		close.

	^ true! !

!ICEndPoint methodsFor: 'login' stamp: 'JJ 8/2/2020 16:17'!
sendLoginCommand
	
	self sendCommand: (ICCommand loginWith: self accountInfo);
		fetchNextResponse;
		loggedIn: (ICParser commandSucceeded: self stream lastResponse)! !

!ICEndPoint methodsFor: 'login' stamp: 'tg 7/26/2019 22:12'!
testAccountWith: anAccountInfo

	self connectAndLoginWith: anAccountInfo.
 
	^ self fatalErrorOccured not! !

!ICEndPoint methodsFor: 'login' stamp: 'JJ 8/2/2020 16:42'!
throwErrorIfAccountInvalid
  	
	(self accountInfo isValid) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	^true! !

!ICEndPoint methodsFor: 'login' stamp: 'JJ 8/2/2020 16:15'!
throwErrorIfNotLoggedIn
	
	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		self inform: 'Cant connect to the server'. 
		^ false].
	^ true! !

!ICEndPoint methodsFor: 'connection' stamp: 'AR 5/31/2016 11:12'!
close

	self stream close.
	self loggedIn: false! !

!ICEndPoint methodsFor: 'connection' stamp: 'tg 7/15/2019 13:27'!
connect

	self connectWith: self class defaultStreamClass! !

!ICEndPoint methodsFor: 'connection' stamp: 'tg 7/18/2019 23:00'!
connectWith: aStreamClass

	self accountInfo isValid ifFalse: [^ Error signal: self class errorInvalidConnectionConfiguration].
 
	[self stream
		ssl: self accountInfo ssl;
		connectTo: self accountInfo host on: self accountInfo port with: aStreamClass;
		nextResponse "skip server greetings"]
	on: Error
	do: [self fatalErrorOccured: true]! !

!ICEndPoint methodsFor: 'connection' stamp: 'LW 8/2/2020 16:26'!
handleTimeout
		
	(self fatalErrorOccured)
		ifFalse: [
			self inform: 'Connection could not be established due to a timeout'.
			self fatalErrorOccured: true]! !

!ICEndPoint methodsFor: 'connection' stamp: 'js 6/7/2016 10:13'!
isConnected

	^ self stream isConnected! !

!ICEndPoint methodsFor: 'connection' stamp: 'lvm 7/23/2018 23:33'!
preventTimeout

	[self refreshConnectionProcess] forkAt: Processor userBackgroundPriority! !

!ICEndPoint methodsFor: 'connection' stamp: 'ok 7/26/2019 21:04'!
refreshConnectionProcess

	[self isConnected and: [self loggedIn]]
		whileTrue: [
			self sendCommand: ICCommand noop.
			self fetchNextResponse.
			(Delay forSeconds: self class refreshConnectionIntervalInSeconds) wait]! !

!ICEndPoint methodsFor: 'connection' stamp: 'DH 6/26/2018 20:21'!
sendCommand: aCommand
	
	self stream sendCommand: aCommand! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'fr 7/26/2019 15:48'!
currentUIDs

	self
		sendCommand: ICCommand allUIDs;
		fetchNextResponse.
		
	self 
		uids: ((self lastResponse first subStrings: ' ') asOrderedCollection 
		removeFirst;
		removeFirst; 
		yourself)! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'ok 7/26/2019 21:01'!
currentUIDsFor: anICFolder

	| isEmpty |
		
	self select: anICFolder path.
	isEmpty := true.
	
	self lastResponse do:
		[:line | (line findString: 'EXISTS') positive
			ifTrue: [isEmpty := false]].
	
	isEmpty
	ifFalse: [
		self
			sendCommand: ICCommand allUIDs;
			fetchNextResponse.
		self 
			uids: ((self lastResponse first subStrings: ' ') asOrderedCollection 
			removeFirst;
			removeFirst; 
			yourself)]
	ifTrue: [^ OrderedCollection new]! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'pm 7/15/2019 20:28'!
fetchMailsBeginningAt: aBeginUID number: numberOfMessages 

	| start end possibleUID numberToFetch |
	
	"aBeginUID is the last known UID of the folder. numberOfMessages is the number
	 of messages which should be fetched starting at this UID"
	
	numberToFetch := numberOfMessages.
	
	self currentUIDs.
	possibleUID := self uids select: [:uid | uid asNumber < aBeginUID].
	possibleUID size < numberToFetch
		ifTrue: [numberToFetch := possibleUID size].
		
	numberToFetch = 0 ifTrue: [^ OrderedCollection new].	
		
	possibleUID := possibleUID copyFrom: (possibleUID size - numberToFetch + 1) to: possibleUID size. 
		
	start := possibleUID first.
	end := possibleUID last.
			
	^ self maildirDiffFetchHeadersFrom: start asString to: end asString! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'pm 7/15/2019 20:37'!
fetchNextResponse
	
	| multiLineResponse |

	multiLineResponse := OrderedCollection new.
	self stream nextResponse.
	self 
		checkForBadRequest;
		checkForParameterError.
	
	[ICParser commandSucceeded: self stream lastResponse]
		whileFalse: [ 
			multiLineResponse add: self stream lastResponse.
			self stream nextResponse].
	
	self lastResponse: multiLineResponse! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'pm 7/15/2019 20:42'!
fillBodyFor: anEmail
	
	self 
		sendCommand: (ICCommand fetchBody: anEmail messageID);
		fetchNextResponse.
	anEmail body: (ICParser parseFetchBody: self lastResponse)! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'js 6/14/2016 12:31'!
listAllFolders

	^ self listFoldersIn: String empty using: '*'! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'pm 7/23/2019 14:51'!
listFoldersIn: root using: filter

	self 
		checkConnected;
		checkLoggedIn.
		
	self sendCommand: (ICCommand listSubfoldersOf: root filterBy: filter).
		
	^ self parseListResponse! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'tg 7/15/2019 13:31'!
maildirDiffFetchHeadersFrom: anUID

	self uids
		ifEmpty: [ ^ OrderedCollection new];
		ifNil: [^ OrderedCollection new]
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: (self uids last + 1)]! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'ok 7/26/2019 21:02'!
maildirDiffFetchHeadersFrom: start to: end

	| searchBegin searchEnd mailFolder |

	(FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName)) 
		ifTrue: [
			mailFolder := FileDirectory default on: self maildirFileName.
			searchBegin := mailFolder	fileNamesMatching: (end asString).
			searchEnd := mailFolder	fileNamesMatching: (start asString).
	
			(searchBegin notEmpty and: [searchEnd notEmpty])
				ifTrue: [^ OrderedCollection new]].

     ^ self
       	sendCommand: (ICCommand fetchHeadersForUIDsFrom: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'LW 8/1/2020 09:55'!
retrieveBody: anEmail

		self 
			select: anEmail folder path;
			fillBodyFor: anEmail.! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'pm 7/25/2019 17:45'!
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (ICCommand fetchFlagsForUIDsFrom: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchedFlagsAndPopulate: aFolder! !

!ICEndPoint methodsFor: 'protocol handling - fetch' stamp: 'fr 7/26/2019 15:45'!
select: aFolderName

	self	currentFolderName: aFolderName;
		sendCommand: (ICCommand select: aFolderName);
		fetchNextResponse! !

!ICEndPoint methodsFor: 'protocol handling - delete' stamp: 'hg 7/31/2020 12:21'!
deleteEmail: anEmail
	
	self select: anEmail folder path.
	self sendCommand: (ICCommand deleteEmail: anEmail messageID).
	self fetchNextResponse.
	
	self moveEmail: anEmail to: self folderNameOfTrash.! !

!ICEndPoint methodsFor: 'protocol handling - delete' stamp: 'hg 7/31/2020 12:24'!
deleteMailLocally: anEmail

	anEmail folder removeMail: anEmail.
	self readWriter delete: anEmail! !

!ICEndPoint methodsFor: 'protocol handling - delete' stamp: 'NH 8/2/2020 11:35'!
expungeEmails

	self sendCommand: ICCommand expungeEmails.	
	self fetchNextResponse
! !

!ICEndPoint methodsFor: 'protocol handling' stamp: 'ok 7/26/2019 17:45'!
folderFromResponse: responseLine

	| folder folderPath parent namePart|
	
	
	namePart := (responseLine copyAfter: ICCommand protocolQuote asCharacter).
	
	folder := ICParser parseFolderPathFrom: namePart.
	self hierarchyDelimiter: folder hierarchyDelimiter.
	folderPath := folder pathAsArray.
	
	(responseLine includesSubstring: '\Trash') ifTrue: [self folderNameOfTrash: folderPath first].
	
	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ICFolder named: folderPath first in: self rootFolder with: self].
	
	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [ICFolder named: name in: parent with: self]]! !

!ICEndPoint methodsFor: 'protocol handling' stamp: 'NH 7/30/2020 22:13'!
parseFetchHeaders: headerLines

	| folder parseResult mailCollection |
	
	headerLines ifEmpty: [^ OrderedCollection new].

	mailCollection := OrderedCollection new.
	parseResult := ICParser parseFetchMailStream: (ReadStream on: (headerLines joinSeparatedBy: Character cr)).
		
	folder := self rootFolder childFolderNamed: (self currentFolderName) with: (self hierarchyDelimiter).
	 
	"iterate over all pairs of IDs and messages"
	parseResult keysAndValuesDo: [:id :message | 
		| mail |
		"parse the message and ID into a ICMail"
		mail := ICParser parseFetchHeader: message withId: id.
		mailCollection add: mail.
		"store the ICMail in the appropriate folder and write it on the disk"
		mail folder: folder.
		self readWriter write: mail].
	
	^ mailCollection! !

!ICEndPoint methodsFor: 'protocol handling' stamp: 'LW 8/2/2020 16:53'!
parseFetchedFlagsAndPopulate: aFolder

	| flagsPerUID | 
	
	flagsPerUID := ICParser parseFetchedFlagsAndPopulate: self lastResponse.
	
	aFolder emails do: [:email | 
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			email seen: (flags includes: '\Seen').
			email flagged: (flags includes: '\Flagged').
			email deleted: (flags includes: '\Deleted').
			self readWriter write: email]]! !

!ICEndPoint methodsFor: 'protocol handling' stamp: 'tg 7/26/2019 14:20'!
parseListResponse
	
	self fetchNextResponse.
	self lastResponse do: [:each | self folderFromResponse: each]! !

!ICEndPoint methodsFor: 'storage' stamp: 'hg 7/29/2020 10:50'!
maildirFileName

	^ 'Maildir', 
		FileDirectory slash, 
		self rootDirectoryName, 
		FileDirectory slash, 		
		self currentFolderName copyReplaceAll: (self hierarchyDelimiter) with: (FileDirectory slash)! !

!ICEndPoint methodsFor: 'protocol handling - flags' stamp: 'LW 8/1/2020 09:32'!
modifyFlag: aFlag for: anEmail
	
	(anEmail perform: aFlag)
		ifTrue: [self resetFlag: anEmail and: aFlag]
		ifFalse: [self setFlag: anEmail and: aFlag]! !

!ICEndPoint methodsFor: 'protocol handling - flags' stamp: 'JJ 7/31/2020 13:55'!
resetDeletedFlagWhenRecovering: anEmail

	(anEmail folder folderName = self folderNameOfTrash)
		ifTrue: [ self resetFlag: anEmail and: #deleted]! !

!ICEndPoint methodsFor: 'protocol handling - flags' stamp: 'tg 7/26/2019 13:44'!
resetFlag: anEmail and: aFlag
	
	self sendCommand: (ICCommand resetFlag: aFlag asString for: anEmail messageID).
	self fetchNextResponse! !

!ICEndPoint methodsFor: 'protocol handling - flags' stamp: 'tg 7/26/2019 13:44'!
setFlag: anEmail and: aFlag

	self sendCommand: (ICCommand setFlag: aFlag asString for: anEmail messageID).	
	self fetchNextResponse! !

!ICEndPoint methodsFor: 'protocol handling - move' stamp: 'JJ 7/31/2020 13:54'!
moveEmail: anEmail to: aFolder

	self select: anEmail folder path.
	self deleteMailLocally: anEmail.
	
	self resetDeletedFlagWhenRecovering: anEmail.
	
	self sendCommand: (ICCommand moveEmail: anEmail messageID to: aFolder).		
	self fetchNextResponse.
	(self rootFolder childFolderNamed: aFolder with: (self hierarchyDelimiter)) update! !

!ICEndPoint class methodsFor: 'constants' stamp: 'ok 7/26/2019 19:11'!
accountFolderHashRelevantCharacters

	^ 10! !

!ICEndPoint class methodsFor: 'constants' stamp: 'tg 7/15/2019 13:26'!
defaultStreamClass

	^ SocketStream! !

!ICEndPoint class methodsFor: 'constants' stamp: 'ok 7/26/2019 21:04'!
refreshConnectionIntervalInSeconds

	^ 60 * 10! !

!ICEndPoint class methodsFor: 'configuration storage' stamp: 'LW 7/31/2020 11:42'!
addConfiguration: anAccountInfo
	
	self basicConnectionConfigurations add: anAccountInfo! !

!ICEndPoint class methodsFor: 'configuration storage' stamp: 'tg 7/8/2019 15:14'!
basicConnectionConfigurations
	
	^ ConnectionConfigurations ifNil: [ConnectionConfigurations := OrderedCollection new]! !

!ICEndPoint class methodsFor: 'configuration storage' stamp: 'tg 7/8/2019 15:14'!
connectionConfigurations

	^ self basicConnectionConfigurations copy! !

!ICEndPoint class methodsFor: 'configuration storage' stamp: 'pm 6/19/2019 14:49'!
connectionConfigurations: anOrderedCollection

	ConnectionConfigurations := anOrderedCollection! !

!ICEndPoint class methodsFor: 'configuration storage' stamp: 'LW 7/31/2020 11:29'!
eraseStoredPasswords
	self basicConnectionConfigurations do: [:anAccountInfo |
		anAccountInfo eraseStoredPassword].! !

!ICEndPoint class methodsFor: 'configuration storage' stamp: 'NH 7/15/2020 09:55'!
removeConfiguration: anAccountInfo

	^ self basicConnectionConfigurations remove: anAccountInfo! !

!ICEndPoint class methodsFor: 'errors' stamp: 'js 5/15/2016 13:55'!
errorBadProtocol

	^ 'server protocol not supported'! !

!ICEndPoint class methodsFor: 'errors' stamp: 'js 5/15/2016 16:15'!
errorInvalidConnectionConfiguration

	^ 'the provided connection information is not valid'! !

!ICFileReadWriter methodsFor: 'delete file' stamp: 'hg 8/2/2020 19:11'!
delete: anICEmail

	(FileDirectory default / self endpoint maildirFileName) deleteFileNamed: anICEmail uniqueID ifAbsent: [^ self]! !

!ICFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 15:35'!
directoryToFolderDictionary

	^ directoryToFolderDictionary ifNil: [
		directoryToFolderDictionary := Dictionary newFrom: {self rootDirectory -> self endpoint rootFolder}]! !

!ICFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 14:09'!
endpoint
	^ endpoint! !

!ICFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 14:09'!
endpoint: anObject
	endpoint := anObject! !

!ICFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 13:56'!
rootDirectory
	
	^ (FileDirectory default directoryNamed: 'Maildir') directoryNamed: self endpoint rootDirectoryName! !

!ICFileReadWriter methodsFor: 'read file' stamp: 'hg 7/29/2020 14:18'!
directoryVisitor
	
	^ [:directory | | currentFolder |
		(directory = self rootDirectory) ifFalse: [
			currentFolder := ICFolder
				named: directory pathParts last
				in: (self directoryToFolderDictionary at: directory containingDirectory)
				with: self endpoint.
			directoryToFolderDictionary at: directory put: currentFolder]]
! !

!ICFileReadWriter methodsFor: 'read file' stamp: 'hg 7/30/2020 09:51'!
fileVisitor

	 ^ [:file | | currentFolder | 
			currentFolder := self directoryToFolderDictionary at: file directory.
			currentFolder addMails: {
				(ICEmail newFromJsonStream: file) 
					folder: currentFolder; 
					yourself}.
			file close]
! !

!ICFileReadWriter methodsFor: 'read file' stamp: 'hg 7/29/2020 14:19'!
readEmailsFromDisk

	self rootDirectory
			assureExistence; 
			withAllFilesDo: self fileVisitor andDirectoriesDo: self directoryVisitor! !

!ICFileReadWriter methodsFor: 'write file' stamp: 'LW 8/2/2020 16:37'!
write: anICEmail
	
	(FileDirectory default / self endpoint maildirFileName) assureExistence.
		
	FileStream 
		forceNewFileNamed: (self endpoint maildirFileName, FileDirectory slash, anICEmail uniqueID) 
		do: [:stream | 
			stream nextPutAll: anICEmail 
				serializeToJson; 
				flush; 
				close]! !

!ICFileReadWriter class methodsFor: 'instance creation' stamp: 'hg 7/29/2020 13:55'!
newWith: anEndpoint

	^self new
		endpoint: anEndpoint;
		yourself! !

!ICFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:06'!
accountName

	^ self endpoint accountInfo accountName! !

!ICFolder methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:12'!
childFolders

	^ childFolders ifNil: [childFolders := OrderedCollection new]! !

!ICFolder methodsFor: 'accessing' stamp: 'LW 7/31/2020 12:27'!
emails

	^ emails ifNil: [emails := OrderedCollection new]! !

!ICFolder methodsFor: 'accessing' stamp: 'LW 7/31/2020 12:26'!
emails: anOrderedCollection

	emails := anOrderedCollection! !

!ICFolder methodsFor: 'accessing' stamp: 'ms 7/10/2016 13:24'!
endpoint

	^ endpoint! !

!ICFolder methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:56'!
endpoint: anICEndpoint

	endpoint := anICEndpoint! !

!ICFolder methodsFor: 'accessing' stamp: 'tg 7/19/2019 09:17'!
folderName

	^ folderName ifNil: [folderName := self class defaultName]! !

!ICFolder methodsFor: 'accessing' stamp: 'tg 7/19/2019 09:17'!
folderName: aString

	folderName := aString! !

!ICFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:02'!
hierarchyDelimiter

	^ self endpoint hierarchyDelimiter! !

!ICFolder methodsFor: 'accessing' stamp: 'pm 6/3/2019 18:34'!
highestUniqueID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMax: [:mail | mail uniqueID asNumber]) uniqueID! !

!ICFolder methodsFor: 'accessing' stamp: 'JJ 6/10/2020 10:47'!
isTrashFolder

	^ self endpoint folderNameOfTrash = self folderName
	! !

!ICFolder methodsFor: 'accessing' stamp: 'pm 6/3/2019 18:34'!
lowestUniqueID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMin: [:mail | mail uniqueID asNumber]) uniqueID! !

!ICFolder methodsFor: 'accessing' stamp: 'LW 8/2/2020 14:27'!
numberOfUnseenMails

	| numberOfUnseen |
	
	numberOfUnseen := self childFolders detectSum: [:anICFolder | anICFolder numberOfUnseenMails].
	^ (numberOfUnseen + (self emails count: [:anICEmail | anICEmail seen not]))! !

!ICFolder methodsFor: 'accessing' stamp: 'tg 6/25/2019 21:21'!
parent

	^ parent! !

!ICFolder methodsFor: 'accessing' stamp: 'js 6/7/2016 11:32'!
parent: anICFolder

	parent := anICFolder! !

!ICFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:08'!
parentPath

	^ self parent path! !

!ICFolder methodsFor: 'accessing' stamp: 'tg 7/25/2019 12:56'!
recursiveChildFolders
	
	^ {self childFolders collect: [:child | child recursiveChildFolders]. self childFolders} flatten asOrderedCollection! !

!ICFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:05'!
rootFolder

	^ self endpoint rootFolder! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'js 6/7/2016 13:09'!
addFolder: child

	child parent: self.
	self childFolders add: child! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'tg 7/19/2019 09:19'!
childFolderNamed: childFolderName ifAbsent: block

	^ self childFolders 
		detect: [:child | child folderName = childFolderName] 
		ifNone: [block value]! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 6/26/2018 11:01'!
childFolderNamed: name with: delimiter

	^ self 
			childFolderNamed: name 
			with: delimiter 
			ifAbsent: [Error signal: self class errorChildDoesNotExist]! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'tg 7/26/2019 21:52'!
childFolderNamed: childFolderName with: delimiter ifAbsent: block

	| rootPart childPart child parts |
	
	^ self childFolders 
		detect: [:subFolder | subFolder folderName = childFolderName] 
		ifNone: [ 
			"splice at delimiter and ask child"
			parts := childFolderName subStrings: delimiter.
			(parts size > 1)
				ifTrue: [
					rootPart := parts first.
					childPart := parts allButFirst joinSeparatedBy: delimiter.
					child := self childFolders detect: [ :childFolder | childFolder folderName = rootPart].
					child ifNotNil: [^ child childFolderNamed: childPart with: delimiter ifAbsent: block]].
			^ block value]! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 7/25/2018 14:02'!
countFolders

	^ self childFolders inject: self childFolders size into: [:count :child | count + child countFolders]! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'ok 7/26/2019 19:08'!
path

	^ (self parent == self rootFolder) 
		ifTrue: [ self folderName ] 
		ifFalse: [ self parentPath, self hierarchyDelimiter, self folderName]! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 7/25/2018 14:03'!
removeFolder: child

	^ self removeFolder: child ifAbsent: [Error signal: self class errorChildDoesNotExist]! !

!ICFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 7/25/2018 14:04'!
removeFolder: child ifAbsent: block

	(self childFolders includes: child) ifFalse: [^ block value].
	
	child parent: child.
	self childFolders remove: child! !

!ICFolder methodsFor: 'action - add emails' stamp: 'LW 8/1/2020 10:14'!
addMails: aMailCollection

	"Since Exchange uses other objects than emails we need to exclude them from the list"
	self emails addAll: (self sanitizeMailCollection: aMailCollection).! !

!ICFolder methodsFor: 'action - freshness' stamp: 'JJ 8/2/2020 15:52'!
ensureFreshness
	
	" This method is part of a good first issue with no. 366 :)"
	| relevantUIDs localMails min max |
	
	self emails ifEmpty: [^ self].
	
	" we cant access first and last of the sortedCollection because its sorted by date, not by UID "
	min := self lowestUniqueID.
	max := self highestUniqueID.
		
	self endpoint currentUIDs.
	
	relevantUIDs := self endpoint uids select: [ :uid | (uid asNumber <= max) and: [uid asNumber >=min]].

	"search for uids, which are in storage, but not on the server --> they were moved"
	localMails := self emails copy.
	relevantUIDs do: [ :uid | localMails removeAllSuchThat: [ :mail | mail uniqueID = uid]].
	
	"everything left in localMails has changed, and therefore can be removed"
	localMails do: [ :mail | self endpoint deleteMailLocally: mail]! !

!ICFolder methodsFor: 'action - remove emails' stamp: 'NH 8/2/2020 11:36'!
expungeEmails
	
	self emails do: [ :email |
		email deleted ifTrue: [self endpoint deleteMailLocally: email]].
	self endpoint
		select: self path;
		expungeEmails
! !

!ICFolder methodsFor: 'action - remove emails' stamp: 'tg 7/26/2019 21:59'!
removeMail: anICEmail

	self emails remove: anICEmail.! !

!ICFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:52'!
fetchHeadersFrom: anUID
	
	self emails addAll: (self endpoint
		currentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self ensureFreshness.
	self emails ifEmpty: [^ self].
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID! !

!ICFolder methodsFor: 'action - update emails' stamp: 'LW 8/2/2020 14:35'!
fetchNumberOfLatestEmails: aNumber

	| startUID allUIDs |
	
	self endpoint currentUIDsFor: self.
	allUIDs := self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - aNumber) strictlyPositive
		ifTrue: [startUID := allUIDs at: (allUIDs size - aNumber)]
		ifFalse: [startUID := (allUIDs first) - 1].
	self fetchHeadersFrom: startUID! !

!ICFolder methodsFor: 'action - update emails' stamp: 'tg 7/26/2019 21:05'!
loadOlderMails

	self emails addAll: 
		(self endpoint
			currentUIDsFor: self;
			fetchMailsBeginningAt: self lowestUniqueID number: self class numberOfHeadersToFetchAtLoadOlderMails)! !

!ICFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:36'!
modifyFlag: aFlag for: anEmail

	self retrieveFlagsFor: anEmail.
	self endpoint modifyFlag: aFlag for: anEmail! !

!ICFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:25'!
retrieveFlagsFor: anEmail
	
	self retrieveFlagsFrom: anEmail uniqueID to: anEmail uniqueID
! !

!ICFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:33'!
retrieveFlagsFrom: anUID to: anotherUID

	self endpoint 
		select: self path;
		retrieveFlagsFrom: anUID to: anotherUID in: self! !

!ICFolder methodsFor: 'action - update emails' stamp: 'LW 8/2/2020 14:34'!
startUpdateProcess: anUID

	(self folderName = 'root') ifTrue: [^self].
	
	[anUID
		ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifNotNil: [self fetchHeadersFrom: anUID]]
	on: Error
	do: [:e | self inform: e asString]! !

!ICFolder methodsFor: 'action - update emails' stamp: 'pm 6/3/2019 18:34'!
update

	self startUpdateProcess: self highestUniqueID.	
	self childFolders do: [:anICFolder | anICFolder update]! !

!ICFolder methodsFor: 'action - update emails' stamp: 'LW 6/3/2020 15:13'!
updateAndShowProgressWith: aBlock
	
	ProgressNotification 
		signal: (aBlock value) 
		extra: (self accountName, ' Mailbox. Folder: ', self folderName).
	
	self startUpdateProcess: self highestUniqueID.
	self childFolders do: [:anICFolder | anICFolder updateAndShowProgressWith: aBlock]! !

!ICFolder methodsFor: 'action - sanitize emails' stamp: 'LW 5/20/2020 09:49'!
sanitizeMailCollection: aMailCollection
	
	^ aMailCollection select: [:mail | mail date notEmpty]! !

!ICFolder class methodsFor: 'constants' stamp: 'js 6/7/2016 11:49'!
defaultName

	^ 'root'! !

!ICFolder class methodsFor: 'constants' stamp: 'DH 7/22/2018 22:37'!
numberOfHeadersToFetchAtLoadOlderMails

	^ 10! !

!ICFolder class methodsFor: 'constants' stamp: 'DH 7/22/2018 22:37'!
numberOfHeadersToFetchAtTheBeginning

	^ 100! !

!ICFolder class methodsFor: 'errors' stamp: 'js 6/14/2016 09:27'!
errorChildDoesNotExist

	^ 'Child does not exist'! !

!ICFolder class methodsFor: 'instance creation' stamp: 'tg 7/19/2019 09:19'!
named: name in: parent with: endpoint

	| newFolder |
	
	newFolder := (self new)
		folderName: name;
		endpoint: endpoint.
		
	parent addFolder: newFolder.
	
	^ newFolder! !

!ICFolder class methodsFor: 'instance creation' stamp: 'C.G. 7/25/2018 14:12'!
newRootFolderWith: endpoint
	
	| newFolder |
	
	newFolder := self new.
	newFolder endpoint: endpoint.
		
	^ newFolder! !

!ICParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 16:34'!
buildFlagsAssociationFor: aUidString from: aLineString

	^ Association key: aUidString first value: (self flags select: [:flag |
			aLineString includesSubstring: flag])! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 16:25'!
chop: aHeaderString forEmail: anEmail

	| headerChunks |

	headerChunks := OrderedCollection new.
	(aHeaderString subStrings: Character cr asString) do: [:line |
		self parse: line forHeaderChunks: headerChunks forEmail: anEmail].

	^ headerChunks! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:09'!
closeEmailContentFrom: aStream for: anEmailString

	anEmailString nextPutAll: (aStream nextDelimited: $)).
	aStream next! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/15/2019 20:40'!
commandSucceeded: aResponseString

	^ aResponseString beginsWith: self commandSucceeded! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 15:44'!
continueHeaderChunks: aCollection withLine: aString

	(self startsNewHeaderChunk: aString)
		ifTrue: [aCollection add: {aString} asOrderedCollection]
		ifFalse: [
			aCollection ifNotEmpty: [
				aCollection last add: aString]]! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:07'!
continueMailStream: aStream into: anEmailStringCollection

	| id |

	id := self readMessageIdFromStream: aStream. 
	anEmailStringCollection at: id put: (String streamContents: [:email |
		self extractEmailContentFrom: aStream for: email])! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:25'!
extractEmailContentFrom: aStream for: anEmailString

	| octetSize |

	octetSize := self readOctetSizeFrom: aStream for: anEmailString.
	self readEmailContentFrom: aStream for: anEmailString bySize: octetSize.
	self closeEmailContentFrom: aStream for: anEmailString! !

!ICParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 11:16'!
parse: aString forHeaderChunks: aHeaderChunksCollection forEmail: anEmail

	(aString includesSubstring: 'UID')	
		ifTrue: [anEmail uniqueID: ((aString subStrings: ' ') second)]
		ifFalse: [self continueHeaderChunks: aHeaderChunksCollection withLine: aString]! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 18:12'!
parseFetchBody: aResponseStringArray

	^ ((aResponseStringArray 
		copyFrom: self fetchBodyOffset
		to: (aResponseStringArray size - 1))
			joinSeparatedBy: Character cr)! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 18:01'!
parseFetchHeader: aHeaderString withId: aMessageID

	| email |

	email := ICEmail new messageID: aMessageID.
	self populate: email withHeaderChunks: (self chop: aHeaderString forEmail: email).

	^ email! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 16:57'!
parseFetchMailStream: aStream

	| emails |

	emails := Dictionary new.
	[aStream atEnd] whileFalse: [self continueMailStream: aStream into: emails].

	 ^ emails! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:39'!
parseFetchedFlagsAndPopulate: aResponseStringArray
	
	| uidPart uid |
	
 	^ (aResponseStringArray collect: [:line |
		uidPart := (line allRegexMatches: 'UID \d*') ifEmpty: [ ^ Dictionary new].
		uid := (uidPart first allRegexMatches: '[\d]+') ifEmpty: [ ^ Dictionary new].
		self buildFlagsAssociationFor: uid from: line]) as: Dictionary! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 18:06'!
parseFolderPathFrom: aResponseString

	| splittedResponse |

	splittedResponse := self splitFolderPathResponse: aResponseString.
	^ ICProtocolFolder
		newWithPath: (splittedResponse allButFirst joinSeparatedBy: ' ')
		delimitedBy: splittedResponse first! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:58'!
parseHeaderContentFrom: aHeaderChunk

	^ ((aHeaderChunk joinSeparatedBy: ' ')
		copyReplaceFrom: 1 
		to: (aHeaderChunk first indexOf: $:) 
		with: String empty) withoutLeadingBlanks! !

!ICParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 16:34'!
parseHeaderFieldFrom: aHeaderChunk

	| headerField |
	
	headerField := (aHeaderChunk first subStrings: ' ') first.
	(headerField includesSubstring: ':') ifTrue: [headerField := headerField allButLast].

	^ headerField! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:36'!
populate: anEmail withContentTransferEncoding: aHeaderChunk
	
	anEmail contentTransferEncoding: aHeaderChunk! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:37'!
populate: anEmail withContentType: aHeaderChunk
	
	anEmail contentType: aHeaderChunk! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:37'!
populate: anEmail withDate: aHeaderChunk
	
	anEmail date: aHeaderChunk! !

!ICParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 16:34'!
populate: anEmail withFlags: aHeaderChunk

	anEmail seen: (aHeaderChunk includesSubstring: '\Seen').
	anEmail flagged: (aHeaderChunk includesSubString: '\Flagged').
	anEmail deleted: (aHeaderChunk includesSubString: '\Deleted')! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 16:24'!
populate: anEmail withHeaderChunks: aHeaderChunkCollection

	aHeaderChunkCollection do: [:chunk |
		self populate: anEmail withHeadersFrom: chunk]! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:58'!
populate: anEmail withHeadersFrom: aHeaderChunk

	| headerField headerContent method |
	
	headerField := self parseHeaderFieldFrom: aHeaderChunk.
	headerContent := self parseHeaderContentFrom: aHeaderChunk.
	method := 	(self parseMethods at: headerField ifAbsent: nil).
	method ifNil: [Transcript show: 'WARNING: No method for parsing Header field:', headerField; cr]
		ifNotNil: [method value: headerContent value: anEmail]! !

!ICParser class methodsFor: 'parsing' stamp: 'hg 7/30/2020 11:31'!
populate: anEmail withReceiver: aHeaderChunk

	anEmail to: (aHeaderChunk subStrings: ',') asArray! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:38'!
populate: anEmail withSender: aHeaderChunk

	anEmail from: aHeaderChunk! !

!ICParser class methodsFor: 'parsing' stamp: 'tg 7/26/2019 21:01'!
populate: anEmail withSubject: aHeaderChunk

	[anEmail subject: aHeaderChunk decodeMimeHeader]
		on: Error
		do: [self inform: ('A mail in your account has a undecodeable MIME header')]! !

!ICParser class methodsFor: 'parsing' stamp: 'tg 7/26/2019 21:04'!
readEmailContentCharacterFrom: aStream for: anEmailString

	| char |

	char := (aStream next) asCharacter.
	anEmailString nextPut: char.
	(char = Character cr) ifTrue: [^2].
	^ 1! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:21'!
readEmailContentFrom: aStream for: anEmailString bySize: anOctetSize

	| charsLeft |
	
	charsLeft := anOctetSize.
	[charsLeft > 0] whileTrue: [
		charsLeft := charsLeft - (self readEmailContentCharacterFrom: aStream for: anEmailString)].! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:07'!
readMessageIdFromStream: aStream

	| id |

	aStream next: self lengthOfEmailPrefix.
	id := aStream nextDelimited: Character space.
	aStream next: self lengthOfFetchPrefix.
	
	^ id! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:24'!
readOctetSizeFrom: aStream for: anEmailString

	anEmailString nextPutAll: (aStream nextDelimited: ${).
	^ (aStream nextDelimited: $}) asNumber! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:51'!
responseIsError: aResponseString

	^ aResponseString beginsWith: self protocolError! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:53'!
responseIsParameterError: aResponseString

	^ self protocolParameterError = 
		((aResponseString subStrings: ICCommand protocolBlank) 
			at: self parameterErrorPosition)! !

!ICParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 18:04'!
splitFolderPathResponse: aResponseString

	^ (aResponseString copyReplaceAll: ICCommand protocolQuote with: String empty)
		subStrings: ICCommand protocolBlank! !

!ICParser class methodsFor: 'parsing' stamp: 'pm 7/12/2019 20:07'!
startsNewHeaderChunk: aLine

	^ (aLine subStrings: ' ') first endsWith: ':'! !

!ICParser class methodsFor: 'responses' stamp: 'pm 7/25/2019 17:26'!
commandSucceeded

	^ {ICCommand protocolCommandStart . 'OK'} joinSeparatedBy: ICCommand protocolBlank! !

!ICParser class methodsFor: 'responses' stamp: 'pm 7/25/2019 17:26'!
protocolError

	^ {ICCommand protocolCommandStart . 'BAD'} joinSeparatedBy: ICCommand protocolBlank! !

!ICParser class methodsFor: 'responses' stamp: 'pm 7/12/2019 17:22'!
protocolParameterError

	^ 'NO'! !

!ICParser class methodsFor: 'constants' stamp: 'ok 7/26/2019 18:10'!
fetchBodyOffset

	^ 2! !

!ICParser class methodsFor: 'constants' stamp: 'pm 7/12/2019 18:35'!
flags

	^ {'\Seen'. '\Deleted'. '\Flagged'}! !

!ICParser class methodsFor: 'constants' stamp: 'ok 7/26/2019 16:31'!
lengthOfEmailPrefix
	
	^ '* ' size! !

!ICParser class methodsFor: 'constants' stamp: 'mt 7/26/2019 15:44'!
lengthOfFetchPrefix
	
	^ 'FETCH (' size! !

!ICParser class methodsFor: 'constants' stamp: 'pm 7/23/2019 13:31'!
parameterErrorPosition

	^ 2! !

!ICParser class methodsFor: 'constants' stamp: 'pm 7/25/2019 17:40'!
parseMethods

	^ Dictionary newFrom: {
		'To' -> [:headerChunk :email | self populate: email withReceiver: headerChunk].
		'From' -> [:headerChunk :email | self populate: email withSender: headerChunk].
		'Subject' -> [:headerChunk :email | self populate: email withSubject: headerChunk].
		'Date' -> [:headerChunk :email | self populate: email withDate: headerChunk].
		'FLAGS' -> [:headerChunk :email | self populate: email withFlags: headerChunk].
		'Content-Type' -> [:headerChunk :email | self populate: email withContentType: headerChunk].
		'Content-Transfer-Encoding' -> [:headerChunk :email | 
			self populate: email withContentTransferEncoding: headerChunk]}! !

!ICProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:04'!
folderPath

	^ folderPath! !

!ICProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:05'!
folderPath: aFolderPathString

	folderPath := aFolderPathString! !

!ICProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:00'!
hierarchyDelimiter

	^ hierarchyDelimiter! !

!ICProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:00'!
hierarchyDelimiter: aHierarchyDelimiterString

	hierarchyDelimiter := aHierarchyDelimiterString! !

!ICProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:07'!
pathAsArray

	^ self folderPath subStrings: self hierarchyDelimiter! !

!ICProtocolFolder class methodsFor: 'instance creation' stamp: 'pm 7/12/2019 18:06'!
newWithPath: aFolderPathString delimitedBy: aHierarchyDelimiterString

	^ self new
		folderPath: aFolderPathString;
		hierarchyDelimiter: aHierarchyDelimiterString! !

!ICStreamWrapper methodsFor: 'connection' stamp: 'js 6/14/2016 10:43'!
close
	
	self stream close! !

!ICStreamWrapper methodsFor: 'connection' stamp: 'LW 8/1/2020 10:24'!
connectTo: aHost on: aPort

	| hostAddress |
	
	self ssl ifTrue: [^ self sslConnectTo: aHost on: aPort].
	
	hostAddress := NetNameResolver addressForName: aHost.
	self close.
	self stream: (SocketStream openConnectionToHost: hostAddress port: aPort)! !

!ICStreamWrapper methodsFor: 'connection' stamp: 'LW 8/1/2020 10:24'!
connectTo: aHost on: aPort with: aStreamClass

	| hostAddress |
	
	self ssl ifTrue: [^ self sslConnectTo: aHost on: aPort].
		
	hostAddress := NetNameResolver addressForName: aHost.
	self close.	
	self stream: (aStreamClass openConnectionToHost: hostAddress port: aPort)! !

!ICStreamWrapper methodsFor: 'connection' stamp: 'tg 7/26/2019 21:57'!
sendCommand: aString

	self stream sendCommand: aString! !

!ICStreamWrapper methodsFor: 'connection' stamp: 'tg 7/26/2019 22:13'!
sslConnectTo: aHost on: aPort

	| hostAddress |
	
	hostAddress := NetNameResolver addressForName: aHost.
	self stream: (SecureSocketStream openConnectionToHost: hostAddress port: aPort timeout: self class connectionTimeout).
	self stream sslConnectTo: aHost! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'js 6/7/2016 09:58'!
host

	^ host! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'js 6/7/2016 09:59'!
host: aString

	host := aString! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'js 6/7/2016 10:04'!
isConnected

	^ self stream isConnected! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'js 6/7/2016 10:08'!
lastResponse

	^ lastResponse! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'ok 7/26/2019 21:15'!
lastResponse: anOrderedCollection

	lastResponse := anOrderedCollection! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 14:09'!
nextResponse

	self lastResponse: self stream nextLine.
	
	^ self lastResponse! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'js 6/7/2016 09:59'!
port

	^ port! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:59'!
port: aNumber

	port := aNumber! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:14'!
ssl

	^ ssl ifNil: [ssl := false]! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'ms 7/12/2016 09:45'!
ssl: aBool

	ssl := aBool! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:14'!
stream

	^ stream ifNil: [stream := ICNullStream new]! !

!ICStreamWrapper methodsFor: 'accessing' stamp: 'js 6/7/2016 10:05'!
stream: aStream

	stream := aStream! !

!ICStreamWrapper class methodsFor: 'constants' stamp: 'ok 7/26/2019 18:50'!
connectionTimeout

	^ 10! !

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:58'!
apopLoginUser: userName password: password

	self loginUser: userName password: password loginMethod: #APOP! !

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:35'!
deleteMessage: num
	"delete the numbered message"

	self ensureConnection.
	self sendCommand: 'DELE ', num printString.
	self checkResponse.
	self logProgress: self lastResponse! !

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:57'!
loginUser: userName password: password

	self loginUser: userName password: password loginMethod: #clearText! !

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/8/2002 11:40'!
loginUser: userName password: password loginMethod: aLoginMethod

	self user: userName.
	self password: password.
	self loginMethod: aLoginMethod.
	self login! !

!POP3Client methodsFor: 'public protocol' stamp: 'nice 12/27/2009 04:19'!
messageCount
	"Query the server and answer the number of messages that are in the user's mailbox."

	| numMessages |
	self ensureConnection.
	self sendCommand: 'STAT'.
	self checkResponse.
	self logProgress: self lastResponse.

	[ | answerString |
	answerString := (self lastResponse findTokens: Character separators) second.
	numMessages := answerString asNumber asInteger]
		on: Error
		do: [:ex | (ProtocolClientError protocolInstance: self) signal: 'Invalid STAT response.'].
	^numMessages! !

!POP3Client methodsFor: 'public protocol' stamp: 'len 12/14/2002 17:50'!
quit
	"QUIT <CRLF>"

	self sendCommand: 'QUIT'.
	self checkResponse.! !

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:35'!
retrieveMessage: number
	"retrieve the numbered message"

	self ensureConnection.
	self sendCommand: 'RETR ', number printString.
	self checkResponse.
	self logProgress: self lastResponse.

	^self getMultilineResponse! !

!POP3Client methodsFor: 'private' stamp: 'mir 11/11/2002 16:20'!
loginMethod
	^self connectionInfo at: #loginMethod ifAbsent: [nil]! !

!POP3Client methodsFor: 'private' stamp: 'mir 3/8/2002 11:41'!
loginMethod: aSymbol
	^self connectionInfo at: #loginMethod put: aSymbol! !

!POP3Client methodsFor: 'private' stamp: 'pre 5/8/2017 14:46'!
starttlsVerb

	^ #STLS! !

!POP3Client methodsFor: 'private' stamp: 'pre 5/8/2017 14:45'!
wantsStarttls

	^ true! !

!POP3Client methodsFor: 'private protocol' stamp: 'nice 12/27/2009 03:11'!
apopLogin

	"Attempt to authenticate ourselves to the server without sending the password as cleartext."

	"For secure authentication, we look for a timestamp in the initial response string we get from the server, and then try the APOP command as specified in RFC 1939.  If the initial response from the server is
	+OK POP3 server ready <1896.697170952@dbc.mtview.ca.us>
we extract the timestamp
	<1896.697170952@dbc.mtview.ca.us>
then form a string of the form
	<1896.697170952@dbc.mtview.ca.us>USERPASSWORD
and then send only the MD5 hash of that to the server.  Thus the password never hits the wire"

	

	[ | timestamp hash |
	"Look for a timestamp in the response we received from the server"
	timestamp := self lastResponse findTokens: '<>' includes: '@'.
	timestamp
		ifNil: [(POP3LoginError protocolInstance: self) signal: 'APOP not supported.'].

	(Smalltalk includesKey: #MD5)
		ifTrue: [
			hash := ((Smalltalk at: #MD5) hashMessage: ('<', timestamp, '>', self password)) storeStringHex asLowercase.
			"trim starting 16r and zero pad it to 32 characters if needed"
			hash := hash  padded: #left to: 32 with: $0]
		ifFalse: [(POP3LoginError protocolInstance: self) signal: 'APOP (MD5) not supported.'].

	self sendCommand: 'APOP ', self user, ' ', hash.
	self checkResponse.
	self logProgress: self lastResponse]
		on: ProtocolClientError
		do: [:ex |
			self close.
			(LoginFailedException protocolInstance: self) signal: 'Login failed.']! !

!POP3Client methodsFor: 'private protocol' stamp: 'mir 4/7/2003 17:38'!
clearTextLogin

	[self sendCommand: 'USER ', self user.
	self checkResponse.
	self logProgress: self lastResponse.

	self sendCommand: 'PASS ', self password.
	self checkResponse.
	self logProgress: self lastResponse]
		on: TelnetProtocolError
		do: [:ex |
			"Neither authentication worked.  Indicate an error and close up"
			self close.
			ex resignalAs: ((LoginFailedException protocolInstance: self) signal: 'Login failed.')]! !

!POP3Client methodsFor: 'private protocol' stamp: 'mir 11/14/2002 17:40'!
getMultilineResponse
	"Get a multiple line response to the last command, filtering out LF characters. A multiple line response ends with a line containing only a single period (.) character."

	| response done chunk |
	response := WriteStream on: ''.
	done := false.
	[done] whileFalse: [
		chunk := self stream nextLine.
		(chunk beginsWith: '.')
			ifTrue: [response nextPutAll: (chunk copyFrom: 2 to: chunk size); cr ]
			ifFalse: [response nextPutAll: chunk; cr ].
		done := (chunk = '.') ].

	^ response contents
! !

!POP3Client methodsFor: 'private protocol' stamp: 'pre 5/11/2017 16:49'!
initiateSession

	self sendCommand: 'CAPA'.
	self checkResponse.
	
	self parseCapabilities: self getMultilineResponse lines.
	
	(self tlsIsActive not and: [self serverSupportsStarttls] and: [self wantsStarttls])
		ifTrue: [self starttls]! !

!POP3Client methodsFor: 'private protocol' stamp: 'pre 5/8/2017 14:39'!
login

	self initiateSession.
	self loginMethod
		ifNil: [^self].
	self loginMethod == #clearText
		ifTrue: [^self clearTextLogin].
	self loginMethod == #APOP
		ifTrue: [^self apopLogin].
	(POP3LoginError protocolInstance: self) signal: 'Unsupported login procedure.'! !

!POP3Client methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:43'!
responseIsError
	^self lastResponse beginsWith: '-'! !

!POP3Client methodsFor: 'private testing' stamp: 'pre 5/8/2017 14:50'!
responseIsSuccess
	^self lastResponse beginsWith: '+'! !

!POP3Client methodsFor: 'private testing' stamp: 'mir 11/11/2002 15:44'!
responseIsWarning
	^self lastResponse beginsWith: '-'! !

!POP3Client class methodsFor: 'example' stamp: 'rbb 3/1/2005 11:05'!
example
	"POP3Client example"
	"download a user's messages into an OrderedCollection and inspect the OrderedCollection"

	| ps messages userName password |
	userName := (UIManager default request: 'POP username').
	password := (UIManager default request: 'POP password').
	ps := POP3Client openOnHostNamed: (UIManager default request: 'POP server').
	[
	ps loginUser: userName password: password.
	ps logProgressToTranscript.

	messages := OrderedCollection new.
	1 to: ps messageCount do: [ :messageNr |
		messages add: (ps retrieveMessage: messageNr) ]]
		ensure: [ps close].

	messages inspect.! !

!POP3Client class methodsFor: 'accessing' stamp: 'mir 3/7/2002 12:51'!
defaultPortNumber
	^110! !

!POP3Client class methodsFor: 'accessing' stamp: 'mir 3/7/2002 12:52'!
logFlag
	^#pop! !

!SMTPClient methodsFor: 'public protocol' stamp: 'ar 12/4/2009 10:06'!
localHostName
	"The local host name for purposes of identifying the the server.
	If nil, NetNameResolver localHostName will be used."

	^self connectionInfo at: #localHostName ifAbsent: [NetNameResolver localHostName]! !

!SMTPClient methodsFor: 'public protocol' stamp: 'ar 12/4/2009 10:06'!
localHostName: aString
	"The local host name for purposes of identifying the the server.
	If nil, NetNameResolver localHostName will be used."

	^self connectionInfo at: #localHostName put: aString! !

!SMTPClient methodsFor: 'public protocol' stamp: 'mir 2/21/2002 15:43'!
mailFrom: sender to: recipientList text: messageText
	"deliver this mail to a list of users.  NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	self mailFrom: sender.
	recipientList do: [ :recipient |
		self recipient: recipient ].
	self data: messageText.
! !

!SMTPClient methodsFor: 'public protocol' stamp: 'gk 8/4/2006 15:14'!
useHelo
	"If client use HELO instead of EHLO. HELO is the old protocol and
	an old server may require it instead of EHLO."

	^self connectionInfo at: #useHelo ifAbsent: [false]! !

!SMTPClient methodsFor: 'public protocol' stamp: 'gk 8/4/2006 15:14'!
useHelo: aBoolean
	"Tell client to use HELO instead of EHLO. HELO is the old protocol and
	an old server may require it instead of EHLO."

	^self connectionInfo at: #useHelo put: aBoolean! !

!SMTPClient methodsFor: 'private protocol' stamp: 'pre 5/4/2017 15:35'!
data: messageData
	"send the data of a message"
	"DATA <CRLF>"

	"inform the server we are sending the message data"
	self sendCommand: 'DATA'.
	self checkResponse.

	"process the data one line at a time"
	messageData linesDo:  [ :messageLine | | cookedLine |
		cookedLine := messageLine.
		(cookedLine beginsWith: '.') ifTrue: [ 
			"lines beginning with a dot must have the dot doubled"
			cookedLine := '.', cookedLine ].
		self sendCommand: cookedLine ].

	"inform the server the entire message text has arrived"
	self sendCommand: '.'.
	self checkResponse.! !

!SMTPClient methodsFor: 'private protocol' stamp: 'klub 1/3/2018 20:36'!
initiateSession
	"EHLO <SP> <domain> <CRLF>"

	self sendCommand: (self useHelo ifTrue:['HELO '] ifFalse: ['EHLO ']) , self localHostName.
	self checkResponse.
	
	self parseCapabilities: (self lastResponse lines allButFirst 
			collect: [:l | self valueOfResponseLine: l]).

	(self tlsIsActive not and: [self serverSupportsStarttls] and: [self wantsStarttls])
		ifTrue: [
			self starttls.
			self responseIsSuccess ifTrue: [
				self initiateSession ] ]! !

!SMTPClient methodsFor: 'private protocol' stamp: 'ar 2/10/2010 15:32'!
login
	"Send HELO first"
	self initiateSession.
	self user ifNil: [^self].
	self sendCommand: 'AUTH LOGIN ' , (self encodeString: self user).
	[self checkResponse]
		on: TelnetProtocolError
		do: [ :ex | ex isCommandUnrecognized ifTrue: [^ self] ifFalse: [ex pass]].
	self sendCommand: (self encodeString: self password).
	self checkResponse! !

!SMTPClient methodsFor: 'private protocol' stamp: 'fbs 3/23/2004 17:16'!
mailFrom: fromAddress
	" MAIL <SP> FROM:<reverse-path> <CRLF>"

	| address |
	address := (MailAddressParser addressesIn: fromAddress) first.

	self sendCommand: 'MAIL FROM: <', address, '>'.
	self checkResponse.! !

!SMTPClient methodsFor: 'private protocol' stamp: 'mir 2/21/2002 17:52'!
quit
	"send a QUIT command.  This is polite to do, and indeed some servers might drop messages that don't have an associated QUIT"
	"QUIT <CRLF>"

	self sendCommand: 'QUIT'.
	self checkResponse.! !

!SMTPClient methodsFor: 'private protocol' stamp: 'mir 2/21/2002 17:52'!
recipient: aRecipient
	"specify a recipient for the message.  aRecipient should be a bare email address"
	"RCPT <SP> TO:<forward-path> <CRLF>"

	self sendCommand: 'RCPT TO: <', aRecipient, '>'.
	self checkResponse.! !

!SMTPClient methodsFor: 'utility' stamp: 'ar 12/4/2009 10:08'!
encodeString: aString 
	| str dec out |
	str := String new: (aString size * 4 / 3 + 3) ceiling.
	dec := Base64MimeConverter new.
	dec
		mimeStream: (out := WriteStream on: str);
		dataStream: (ReadStream on: aString);
		multiLine: false;
		mimeEncode.
	^out contents! !

!SMTPClient class methodsFor: 'example' stamp: 'mir 2/22/2002 16:41'!
example
	"SMTPClient example"

	self deliverMailFrom: 'm.rueger@acm.org' to: #('m.rueger@acm.org') text:
'From: test
To: "not listed"
Subject: this is a test

Hello from Squeak!!
'	usingServer: 'smtp.concentric.net'! !

!SMTPClient class methodsFor: 'example' stamp: 'mir 2/22/2002 16:43'!
example2
	"SMTPClient example2"

	self deliverMailFrom: 'm.rueger@acm.org' to: #('m.rueger@acm.org') text:
'Subject: this is a test

Hello from Squeak!!
'	usingServer: 'smtp.concentric.net'! !

!SMTPClient class methodsFor: 'accessing' stamp: 'mir 2/21/2002 17:22'!
defaultPortNumber
	^25! !

!SMTPClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 19:07'!
logFlag
	^#smtp! !

!SMTPClient class methodsFor: 'instance creation' stamp: 'mir 2/22/2002 17:37'!
openOnHost: hostIP port: portNumber

	| client |
	client := super openOnHost: hostIP port: portNumber.
	client initiateSession.
	^client! !

!SMTPClient class methodsFor: 'sending mail' stamp: 'mir 2/22/2002 12:30'!
deliverMailFrom: fromAddress to: recipientList text: messageText usingServer: serverName
	"Deliver a single email to a list of users and then close the connection.  For delivering multiple messages, it is best to create a single connection and send all mail over it.  NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	| smtpClient |
	smtpClient := self openOnHostNamed: serverName.
	[smtpClient mailFrom: fromAddress to: recipientList text: messageText.
	smtpClient quit]
		ensure: [smtpClient close]
! !
