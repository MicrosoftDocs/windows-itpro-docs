---
ms.assetid: e68cd672-9dea-4ff8-b725-a915f33d8fd2
ms.reviewer: 
manager: dansimp
title: Windows Libraries
ms.prod: windows-server-threshold
ms.author: dansimp
ms.manager: dongill
ms.technology: storage
ms.topic: article
author: dansimp
description: All about Windows Libraries, which are containers for users' content, such as Documents and Pictures.
ms.date: 04/19/2017
---
# Windows libraries

> Applies to: Windows 10, Windows 8.1, Windows 7, Windows Server 2016, Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2

Libraries are virtual containers for users’ content. A library can contain files and folders stored on the local computer or in a remote storage location. In Windows Explorer, users interact with libraries in ways similar to how they would interact with other folders. Libraries are built upon the legacy known folders (such as My Documents, My Pictures, and My Music) that users are familiar with, and these known folders are automatically included in the default libraries and set as the default save location.

## Features for Users

Windows libraries are backed by full content search and rich metadata. Libraries offer the following advantages to users:
- Aggregate content from multiple storage locations into a single, unified presentation.
- Enable users to stack and group library contents based on metadata.
- Enable fast, full-text searches across multiple storage locations, from Windows Explorer or from the Start menu.
- Support customized filter search suggestions, based on the types of files contained in the library.
- Enable users to create new libraries and specify which folders they want to include.

## Features for Administrators

