'From Cuis 5.0 [latest update: #4579] on 26 May 2021 at 10:40:34 am'!
'Description Author: Josef Philip Bernhart
License: MIT

Copyright 2021 Josef Philip Bernhart
'!
!provides: 'Mail-Morphs' 1 3!
SystemOrganization addCategory: 'Mail-Morphs'!


!classDefinition: #MailBrowserWindow category: 'Mail-Morphs'!
SystemWindow subclass: #MailBrowserWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Mail-Morphs'!
!classDefinition: 'MailBrowserWindow class' category: 'Mail-Morphs'!
MailBrowserWindow class
	instanceVariableNames: ''!


!MailBrowserWindow commentStamp: '<historical>' prior: 0!
Represents a window for editing and sending mail. It's intention is to test functionality, not to be a full mail client.!

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/25/2021 22:25:12'!
buildMailActionButtons
	"Returns a layout morph which contains edit buttons"
	| buttonsContainer button |
	buttonsContainer _ LayoutMorph newRow.
	
	button _ PluggableButtonMorph 
		model: model
		stateGetter: nil
		action: #newMail.

	button label: 'New'.
	button setBalloonText: 'Starts a new mail'.
	buttonsContainer addMorph: button proportionalWidth: 10.			

	button _ PluggableButtonMorph 
		model: model
		stateGetter: nil
		action: #sendMail.

	button label: 'Send'.
	button setBalloonText: 'Sends the currently edited mail'.
		
	buttonsContainer addMorph: button proportionalWidth: 10.
		
	^buttonsContainer! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/25/2021 21:48:30'!
buildMailListPane
	^PluggableListMorph
		model: model
		listGetter: #mailRecordsList
		indexGetter: #selectedMailRecordIndex
		indexSetter: #selectedMailRecordIndex:
		mainView: self
		menuGetter: nil
		keystrokeAction: nil.! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/26/2021 09:38:43'!
buildMailViewPane
	| newView |
	
	newView _ TextModelMorph
		textProvider: model
		textGetter: #selectedMailContents.
		
	newView emptyTextDisplayMessage: 'Selected mail message'.
	newView disableEditing.
	
	^newView! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/25/2021 21:42:23'!
buildMorphicWindow
	"Create a pluggable version of all the morphs for a Browser in Morphic"
	| mailListPane mailViewPane newMailViewPane |
	
	mailListPane _ self buildMailListPane.
	mailViewPane _ self buildMailViewPane.
	newMailViewPane _ self buildNewMailViewPane.
	
	self layoutMorph
		addMorph: mailListPane proportionalHeight: 0.3;
		addAdjusterAndMorph: mailViewPane proportionalHeight: 0.3;
		addAdjusterAndMorph: newMailViewPane proportionalHeight: 0.4.! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/26/2021 09:40:42'!
buildNewMailViewPane
	| newView paneContainer |
	
	newView _ TextModelMorph
		textProvider: model
		textGetter: #newMailContents
		textSetter: #newMailContents:.
		
	newView emptyTextDisplayMessage: 'New message'.
	
	paneContainer _ LayoutMorph newColumn.
	paneContainer addMorph: self buildMailActionButtons fixedHeight: self defaultButtonPaneHeight. 
	paneContainer addMorph: newView proportionalHeight: 0.8.
	
	^paneContainer! !
