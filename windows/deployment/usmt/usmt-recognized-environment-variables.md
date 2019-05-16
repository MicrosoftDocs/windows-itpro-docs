---
title: Recognized Environment Variables (Windows 10)
description: Recognized Environment Variables
ms.assetid: 2b0ac412-e131-456e-8f0c-c26249b5f3df
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Recognized Environment Variables


When using the XML files MigDocs.xml, MigApp.xml, and MigUser.xml, you can use environment variables to identify folders that may be different on different computers. Constant special item ID list (CSIDL) values provide a way to identify folders that applications use frequently but may not have the same name or location on any given computer. For example, the documents folder may be C:\\Users\\&lt;Username&gt;\\My Documents on one computer and C:\\Documents and Settings on another. You can use the asterisk (\*) wildcard character in MigUser.xml, MigApp.xml and MigDoc.xml files. However, you cannot use the asterisk (\*) wildcard characters in the Config.xml file.

## In This Topic


-   [Variables that are processed for the operating system and in the context of each user](#Variables-that-are-processed-for-the-operating-system-and-in-the-context-of-each-user)

-   [Variables that are recognized only in the user context](#Variables-that-are-recognized-only-in-the-user-context)

>[!IMPORTANT]
>Onedrive and Sharepoint variables are considered different products that's the reason why are not listed here, on the windows 10 variables.

## Variables that are processed for the operating system and in the context of each user

You can use these variables within sections in the .xml files with `context=UserAndSystem`, `context=User`, and `context=System`.

| Variable  | Explanationr |
| :---: | ------------- |
|ALLUSERSAPPDATA |Same as CSIDL_COMMON_APPDATA|
|ALLUSERSPROFILE |Refers to %PROFILESFOLDER%\Public or %PROFILESFOLDER%\all users.|
|COMMONPROGRAMFILES |Same as CSIDL_PROGRAM_FILES_COMMON.|
|COMMONPROGRAMFILES(X86)| Refers to the C:\Program Files (x86)\Common Files folder on 64-bit systems.|
|CSIDL_COMMON_ADMINTOOLS|Version 10.0. The file-system directory that contains administrative tools for all users of the computer.|
|CSIDL_COMMON_ALTSTARTUP|The file-system directory that corresponds to the non-localized Startup program group for all users.|
|CSIDL_COMMON_APPDATA|The file-system directory that contains application data for all users. A typical path Windows is C:\ProgramData.|
|CSIDL_COMMON_DESKTOPDIRECTORY |The file-system directory that contains files and folders that appear on the desktop for all users. A typical Windows® XP path is C:\Documents and Settings\All Users\Desktop. A typical path is C:\Users\Public\Desktop.|
|CSIDL_COMMON_DOCUMENTS|The file-system directory that contains documents that are common to all users. A typical path in Windows XP is C:\Documents and Settings\All Users\Documents. A typical path is C:\Users\Public\Documents.|
|CSIDL_COMMON_FAVORITES|The file-system directory that serves as a common repository for favorites common to all users. A typical path is C:\Users\Public\Favorites.|
|CSIDL_COMMON_MUSIC|The file-system directory that serves as a repository for music files common to all users. A typical path is C:\Users\Public\Music.|
|CSIDL_COMMON_PICTURES|The file-system directory that serves as a repository for image files common to all users. A typical path is C:\Users\Public\Pictures.|
|CSIDL_COMMON_PROGRAMS|The file-system directory that contains the directories for the common program groups that appear on the Start menu for all users. A typical path is C:\ProgramData\Microsoft\Windows\Start Menu\Programs.|
|CSIDL_COMMON_STARTMENU|The file-system directory that contains the programs and folders which appear on the Start menu for all users. A typical path in Windows is C:\ProgramData\Microsoft\Windows\Start Menu.|
|CSIDL_COMMON_STARTUP|The file-system directory that contains the programs that appear in the Startup folder for all users. A typical path in Windows XP is C:\Documents and Settings\All Users\Start Menu\Programs\Startup. A typical path is C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup.|
|CSIDL_COMMON_TEMPLATES|The file-system directory that contains the templates that are available to all users. A typical path is C:\ProgramData\Microsoft\Windows\Templates.|
|CSIDL_COMMON_VIDEO|The file-system directory that serves as a repository for video files common to all users. A typical path is C:\Users\Public\Videos.|
|CSIDL_DEFAULT_APPDATA|Refers to the Appdata folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_LOCAL_APPDATA|Refers to the local Appdata folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_COOKIES|Refers to the Cookies folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_CONTACTS|Refers to the Contacts folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_DESKTOP|Refers to the Desktop folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_DOWNLOADS|Refers to the Downloads folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_FAVORITES|Refers to the Favorites folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_HISTORY|Refers to the History folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_INTERNET_CACHE|Refers to the Internet Cache folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_PERSONAL|Refers to the Personal folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_MYDOCUMENTS|Refers to the My Documents folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_MYPICTURES|Refers to the My Pictures folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_MYMUSIC|Refers to the My Music folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_MYVIDEO|Refers to the My Videos folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_RECENT|Refers to the Recent folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_SENDTO|Refers to the Send To folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_STARTMENU|Refers to the Start Menu folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_PROGRAMS|Refers to the Programs folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_STARTUP|Refers to the Startup folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_TEMPLATES|Refers to the Templates folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_DEFAULT_QUICKLAUNCH|Refers to the Quick Launch folder inside %DEFAULTUSERPROFILE%.|
|CSIDL_FONTS|A virtual folder containing fonts. A typical path is C:\Windows\Fonts.|
|CSIDL_PROGRAM_FILESX86|The Program Files folder on 64-bit systems. A typical path is C:\Program Files(86).|
|CSIDL_PROGRAM_FILES_COMMONX86|A folder for components that are shared across applications on 64-bit systems. A typical path is C:\Program Files(86)\Common.|
|CSIDL_PROGRAM_FILES|The Program Files folder. A typical path is C:\Program Files.|
|CSIDL_PROGRAM_FILES_COMMON|A folder for components that are shared across applications. A typical path is C:\Program Files\Common.|
|CSIDL_RESOURCES|The file-system directory that contains resource data. A typical path is C:\Windows\Resources.|
|CSIDL_SYSTEM|The Windows System folder. A typical path is C:\Windows\System32.|
|CSIDL_WINDOWS|The Windows directory or system root. This corresponds to the %WINDIR% or %SYSTEMROOT% environment variables. A typical path is C:\Windows.|
|DEFAULTUSERPROFILE|Refers to the value in HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList [DefaultUserProfile].|
|PROFILESFOLDER|Refers to the value in HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList [ProfilesDirectory].|
|PROGRAMFILES|Same as CSIDL_PROGRAM_FILES.|
|PROGRAMFILES(X86)|Refers to the C:\Program Files (x86) folder on 64-bit systems.|
|SYSTEM|Refers to %WINDIR%\system32.|
|SYSTEM16|Refers to %WINDIR%\system.|
|SYSTEM32|Refers to %WINDIR%\system32.|
|SYSTEMPROFILE|Refers to the value in HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\S-1-5-18 [ProfileImagePath].|
|SYSTEMROOT|Refers to the root of the system drive.|
|WINDIR|Refers to the Windows folder located on the system drive.|

## Variables that are recognized only in the user context


You can use these variables in the .xml files within sections with `context=User` and `context=UserAndSystem`.

| Variable  | Explanation |
| :---: | ------------- |
|APPDATA|Same as CSIDL_APPDATA.|
|CSIDL_ADMINTOOLS|The file-system directory that is used to store administrative tools for an individual user. The Microsoft® Management Console (MMC) saves customized consoles to this directory, which roams with the user profile.|
|CSIDL_ALTSTARTUP|The file-system directory that corresponds to the user's non-localized Startup program group.|
|CSIDL_APPDATA|The file-system directory that serves as a common repository for application-specific data. A typical path is C:\Documents and Settings\username\Application Data or C:\Users\username\AppData\Roaming.|
|CSIDL_BITBUCKET|The virtual folder that contains the objects in the user's Recycle Bin.|
|CSIDL_CDBURN_AREA|The file-system directory acting as a staging area for files waiting to be written to CD. A typical path is C:\Users\username\AppData\Local\Microsoft\Windows\MasteredBurning\Disc Burning.|
|CSIDL_CONNECTIONS|The virtual folder representing Network Connections that contains network and dial-up connections.|
|CSIDL_CONTACTS|This refers to the Contacts folder in %CSIDL_PROFILE%.|
|CSIDL_CONTROLS|The virtual folder that contains icons for the Control Panel items.|
|CSIDL_COOKIES|The file-system directory that serves as a common repository for Internet cookies. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\Cookies.|
|CSIDL_DESKTOP|The virtual folder representing the Windows desktop.|
|CSIDL_DESKTOPDIRECTORY|The file-system directory used to physically store file objects on the desktop, which should not be confused with the desktop folder itself. A typical path is C:\Users\username\Desktop.|
|CSIDL_DRIVES|The virtual folder representing My Computer that contains everything on the local computer: storage devices, printers, and Control Panel. The folder may also contain mapped network drives.|
|CSIDL_FAVORITES|The file-system directory that serves as a common repository for the user's favorites. A typical path is C:\Users\Username\Favorites.|
|CSIDL_HISTORY|The file-system directory that serves as a common repository for Internet history items.|
|CSIDL_INTERNET|A virtual folder for Internet Explorer.|
|CSIDL_INTERNET_CACHE|The file-system directory that serves as a common repository for temporary Internet files. A typical path is C:\Users\username\AppData\Local\Microsoft\Windows\Temporary Internet Files|
|CSIDL_LOCAL_APPDATA|The file-system directory that serves as a data repository for local, non-roaming applications. A typical path is C:\Users\username\AppData\Local.|
|CSIDL_MYDOCUMENTS|The virtual folder representing My Documents.A typical path is C:\Users\Username\Documents.|
|CSIDL_MYMUSIC|The file-system directory that serves as a common repository for music files. A typical path is C:\Users\Username\Music.|
|CSIDL_MYPICTURES|The file-system directory that serves as a common repository for image files. A typical path is C:\Users\Username\Pictures.|
|CSIDL_MYVIDEO|The file-system directory that serves as a common repository for video files. A typical path is C:\Users\Username\Videos.|
|CSIDL_NETHOOD|A file-system directory that contains the link objects that may exist in the My Network Places virtual folder. It is not the same as CSIDL_NETWORK, which represents the network namespace root. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Network Shortcuts.|
|CSIDL_NETWORK|A virtual folder representing My Network Places, the root of the network namespace hierarchy.|
|CSIDL_PERSONAL|The virtual folder representing the My Documents desktop item. This is equivalent to CSIDL_MYDOCUMENTS. A typical path is C:\Documents and Settings\username\My Documents.|
|CSIDL_PLAYLISTS|The virtual folder used to store play albums, typically C:\Users\username\My Music\Playlists.|
|CSIDL_PRINTERS|The virtual folder that contains installed printers.|
|CSIDL_PRINTHOOD|The file-system directory that contains the link objects that can exist in the Printers virtual folder. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\Printer Shortcuts.|
|CSIDL_PROFILE|The user's profile folder. A typical path is C:\Users\Username.|
|CSIDL_PROGRAMS|The file-system directory that contains the user's program groups, which are themselves file-system directories. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs.|
|CSIDL_RECENT|The file-system directory that contains shortcuts to the user's most recently used documents. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Recent.|
|CSIDL_SENDTO|The file-system directory that contains Send To menu items. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\SendTo.|
|CSIDL_STARTMENU|The file-system directory that contains Start menu items. A typical path in Windows XP is C:\Documents and Settings\username\Start Menu. A typical path in Windows Vista, Windows 7, or Windows 8 is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu.|
|CSIDL_STARTUP|The file-system directory that corresponds to the user's Startup program group. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup.|
|CSIDL_TEMPLATES|The file-system directory that serves as a common repository for document templates. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\Templates.|
|HOMEPATH|Same as the standard environment variable.|
|TEMP|The temporary folder on the computer. A typical path is %USERPROFILE%\AppData\Local\Temp.|
|TMP|The temporary folder on the computer. A typical path is %USERPROFILE%\AppData\Local\Temp.|
|USERPROFILE|Same as CSIDL_PROFILE.|
|USERSID| Represents the current user-account security identifier (SID).<br>  For example, S-1-5-21-1714567821-1326601894-715345443-1026.|

## Related topics

[USMT XML Reference](usmt-xml-reference.md)

 

 





