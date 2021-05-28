'From Cuis 5.0 [latest update: #4579] on 27 May 2021 at 8:19:18 pm'!
'Description Author: Josef Philip Bernhart
License: MIT

Copyright 2021 Josef Philip Bernhart
'!
!provides: 'Mail-Morphs' 1 5!
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

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/27/2021 19:48:55'!
buildChangeShowButton 
	| button |
	button _ PluggableButtonMorph 
		model: self
		stateGetter: nil
		action: #openShowOptionsMenu.

	button label: 'Show'.
	button setBalloonText: 'Changes what to show'.
	^button! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/27/2021 08:29:26'!
buildForwardMailButton
	| button |
	button _ PluggableButtonMorph 
		model: model
		stateGetter: nil
		action: #forwardSelectedMail.

	button label: 'Forward'.
	button setBalloonText: 'Starts a new forward to the selected mail'.
	^button! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/27/2021 19:47:53'!
buildMailActionButtons
	"Returns a layout morph which contains edit buttons"
	| buttonsContainer |
	buttonsContainer _ LayoutMorph newRow.
	
	buttonsContainer addMorph: self buildNewMailButton proportionalWidth: 10.			
	buttonsContainer addMorph: self buildSendMailButton proportionalWidth: 10.
	buttonsContainer addMorph: self buildReplyMailButton proportionalWidth: 10.
	buttonsContainer addMorph: self buildForwardMailButton proportionalWidth: 10.
	buttonsContainer addMorph: self buildChangeShowButton proportionalWidth: 10.
		
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

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/26/2021 20:48:02'!
buildMorphicWindow
	"Create a pluggable version of all the morphs for a Browser in Morphic"
	| mailListPane mailViewPane newMailViewPane |
	
	mailListPane _ self buildMailListPane.
	mailViewPane _ self buildMailViewPane.
	newMailViewPane _ self buildNewMailViewPane.
	
	self layoutMorph
		addMorph: mailListPane proportionalHeight: 0.3;
		addAdjusterAndMorph: mailViewPane proportionalHeight: 0.3;
		addAdjusterAndMorph: newMailViewPane layoutSpec: LayoutSpec useAll.! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/27/2021 08:16:16'!
buildNewMailButton
	| button |
	button _ PluggableButtonMorph 
		model: model
		stateGetter: nil
		action: #newMail.

	button label: 'New'.
	button setBalloonText: 'Starts a new mail'.
	^button! !

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

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/27/2021 08:28:22'!
buildReplyMailButton
	| button |
	button _ PluggableButtonMorph 
		model: model
		stateGetter: nil
		action: #replyToSelectedMail.

	button label: 'Reply'.
	button setBalloonText: 'Starts a new reply to the selected mail'.
	^button! !

!MailBrowserWindow methodsFor: 'GUI building' stamp: 'jpb 5/27/2021 08:17:05'!
buildSendMailButton
	| button |
	button _ PluggableButtonMorph 
		model: model
		stateGetter: nil
		action: #sendMail.

	button label: 'Send'.
	button setBalloonText: 'Sends the currently edited mail'.
	^button! !

!MailBrowserWindow methodsFor: 'as yet unclassified' stamp: 'jpb 5/27/2021 19:59:28'!
openShowOptionsMenu
	| aMenu |
	
	aMenu _ MenuMorph new defaultTarget: model.
	aMenu addTitle: 'What to show'.
	aMenu addStayUpIcons.
	aMenu addUpdating: #showRawToggleLabel target: model  action: #toggleShowRaw.
	aMenu addUpdating: #showFormattedToggleLabel target: model  action: #toggleShowFormatted.
	
	aMenu popUpInWorld ! !
