---
title: Recognized Environment Variables (Windows 10)
description: Recognized Environment Variables
ms.assetid: 2b0ac412-e131-456e-8f0c-c26249b5f3df
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Recognized Environment Variables


When using the XML files MigDocs.xml, MigApp.xml, and MigUser.xml, you can use environment variables to identify folders that may be different on different computers. Constant special item ID list (CSIDL) values provide a way to identify folders that applications use frequently but may not have the same name or location on any given computer. For example, the documents folder may be C:\\Users\\&lt;Username&gt;\\My Documents on one computer and C:\\Documents and Settings on another. You can use the asterisk (\*) wildcard character in MigUser.xml, MigApp.xml and MigDoc.xml files. However, you cannot use the asterisk (\*) wildcard characters in the Config.xml file.

## In This Topic


-   [Variables that are processed for the operating system and in the context of each user](#bkmk-1)

-   [Variables that are recognized only in the user context](#bkmk-2)

## <a href="" id="bkmk-1"></a>Variables that are processed for the operating system and in the context of each user


You can use these variables within sections in the .xml files with `context=UserAndSystem`, `context=User`, and `context=System`.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Variable</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>ALLUSERSAPPDATA</strong></p></td>
<td align="left"><p>Same as <strong>CSIDL_COMMON_APPDATA</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>ALLUSERSPROFILE</strong></p></td>
<td align="left"><p>Refers to %<strong>PROFILESFOLDER</strong>%\Public or %<strong>PROFILESFOLDER</strong>%\all users.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>COMMONPROGRAMFILES</strong></p></td>
<td align="left"><p>Same as <strong>CSIDL_PROGRAM_FILES_COMMON</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>COMMONPROGRAMFILES</strong>(X86)</p></td>
<td align="left"><p>Refers to the C:\Program Files (x86)\Common Files folder on 64-bit systems.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_ADMINTOOLS</strong></p></td>
<td align="left"><p>Version 10.0. The file-system directory that contains administrative tools for all users of the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COMMON_ALTSTARTUP</strong></p></td>
<td align="left"><p>The file-system directory that corresponds to the non-localized Startup program group for all users.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_APPDATA</strong></p></td>
<td align="left"><p>The file-system directory that contains application data for all users. A typical path Windows is C:\ProgramData.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COMMON_DESKTOPDIRECTORY</strong></p></td>
<td align="left"><p>The file-system directory that contains files and folders that appear on the desktop for all users. A typical Windows® XP path is C:\Documents and Settings\All Users\Desktop. A typical path is C:\Users\Public\Desktop.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_DOCUMENTS</strong></p></td>
<td align="left"><p>The file-system directory that contains documents that are common to all users. A typical path in Windows XP is C:\Documents and Settings\All Users\Documents. A typical path is C:\Users\Public\Documents.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COMMON_FAVORITES</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for favorites common to all users. A typical path is C:\Users\Public\Favorites.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_MUSIC</strong></p></td>
<td align="left"><p>The file-system directory that serves as a repository for music files common to all users. A typical path is C:\Users\Public\Music.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COMMON_PICTURES</strong></p></td>
<td align="left"><p>The file-system directory that serves as a repository for image files common to all users. A typical path is C:\Users\Public\Pictures.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_PROGRAMS</strong></p></td>
<td align="left"><p>The file-system directory that contains the directories for the common program groups that appear on the <strong>Start</strong> menu for all users. A typical path is C:\ProgramData\Microsoft\Windows\Start Menu\Programs.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COMMON_STARTMENU</strong></p></td>
<td align="left"><p>The file-system directory that contains the programs and folders which appear on the <strong>Start</strong> menu for all users. A typical path in Windows is C:\ProgramData\Microsoft\Windows\Start Menu.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_STARTUP</strong></p></td>
<td align="left"><p>The file-system directory that contains the programs that appear in the Startup folder for all users. A typical path in Windows XP is C:\Documents and Settings\All Users\Start Menu\Programs\Startup. A typical path is C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COMMON_TEMPLATES</strong></p></td>
<td align="left"><p>The file-system directory that contains the templates that are available to all users. A typical path is C:\ProgramData\Microsoft\Windows\Templates.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_COMMON_VIDEO</strong></p></td>
<td align="left"><p>The file-system directory that serves as a repository for video files common to all users. A typical path is C:\Users\Public\Videos.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_APPDATA</strong></p></td>
<td align="left"><p>Refers to the Appdata folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>C<strong>SIDL_DEFAULT_LOCAL_APPDATA</strong></p></td>
<td align="left"><p>Refers to the local Appdata folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_COOKIES</strong></p></td>
<td align="left"><p>Refers to the Cookies folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_CONTACTS</strong></p></td>
<td align="left"><p>Refers to the Contacts folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_DESKTOP</strong></p></td>
<td align="left"><p>Refers to the Desktop folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_DOWNLOADS</strong></p></td>
<td align="left"><p>Refers to the Downloads folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_FAVORITES</strong></p></td>
<td align="left"><p>Refers to the Favorites folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_HISTORY</strong></p></td>
<td align="left"><p>Refers to the History folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_INTERNET_CACHE</strong></p></td>
<td align="left"><p>Refers to the Internet Cache folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_PERSONAL</strong></p></td>
<td align="left"><p>Refers to the Personal folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_MYDOCUMENTS</strong></p></td>
<td align="left"><p>Refers to the My Documents folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_MYPICTURES</strong></p></td>
<td align="left"><p>Refers to the My Pictures folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_MYMUSIC</strong></p></td>
<td align="left"><p>Refers to the My Music folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_MYVIDEO</strong></p></td>
<td align="left"><p>Refers to the My Videos folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_RECENT</strong></p></td>
<td align="left"><p>Refers to the Recent folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_SENDTO</strong></p></td>
<td align="left"><p>Refers to the Send To folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_STARTMENU</strong></p></td>
<td align="left"><p>Refers to the Start Menu folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_PROGRAMS</strong></p></td>
<td align="left"><p>Refers to the Programs folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_STARTUP</strong></p></td>
<td align="left"><p>Refers to the Startup folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DEFAULT_TEMPLATES</strong></p></td>
<td align="left"><p>Refers to the Templates folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DEFAULT_QUICKLAUNCH</strong></p></td>
<td align="left"><p>Refers to the Quick Launch folder inside %<strong>DEFAULTUSERPROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_FONTS</strong></p></td>
<td align="left"><p>A virtual folder containing fonts. A typical path is C:\Windows\Fonts.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_PROGRAM_FILESX86</strong></p></td>
<td align="left"><p>The Program Files folder on 64-bit systems. A typical path is C:\Program Files(86).</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_PROGRAM_FILES_COMMONX86</strong></p></td>
<td align="left"><p>A folder for components that are shared across applications on 64-bit systems. A typical path is C:\Program Files(86)\Common.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_PROGRAM_FILES</strong></p></td>
<td align="left"><p>The Program Files folder. A typical path is C:\Program Files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_PROGRAM_FILES_COMMON</strong></p></td>
<td align="left"><p>A folder for components that are shared across applications. A typical path is C:\Program Files\Common.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_RESOURCES</strong></p></td>
<td align="left"><p>The file-system directory that contains resource data. A typical path is C:\Windows\Resources.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_SYSTEM</strong></p></td>
<td align="left"><p>The Windows System folder. A typical path is C:\Windows\System32.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_WINDOWS</strong></p></td>
<td align="left"><p>The Windows directory or system root. This corresponds to the %<strong>WINDIR</strong>% or %<strong>SYSTEMROOT</strong>% environment variables. A typical path is C:\Windows.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>DEFAULTUSERPROFILE</strong></p></td>
<td align="left"><p>Refers to the value in <strong>HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList [DefaultUserProfile]</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>PROFILESFOLDER</strong></p></td>
<td align="left"><p>Refers to the value in <strong>HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList [ProfilesDirectory]</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>PROGRAMFILES</strong></p></td>
<td align="left"><p>Same as <strong>CSIDL_PROGRAM_FILES</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>PROGRAMFILES(X86)</strong></p></td>
<td align="left"><p>Refers to the C:\Program Files (x86) folder on 64-bit systems.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SYSTEM</strong></p></td>
<td align="left"><p>Refers to %<strong>WINDIR</strong>%\system32.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>SYSTEM16</strong></p></td>
<td align="left"><p>Refers to %<strong>WINDIR</strong>%\system.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SYSTEM32</strong></p></td>
<td align="left"><p>Refers to %<strong>WINDIR</strong>%\system32.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>SYSTEMPROFILE</strong></p></td>
<td align="left"><p>Refers to the value in <strong>HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\S-1-5-18 [ProfileImagePath]</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SYSTEMROOT</strong></p></td>
<td align="left"><p>Refers to the root of the system drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>WINDIR</strong></p></td>
<td align="left"><p>Refers to the Windows folder located on the system drive.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-2"></a>Variables that are recognized only in the user context


You can use these variables in the .xml files within sections with `context=User` and `context=UserAndSystem`.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Variable</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>APPDATA</strong></p></td>
<td align="left"><p>Same as <strong>CSIDL_APPDATA</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_ADMINTOOLS</strong></p></td>
<td align="left"><p>The file-system directory that is used to store administrative tools for an individual user. The Microsoft® Management Console (MMC) saves customized consoles to this directory, which roams with the user profile.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_ALTSTARTUP</strong></p></td>
<td align="left"><p>The file-system directory that corresponds to the user's non-localized Startup program group.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_APPDATA</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for application-specific data. A typical path is C:\Documents and Settings\username\Application Data or C:\Users\username\AppData\Roaming.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_BITBUCKET</strong></p></td>
<td align="left"><p>The virtual folder that contains the objects in the user's Recycle Bin.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_CDBURN_AREA</strong></p></td>
<td align="left"><p>The file-system directory acting as a staging area for files waiting to be written to CD. A typical path is C:\Users\username\AppData\Local\Microsoft\Windows\MasteredBurning\Disc Burning.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_CONNECTIONS</strong></p></td>
<td align="left"><p>The virtual folder representing Network Connections that contains network and dial-up connections.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_CONTACTS</strong></p></td>
<td align="left"><p>This refers to the Contacts folder in %<strong>CSIDL_PROFILE</strong>%.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_CONTROLS</strong></p></td>
<td align="left"><p>The virtual folder that contains icons for the Control Panel items.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_COOKIES</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for Internet cookies. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\Cookies.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DESKTOP</strong></p></td>
<td align="left"><p>The virtual folder representing the Windows desktop.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_DESKTOPDIRECTORY</strong></p></td>
<td align="left"><p>The file-system directory used to physically store file objects on the desktop, which should not be confused with the desktop folder itself. A typical path is C:\Users\username\Desktop.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_DRIVES</strong></p></td>
<td align="left"><p>The virtual folder representing My Computer that contains everything on the local computer: storage devices, printers, and Control Panel. The folder may also contain mapped network drives.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_FAVORITES</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for the user's favorites. A typical path is C:\Users\Username\Favorites.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_HISTORY</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for Internet history items.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_INTERNET</strong></p></td>
<td align="left"><p>A virtual folder for Internet Explorer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_INTERNET_CACHE</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for temporary Internet files. A typical path is C:\Users\username\AppData\Local\Microsoft\Windows\Temporary Internet Files</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_LOCAL_APPDATA</strong></p></td>
<td align="left"><p>The file-system directory that serves as a data repository for local, non-roaming applications. A typical path is C:\Users\username\AppData\Local.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_MYDOCUMENTS</strong></p></td>
<td align="left"><p>The virtual folder representing My Documents.A typical path is C:\Users\Username\Documents.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_MYMUSIC</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for music files. A typical path is C:\Users\Username\Music.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_MYPICTURES</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for image files. A typical path is C:\Users\Username\Pictures.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_MYVIDEO</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for video files. A typical path is C:\Users\Username\Videos.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_NETHOOD</strong></p></td>
<td align="left"><p>A file-system directory that contains the link objects that may exist in the My Network Places virtual folder. It is not the same as CSIDL_NETWORK, which represents the network namespace root. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Network Shortcuts.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_NETWORK</strong></p></td>
<td align="left"><p>A virtual folder representing My Network Places, the root of the network namespace hierarchy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_PERSONAL</strong></p></td>
<td align="left"><p>The virtual folder representing the My Documents desktop item. This is equivalent to <strong>CSIDL_MYDOCUMENTS</strong>.</p>
<p>A typical path is C:\Documents and Settings\username\My Documents.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_PLAYLISTS</strong></p></td>
<td align="left"><p>The virtual folder used to store play albums, typically C:\Users\username\My Music\Playlists.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_PRINTERS</strong></p></td>
<td align="left"><p>The virtual folder that contains installed printers.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_PRINTHOOD</strong></p></td>
<td align="left"><p>The file-system directory that contains the link objects that can exist in the Printers virtual folder. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\Printer Shortcuts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_PROFILE</strong></p></td>
<td align="left"><p>The user's profile folder. A typical path is C:\Users\Username.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_PROGRAMS</strong></p></td>
<td align="left"><p>The file-system directory that contains the user's program groups, which are themselves file-system directories. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_RECENT</strong></p></td>
<td align="left"><p>The file-system directory that contains shortcuts to the user's most recently used documents. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Recent.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_SENDTO</strong></p></td>
<td align="left"><p>The file-system directory that contains <strong>Send To</strong> menu items. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\SendTo.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_STARTMENU</strong></p></td>
<td align="left"><p>The file-system directory that contains <strong>Start</strong> menu items. A typical path in Windows XP is C:\Documents and Settings\username\Start Menu. A typical path in Windows Vista, Windows 7, or Windows 8 is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>CSIDL_STARTUP</strong></p></td>
<td align="left"><p>The file-system directory that corresponds to the user's Startup program group. A typical path is C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>CSIDL_TEMPLATES</strong></p></td>
<td align="left"><p>The file-system directory that serves as a common repository for document templates. A typical path is C:\Users\username\AppData\Roaming\Microsoft\Windows\Templates.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>HOMEPATH</strong></p></td>
<td align="left"><p>Same as the standard environment variable.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>TEMP</strong></p></td>
<td align="left"><p>The temporary folder on the computer. A typical path is %<strong>USERPROFILE</strong>%\AppData\Local\Temp.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>TMP</strong></p></td>
<td align="left"><p>The temporary folder on the computer. A typical path is %<strong>USERPROFILE</strong>%\AppData\Local\Temp.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>USERPROFILE</strong></p></td>
<td align="left"><p>Same as <strong>CSIDL_PROFILE</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>USERSID</strong></p></td>
<td align="left"><p>Represents the current user-account security identifier (SID). For example,</p>
<p>S-1-5-21-1714567821-1326601894-715345443-1026.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[USMT XML Reference](usmt-xml-reference.md)

 

 





