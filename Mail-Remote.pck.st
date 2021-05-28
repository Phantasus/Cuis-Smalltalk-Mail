'From Cuis 5.0 [latest update: #4579] on 28 May 2021 at 10:22:42 pm'!
'Description Clients for POP3, SMTP and IMAP protocols

Author: Others (see AUTHORs.md) and Josef Philip Bernhart (jpb)
License: MIT'!
!provides: 'Mail-Remote' 1 7!
!requires: 'Network-Kernel' 1 5 nil!
!requires: 'WebClient' 1 20 nil!
!requires: 'Mail-Kernel' 1 61 nil!
SystemOrganization addCategory: 'Mail-Remote'!


!classDefinition: #ImapAddressBook category: 'Mail-Remote'!
OrderedCollection subclass: #ImapAddressBook
	instanceVariableNames: ''
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapAddressBook class' category: 'Mail-Remote'!
ImapAddressBook class
	instanceVariableNames: ''!

!classDefinition: #MailProtocolError category: 'Mail-Remote'!
Error subclass: #MailProtocolError
	instanceVariableNames: 'protocolInstance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailProtocolError class' category: 'Mail-Remote'!
MailProtocolError class
	instanceVariableNames: ''!

!classDefinition: #MailClientError category: 'Mail-Remote'!
MailProtocolError subclass: #MailClientError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailClientError class' category: 'Mail-Remote'!
MailClientError class
	instanceVariableNames: ''!

!classDefinition: #MailLoginFailedError category: 'Mail-Remote'!
MailProtocolError subclass: #MailLoginFailedError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailLoginFailedError class' category: 'Mail-Remote'!
MailLoginFailedError class
	instanceVariableNames: ''!

!classDefinition: #MailPop3LoginError category: 'Mail-Remote'!
MailProtocolError subclass: #MailPop3LoginError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailPop3LoginError class' category: 'Mail-Remote'!
MailPop3LoginError class
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

!classDefinition: #ImapNullStream category: 'Mail-Remote'!
SocketStream subclass: #ImapNullStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapNullStream class' category: 'Mail-Remote'!
ImapNullStream class
	instanceVariableNames: ''!

!classDefinition: #ImapAccountInfo category: 'Mail-Remote'!
Object subclass: #ImapAccountInfo
	instanceVariableNames: 'accountName host port username password ssl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapAccountInfo class' category: 'Mail-Remote'!
ImapAccountInfo class
	instanceVariableNames: ''!

!classDefinition: #ImapCommand category: 'Mail-Remote'!
Object subclass: #ImapCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapCommand class' category: 'Mail-Remote'!
ImapCommand class
	instanceVariableNames: ''!

!classDefinition: #ImapEndPoint category: 'Mail-Remote'!
Object subclass: #ImapEndPoint
	instanceVariableNames: 'stream accountInfo loggedIn rootFolder lastResponse uids hierarchyDelimiter currentFolderName fatalErrorOccured folderNameOfTrash readWriter'
	classVariableNames: 'ConnectionConfigurations'
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapEndPoint class' category: 'Mail-Remote'!
ImapEndPoint class
	instanceVariableNames: ''!

!classDefinition: #ImapFileReadWriter category: 'Mail-Remote'!
Object subclass: #ImapFileReadWriter
	instanceVariableNames: 'directoryToFolderDictionary endpoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapFileReadWriter class' category: 'Mail-Remote'!
ImapFileReadWriter class
	instanceVariableNames: ''!

!classDefinition: #ImapFolder category: 'Mail-Remote'!
Object subclass: #ImapFolder
	instanceVariableNames: 'parent childFolders folderName emails endpoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapFolder class' category: 'Mail-Remote'!
ImapFolder class
	instanceVariableNames: ''!

!classDefinition: #ImapMailRecord category: 'Mail-Remote'!
Object subclass: #ImapMailRecord
	instanceVariableNames: 'body header folder messageID uniqueID'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapMailRecord class' category: 'Mail-Remote'!
ImapMailRecord class
	instanceVariableNames: ''!

!classDefinition: #ImapParser category: 'Mail-Remote'!
Object subclass: #ImapParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapParser class' category: 'Mail-Remote'!
ImapParser class
	instanceVariableNames: ''!

!classDefinition: #ImapProtocolFolder category: 'Mail-Remote'!
Object subclass: #ImapProtocolFolder
	instanceVariableNames: 'hierarchyDelimiter folderPath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapProtocolFolder class' category: 'Mail-Remote'!
ImapProtocolFolder class
	instanceVariableNames: ''!

!classDefinition: #ImapStreamer category: 'Mail-Remote'!
Object subclass: #ImapStreamer
	instanceVariableNames: 'host port stream lastResponse ssl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'ImapStreamer class' category: 'Mail-Remote'!
ImapStreamer class
	instanceVariableNames: ''!

!classDefinition: #MailProtocolClient category: 'Mail-Remote'!
Object subclass: #MailProtocolClient
	instanceVariableNames: 'stream connectInfo serverCapabilities lastResponse pendingResponses progressObservers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailProtocolClient class' category: 'Mail-Remote'!
MailProtocolClient class
	instanceVariableNames: ''!

!classDefinition: #MailPop3Client category: 'Mail-Remote'!
MailProtocolClient subclass: #MailPop3Client
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailPop3Client class' category: 'Mail-Remote'!
MailPop3Client class
	instanceVariableNames: ''!

!classDefinition: #MailSmtpClient category: 'Mail-Remote'!
MailProtocolClient subclass: #MailSmtpClient
	instanceVariableNames: 'responseCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Remote'!
!classDefinition: 'MailSmtpClient class' category: 'Mail-Remote'!
MailSmtpClient class
	instanceVariableNames: ''!


!ImapAddressBook commentStamp: 'LW 8/1/2020 11:23' prior: 0!
An ICAddressBook is a collection for the user's contacts containing email addresses of all accounts.
This is a singleton which can be accessed with #new.!

!ImapNullStream commentStamp: 'tg 7/25/2019 12:25' prior: 0!
An ICNullStream is a Null Object resembling an SocketStream. !

!ImapAccountInfo commentStamp: 'LW 8/1/2020 11:20' prior: 0!
An ICAccountInfo is a dataobject holding information needed to connect to a server such as server address and user credentials. It also ensures basic IMAP datatype validity.

Instance Variables

	accountName: Name of the account set by the user.
	host: Hostname of the IMAP server.
	port: Port of the IMAP service on the server. Default: 993.
	username: Username to login at the IMAP server.
	password: Password of the user to login at the server. Will be deleted after login.
	
	!

!ImapCommand commentStamp: 'pm 7/23/2019 15:11' prior: 0!
ICCommands builds commands to send to the server.
The commands are conform to the IMAProtocol.!

!ImapEndPoint commentStamp: 'LW 8/2/2020 14:03' prior: 0!
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

!ImapFileReadWriter commentStamp: 'LW 8/1/2020 11:14' prior: 0!
An ICFileReadWriter is a JSON File Writer and Reader handling the file system storage of mails.

Instance Variables:
	directoryToFolderDictionary: Dictionary that maps a folder instance to each directory.
	endpoint: Endpoint instance.!

!ImapFolder commentStamp: 'jwe 7/28/2016 14:20' prior: 0!
An ICFolder is an object resembling an IMAP folder on a remote server.


Instance Variables
	childFolders:		All child folders of this folder. This is automatically filled in by the ICEndPoint.
	emails:		This contains all ICEmails of this folder after calling ICFolder>>fetchHeaders.
	endpoint:		Back reference to the ICEndPoint who created this ICFolder.
	name:		The name of the folder.
	parent:		The parent ICFolder. This is automatically filled in by the ICEndPoint.			!

!ImapMailRecord commentStamp: 'tg 7/19/2019 10:33' prior: 0!
An ICEmail is an object resembling an email residing on a remote server. This is automatically created when calling ICFolder>>fetchHeaders.

Instance Variables
	body:		The body of the ICEmail. ICEmail>>retrieveBody needs to be called to fill the body.
	folder:		The ICFolder this ICEmail resides in.
	header:		The header of the ICEmail. This gets parsed into the instance variables date, from, to and subject.
	date:		https://tools.ietf.org/html/rfc2822#page-14, date represents the local time and the zone is the timezone information.
			!

!ImapParser commentStamp: 'pm 7/12/2019 20:20' prior: 0!
An ICParser is a stateless method bin that can parse a header, email body and folder path from a response.!

!ImapProtocolFolder commentStamp: 'pm 7/12/2019 18:04' prior: 0!
An ICProtocolFolder is a wrapper for a folder and contains a folder path and a hierarchy delimiter

Instance Variables
	folderPath:					String
	hierarchyDelimiter:		String
!

!ImapStreamer commentStamp: 'ms 7/28/2016 11:51' prior: 0!
An ICStreamWrapper capsules low-level stream interactions.

Instance Variables
	host:		Contains the host name.
	lastResponse:		Contains the (possibly multi-line) response to our last sent command.
	port:		Contains the port.
	ssl:		A boolean flag indicating whether SSL is enabled.
	stream:		Contains the SocketStream (if SSL is disabled) or SecureSocketStream (if SSL is enabled) of our connection.!

!MailProtocolClient commentStamp: '<historical>' prior: 0!
ProtocolClient is the abstract super class for a variety of network protocol clients.
It uses a stream rather than the direct network access so it could also work for streams on serial connections etc.

Structure:
	stream				stream representing the connection to and from the server
	connectInfo			information required for opening a connection
	lastResponse			remembers the last response from the server.
	progressObservers 	any object understanding #show: can be registered as a progress observer (login, transfer, etc)!

