
SET(RABBITIM_SOURCES
    main.cpp
    MainWindow.cpp 
    Tool.cpp 
    Client/ClientXmpp.cpp 
    Client/Client.cpp 
    UserInfo/UserInfo.cpp 
    UserInfo/UserInfoXmpp.cpp 
    UserInfo/COperateRoster.cpp 
    Global/Global.cpp 
    Widgets/FrmLogin/FrmLogin.cpp 
    Widgets/FrmUserList/FrmUserList.cpp 
    Widgets/FrmUserList/GroupItem.cpp 
    Widgets/FrmCustom/CustomTreeView.cpp 
    Widgets/FrmVideo/RecordAudio.cpp 
    Widgets/FrmCustom/Label.cpp  
    Widgets/FrmMain/FrmMain.cpp  
    Manager/Manager.cpp 
    Manager/ManagerXmpp.cpp 
    Manager/ManageMessageDialog.cpp 
    Widgets/FrmMessage/FrmMessage.cpp 
    Widgets/FrmCustom/MenuMessageSend.cpp  
    Manager/ManageMessageDialogBigScreen.cpp 
    Widgets/FrmMessage/FrmContainer.cpp 
    Message/ChatActions/ChatAction.cpp 
    Message/ChatActions/MessageAction.cpp 
    UserInfo/User.cpp 
    Manager/ManageUser.cpp 
    Manager/ManageUserQXmpp.cpp 
    Message/SmileyPack.cpp 
    Message/EmoticonsWidget.cpp 
    Message/style.cpp 
    Widgets/FrmRecentMessage/FrmRecentMsgList.cpp 
    Widgets/FrmRecentMessage/ManageRecentMessage.cpp 
    Widgets/DlgAddRoster/DlgAddRoster.cpp 
    FileTransfer/ManageFileTransfer.cpp 
    FileTransfer/FileTransfer.cpp 
    FileTransfer/FileTransferQXmpp.cpp   
    FileTransfer/FileTransferAction.cpp 
    Widgets/FrmVideo/DataVideoBuffer.cpp 
    Widgets/FrmVideo/FrameProcess.cpp 
    Widgets/FrmVideo/CaptureVideoFrame.cpp 
    Widgets/FrmVideo/FrmPlayer.cpp  
    Widgets/FrmVideo/Camera.cpp 
    Call/CallObject.cpp 
    Call/ManageCall.cpp 
    Call/CallAction.cpp 
    Call/CallQXmpp.cpp 
    Widgets/FrmVideo/FrmVideo.cpp  
    Widgets/DlgRegister/DlgRegister.cpp 
    Widgets/DlgScreenShot/DlgScreenShot.cpp  
    Widgets/DlgScreenShot/WdgScreenEditor.cpp 
    Widgets/FrmGroupChat/FrmGroupChatList.cpp  
    Widgets/FrmLogin/DlgLoginSettings.cpp 
    Widgets/FrmGroupChat/DlgCreateGroupChatRoom.cpp 
    Widgets/FrmGroupChat/ManageGroupChat.cpp 
    Widgets/FrmGroupChat/ManageGroupChatQxmpp.cpp 
    Widgets/FrmGroupChat/GroupChat.cpp 
    Widgets/FrmGroupChat/GroupChatQxmpp.cpp 
    Widgets/FrmGroupChat/DlgJoinGroupChat.cpp 
    Widgets/FrmGroupChat/FrmGroupChat.cpp 
    Widgets/FrmGroupChat/ChatActionGroupChat.cpp 
    Widgets/FrmGroupChat/DlgGroupChatInfo.cpp 
    Widgets/FrmGroupChat/DlgInviter.cpp 
    Widgets/FrmCustom/ItemModelCustom.cpp 
    Widgets/DlgUservCard/DlgUservCard.cpp  
    Widgets/DlgAbout/DlgAbout.cpp 
    Widgets/DlgOptions/DlgOptions.cpp   
    Message/ManageMessage.cpp
)

SET(RABBITIM_UIS
    MainWindow.ui 
    Widgets/FrmLogin/FrmLogin.ui 
    Widgets/FrmUserList/FrmUserList.ui 
    Widgets/FrmMain/FrmMain.ui 
    Widgets/DlgUservCard/DlgUservCard.ui 
    Widgets/FrmMessage/FrmMessage.ui 
    Widgets/FrmMessage/FrmContainer.ui 
    Widgets/FrmRecentMessage/FrmRecentMsgList.ui 
    Widgets/DlgAddRoster/DlgAddRoster.ui 
    Widgets/FrmVideo/FrmVideo.ui  
    Widgets/DlgRegister/DlgRegister.ui 
    Widgets/FrmGroupChat/FrmGroupChatList.ui  
    Widgets/FrmLogin/DlgLoginSettings.ui  
    Widgets/FrmGroupChat/DlgCreateGroupChatRoom.ui 
    Widgets/FrmGroupChat/FrmGroupChat.ui 
    Widgets/FrmGroupChat/DlgJoinGroupChat.ui 
    Widgets/FrmGroupChat/DlgGroupChatInfo.ui 
    Widgets/FrmGroupChat/DlgInviter.ui 
    Widgets/DlgAbout/DlgAbout.ui 
    Widgets/DlgOptions/DlgOptions.ui
)

IF(RABBITIM_USER_OPENCV) 
    SET(RABBITIM_SOURCES ${RABBITIM_SOURCES} Widgets/FrmVideo/CameraOpencv.cpp)
ENDIF(RABBITIM_USER_OPENCV)

IF(RABBITIM_USER_LIBCURL) 
    SET(RABBITIM_SOURCES 
        ${RABBITIM_SOURCES} 
        Update/DownLoad.cpp 
        Update/DownLoadHandle.cpp 
        Update/DlgUpdate.cpp
    )
    SET(RABBITIM_UIS 
            ${RABBITIM_UIS}
            Update/DlgUpdate.ui
    )
ENDIF(RABBITIM_USER_LIBCURL)

IF(RABBITIM_USER_OPENSSL) 
    SET(RABBITIM_SOURCES 
        ${RABBITIM_SOURCES} 
        Global/Encrypt.cpp
    )
ENDIF(RABBITIM_USER_OPENSSL)