Administrators can configure and control Windows libraries in the following ways:
- Create custom libraries by creating and deploying Library Description (*.library-ms) files.
- Hide or delete the default libraries. (The Library node itself cannot be hidden or deleted from the Windows Explorer navigation pane.)
- Specify a set of libraries available to Default User, and then deploy those libraries to users that derive from Default User.
- Specify locations to include in a library.
- Remove a default location from a library.
- Remove advanced libraries features, when the environment does not support the local caching of files, by using the [Turn off Windows Libraries features that rely on indexed file data](/previous-versions/windows/it-pro/windows-7/dd744697(v=ws.10)#WS_TurnOffWindowsLibraries) Group Policy. This makes all libraries basic (see [Indexing Requirements and Basic Libraries](/previous-versions/windows/it-pro/windows-7/dd744693(v=ws.10)#WS_IndexingReqs_BasicLibraries)), removes libraries from the scope of the Start menu search, and removes other features to avoid confusing users and consuming resources.

## More about Libraries

The following is important information about libraries you may need to understand to successfully manage your enterprise.

### Library Contents

Including a folder in a library does not physically move or change the storage location of the files or folders; the library is a view into those folders. However, users interacting with files in a library are copying, moving, and deleting the files themselves, not copies of these files.

### Default Libraries and Known Folders

The default libraries include:
- Documents
- Music
- Pictures
- Videos

Libraries are built upon the legacy known folders (such as My Documents, My Pictures, and My Music) that users are familiar with. These known folders are automatically included in the default libraries and set as the default save location. That is, when users drag, copy, or save a file to the Documents library, the file is moved, copied, or saved to the My Documents folder. Administrators and users can change the default save-to location.

### Hiding Default Libraries

Users or administrators can hide or delete the default libraries, though the libraries node in the Navigation pane cannot be hidden or deleted. Hiding a default library is preferable to deleting it, as applications like Windows Media Player rely on the default libraries and will re-create them if they do not exist on the computer. See [How to Hide Default Libraries](/previous-versions/windows/it-pro/windows-7/ee461108(v=ws.10)#BKMK_HideDefaultLibraries) for instructions.

### Default Save Locations for Libraries

Each library has a default save location. Files are saved or copied to this location if the user chooses to save or copy a file to a library, rather than a specific location within the library. Known folders are the default save locations; however, users can select a different save location.
If the user removes the default save location from a library, the next location is automatically selected as the new default save location. If the library is empty of locations or if all included locations cannot be saved to, then the save operation fails.

### Indexing Requirements and “Basic” Libraries

Certain library features depend on the contents of the libraries being indexed. Library locations must be available for local indexing or be indexed in a manner conforming to the Windows Indexing Protocol. If indexing is not enabled for one or more locations within a library, the entire library reverts to basic functionality:
- No support for metadata browsing via **Arrange By** views.
- Grep-only searches.
- Grep-only search suggestions. The only properties available for input suggestions are **Date Modified** and **Size**.
- No support for searching from the Start menu. Start menu searches do not return files from basic libraries.
- No previews of file snippets for search results returned in Content mode.

To avoid this limited functionality, all locations within the library must be indexable, either locally or remotely. When users add local folders to libraries, Windows adds the location to the indexing scope and indexes the contents. Remote locations that are not indexed remotely can be added to the local index using Offline File synchronization. This gives the user the benefits of local storage even though the location is remote. Making a folder “Always available offline” creates a local copy of the folder’s files, adds those files to the index, and keeps the local and remote copies in sync. Users can manually sync locations which are not indexed remotely and are not using folder redirection to gain the benefits of being indexed locally.

For instructions on enabling indexing, see [How to Enable Indexing of Library Locations](/previous-versions/windows/it-pro/windows-7/ee461108(v=ws.10)#BKMK_EnableIndexLocations).

If your environment does not support caching files locally, you should enable the [Turn off Windows Libraries features that rely on indexed file](/previous-versions/windows/it-pro/windows-7/dd744697(v=ws.10)#WS_TurnOffWindowsLibraries) data Group Policy. This makes all libraries basic. For further information, see [Group Policy for Windows Search, Browse, and Organize](/previous-versions/windows/it-pro/windows-7/dd744697(v=ws.10)).

### Folder Redirection

While library files themselves cannot be redirected, you can redirect known folders included in libraries by using [Folder Redirection](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh848267(v=ws.11)). For example, you can redirect the “My Documents” folder, which is included in the default Documents library. When redirecting known folders, you should make sure that the destination is either indexed or always available offline in order to maintain full library functionality. In both cases, the files for the destination folder are indexed and supported in libraries. These settings are configured on the server side.

### Supported storage locations

The following table show which locations are supported in Windows libraries.

|Supported Locations|Unsupported Locations|
|---|---|
|Fixed local volumes (NTFS/FAT)|Removable drives|
|Shares that are indexed (departmental servers*, Windows home PCs)|Removable media (such as DVDs)<br><br>Network shares that are accessible through DFS Namespaces or are part of a failover cluster|
|Shares that are available offline (redirected folders that use Offline Files)|Network shares that aren't available offline or remotely indexed <br><br>Network Attached Storage (NAS) devices|
||Other data sources: SharePoint, Exchange, etc.|

\* For shares that are indexed on a departmental server, Windows Search works well in workgroups or on a domain server that has similar characteristics to a workgroup server. For example, Windows Search works well on a single share departmental server with the following characteristics:

- Expected maximum load is four concurrent query requests.
- Expected indexing corpus is a maximum of one million documents.
- Users directly access the server. That is, the server is not made available through DFS Namespaces.
- Users are not redirected to another server in case of failure. That is, server clusters are not used.

### Library Attributes

The following library attributes can be modified within Windows Explorer, the Library Management dialog, or the Library Description file (*.library-ms):
- Name
- Library locations
- Order of library locations
- Default save location

The library icon can be modified by the administrator or user by directly editing the Library Description schema file.

See the [Library Description Schema](/windows/win32/shell/library-schema-entry) topic on MSDN for information on creating Library Description files.

## See also

### Concepts

- [Windows Search Features](/previous-versions/windows/it-pro/windows-7/dd744686(v=ws.10))
- [Windows Indexing Features](/previous-versions/windows/it-pro/windows-7/dd744700(v=ws.10))
- [Federated Search Features](/previous-versions/windows/it-pro/windows-7/dd744682(v=ws.10))
- [Administrative How-to Guides](/previous-versions/windows/it-pro/windows-7/ee461108(v=ws.10))
- [Group Policy for Windows Search, Browse, and Organize](/previous-versions/windows/it-pro/windows-7/dd744697(v=ws.10))
- [Additional Resources for Windows Search, Browse, and Organization](/previous-versions/windows/it-pro/windows-7/dd744695(v=ws.10))

### Other resources

- [Folder Redirection, Offline Files, and Roaming User Profiles](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh848267(v=ws.11))
- [Library Description Schema](/windows/win32/shell/library-schema-entry)