!MailPop3Client commentStamp: '<historical>' prior: 0!
This class implements POP3 (Post Office Protocol 3) as specified in RFC 1939.  (see http://www.ietf.org/rfc.html)

You can use it to download email from the mail server to your personal mail program.

To see an example of it's use, see POPSocket class>>example.!

!MailSmtpClient commentStamp: '<historical>' prior: 0!
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

!ImapAccountInfo methodsFor: 'printing' stamp: 'fr 7/26/2019 16:52'!
printOn: aStream

	aStream nextPut: ({
		self accountName.
		self host.
		self port.
		self username.
		self password.
		self ssl
	} joinSeparatedBy: ' ')! !

!ImapAddressBook methodsFor: 'action' stamp: 'LW 6/16/2020 09:51'!
addEmail: aString

	self addIfNotPresent: aString
	
! !

!ImapAddressBook methodsFor: 'action' stamp: 'LW 6/16/2020 09:51'!
find: anEntry

	| index |
	index _ self indexOf: anEntry.
	^ self at: index! !

!ImapAddressBook methodsFor: 'initialize' stamp: 'LW 6/16/2020 09:51'!
feedMeWithEntries: anEmailCollection

	anEmailCollection do: [:emailAccount | 
		self 
			readRootFoldersMailsFrom: emailAccount;
			readChildFoldersMailsFrom: emailAccount.]! !

!ImapAddressBook methodsFor: 'initialize' stamp: 'LW 6/16/2020 09:50'!
readChildFoldersMailsFrom: anEmailAccount

	anEmailAccount rootFolder recursiveChildFolders do: [:childFolder |
			childFolder emails do: [:childFolderEmail | 
				self addEmail: childFolderEmail senderAddressFromHeader]]! !

!ImapAddressBook methodsFor: 'initialize' stamp: 'LW 6/10/2020 13:32'!
readRootFoldersMailsFrom: anEmailAccount

	anEmailAccount rootFolder emails do: [:rootFolderEmail | 
			self addEmail: rootFolderEmail senderAddressFromHeader]! !

!ImapAddressBook class methodsFor: 'instance creation' stamp: 'hg 6/24/2020 12:34'!
new
	Instance ifNil: [Instance _ super new: 10].
	^ Instance! !

!MailProtocolError methodsFor: 'as yet unclassified' stamp: 'jpb 5/28/2021 20:13:03'!
protocolInstance: newInstance
	protocolInstance _ newInstance ! !

!SMTPClientTest methodsFor: 'running' stamp: 'jpb 5/28/2021 19:46:12'!
setUp
	socket _ nil.
	smtp _ nil.
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

!ImapNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:02'!
close

	^ true! !

!ImapNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:04'!
isConnected

	^ false! !

!ImapNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:02'!
nextLine

	^ String empty! !

!ImapNullStream methodsFor: 'connection' stamp: 'js 6/7/2016 10:07'!
sendCommand: aString

	^ false! !

!ImapAccountInfo methodsFor: 'comparing' stamp: 'NH 7/15/2020 10:31'!
= anotherAccountInfo
	^ (self class = anotherAccountInfo class)
		and: [self asDictionary = anotherAccountInfo asDictionary]! !

!ImapAccountInfo methodsFor: 'comparing' stamp: 'LW 8/1/2020 12:04'!
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self username bitXor: (self accountName bitXor: (self host bitXor: self port hash))! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:20'!
accountName

	^ accountName ifNil: [accountName _ self class initialAccountName]! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:35'!
accountName: aString

	accountName _ aString! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:06'!
host

	^ host ifNil: [host _ self class invalidHost]! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:11'!
host: aString

	host _ aString! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'JJ 6/12/2020 11:43'!
missingFields
	
	^ (self asDictionary select: [ :value | (value asString isEmpty) | (value = nil asString) ]) keys! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/15/2019 12:11'!
password
	
	^ password ifNil: [password _ self class invalidPassword]! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:18'!
password: aString
	
	(self canConvert: aString) ifFalse: [self error: (aString, ' is not IMAP convertable')].
	password _ aString! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:09'!
port

	^ port ifNil: [port _ self class invalidPort]! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:11'!
port: aNumber

	port _ aNumber! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 20:21'!
ssl

	^ ssl ifNil: [ssl _ self class initialSsl]! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:34'!
ssl: aBool

	ssl _ aBool! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'fr 7/26/2019 15:37'!
username

	^ username ifNil: [username _ self class invalidUsername]! !

!ImapAccountInfo methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:18'!
username: aString

	(self canConvert: aString) ifFalse: [self error: (aString, ' is not IMAP convertable')].
	username _ aString! !

!ImapAccountInfo methodsFor: 'validating' stamp: 'jpb 5/28/2021 19:17:28'!
accountNameUnused

	^ ImapEndPoint connectionConfigurations
			noneSatisfy: [:each | (self accountName) = (each accountName)]! !

!ImapAccountInfo methodsFor: 'validating' stamp: 'fr 7/26/2019 15:37'!
canConvert: aString
	
	^ ('"|\\' asRegex matchesIn: aString) isEmpty! !

!ImapAccountInfo methodsFor: 'validating' stamp: 'tg 7/15/2019 12:08'!
hasValidServerInfo

	^ self host ~= self class invalidHost
		and: [self port ~= self class invalidPort]! !

!ImapAccountInfo methodsFor: 'validating' stamp: 'tg 7/15/2019 12:08'!
hasValidUserInfo

	^ self username ~= self class invalidUsername
		and: [self password ~= self class invalidPassword]! !

!ImapAccountInfo methodsFor: 'validating' stamp: 'fr 7/26/2019 15:57'!
isValid

	^ self hasValidServerInfo and: [self hasValidUserInfo]! !

!ImapAccountInfo methodsFor: 'converting' stamp: 'tg 7/18/2019 23:07'!
asDictionary
	
	| dict |
	dict _ Dictionary new.
	dict at: 'ssl' put: self ssl;
		at: 'accountName' put: self accountName;
		at: 'address' put: self host;
		at: 'port' put: self port;
		at: 'username' put: self username;
		at: 'password' put: self password.
	
	^ dict
	! !

!ImapAccountInfo methodsFor: 'converting' stamp: 'tg 7/10/2019 17:18'!
passwordAsIMAPString
	
	^ '"', self password, '"'! !

!ImapAccountInfo methodsFor: 'converting' stamp: 'tg 7/10/2019 17:18'!
usernameAsIMAPString

	^ '"', self username, '"'! !

!ImapAccountInfo methodsFor: 'action' stamp: 'LW 7/31/2020 11:39'!
eraseStoredPassword
	
	self password: ''! !

!ImapAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 17:43'!
initialAccountName

	^ String empty! !

!ImapAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 17:43'!
initialSsl

	^ true! !

!ImapAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:08'!
invalidHost

	^ String empty! !

!ImapAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:10'!
invalidPassword

	^ String empty! !

!ImapAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:09'!
invalidPort

	^ -1! !

!ImapAccountInfo class methodsFor: 'constants' stamp: 'tg 7/10/2019 20:10'!
invalidUsername

	^ String empty! !

!ImapAccountInfo class methodsFor: 'instance creation' stamp: 'NH 7/15/2020 10:14'!
newWith: aDataDictionary
	
	^ self new
		accountName: (aDataDictionary at: 'accountName' ifAbsent: [nil]);
		host: (aDataDictionary at: 'address' ifAbsent: [self invalidHost]);
		port: ((aDataDictionary at: 'port' ifAbsent: [self invalidPort]) asNumber);
		username: (aDataDictionary at: 'username' ifAbsent: [self invalidUsername]);
		password: (aDataDictionary at: 'password' ifAbsent: [self invalidPassword]);
		ssl: (aDataDictionary at: 'ssl' ifAbsent: [self initialSsl])! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:18'!
allUIDs

	^ self join: {'UID SEARCH ALL'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:46'!
deleteEmail: aMessageId

	^ self join: {'STORE' . aMessageId . '+FLAGS \Deleted'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'NH 8/2/2020 11:35'!
expungeEmails

	^ self join: {'EXPUNGE'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:48'!
fetchBody: aMessageId

	^ self join: {'FETCH' . aMessageId . 'body[TEXT]'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/24/2019 21:18'!
fetchFlagsForUIDsFrom: aBeginUID to: anEndUID

	^ self join: {'UID FETCH' . (aBeginUID asString, ':', anEndUID asString) . '(FLAGS)'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/24/2019 21:18'!
fetchHeadersForUIDsFrom: aBeginId to: anEndId

	^ self join: {
		'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:50'!
listSubfoldersOf: aFolder filterBy: aFilter

	^ self join: {'LIST' . self putInQuotes: aFolder . self putInQuotes: aFilter}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:52'!
loginWith: anAccountInfo

	^ self join: {'LOGIN' . anAccountInfo usernameAsIMAPString . anAccountInfo passwordAsIMAPString}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:53'!
logout

	^ self join: {'LOGOUT'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 14:54'!
moveEmail: aMessageId to: aFolder

	^ self join: {'MOVE' . aMessageId . self putInQuotes: aFolder}
! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 15:09'!
noop

	^ self join: {'NOOP'}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 18:29'!
resetFlag: aFlagString for: aMessageId

	(self isValidFlag: aFlagString) ifFalse: [self error: 'Trying to send invalid Flag'].
	^ self join: {'STORE' . aMessageId . '-FLAGS \', aFlagString withFirstCharacterUppercase}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 18:24'!
select: aFolder

	^ self join: {'SELECT' . self putInQuotes: aFolder}! !

!ImapCommand class methodsFor: 'commands' stamp: 'pm 7/23/2019 18:29'!
setFlag: aFlagString for: aMessageId

	(self isValidFlag: aFlagString) ifFalse: [self error: 'Trying to send invalid Flag'].
	^ self join: {'STORE' . aMessageId . '+FLAGS \', aFlagString withFirstCharacterUppercase}! !

!ImapCommand class methodsFor: 'validation' stamp: 'JJ 7/31/2020 13:55'!
isValidFlag: aFlagString

	^ {'Seen' . 'Flagged' . 'Deleted'} includes: aFlagString withFirstCharacterUppercase! !

!ImapCommand class methodsFor: 'command building' stamp: 'pm 7/24/2019 21:24'!
join: aCommandArray

	^ aCommandArray asOrderedCollection
			addFirst: self protocolCommandStart;
			joinSeparatedBy: self protocolBlank! !

!ImapCommand class methodsFor: 'command building' stamp: 'jpb 5/28/2021 19:18:13'!
putInQuotes: aString

	^ ImapCommand protocolQuote, aString, ImapCommand protocolQuote! !

!ImapCommand class methodsFor: 'constants' stamp: 'pm 7/24/2019 21:21'!
protocolBlank

	^ ' '! !

!ImapCommand class methodsFor: 'constants' stamp: 'pm 7/24/2019 21:21'!
protocolCommandStart

	^ '.'! !

!ImapCommand class methodsFor: 'constants' stamp: 'pm 7/24/2019 21:21'!
protocolQuote

	^ '"'! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'jpb 5/28/2021 19:18:27'!
accountInfo

	^ accountInfo ifNil: [accountInfo _ ImapAccountInfo new]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'tg 7/10/2019 17:24'!
accountInfo: anICAccountInfo

	accountInfo _ anICAccountInfo! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 13:50'!
currentFolderName

	^ currentFolderName! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 13:50'!
currentFolderName: aFolderName

	currentFolderName _ aFolderName! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 21:05'!
fatalErrorOccured

	^ fatalErrorOccured ifNil: [fatalErrorOccured _ false]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 21:05'!
fatalErrorOccured: aBoolean
	
	fatalErrorOccured _ aBoolean! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 14:12'!
folderNameOfTrash

	^ folderNameOfTrash! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'tg 7/26/2019 14:13'!
folderNameOfTrash: aNameString

	folderNameOfTrash _ aNameString! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'mw 5/11/2018 10:37'!
hierarchyDelimiter

	^ hierarchyDelimiter
	! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'mw 5/11/2018 10:37'!
hierarchyDelimiter: aSymbol

	hierarchyDelimiter _ aSymbol

	! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:09'!
host

	^ self accountInfo host! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:10'!
lastResponse

	^ lastResponse ifNil: [lastResponse _ OrderedCollection new]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'lvm 5/24/2018 10:16'!
lastResponse: anOrderedCollection

	lastResponse _ anOrderedCollection! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:07'!
loggedIn

	^ loggedIn ifNil: [loggedIn _ false]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'js 5/15/2016 13:09'!
loggedIn: aBool

	loggedIn _ aBool! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'jpb 5/28/2021 19:17:12'!
readWriter
	^ readWriter ifNil: [readWriter _ ImapFileReadWriter newWith: self]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'NH 7/30/2020 21:42'!
readWriter: anObject
	readWriter _ anObject! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'hg 7/29/2020 10:50'!
rootDirectoryName
	
	^ (SecureHashAlgorithm new 
		hashMessage: self host, self username) 
			asString first: self class accountFolderHashRelevantCharacters! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'jpb 5/28/2021 19:17:04'!
rootFolder

	^ rootFolder ifNil: [rootFolder _ ImapFolder newRootFolderWith: self]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'js 6/10/2016 15:09'!
rootFolder: anICFolder

	rootFolder _ anICFolder! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'jpb 5/28/2021 22:22:32'!
stream

	^ stream ifNil: [stream _ ImapStreamer new]! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'js 6/7/2016 10:17'!
stream: anICStreamWrapper

	stream _ anICStreamWrapper! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 13:59'!
uids

	^ uids! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:52'!
uids: anOrderedCollection

	uids _ anOrderedCollection! !

!ImapEndPoint methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:09'!
username

	^ self accountInfo username! !

!ImapEndPoint methodsFor: 'error handling' stamp: 'tg 7/10/2019 19:29'!
checkConnected
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	self stream isConnected 
		ifFalse: [
			self fatalErrorOccured: true.
			^ false].
  
	^ true! !

!ImapEndPoint methodsFor: 'error handling' stamp: 'jpb 5/28/2021 19:16:43'!
checkForBadRequest

	(self fatalErrorOccured)
 		ifTrue: [^ false].
  
	(ImapParser responseIsError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		^ Error signal: self class errorBadProtocol].
 
	^ false! !

!ImapEndPoint methodsFor: 'error handling' stamp: 'jpb 5/28/2021 19:16:43'!
checkForParameterError
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	(ImapParser responseIsParameterError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		self inform: 'Wrong username or password'.
		^ true].
  
	^ false! !

!ImapEndPoint methodsFor: 'login' stamp: 'tg 7/15/2019 12:44'!
checkLoggedIn
  
	(self fatalErrorOccured)
		ifTrue: [^ false].
 
	self loggedIn ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	
	^ true
 
! !

!ImapEndPoint methodsFor: 'login' stamp: 'LW 8/2/2020 16:30'!
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.

	[self 
		connect;
		login]
	valueWithin: 5 seconds 
	onTimeout: [self handleTimeout]! !

!ImapEndPoint methodsFor: 'login' stamp: 'jpb 5/28/2021 19:17:12'!
login
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^false].
  	(self throwErrorIfAccountInvalid) ifFalse: [^false].
	
	self sendLoginCommand.
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^false].
	
	(ImapFileReadWriter newWith: self) readEmailsFromDisk.
	^ true! !

!ImapEndPoint methodsFor: 'login' stamp: 'jpb 5/28/2021 19:18:13'!
logout

	self checkConnected.
	self sendCommand: ImapCommand logout.
	self
		fetchNextResponse;
		close.

	^ true! !

!ImapEndPoint methodsFor: 'login' stamp: 'jpb 5/28/2021 19:18:13'!
sendLoginCommand
	
	self sendCommand: (ImapCommand loginWith: self accountInfo);
		fetchNextResponse;
		loggedIn: (ImapParser commandSucceeded: self stream lastResponse)! !

!ImapEndPoint methodsFor: 'login' stamp: 'tg 7/26/2019 22:12'!
testAccountWith: anAccountInfo

	self connectAndLoginWith: anAccountInfo.
 
	^ self fatalErrorOccured not! !

!ImapEndPoint methodsFor: 'login' stamp: 'JJ 8/2/2020 16:42'!
throwErrorIfAccountInvalid
  	
	(self accountInfo isValid) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	^true! !

!ImapEndPoint methodsFor: 'login' stamp: 'JJ 8/2/2020 16:15'!
throwErrorIfNotLoggedIn
	
	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		self inform: 'Cant connect to the server'. 
		^ false].
	^ true! !

!ImapEndPoint methodsFor: 'connection' stamp: 'AR 5/31/2016 11:12'!
close

	self stream close.
	self loggedIn: false! !

!ImapEndPoint methodsFor: 'connection' stamp: 'tg 7/15/2019 13:27'!
connect

	self connectWith: self class defaultStreamClass! !

!ImapEndPoint methodsFor: 'connection' stamp: 'tg 7/18/2019 23:00'!
connectWith: aStreamClass

	self accountInfo isValid ifFalse: [^ Error signal: self class errorInvalidConnectionConfiguration].
 
	[self stream
		ssl: self accountInfo ssl;
		connectTo: self accountInfo host on: self accountInfo port with: aStreamClass;
		nextResponse "skip server greetings"]
	on: Error
	do: [self fatalErrorOccured: true]! !

!ImapEndPoint methodsFor: 'connection' stamp: 'LW 8/2/2020 16:26'!
handleTimeout
		
	(self fatalErrorOccured)
		ifFalse: [
			self inform: 'Connection could not be established due to a timeout'.
			self fatalErrorOccured: true]! !

!ImapEndPoint methodsFor: 'connection' stamp: 'js 6/7/2016 10:13'!
isConnected

	^ self stream isConnected! !

!ImapEndPoint methodsFor: 'connection' stamp: 'lvm 7/23/2018 23:33'!
preventTimeout

	[self refreshConnectionProcess] forkAt: Processor userBackgroundPriority! !

!ImapEndPoint methodsFor: 'connection' stamp: 'jpb 5/28/2021 19:18:13'!
refreshConnectionProcess

	[self isConnected and: [self loggedIn]]
		whileTrue: [
			self sendCommand: ImapCommand noop.
			self fetchNextResponse.
			(Delay forSeconds: self class refreshConnectionIntervalInSeconds) wait]! !

!ImapEndPoint methodsFor: 'connection' stamp: 'DH 6/26/2018 20:21'!
sendCommand: aCommand
	
	self stream sendCommand: aCommand! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
currentUIDs

	self
		sendCommand: ImapCommand allUIDs;
		fetchNextResponse.
		
	self 
		uids: ((self lastResponse first subStrings: ' ') asOrderedCollection 
		removeFirst;
		removeFirst; 
		yourself)! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
currentUIDsFor: anICFolder

	| isEmpty |
		
	self select: anICFolder path.
	isEmpty _ true.
	
	self lastResponse do:
		[:line | (line findString: 'EXISTS') positive
			ifTrue: [isEmpty _ false]].
	
	isEmpty
	ifFalse: [
		self
			sendCommand: ImapCommand allUIDs;
			fetchNextResponse.
		self 
			uids: ((self lastResponse first subStrings: ' ') asOrderedCollection 
			removeFirst;
			removeFirst; 
			yourself)]
	ifTrue: [^ OrderedCollection new]! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'pm 7/15/2019 20:28'!
fetchMailsBeginningAt: aBeginUID number: numberOfMessages 

	| start end possibleUID numberToFetch |
	
	"aBeginUID is the last known UID of the folder. numberOfMessages is the number
	 of messages which should be fetched starting at this UID"
	
	numberToFetch _ numberOfMessages.
	
	self currentUIDs.
	possibleUID _ self uids select: [:uid | uid asNumber < aBeginUID].
	possibleUID size < numberToFetch
		ifTrue: [numberToFetch _ possibleUID size].
		
	numberToFetch = 0 ifTrue: [^ OrderedCollection new].	
		
	possibleUID _ possibleUID copyFrom: (possibleUID size - numberToFetch + 1) to: possibleUID size. 
		
	start _ possibleUID first.
	end _ possibleUID last.
			
	^ self maildirDiffFetchHeadersFrom: start asString to: end asString! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:16:43'!
fetchNextResponse
	
	| multiLineResponse |

	multiLineResponse _ OrderedCollection new.
	self stream nextResponse.
	self 
		checkForBadRequest;
		checkForParameterError.
	
	[ImapParser commandSucceeded: self stream lastResponse]
		whileFalse: [ 
			multiLineResponse add: self stream lastResponse.
			self stream nextResponse].
	
	self lastResponse: multiLineResponse! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
fillBodyFor: anEmail
	
	self 
		sendCommand: (ImapCommand fetchBody: anEmail messageID);
		fetchNextResponse.
	anEmail body: (ImapParser parseFetchBody: self lastResponse)! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'js 6/14/2016 12:31'!
listAllFolders

	^ self listFoldersIn: String empty using: '*'! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
listFoldersIn: root using: filter

	self 
		checkConnected;
		checkLoggedIn.
		
	self sendCommand: (ImapCommand listSubfoldersOf: root filterBy: filter).
		
	^ self parseListResponse! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'tg 7/15/2019 13:31'!
maildirDiffFetchHeadersFrom: anUID

	self uids
		ifEmpty: [ ^ OrderedCollection new];
		ifNil: [^ OrderedCollection new]
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: (self uids last + 1)]! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
maildirDiffFetchHeadersFrom: start to: end

	| searchBegin searchEnd mailFolder |

	(FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName)) 
		ifTrue: [
			mailFolder _ FileDirectory default on: self maildirFileName.
			searchBegin _ mailFolder	fileNamesMatching: (end asString).
			searchEnd _ mailFolder	fileNamesMatching: (start asString).
	
			(searchBegin notEmpty and: [searchEnd notEmpty])
				ifTrue: [^ OrderedCollection new]].

     ^ self
       	sendCommand: (ImapCommand fetchHeadersForUIDsFrom: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'LW 8/1/2020 09:55'!
retrieveBody: anEmail

		self 
			select: anEmail folder path;
			fillBodyFor: anEmail.! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (ImapCommand fetchFlagsForUIDsFrom: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchedFlagsAndPopulate: aFolder! !

!ImapEndPoint methodsFor: 'protocol handling - fetch' stamp: 'jpb 5/28/2021 19:18:13'!
select: aFolderName

	self	currentFolderName: aFolderName;
		sendCommand: (ImapCommand select: aFolderName);
		fetchNextResponse! !

!ImapEndPoint methodsFor: 'protocol handling - delete' stamp: 'jpb 5/28/2021 19:18:13'!
deleteEmail: anEmail
	
	self select: anEmail folder path.
	self sendCommand: (ImapCommand deleteEmail: anEmail messageID).
	self fetchNextResponse.
	
	self moveEmail: anEmail to: self folderNameOfTrash.! !

!ImapEndPoint methodsFor: 'protocol handling - delete' stamp: 'hg 7/31/2020 12:24'!
deleteMailLocally: anEmail

	anEmail folder removeMail: anEmail.
	self readWriter delete: anEmail! !

!ImapEndPoint methodsFor: 'protocol handling - delete' stamp: 'jpb 5/28/2021 19:18:13'!
expungeEmails

	self sendCommand: ImapCommand expungeEmails.	
	self fetchNextResponse
! !

!ImapEndPoint methodsFor: 'protocol handling' stamp: 'jpb 5/28/2021 19:18:13'!
folderFromResponse: responseLine

	| folder folderPath parent namePart|
	
	
	namePart _ (responseLine copyAfter: ImapCommand protocolQuote asCharacter).
	
	folder _ ImapParser parseFolderPathFrom: namePart.
	self hierarchyDelimiter: folder hierarchyDelimiter.
	folderPath _ folder pathAsArray.
	
	(responseLine includesSubstring: '\Trash') ifTrue: [self folderNameOfTrash: folderPath first].
	
	parent _ self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ImapFolder named: folderPath first in: self rootFolder with: self].
	
	folderPath allButFirst do: [ :name | parent _ parent childFolderNamed: name 
		ifAbsent: [ImapFolder named: name in: parent with: self]]! !

!ImapEndPoint methodsFor: 'protocol handling' stamp: 'jpb 5/28/2021 19:16:43'!
parseFetchHeaders: headerLines

	| folder parseResult mailCollection |
	
	headerLines ifEmpty: [^ OrderedCollection new].

	mailCollection _ OrderedCollection new.
	parseResult _ ImapParser parseFetchMailStream: (ReadStream on: (headerLines joinSeparatedBy: Character cr)).
		
	folder _ self rootFolder childFolderNamed: (self currentFolderName) with: (self hierarchyDelimiter).
	 
	"iterate over all pairs of IDs and messages"
	parseResult keysAndValuesDo: [:id :message | 
		| mail |
		"parse the message and ID into a ICMail"
		mail _ ImapParser parseFetchHeader: message withId: id.
		mailCollection add: mail.
		"store the ICMail in the appropriate folder and write it on the disk"
		mail folder: folder.
		self readWriter write: mail].
	
	^ mailCollection! !

!ImapEndPoint methodsFor: 'protocol handling' stamp: 'jpb 5/28/2021 19:16:43'!
parseFetchedFlagsAndPopulate: aFolder

	| flagsPerUID | 
	
	flagsPerUID _ ImapParser parseFetchedFlagsAndPopulate: self lastResponse.
	
	aFolder emails do: [:email | 
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			email seen: (flags includes: '\Seen').
			email flagged: (flags includes: '\Flagged').
			email deleted: (flags includes: '\Deleted').
			self readWriter write: email]]! !

!ImapEndPoint methodsFor: 'protocol handling' stamp: 'tg 7/26/2019 14:20'!
parseListResponse
	
	self fetchNextResponse.
	self lastResponse do: [:each | self folderFromResponse: each]! !

!ImapEndPoint methodsFor: 'storage' stamp: 'hg 7/29/2020 10:50'!
maildirFileName

	^ 'Maildir', 
		FileDirectory slash, 
		self rootDirectoryName, 
		FileDirectory slash, 		
		self currentFolderName copyReplaceAll: (self hierarchyDelimiter) with: (FileDirectory slash)! !

!ImapEndPoint methodsFor: 'protocol handling - flags' stamp: 'LW 8/1/2020 09:32'!
modifyFlag: aFlag for: anEmail
	
	(anEmail perform: aFlag)
		ifTrue: [self resetFlag: anEmail and: aFlag]
		ifFalse: [self setFlag: anEmail and: aFlag]! !

!ImapEndPoint methodsFor: 'protocol handling - flags' stamp: 'JJ 7/31/2020 13:55'!
resetDeletedFlagWhenRecovering: anEmail

	(anEmail folder folderName = self folderNameOfTrash)
		ifTrue: [ self resetFlag: anEmail and: #deleted]! !

!ImapEndPoint methodsFor: 'protocol handling - flags' stamp: 'jpb 5/28/2021 19:18:13'!
resetFlag: anEmail and: aFlag
	
	self sendCommand: (ImapCommand resetFlag: aFlag asString for: anEmail messageID).
	self fetchNextResponse! !

!ImapEndPoint methodsFor: 'protocol handling - flags' stamp: 'jpb 5/28/2021 19:18:13'!
setFlag: anEmail and: aFlag

	self sendCommand: (ImapCommand setFlag: aFlag asString for: anEmail messageID).	
	self fetchNextResponse! !

!ImapEndPoint methodsFor: 'protocol handling - move' stamp: 'jpb 5/28/2021 19:18:13'!
moveEmail: anEmail to: aFolder

	self select: anEmail folder path.
	self deleteMailLocally: anEmail.
	
	self resetDeletedFlagWhenRecovering: anEmail.
	
	self sendCommand: (ImapCommand moveEmail: anEmail messageID to: aFolder).		
	self fetchNextResponse.
	(self rootFolder childFolderNamed: aFolder with: (self hierarchyDelimiter)) update! !

!ImapEndPoint class methodsFor: 'constants' stamp: 'ok 7/26/2019 19:11'!
accountFolderHashRelevantCharacters

	^ 10! !

!ImapEndPoint class methodsFor: 'constants' stamp: 'tg 7/15/2019 13:26'!
defaultStreamClass

	^ SocketStream! !

!ImapEndPoint class methodsFor: 'constants' stamp: 'ok 7/26/2019 21:04'!
refreshConnectionIntervalInSeconds

	^ 60 * 10! !

!ImapEndPoint class methodsFor: 'configuration storage' stamp: 'LW 7/31/2020 11:42'!
addConfiguration: anAccountInfo
	
	self basicConnectionConfigurations add: anAccountInfo! !

!ImapEndPoint class methodsFor: 'configuration storage' stamp: 'tg 7/8/2019 15:14'!
basicConnectionConfigurations
	
	^ ConnectionConfigurations ifNil: [ConnectionConfigurations _ OrderedCollection new]! !

!ImapEndPoint class methodsFor: 'configuration storage' stamp: 'tg 7/8/2019 15:14'!
connectionConfigurations

	^ self basicConnectionConfigurations copy! !

!ImapEndPoint class methodsFor: 'configuration storage' stamp: 'pm 6/19/2019 14:49'!
connectionConfigurations: anOrderedCollection

	ConnectionConfigurations _ anOrderedCollection! !

!ImapEndPoint class methodsFor: 'configuration storage' stamp: 'LW 7/31/2020 11:29'!
eraseStoredPasswords
	self basicConnectionConfigurations do: [:anAccountInfo |
		anAccountInfo eraseStoredPassword].! !

!ImapEndPoint class methodsFor: 'configuration storage' stamp: 'NH 7/15/2020 09:55'!
removeConfiguration: anAccountInfo

	^ self basicConnectionConfigurations remove: anAccountInfo! !

!ImapEndPoint class methodsFor: 'errors' stamp: 'js 5/15/2016 13:55'!
errorBadProtocol

	^ 'server protocol not supported'! !

!ImapEndPoint class methodsFor: 'errors' stamp: 'js 5/15/2016 16:15'!
errorInvalidConnectionConfiguration

	^ 'the provided connection information is not valid'! !

!ImapFileReadWriter methodsFor: 'delete file' stamp: 'hg 8/2/2020 19:11'!
delete: anICEmail

	(FileDirectory default / self endpoint maildirFileName) deleteFileNamed: anICEmail uniqueID ifAbsent: [^ self]! !

!ImapFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 15:35'!
directoryToFolderDictionary

	^ directoryToFolderDictionary ifNil: [
		directoryToFolderDictionary _ Dictionary newFrom: {self rootDirectory -> self endpoint rootFolder}]! !

!ImapFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 14:09'!
endpoint
	^ endpoint! !

!ImapFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 14:09'!
endpoint: anObject
	endpoint _ anObject! !

!ImapFileReadWriter methodsFor: 'accessing' stamp: 'hg 7/29/2020 13:56'!
rootDirectory
	
	^ (FileDirectory default directoryNamed: 'Maildir') directoryNamed: self endpoint rootDirectoryName! !

!ImapFileReadWriter methodsFor: 'read file' stamp: 'jpb 5/28/2021 19:17:04'!
directoryVisitor
	
	^ [:directory | | currentFolder |
		(directory = self rootDirectory) ifFalse: [
			currentFolder _ ImapFolder
				named: directory pathParts last
				in: (self directoryToFolderDictionary at: directory containingDirectory)
				with: self endpoint.
			directoryToFolderDictionary at: directory put: currentFolder]]
! !

!ImapFileReadWriter methodsFor: 'read file' stamp: 'jpb 5/28/2021 19:17:56'!
fileVisitor

	 ^ [:file | | currentFolder | 
			currentFolder _ self directoryToFolderDictionary at: file directory.
			currentFolder addMails: {
				(ImapMailRecord newFromJsonStream: file) 
					folder: currentFolder; 
					yourself}.
			file close]
! !

!ImapFileReadWriter methodsFor: 'read file' stamp: 'hg 7/29/2020 14:19'!
readEmailsFromDisk

	self rootDirectory
			assureExistence; 
			withAllFilesDo: self fileVisitor andDirectoriesDo: self directoryVisitor! !

!ImapFileReadWriter methodsFor: 'write file' stamp: 'LW 8/2/2020 16:37'!
write: anICEmail
	
	(FileDirectory default / self endpoint maildirFileName) assureExistence.
		
	FileStream 
		forceNewFileNamed: (self endpoint maildirFileName, FileDirectory slash, anICEmail uniqueID) 
		do: [:stream | 
			stream nextPutAll: anICEmail 
				serializeToJson; 
				flush; 
				close]! !

!ImapFileReadWriter class methodsFor: 'instance creation' stamp: 'hg 7/29/2020 13:55'!
newWith: anEndpoint

	^self new
		endpoint: anEndpoint;
		yourself! !

!ImapFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:06'!
accountName

	^ self endpoint accountInfo accountName! !

!ImapFolder methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:12'!
childFolders

	^ childFolders ifNil: [childFolders _ OrderedCollection new]! !

!ImapFolder methodsFor: 'accessing' stamp: 'LW 7/31/2020 12:27'!
emails

	^ emails ifNil: [emails _ OrderedCollection new]! !

!ImapFolder methodsFor: 'accessing' stamp: 'LW 7/31/2020 12:26'!
emails: anOrderedCollection

	emails _ anOrderedCollection! !

!ImapFolder methodsFor: 'accessing' stamp: 'ms 7/10/2016 13:24'!
endpoint

	^ endpoint! !

!ImapFolder methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:56'!
endpoint: anICEndpoint

	endpoint _ anICEndpoint! !

!ImapFolder methodsFor: 'accessing' stamp: 'tg 7/19/2019 09:17'!
folderName

	^ folderName ifNil: [folderName _ self class defaultName]! !

!ImapFolder methodsFor: 'accessing' stamp: 'tg 7/19/2019 09:17'!
folderName: aString

	folderName _ aString! !

!ImapFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:02'!
hierarchyDelimiter

	^ self endpoint hierarchyDelimiter! !

!ImapFolder methodsFor: 'accessing' stamp: 'pm 6/3/2019 18:34'!
highestUniqueID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMax: [:mail | mail uniqueID asNumber]) uniqueID! !

!ImapFolder methodsFor: 'accessing' stamp: 'JJ 6/10/2020 10:47'!
isTrashFolder

	^ self endpoint folderNameOfTrash = self folderName
	! !

!ImapFolder methodsFor: 'accessing' stamp: 'pm 6/3/2019 18:34'!
lowestUniqueID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMin: [:mail | mail uniqueID asNumber]) uniqueID! !

!ImapFolder methodsFor: 'accessing' stamp: 'LW 8/2/2020 14:27'!
numberOfUnseenMails

	| numberOfUnseen |
	
	numberOfUnseen _ self childFolders detectSum: [:anICFolder | anICFolder numberOfUnseenMails].
	^ (numberOfUnseen + (self emails count: [:anICEmail | anICEmail seen not]))! !

!ImapFolder methodsFor: 'accessing' stamp: 'tg 6/25/2019 21:21'!
parent

	^ parent! !

!ImapFolder methodsFor: 'accessing' stamp: 'js 6/7/2016 11:32'!
parent: anICFolder

	parent _ anICFolder! !

!ImapFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:08'!
parentPath

	^ self parent path! !

!ImapFolder methodsFor: 'accessing' stamp: 'tg 7/25/2019 12:56'!
recursiveChildFolders
	
	^ {self childFolders collect: [:child | child recursiveChildFolders]. self childFolders} flatten asOrderedCollection! !

!ImapFolder methodsFor: 'accessing' stamp: 'ok 7/26/2019 19:05'!
rootFolder

	^ self endpoint rootFolder! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'js 6/7/2016 13:09'!
addFolder: child

	child parent: self.
	self childFolders add: child! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'tg 7/19/2019 09:19'!
childFolderNamed: childFolderName ifAbsent: block

	^ self childFolders 
		detect: [:child | child folderName = childFolderName] 
		ifNone: [block value]! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 6/26/2018 11:01'!
childFolderNamed: name with: delimiter

	^ self 
			childFolderNamed: name 
			with: delimiter 
			ifAbsent: [Error signal: self class errorChildDoesNotExist]! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'tg 7/26/2019 21:52'!
childFolderNamed: childFolderName with: delimiter ifAbsent: block

	| rootPart childPart child parts |
	
	^ self childFolders 
		detect: [:subFolder | subFolder folderName = childFolderName] 
		ifNone: [ 
			"splice at delimiter and ask child"
			parts _ childFolderName subStrings: delimiter.
			(parts size > 1)
				ifTrue: [
					rootPart _ parts first.
					childPart _ parts allButFirst joinSeparatedBy: delimiter.
					child _ self childFolders detect: [ :childFolder | childFolder folderName = rootPart].
					child ifNotNil: [^ child childFolderNamed: childPart with: delimiter ifAbsent: block]].
			^ block value]! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 7/25/2018 14:02'!
countFolders

	^ self childFolders inject: self childFolders size into: [:count :child | count + child countFolders]! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'ok 7/26/2019 19:08'!
path

	^ (self parent == self rootFolder) 
		ifTrue: [ self folderName ] 
		ifFalse: [ self parentPath, self hierarchyDelimiter, self folderName]! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 7/25/2018 14:03'!
removeFolder: child

	^ self removeFolder: child ifAbsent: [Error signal: self class errorChildDoesNotExist]! !

!ImapFolder methodsFor: 'action - folder hierarchy' stamp: 'C.G. 7/25/2018 14:04'!
removeFolder: child ifAbsent: block

	(self childFolders includes: child) ifFalse: [^ block value].
	
	child parent: child.
	self childFolders remove: child! !

!ImapFolder methodsFor: 'action - add emails' stamp: 'LW 8/1/2020 10:14'!
addMails: aMailCollection

	"Since Exchange uses other objects than emails we need to exclude them from the list"
	self emails addAll: (self sanitizeMailCollection: aMailCollection).! !

!ImapFolder methodsFor: 'action - freshness' stamp: 'JJ 8/2/2020 15:52'!
ensureFreshness
	
	" This method is part of a good first issue with no. 366 :)"
	| relevantUIDs localMails min max |
	
	self emails ifEmpty: [^ self].
	
	" we cant access first and last of the sortedCollection because its sorted by date, not by UID "
	min _ self lowestUniqueID.
	max _ self highestUniqueID.
		
	self endpoint currentUIDs.
	
	relevantUIDs _ self endpoint uids select: [ :uid | (uid asNumber <= max) and: [uid asNumber >=min]].

	"search for uids, which are in storage, but not on the server --> they were moved"
	localMails _ self emails copy.
	relevantUIDs do: [ :uid | localMails removeAllSuchThat: [ :mail | mail uniqueID = uid]].
	
	"everything left in localMails has changed, and therefore can be removed"
	localMails do: [ :mail | self endpoint deleteMailLocally: mail]! !

!ImapFolder methodsFor: 'action - remove emails' stamp: 'NH 8/2/2020 11:36'!
expungeEmails
	
	self emails do: [ :email |
		email deleted ifTrue: [self endpoint deleteMailLocally: email]].
	self endpoint
		select: self path;
		expungeEmails
! !

!ImapFolder methodsFor: 'action - remove emails' stamp: 'tg 7/26/2019 21:59'!
removeMail: anICEmail

	self emails remove: anICEmail.! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:52'!
fetchHeadersFrom: anUID
	
	self emails addAll: (self endpoint
		currentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self ensureFreshness.
	self emails ifEmpty: [^ self].
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'LW 8/2/2020 14:35'!
fetchNumberOfLatestEmails: aNumber

	| startUID allUIDs |
	
	self endpoint currentUIDsFor: self.
	allUIDs _ self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - aNumber) strictlyPositive
		ifTrue: [startUID _ allUIDs at: (allUIDs size - aNumber)]
		ifFalse: [startUID _ (allUIDs first) - 1].
	self fetchHeadersFrom: startUID! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'tg 7/26/2019 21:05'!
loadOlderMails

	self emails addAll: 
		(self endpoint
			currentUIDsFor: self;
			fetchMailsBeginningAt: self lowestUniqueID number: self class numberOfHeadersToFetchAtLoadOlderMails)! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:36'!
modifyFlag: aFlag for: anEmail

	self retrieveFlagsFor: anEmail.
	self endpoint modifyFlag: aFlag for: anEmail! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:25'!
retrieveFlagsFor: anEmail
	
	self retrieveFlagsFrom: anEmail uniqueID to: anEmail uniqueID
! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'JJ 8/2/2020 15:33'!
retrieveFlagsFrom: anUID to: anotherUID

	self endpoint 
		select: self path;
		retrieveFlagsFrom: anUID to: anotherUID in: self! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'LW 8/2/2020 14:34'!
startUpdateProcess: anUID

	(self folderName = 'root') ifTrue: [^self].
	
	[anUID
		ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifNotNil: [self fetchHeadersFrom: anUID]]
	on: Error
	do: [:e | self inform: e asString]! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'pm 6/3/2019 18:34'!
update

	self startUpdateProcess: self highestUniqueID.	
	self childFolders do: [:anICFolder | anICFolder update]! !

!ImapFolder methodsFor: 'action - update emails' stamp: 'LW 6/3/2020 15:13'!
updateAndShowProgressWith: aBlock
	
	ProgressNotification 
		signal: (aBlock value) 
		extra: (self accountName, ' Mailbox. Folder: ', self folderName).
	
	self startUpdateProcess: self highestUniqueID.
	self childFolders do: [:anICFolder | anICFolder updateAndShowProgressWith: aBlock]! !

!ImapFolder methodsFor: 'action - sanitize emails' stamp: 'LW 5/20/2020 09:49'!
sanitizeMailCollection: aMailCollection
	
	^ aMailCollection select: [:mail | mail date notEmpty]! !

!ImapFolder class methodsFor: 'constants' stamp: 'js 6/7/2016 11:49'!
defaultName

	^ 'root'! !

!ImapFolder class methodsFor: 'constants' stamp: 'DH 7/22/2018 22:37'!
numberOfHeadersToFetchAtLoadOlderMails

	^ 10! !

!ImapFolder class methodsFor: 'constants' stamp: 'DH 7/22/2018 22:37'!
numberOfHeadersToFetchAtTheBeginning

	^ 100! !

!ImapFolder class methodsFor: 'errors' stamp: 'js 6/14/2016 09:27'!
errorChildDoesNotExist

	^ 'Child does not exist'! !

!ImapFolder class methodsFor: 'instance creation' stamp: 'tg 7/19/2019 09:19'!
named: name in: parent with: endpoint

	| newFolder |
	
	newFolder _ (self new)
		folderName: name;
		endpoint: endpoint.
		
	parent addFolder: newFolder.
	
	^ newFolder! !

!ImapFolder class methodsFor: 'instance creation' stamp: 'C.G. 7/25/2018 14:12'!
newRootFolderWith: endpoint
	
	| newFolder |
	
	newFolder _ self new.
	newFolder endpoint: endpoint.
		
	^ newFolder! !

!ImapMailRecord methodsFor: 'comparing' stamp: 'hg 7/30/2020 11:06'!
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

!ImapMailRecord methodsFor: 'comparing' stamp: 'hg 7/30/2020 11:06'!
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self header hash
		bitXor: (self messageID hash bitXor: (self body hash bitXor: (self folder hash bitXor: self uniqueID hash)))! !

!ImapMailRecord methodsFor: 'converting' stamp: 'AR 7/28/2016 14:06'!
asString

	^ self headerAsString, String cr, String cr, self bodyAsString, String cr! !

!ImapMailRecord methodsFor: 'converting' stamp: 'AR 7/28/2016 13:58'!
bodyAsString

	^ self body asString

	! !

!ImapMailRecord methodsFor: 'converting' stamp: 'C.G. 7/25/2018 13:47'!
headerAsString

	| headerFields |
	
	headerFields _ self header keys sorted.
	^ (headerFields collect: [:headerField |
		headerField, ': ', (self header at: headerField)]) joinSeparatedBy: String cr! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/3/2019 21:27'!
body

	^ body ifNil: [body _ String empty]! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:34'!
body: aString

	body _ aString! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'tg 7/19/2019 11:31'!
dateFormatted

	| date formatted |
		
	date _ DateAndTime fromSeconds: self dateInSecondsSinceSqueakEpoch + DateAndTime localOffset asSeconds.
	
	formatted _ ((date dayOfMonth asString padded: #left to: 2 with: $0) ,'.', 
			 (date month asString padded: #left to: 2 with: $0), '.',
			 (date year asString padded: #left to: 2 with: $0),' ',
			 (date hour24 asString padded: #left to: 2 with: $0),':',
			 (date minute asString padded: #left to: 2 with: $0)).
			
	^ formatted! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'tg 7/26/2019 21:04'!
dateInSecondsSince1980
	
	^ MailMessage new timeFrom: self date
! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'tg 7/19/2019 10:35'!
dateInSecondsSinceSqueakEpoch	
	
	^ self dateInSecondsSince1980 + (DateAndTime year: 1980 day: 1) asSeconds
! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'ms 7/10/2016 13:31'!
folder

	^ folder! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/14/2019 14:44'!
folder: anICFolder

	folder _ anICFolder! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/3/2019 21:28'!
header

	^ header ifNil: [header _ Dictionary new]! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:37'!
header: aDictionary

	header _ aDictionary! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'ms 7/10/2016 13:59'!
messageID

	^ messageID! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:41'!
messageID: aNumber

	messageID _ aNumber! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'hg 7/29/2020 15:25'!
serializeToJson

	^ Json render: (
		JsonObject newFrom: {
			'header' -> (JsonObject newFrom: self header).
			'body' -> self body.
			'messageID' -> self messageID.
			'uid' -> self uniqueID})! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/2/2019 15:58'!
uniqueID

	^ uniqueID ifNil: [uniqueID _ 0]! !

!ImapMailRecord methodsFor: 'accessing' stamp: 'pm 6/2/2019 15:58'!
uniqueID: aString

	uniqueID _ aString! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentTransferEncoding

	^ self header at: #contentTransferEncoding ifAbsent: String empty! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentTransferEncoding: aContentTransferEncoding

	self header at: #contentTransferEncoding put: aContentTransferEncoding! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentType

	^ self header at: #contentType ifAbsent: String empty! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
contentType: aContentType

	self header at: #contentType put: aContentType! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
date

	^ self header at: #date ifAbsent: String empty! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:46'!
date: aDate

	self header at: #date put: aDate! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'DH 7/19/2018 21:58'!
deleted

	^ self header at: #deleted ifAbsent: [false]! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'DH 7/19/2018 19:43'!
deleted: aFlag

	self header at: #deleted put: aFlag ! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'LW 8/1/2020 12:06'!
deserializeFrom: aJson

	self header: (Dictionary newFrom: (aJson at: 'header' ifAbsent: [JsonObject new]));
		body: (aJson at: 'body');
		messageID: (aJson at: 'messageID');
		uniqueID: (aJson at: 'uid')! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
flagged

	^ self header at: #flagged ifAbsent: false! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
flagged: aFlag

	self header at: #flagged put: aFlag! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
from

	^ self header at: #from ifAbsent: String empty! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:47'!
from: aSender

	self header at: #from put: aSender! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
seen

	^ self header at: #seen ifAbsent: true! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
seen: aFlag

	self header at: #seen put: aFlag! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'hg 7/3/2020 16:10'!
sender

	| fromCollection |
	fromCollection _ self from findBetweenSubStrs: '<>'.
	^ (fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: [ '' ]])! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'LW 8/2/2020 13:58'!
senderAddressFromHeader

	^ (MailAddressParser addressesIn: self from) first! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'tg 7/19/2019 11:45'!
subject

	^ self header at: #subject ifAbsent: String empty! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
subject: aSubject

	self header at: #subject put: aSubject! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'hg 7/30/2020 11:25'!
to

	^ self header at: #to ifAbsent: Array new! !

!ImapMailRecord methodsFor: 'accessing-header' stamp: 'C.G. 7/25/2018 13:49'!
to: aReceiver

	self header at: #to put: aReceiver! !

!ImapMailRecord methodsFor: 'action' stamp: 'lvm 5/20/2018 20:10'!
open

	ICEmailDialog openWith: self! !

!ImapMailRecord methodsFor: 'action' stamp: 'JJ 8/2/2020 15:33'!
retrieveBody
	
	"this is the only action that the email has to be responsible for, because it is called when an email is opened"
	self folder endpoint retrieveBody: self.

	^'Content-Type: ', (self contentType), Character cr,
		'Content-Transfer-Encoding: ', self contentTransferEncoding,
		Character cr, Character cr, self body! !

!ImapMailRecord class methodsFor: 'instance creation' stamp: 'hg 7/30/2020 09:50'!
newFromJsonStream: aStream
	
	^ self basicNew
		deserializeFrom: (Json readFrom: aStream);
		initialize;
		yourself! !

!ImapParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 16:34'!
buildFlagsAssociationFor: aUidString from: aLineString

	^ Association key: aUidString first value: (self flags select: [:flag |
			aLineString includesSubstring: flag])! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 16:25'!
chop: aHeaderString forEmail: anEmail

	| headerChunks |

	headerChunks _ OrderedCollection new.
	(aHeaderString subStrings: Character cr asString) do: [:line |
		self parse: line forHeaderChunks: headerChunks forEmail: anEmail].

	^ headerChunks! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:09'!
closeEmailContentFrom: aStream for: anEmailString

	anEmailString nextPutAll: (aStream nextDelimited: $)).
	aStream next! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/15/2019 20:40'!
commandSucceeded: aResponseString

	^ aResponseString beginsWith: self commandSucceeded! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 15:44'!
continueHeaderChunks: aCollection withLine: aString

	(self startsNewHeaderChunk: aString)
		ifTrue: [aCollection add: {aString} asOrderedCollection]
		ifFalse: [
			aCollection ifNotEmpty: [
				aCollection last add: aString]]! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:07'!
continueMailStream: aStream into: anEmailStringCollection

	| id |

	id _ self readMessageIdFromStream: aStream. 
	anEmailStringCollection at: id put: (String streamContents: [:email |
		self extractEmailContentFrom: aStream for: email])! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:25'!
extractEmailContentFrom: aStream for: anEmailString

	| octetSize |

	octetSize _ self readOctetSizeFrom: aStream for: anEmailString.
	self readEmailContentFrom: aStream for: anEmailString bySize: octetSize.
	self closeEmailContentFrom: aStream for: anEmailString! !

!ImapParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 11:16'!
parse: aString forHeaderChunks: aHeaderChunksCollection forEmail: anEmail

	(aString includesSubstring: 'UID')	
		ifTrue: [anEmail uniqueID: ((aString subStrings: ' ') second)]
		ifFalse: [self continueHeaderChunks: aHeaderChunksCollection withLine: aString]! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 18:12'!
parseFetchBody: aResponseStringArray

	^ ((aResponseStringArray 
		copyFrom: self fetchBodyOffset
		to: (aResponseStringArray size - 1))
			joinSeparatedBy: Character cr)! !

!ImapParser class methodsFor: 'parsing' stamp: 'jpb 5/28/2021 19:17:56'!
parseFetchHeader: aHeaderString withId: aMessageID

	| email |

	email _ ImapMailRecord new messageID: aMessageID.
	self populate: email withHeaderChunks: (self chop: aHeaderString forEmail: email).

	^ email! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 16:57'!
parseFetchMailStream: aStream

	| emails |

	emails _ Dictionary new.
	[aStream atEnd] whileFalse: [self continueMailStream: aStream into: emails].

	 ^ emails! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:39'!
parseFetchedFlagsAndPopulate: aResponseStringArray
	
	| uidPart uid |
	
 	^ (aResponseStringArray collect: [:line |
		uidPart _ (line allRegexMatches: 'UID \d*') ifEmpty: [ ^ Dictionary new].
		uid _ (uidPart first allRegexMatches: '[\d]+') ifEmpty: [ ^ Dictionary new].
		self buildFlagsAssociationFor: uid from: line]) as: Dictionary! !

!ImapParser class methodsFor: 'parsing' stamp: 'jpb 5/28/2021 19:16:32'!
parseFolderPathFrom: aResponseString

	| splittedResponse |

	splittedResponse _ self splitFolderPathResponse: aResponseString.
	^ ImapProtocolFolder
		newWithPath: (splittedResponse allButFirst joinSeparatedBy: ' ')
		delimitedBy: splittedResponse first! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:58'!
parseHeaderContentFrom: aHeaderChunk

	^ ((aHeaderChunk joinSeparatedBy: ' ')
		copyReplaceFrom: 1 
		to: (aHeaderChunk first indexOf: $:) 
		with: String empty) withoutLeadingBlanks! !

!ImapParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 16:34'!
parseHeaderFieldFrom: aHeaderChunk

	| headerField |
	
	headerField _ (aHeaderChunk first subStrings: ' ') first.
	(headerField includesSubstring: ':') ifTrue: [headerField _ headerField allButLast].

	^ headerField! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:36'!
populate: anEmail withContentTransferEncoding: aHeaderChunk
	
	anEmail contentTransferEncoding: aHeaderChunk! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:37'!
populate: anEmail withContentType: aHeaderChunk
	
	anEmail contentType: aHeaderChunk! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:37'!
populate: anEmail withDate: aHeaderChunk
	
	anEmail date: aHeaderChunk! !

!ImapParser class methodsFor: 'parsing' stamp: 'LW 5/6/2020 16:34'!
populate: anEmail withFlags: aHeaderChunk

	anEmail seen: (aHeaderChunk includesSubstring: '\Seen').
	anEmail flagged: (aHeaderChunk includesSubString: '\Flagged').
	anEmail deleted: (aHeaderChunk includesSubString: '\Deleted')! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 16:24'!
populate: anEmail withHeaderChunks: aHeaderChunkCollection

	aHeaderChunkCollection do: [:chunk |
		self populate: anEmail withHeadersFrom: chunk]! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:58'!
populate: anEmail withHeadersFrom: aHeaderChunk

	| headerField headerContent method |
	
	headerField _ self parseHeaderFieldFrom: aHeaderChunk.
	headerContent _ self parseHeaderContentFrom: aHeaderChunk.
	method _ 	(self parseMethods at: headerField ifAbsent: nil).
	method ifNil: [Transcript show: 'WARNING: No method for parsing Header field:', headerField; cr]
		ifNotNil: [method value: headerContent value: anEmail]! !

!ImapParser class methodsFor: 'parsing' stamp: 'hg 7/30/2020 11:31'!
populate: anEmail withReceiver: aHeaderChunk

	anEmail to: (aHeaderChunk subStrings: ',') asArray! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:38'!
populate: anEmail withSender: aHeaderChunk

	anEmail from: aHeaderChunk! !

!ImapParser class methodsFor: 'parsing' stamp: 'tg 7/26/2019 21:01'!
populate: anEmail withSubject: aHeaderChunk

	[anEmail subject: aHeaderChunk decodeMimeHeader]
		on: Error
		do: [self inform: ('A mail in your account has a undecodeable MIME header')]! !

!ImapParser class methodsFor: 'parsing' stamp: 'tg 7/26/2019 21:04'!
readEmailContentCharacterFrom: aStream for: anEmailString

	| char |

	char _ (aStream next) asCharacter.
	anEmailString nextPut: char.
	(char = Character cr) ifTrue: [^2].
	^ 1! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:21'!
readEmailContentFrom: aStream for: anEmailString bySize: anOctetSize

	| charsLeft |
	
	charsLeft _ anOctetSize.
	[charsLeft > 0] whileTrue: [
		charsLeft _ charsLeft - (self readEmailContentCharacterFrom: aStream for: anEmailString)].! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:07'!
readMessageIdFromStream: aStream

	| id |

	aStream next: self lengthOfEmailPrefix.
	id _ aStream nextDelimited: Character space.
	aStream next: self lengthOfFetchPrefix.
	
	^ id! !

!ImapParser class methodsFor: 'parsing' stamp: 'ok 7/26/2019 17:24'!
readOctetSizeFrom: aStream for: anEmailString

	anEmailString nextPutAll: (aStream nextDelimited: ${).
	^ (aStream nextDelimited: $}) asNumber! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/25/2019 17:51'!
responseIsError: aResponseString

	^ aResponseString beginsWith: self protocolError! !

!ImapParser class methodsFor: 'parsing' stamp: 'jpb 5/28/2021 19:18:13'!
responseIsParameterError: aResponseString

	^ self protocolParameterError = 
		((aResponseString subStrings: ImapCommand protocolBlank) 
			at: self parameterErrorPosition)! !

!ImapParser class methodsFor: 'parsing' stamp: 'jpb 5/28/2021 19:18:13'!
splitFolderPathResponse: aResponseString

	^ (aResponseString copyReplaceAll: ImapCommand protocolQuote with: String empty)
		subStrings: ImapCommand protocolBlank! !

!ImapParser class methodsFor: 'parsing' stamp: 'pm 7/12/2019 20:07'!
startsNewHeaderChunk: aLine

	^ (aLine subStrings: ' ') first endsWith: ':'! !

!ImapParser class methodsFor: 'responses' stamp: 'jpb 5/28/2021 19:18:13'!
commandSucceeded

	^ {ImapCommand protocolCommandStart . 'OK'} joinSeparatedBy: ImapCommand protocolBlank! !

!ImapParser class methodsFor: 'responses' stamp: 'jpb 5/28/2021 19:18:13'!
protocolError

	^ {ImapCommand protocolCommandStart . 'BAD'} joinSeparatedBy: ImapCommand protocolBlank! !

!ImapParser class methodsFor: 'responses' stamp: 'pm 7/12/2019 17:22'!
protocolParameterError

	^ 'NO'! !

!ImapParser class methodsFor: 'constants' stamp: 'ok 7/26/2019 18:10'!
fetchBodyOffset

	^ 2! !

!ImapParser class methodsFor: 'constants' stamp: 'pm 7/12/2019 18:35'!
flags

	^ {'\Seen'. '\Deleted'. '\Flagged'}! !

!ImapParser class methodsFor: 'constants' stamp: 'ok 7/26/2019 16:31'!
lengthOfEmailPrefix
	
	^ '* ' size! !

!ImapParser class methodsFor: 'constants' stamp: 'mt 7/26/2019 15:44'!
lengthOfFetchPrefix
	
	^ 'FETCH (' size! !

!ImapParser class methodsFor: 'constants' stamp: 'pm 7/23/2019 13:31'!
parameterErrorPosition

	^ 2! !

!ImapParser class methodsFor: 'constants' stamp: 'pm 7/25/2019 17:40'!
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

!ImapProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:04'!
folderPath

	^ folderPath! !

!ImapProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:05'!
folderPath: aFolderPathString

	folderPath _ aFolderPathString! !

!ImapProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:00'!
hierarchyDelimiter

	^ hierarchyDelimiter! !

!ImapProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:00'!
hierarchyDelimiter: aHierarchyDelimiterString

	hierarchyDelimiter _ aHierarchyDelimiterString! !

!ImapProtocolFolder methodsFor: 'accessing' stamp: 'pm 7/12/2019 18:07'!
pathAsArray

	^ self folderPath subStrings: self hierarchyDelimiter! !

!ImapProtocolFolder class methodsFor: 'instance creation' stamp: 'pm 7/12/2019 18:06'!
newWithPath: aFolderPathString delimitedBy: aHierarchyDelimiterString

	^ self new
		folderPath: aFolderPathString;
		hierarchyDelimiter: aHierarchyDelimiterString! !

!ImapStreamer methodsFor: 'connection' stamp: 'js 6/14/2016 10:43'!
close
	
	self stream close! !

!ImapStreamer methodsFor: 'connection' stamp: 'LW 8/1/2020 10:24'!
connectTo: aHost on: aPort

	| hostAddress |
	
	self ssl ifTrue: [^ self sslConnectTo: aHost on: aPort].
	
	hostAddress _ NetNameResolver addressForName: aHost.
	self close.
	self stream: (SocketStream openConnectionToHost: hostAddress port: aPort)! !

!ImapStreamer methodsFor: 'connection' stamp: 'LW 8/1/2020 10:24'!
connectTo: aHost on: aPort with: aStreamClass

	| hostAddress |
	
	self ssl ifTrue: [^ self sslConnectTo: aHost on: aPort].
		
	hostAddress _ NetNameResolver addressForName: aHost.
	self close.	
	self stream: (aStreamClass openConnectionToHost: hostAddress port: aPort)! !

!ImapStreamer methodsFor: 'connection' stamp: 'tg 7/26/2019 21:57'!
sendCommand: aString

	self stream sendCommand: aString! !

!ImapStreamer methodsFor: 'connection' stamp: 'tg 7/26/2019 22:13'!
sslConnectTo: aHost on: aPort

	| hostAddress |
	
	hostAddress _ NetNameResolver addressForName: aHost.
	self stream: (SecureSocketStream openConnectionToHost: hostAddress port: aPort timeout: self class connectionTimeout).
	self stream sslConnectTo: aHost! !

!ImapStreamer methodsFor: 'accessing' stamp: 'js 6/7/2016 09:58'!
host

	^ host! !

!ImapStreamer methodsFor: 'accessing' stamp: 'js 6/7/2016 09:59'!
host: aString

	host _ aString! !

!ImapStreamer methodsFor: 'accessing' stamp: 'js 6/7/2016 10:04'!
isConnected

	^ self stream isConnected! !

!ImapStreamer methodsFor: 'accessing' stamp: 'js 6/7/2016 10:08'!
lastResponse

	^ lastResponse! !

!ImapStreamer methodsFor: 'accessing' stamp: 'ok 7/26/2019 21:15'!
lastResponse: anOrderedCollection

	lastResponse _ anOrderedCollection! !

!ImapStreamer methodsFor: 'accessing' stamp: 'C.G. 7/25/2018 14:09'!
nextResponse

	self lastResponse: self stream nextLine.
	
	^ self lastResponse! !

!ImapStreamer methodsFor: 'accessing' stamp: 'js 6/7/2016 09:59'!
port

	^ port! !

!ImapStreamer methodsFor: 'accessing' stamp: 'pm 6/9/2019 16:59'!
port: aNumber

	port _ aNumber! !

!ImapStreamer methodsFor: 'accessing' stamp: 'pm 6/9/2019 13:14'!
ssl

	^ ssl ifNil: [ssl _ false]! !

!ImapStreamer methodsFor: 'accessing' stamp: 'ms 7/12/2016 09:45'!
ssl: aBool

	ssl _ aBool! !

!ImapStreamer methodsFor: 'accessing' stamp: 'jpb 5/28/2021 19:16:54'!
stream

	^ stream ifNil: [stream _ ImapNullStream new]! !

!ImapStreamer methodsFor: 'accessing' stamp: 'js 6/7/2016 10:05'!
stream: aStream

	stream _ aStream! !

!ImapStreamer class methodsFor: 'constants' stamp: 'ok 7/26/2019 18:50'!
connectionTimeout

	^ 10! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:35'!
connectionInfo
	connectInfo ifNil: [connectInfo _ Dictionary new].
	^connectInfo! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 2/25/2002 19:34'!
defaultPortNumber
	^self class defaultPortNumber! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 11/14/2002 18:29'!
ensureConnection
	self isConnected
		ifTrue: [^self].
	self stream
		ifNotNil: [self stream close].

	self stream: (SocketStream openConnectionToHost: self host port: self port).
	self checkResponse.
	self login! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 3/7/2002 13:35'!
lastResponse
	^lastResponse! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 3/7/2002 13:35'!
lastResponse: aString
	lastResponse _ aString.
! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 2/25/2002 19:07'!
logFlag
	^self class logFlag! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 5/12/2003 18:10'!
logProgress: aString
	self progressObservers do: [:each | each show: aString].
! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:40'!
openOnHost: hostIP port: portNumber
	self host: hostIP.
	self port: portNumber.
	self ensureConnection! !

!MailProtocolClient methodsFor: 'private' stamp: 'pre 5/8/2017 14:48'!
parseCapabilities: lines

	self serverCapabilities addAll: (lines select: [:l | l notEmpty] 
			thenCollect: [:l | | tokens capability values |
				tokens _ l findTokens: String space.
				capability _ tokens first asSymbol.
				values _ tokens allButFirst
					ifEmpty: [true]
					ifNotEmpty: [:rawValues | rawValues collect: [:v | 
						v isAllDigits
							ifTrue: [v asNumber]
							ifFalse: [v asSymbol]]].
				capability -> values])! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 7/23/2003 16:45'!
pendingResponses
	pendingResponses ifNil: [pendingResponses _ OrderedCollection new].
	^pendingResponses! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 7/23/2003 16:55'!
popResponse
	| pendingResponse |
	pendingResponse _ self pendingResponses removeFirst.
	pendingResponses isEmpty
		ifTrue: [pendingResponses _ nil].
	^pendingResponse! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 3/7/2002 14:54'!
progressObservers
	progressObservers ifNil: [progressObservers _ OrderedCollection new].
	^progressObservers! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 7/23/2003 16:45'!
pushResponse: aResponse
	self pendingResponses add: aResponse! !

!MailProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:35'!
resetConnectionInfo
	connectInfo _ nil! !

!MailProtocolClient methodsFor: 'private' stamp: 'pre 5/8/2017 14:06'!
serverCapabilities
	serverCapabilities ifNil: [serverCapabilities _ Dictionary new].
	^serverCapabilities! !

!MailProtocolClient methodsFor: 'private' stamp: 'kph 9/23/2008 00:33'!
standardTimeout

	^ Socket standardTimeout! !

!MailProtocolClient methodsFor: 'private' stamp: 'pre 5/8/2017 14:45'!
starttlsVerb

	^ #STARTTLS! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 4/7/2003 16:56'!
host
	^self connectionInfo at: #host! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 3/8/2002 11:37'!
host: hostId
	^self connectionInfo at: #host put: hostId! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'pre 5/4/2017 17:44'!
hostName

	^ self connectionInfo at: #hostName ifAbsent: [NetNameResolver nameForAddress: self host]! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'pre 5/4/2017 17:44'!
hostName: aString

	^ self connectionInfo at: #hostName put: aString! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 3/7/2002 14:55'!
logProgressToTranscript
	self progressObservers add: Transcript! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 5/9/2003 15:52'!
messageText
	^super messageText
		ifNil: [self response]! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 4/7/2003 16:56'!
password
	^self connectionInfo at: #password! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 3/8/2002 11:37'!
password: aString
	^self connectionInfo at: #password put: aString! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 4/7/2003 16:57'!
port
	^self connectionInfo at: #port! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 3/8/2002 11:38'!
port: aPortNumber
	^self connectionInfo at: #port put: aPortNumber! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 5/9/2003 15:52'!
response
	^self protocolInstance lastResponse! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 2/22/2002 17:33'!
stream
	^stream! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 2/22/2002 17:33'!
stream: aStream
	stream _ aStream! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 11/11/2002 16:19'!
user
	^self connectionInfo at: #user ifAbsent: [nil]! !

!MailProtocolClient methodsFor: 'accessing' stamp: 'mir 3/8/2002 11:39'!
user: aString
	^self connectionInfo at: #user put: aString! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:50:37'!
checkForPendingError
	"If data is waiting, check it to catch any error reports.
	In case the response is not an error, push it back."

	self stream isDataAvailable
		ifFalse: [^self].
	self fetchNextResponse.
	self
		checkResponse: self lastResponse
		onError: [:response | (MailProtocolError protocolInstance: self) signal]
		onWarning: [:response | (MailProtocolError protocolInstance: self) signal].
	"if we get here, it wasn't an error"
	self pushResponse: self lastResponse! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:50:12'!
checkResponse
	"Get the response from the server and check for errors."

	self
		checkResponseOnError: [:response | (MailProtocolError protocolInstance: self) signal]
		onWarning: [:response | (MailProtocolError protocolInstance: self) signal].
! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:51'!
checkResponse: aResponse onError: errorBlock onWarning: warningBlock
	"Get the response from the server and check for errors. Invoke one of the blocks if an error or warning is encountered. See class comment for classification of error codes."

	self responseIsError
		ifTrue: [errorBlock value: aResponse].
	self responseIsWarning
		ifTrue: [warningBlock value: aResponse].
! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:54'!
checkResponseOnError: errorBlock onWarning: warningBlock
	"Get the response from the server and check for errors. Invoke one of the blocks if an error or warning is encountered. See class comment for classification of error codes."

	self fetchPendingResponse.
	self checkResponse: self lastResponse onError: errorBlock onWarning: warningBlock! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'mir 3/7/2002 13:16'!
fetchNextResponse
	self lastResponse: self stream nextLine! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:50'!
fetchPendingResponse
	^pendingResponses
		ifNil: [self fetchNextResponse; lastResponse]
		ifNotNil: [self popResponse]! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'pre 5/8/2017 14:50'!
responseIsSuccess

	^ self responseCode = 220! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'mir 5/12/2003 18:10'!
sendCommand: aString
	self stream sendCommand: aString.
! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'mir 3/5/2002 14:31'!
sendStreamContents: aStream
	self stream sendStreamContents: aStream! !

!MailProtocolClient methodsFor: 'private protocol' stamp: 'pre 5/11/2017 16:49'!
starttls
	Smalltalk at: #SqueakSSL ifAbsent:[self error: 'SqueakSSL is missing'].
	
	self sendCommand: self starttlsVerb.
	self checkResponse.
	self responseIsSuccess ifTrue: [
		stream _ SqueakSSL secureSocketStream on: stream socket.
		stream sslConnectTo: self hostName.
		self connectionInfo at: #tlsActive put: true].! !

!MailProtocolClient methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:42'!
responseIsError
	self subclassResponsibility! !

!MailProtocolClient methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:42'!
responseIsWarning
	self subclassResponsibility! !

!MailProtocolClient methodsFor: 'private testing' stamp: 'pre 5/8/2017 15:03'!
wantsStarttls

	^ self serverSupportsStarttls! !

!MailProtocolClient methodsFor: 'actions' stamp: 'mir 3/7/2002 13:10'!
close
	self stream
		ifNotNil: [
			self stream close.
			stream _ nil]! !

!MailProtocolClient methodsFor: 'actions' stamp: 'mir 3/7/2002 13:11'!
reopen
	self ensureConnection! !

!MailProtocolClient methodsFor: 'testing' stamp: 'mir 3/7/2002 14:33'!
isConnected
	^stream notNil
		and: [stream isConnected]! !

!MailProtocolClient methodsFor: 'testing' stamp: 'pre 5/8/2017 14:45'!
serverSupportsStarttls

	^ self serverCapabilities at: self starttlsVerb ifAbsent: [false]! !

!MailProtocolClient methodsFor: 'testing' stamp: 'pre 5/11/2017 16:49'!
tlsIsActive

	^ self connectionInfo at: #tlsActive ifAbsent: [false]! !

!MailProtocolClient class methodsFor: 'instance creation' stamp: 'mir 2/25/2002 15:59'!
openOnHost: hostIP port: portNumber
	^self new openOnHost: hostIP port: portNumber! !

!MailProtocolClient class methodsFor: 'instance creation' stamp: 'gk 3/2/2004 11:10'!
openOnHostNamed: hostName
	"If the hostname uses the colon syntax to express a certain portnumber
	we use that instead of the default port number."

	| i |
	i _ hostName indexOf: $:.
	i = 0 ifTrue: [
			^self openOnHostNamed: hostName port: self defaultPortNumber]
		ifFalse: [
			| s p | 
			s _ hostName truncateTo: i - 1.
			p _ (hostName copyFrom: i + 1 to: hostName size) asInteger.
			^self openOnHostNamed: s port: p]
	! !

!MailProtocolClient class methodsFor: 'instance creation' stamp: 'pre 5/4/2017 17:45'!
openOnHostNamed: hostName port: portNumber
	| serverIP |
	serverIP _ NetNameResolver addressForName: hostName timeout: 20.
	^ (self openOnHost: serverIP port: portNumber)
		hostName: hostName;
		yourself
! !

!MailProtocolClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 16:00'!
defaultPortNumber
	self subclassResponsibility! !

!MailProtocolClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 19:07'!
logFlag
	self subclassResponsibility! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:58'!
apopLoginUser: userName password: password

	self loginUser: userName password: password loginMethod: #APOP! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:35'!
deleteMessage: num
	"delete the numbered message"

	self ensureConnection.
	self sendCommand: 'DELE ', num printString.
	self checkResponse.
	self logProgress: self lastResponse! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:57'!
loginUser: userName password: password

	self loginUser: userName password: password loginMethod: #clearText! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'mir 3/8/2002 11:40'!
loginUser: userName password: password loginMethod: aLoginMethod

	self user: userName.
	self password: password.
	self loginMethod: aLoginMethod.
	self login! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'nice 12/27/2009 04:19'!
messageCount
	"Query the server and answer the number of messages that are in the user's mailbox."

	| numMessages |
	self ensureConnection.
	self sendCommand: 'STAT'.
	self checkResponse.
	self logProgress: self lastResponse.

	[ | answerString |
	answerString _ (self lastResponse findTokens: Character separators) second.
	numMessages _ answerString asNumber asInteger]
		on: Error
		do: [:ex | (ProtocolClientError protocolInstance: self) signal: 'Invalid STAT response.'].
	^numMessages! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'len 12/14/2002 17:50'!
quit
	"QUIT <CRLF>"

	self sendCommand: 'QUIT'.
	self checkResponse.! !

!MailPop3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:35'!
retrieveMessage: number
	"retrieve the numbered message"

	self ensureConnection.
	self sendCommand: 'RETR ', number printString.
	self checkResponse.
	self logProgress: self lastResponse.

	^self getMultilineResponse! !

!MailPop3Client methodsFor: 'private' stamp: 'mir 11/11/2002 16:20'!
loginMethod
	^self connectionInfo at: #loginMethod ifAbsent: [nil]! !

!MailPop3Client methodsFor: 'private' stamp: 'mir 3/8/2002 11:41'!
loginMethod: aSymbol
	^self connectionInfo at: #loginMethod put: aSymbol! !

!MailPop3Client methodsFor: 'private' stamp: 'pre 5/8/2017 14:46'!
starttlsVerb

	^ #STLS! !

!MailPop3Client methodsFor: 'private' stamp: 'pre 5/8/2017 14:45'!
wantsStarttls

	^ true! !

!MailPop3Client methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:52:30'!
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
	timestamp _ self lastResponse findTokens: '<>' includes: '@'.
	timestamp
		ifNil: [(MailPop3LoginError protocolInstance: self) signal: 'APOP not supported.'].

	(Smalltalk includesKey: #MD5)
		ifTrue: [
			hash _ ((Smalltalk at: #MD5) hashMessage: ('<', timestamp, '>', self password)) storeStringHex asLowercase.
			"trim starting 16r and zero pad it to 32 characters if needed"
			hash _ hash  padded: #left to: 32 with: $0]
		ifFalse: [(MailPop3LoginError protocolInstance: self) signal: 'APOP (MD5) not supported.'].

	self sendCommand: 'APOP ', self user, ' ', hash.
	self checkResponse.
	self logProgress: self lastResponse]
		on: MailClientError
		do: [:ex |
			self close.
			(MailLoginFailedError protocolInstance: self) signal: 'Login failed.']! !

!MailPop3Client methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:53:30'!
clearTextLogin

	[self sendCommand: 'USER ', self user.
	self checkResponse.
	self logProgress: self lastResponse.

	self sendCommand: 'PASS ', self password.
	self checkResponse.
	self logProgress: self lastResponse]
		on: MailProtocolError
		do: [:ex |
			"Neither authentication worked.  Indicate an error and close up"
			self close.
			ex resignalAs: ((MailLoginFailedError protocolInstance: self) signal: 'Login failed.')]! !

!MailPop3Client methodsFor: 'private protocol' stamp: 'mir 11/14/2002 17:40'!
getMultilineResponse
	"Get a multiple line response to the last command, filtering out LF characters. A multiple line response ends with a line containing only a single period (.) character."

	| response done chunk |
	response _ WriteStream on: ''.
	done _ false.
	[done] whileFalse: [
		chunk _ self stream nextLine.
		(chunk beginsWith: '.')
			ifTrue: [response nextPutAll: (chunk copyFrom: 2 to: chunk size); cr ]
			ifFalse: [response nextPutAll: chunk; cr ].
		done _ (chunk = '.') ].

	^ response contents
! !

!MailPop3Client methodsFor: 'private protocol' stamp: 'pre 5/11/2017 16:49'!
initiateSession

	self sendCommand: 'CAPA'.
	self checkResponse.
	
	self parseCapabilities: self getMultilineResponse lines.
	
	(self tlsIsActive not and: [self serverSupportsStarttls] and: [self wantsStarttls])
		ifTrue: [self starttls]! !

!MailPop3Client methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:53:41'!
login

	self initiateSession.
	self loginMethod
		ifNil: [^self].
	self loginMethod == #clearText
		ifTrue: [^self clearTextLogin].
	self loginMethod == #APOP
		ifTrue: [^self apopLogin].
	(MailPop3LoginError protocolInstance: self) signal: 'Unsupported login procedure.'! !

!MailPop3Client methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:43'!
responseIsError
	^self lastResponse beginsWith: '-'! !

!MailPop3Client methodsFor: 'private testing' stamp: 'pre 5/8/2017 14:50'!
responseIsSuccess
	^self lastResponse beginsWith: '+'! !

!MailPop3Client methodsFor: 'private testing' stamp: 'mir 11/11/2002 15:44'!
responseIsWarning
	^self lastResponse beginsWith: '-'! !

!MailPop3Client class methodsFor: 'example' stamp: 'jpb 5/28/2021 19:23:57'!
example
	"POP3Client example"
	"download a user's messages into an OrderedCollection and inspect the OrderedCollection"

	| ps messages userName password |
	userName _ (UIManager default request: 'POP username').
	password _ (UIManager default request: 'POP password').
	ps _ MailPop3Client openOnHostNamed: (UIManager default request: 'POP server').
	[
	ps loginUser: userName password: password.
	ps logProgressToTranscript.

	messages _ OrderedCollection new.
	1 to: ps messageCount do: [ :messageNr |
		messages add: (ps retrieveMessage: messageNr) ]]
		ensure: [ps close].

	messages inspect.! !

!MailPop3Client class methodsFor: 'accessing' stamp: 'mir 3/7/2002 12:51'!
defaultPortNumber
	^110! !

!MailPop3Client class methodsFor: 'accessing' stamp: 'mir 3/7/2002 12:52'!
logFlag
	^#pop! !

!MailSmtpClient methodsFor: 'accessing' stamp: 'mir 2/22/2002 17:33'!
responseCode
	^responseCode! !

!MailSmtpClient methodsFor: 'private' stamp: 'mir 2/22/2002 17:34'!
determineResponseCode
	self lastResponse size >= 3
		ifFalse: [^0].
	^[SmallInteger readFromString: (self lastResponse copyFrom: 1 to: 3)]
		on: Error
		do: [:ex | ex return: 0]! !

!MailSmtpClient methodsFor: 'private' stamp: 'mir 11/14/2002 18:27'!
lastResponse: aString
	super lastResponse: aString.
	responseCode _ self determineResponseCode! !

!MailSmtpClient methodsFor: 'private' stamp: 'pre 5/8/2017 14:15'!
valueOfResponseLine: aString

	^ aString allButFirst: 4 ! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:44:26'!
data: messageData
	"send the data of a message"
	"DATA <CRLF>"

	"inform the server we are sending the message data"
	self sendCommand: 'DATA'.
	self checkResponse.

	"process the data one line at a time"
	messageData linesDo:  [ :messageLine | | cookedLine |
		cookedLine _ messageLine.
		(cookedLine beginsWith: '.') ifTrue: [ 
			"lines beginning with a dot must have the dot doubled"
			cookedLine _ '.', cookedLine ].
		self sendCommand: cookedLine ].

	"inform the server the entire message text has arrived"
	self sendCommand: '.'.
	self checkResponse.! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'pre 5/8/2017 13:43'!
fetchNextResponse
	"The FTP and similar protocols allow multi-line responses.
	If the response is multi-line, the fourth character of the first line is a  
	$- and the last line repeats the numeric code but the code is followed by 
	a space."

	| response result firstLine |
	result _ '' writeStream.
	firstLine _ self stream nextLine.
	result nextPutAll: firstLine.
	(self responseIsContinuation: firstLine) ifTrue: 
		["continued over multiple lines. Discard continuation lines."
			[response _ self stream nextLine.
			response ifNil: [^nil].
			self response: response indicatesEndOf: firstLine.] 
					whileFalse: [result cr; nextPutAll: response].
			result cr; nextPutAll: response].
	self lastResponse: result contents! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:44:20'!
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

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:51:12'!
login
	"Send HELO first"
	self initiateSession.
	self user ifNil: [^self].
	self sendCommand: 'AUTH LOGIN ' , (self encodeString: self user).
	[self checkResponse]
		on: MailProtocolError 
		do: [ :ex | ex isCommandUnrecognized ifTrue: [^ self] ifFalse: [ex pass]].
	self sendCommand: (self encodeString: self password).
	self checkResponse! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:51:03'!
lookForCode: code
	"We are expecting a certain code next."

	self
		lookForCode: code
		ifDifferent: [:response | (MailProtocolError protocolInstance: self) signal: response]
! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'mir 11/14/2002 16:21'!
lookForCode: code ifDifferent: handleBlock
	"We are expecting a certain code next."

	self fetchNextResponse.

	self responseCode == code
		ifFalse: [handleBlock value: self lastResponse]
! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:44:07'!
mailFrom: fromAddress
	" MAIL <SP> FROM:<reverse-path> <CRLF>"

	| address |
	address _ (MailAddressParser addressesIn: fromAddress) first.

	self sendCommand: 'MAIL FROM: <', address, '>'.
	self checkResponse.! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:44:01'!
quit
	"send a QUIT command.  This is polite to do, and indeed some servers might drop messages that don't have an associated QUIT"
	"QUIT <CRLF>"

	self sendCommand: 'QUIT'.
	self checkResponse.! !

!MailSmtpClient methodsFor: 'private protocol' stamp: 'jpb 5/28/2021 19:43:58'!
recipient: aRecipient
	"specify a recipient for the message.  aRecipient should be a bare email address"
	"RCPT <SP> TO:<forward-path> <CRLF>"

	self sendCommand: 'RCPT TO: <', aRecipient, '>'.
	self checkResponse.! !

!MailSmtpClient methodsFor: 'private testing' stamp: 'pre 5/8/2017 13:42'!
response: response indicatesEndOf: aLine

	^ response size > 3 
		and: [(response copyFrom: 1 to: 3) = (aLine copyFrom: 1 to: 3) 
		and: [(response at: 4) = Character space]]! !

!MailSmtpClient methodsFor: 'private testing' stamp: 'pre 5/8/2017 14:13'!
responseIsContinuation: response
	^ response size > 3 and: [(response at: 4) == $-]! !

!MailSmtpClient methodsFor: 'private testing' stamp: 'mir 2/22/2002 17:35'!
responseIsError
	^self responseCode between: 500 and: 599! !

!MailSmtpClient methodsFor: 'private testing' stamp: 'pre 5/8/2017 14:50'!
responseIsSuccess
	^self responseCode between: 200 and: 299! !

!MailSmtpClient methodsFor: 'private testing' stamp: 'mir 2/22/2002 17:35'!
responseIsWarning
	^self responseCode between: 400 and: 499! !

!MailSmtpClient methodsFor: 'public protocol' stamp: 'jpb 5/28/2021 19:44:17'!
localHostName
	"The local host name for purposes of identifying the the server.
	If nil, NetNameResolver localHostName will be used."

	^self connectionInfo at: #localHostName ifAbsent: [NetNameResolver localHostName]! !

!MailSmtpClient methodsFor: 'public protocol' stamp: 'jpb 5/28/2021 19:44:13'!
localHostName: aString
	"The local host name for purposes of identifying the the server.
	If nil, NetNameResolver localHostName will be used."

	^self connectionInfo at: #localHostName put: aString! !

!MailSmtpClient methodsFor: 'public protocol' stamp: 'jpb 5/28/2021 19:44:04'!
mailFrom: sender to: recipientList text: messageText
	"deliver this mail to a list of users.  NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	self mailFrom: sender.
	recipientList do: [ :recipient |
		self recipient: recipient ].
	self data: messageText.
! !

!MailSmtpClient methodsFor: 'public protocol' stamp: 'jpb 5/28/2021 19:43:55'!
useHelo
	"If client use HELO instead of EHLO. HELO is the old protocol and
	an old server may require it instead of EHLO."

	^self connectionInfo at: #useHelo ifAbsent: [false]! !

!MailSmtpClient methodsFor: 'public protocol' stamp: 'jpb 5/28/2021 19:43:51'!
useHelo: aBoolean
	"Tell client to use HELO instead of EHLO. HELO is the old protocol and
	an old server may require it instead of EHLO."

	^self connectionInfo at: #useHelo put: aBoolean! !

!MailSmtpClient methodsFor: 'utility' stamp: 'jpb 5/28/2021 19:44:23'!
encodeString: aString 
	| str dec out |
	str _ String new: (aString size * 4 / 3 + 3) ceiling.
	dec _ Base64MimeConverter new.
	dec
		mimeStream: (out _ WriteStream on: str);
		dataStream: (ReadStream on: aString);
		multiLine: false;
		mimeEncode.
	^out contents! !

!MailSmtpClient class methodsFor: 'accessing' stamp: 'jpb 5/28/2021 19:43:29'!
defaultPortNumber
	^25! !

!MailSmtpClient class methodsFor: 'accessing' stamp: 'jpb 5/28/2021 19:43:14'!
logFlag
	^#smtp! !

!MailSmtpClient class methodsFor: 'accessing' stamp: 'mir 2/21/2002 17:21'!
rawResponseCodes
	self subclassResponsibility! !

!MailSmtpClient class methodsFor: 'instance creation' stamp: 'jpb 5/28/2021 19:43:07'!
openOnHost: hostIP port: portNumber

	| client |
	client _ super openOnHost: hostIP port: portNumber.
	client initiateSession.
	^client! !

!MailSmtpClient class methodsFor: 'example' stamp: 'jpb 5/28/2021 19:43:22'!
example
	"SMTPClient example"

	self deliverMailFrom: 'm.rueger@acm.org' to: #('m.rueger@acm.org') text:
'From: test
To: "not listed"
Subject: this is a test

Hello from Squeak!!
'	usingServer: 'smtp.concentric.net'! !

!MailSmtpClient class methodsFor: 'example' stamp: 'jpb 5/28/2021 19:43:19'!
example2
	"SMTPClient example2"

	self deliverMailFrom: 'm.rueger@acm.org' to: #('m.rueger@acm.org') text:
'Subject: this is a test

Hello from Squeak!!
'	usingServer: 'smtp.concentric.net'! !

!MailSmtpClient class methodsFor: 'sending mail' stamp: 'jpb 5/28/2021 19:43:26'!
deliverMailFrom: fromAddress to: recipientList text: messageText usingServer: serverName
	"Deliver a single email to a list of users and then close the connection.  For delivering multiple messages, it is best to create a single connection and send all mail over it.  NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	| smtpClient |
	smtpClient _ self openOnHostNamed: serverName.
	[smtpClient mailFrom: fromAddress to: recipientList text: messageText.
	smtpClient quit]
		ensure: [smtpClient close]
! !
