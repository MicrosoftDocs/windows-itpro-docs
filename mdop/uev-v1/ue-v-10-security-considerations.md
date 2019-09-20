---
title: UE-V 1.0 Security Considerations
description: UE-V 1.0 Security Considerations
author: dansimp
ms.assetid: c5cdf9ff-dc96-4491-98e9-0eada898ffe0
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# UE-V 1.0 Security Considerations


This topic contains a brief overview of accounts and groups, log files, and other security-related considerations for Microsoft User Experience Virtualization (UE-V). For more information, follow the links that are provided here.

## Security considerations for UE-V configuration


**When you create the settings storage share, limit the share access to users that need access.**

Because settings packages may contain personal information, you should take care to protect them as well as possible. In general, do the following:

-   Restrict the share to only the users that need access. Create a security group for users that have redirected folders on a particular share, and limit access to only those users.

-   When you create the share, hide the share by putting a $ after the share name. This will hide the share from casual browsers, and the share will not be visible in My Network Places.

-   Only give users the minimum amount of permissions needed. The permissions needed are shown in the tables below.

    1.  Set the following share-level (SMB) permissions for the setting storage location folder:

        <table>
        <colgroup>
        <col width="50%" />
        <col width="50%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">User account</th>
        <th align="left">Recommended permissions</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><p>Everyone</p></td>
        <td align="left"><p>No Permissions</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>Security group of UE-V</p></td>
        <td align="left"><p>Full Control</p></td>
        </tr>
        </tbody>
        </table>



~~~
2.  Set the following NTFS permissions for the settings storage location folder:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">User account</th>
    <th align="left">Recommended permissions</th>
    <th align="left">Folder</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Creator/Owner</p></td>
    <td align="left"><p>No Permissions</p></td>
    <td align="left"><p>No Permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain Admins</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Security group of UE-V users</p></td>
    <td align="left"><p>List Folder/Read Data, Create Folders/Append Data</p></td>
    <td align="left"><p>This Folder Only</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>Remove all Permissions</p></td>
    <td align="left"><p>No Permissions</p></td>
    </tr>
    </tbody>
    </table>



3.  Set the following share-level (SMB) permissions for the settings template catalog folder.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">User account</th>
    <th align="left">Recommend permissions</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>No Permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain Computers</p></td>
    <td align="left"><p>Read Permission Levels</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Administrators</p></td>
    <td align="left"><p>Read/Write Permission Levels</p></td>
    </tr>
    </tbody>
    </table>



4.  Set the following NTFS permissions for the settings template catalog folder.

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">User account</th>
    <th align="left">Recommended permissions</th>
    <th align="left">Apply to</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Creator/Owner</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain Computers</p></td>
    <td align="left"><p>List Folder Contents and Read</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>No Permissions</p></td>
    <td align="left"><p>No Permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Administrators</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    </tbody>
    </table>
~~~



### Use Windows Server 2003 or later servers to host redirected file shares

User settings package files contain personal information that is transferred between the client computer and the server that stores the settings packages. Because of this, you should ensure that the data is protected while it travels over the network.

User settings data is vulnerable to these potential threats: interception of the data as it passes over the network; tampering with the data as it passes over the network; and spoofing of the server that hosts the data.

Several features of Windows Server 2003 and above can help to secure user data:

-   **Kerberos** - Kerberos is standard on all versions of Windows 2000 and Windows Server 2003 and later. Kerberos ensures the highest level of security to network resources. NTLM authenticates the client only; Kerberos authenticates the server and the client. When NTLM is used, the client does not know whether the server is valid. This is particularly important if the client is exchanging personal files with the server, as is the case with Roaming Profiles. Kerberos provides better security than NTLM. Kerberos is not available on Windows NT version 4.0 or earlier operating systems.

-   **IPsec** - The IP Security Protocol (IPsec) provides network-level authentication, data integrity, and encryption. IPsec ensures the following:

    -   Roamed data is safe from data modification while en route.

    -   Roamed data is safe from interception, viewing, or copying.

    -   Roamed data is safe from being accessed by unauthenticated parties.

-   **SMB Signing** - The Server Message Block (SMB) authentication protocol supports message authentication which prevents active message and "man-in-the-middle" attacks. SMB signing provides this authentication by placing a digital signature into each SMB. The digital signature is then verified by both the client and the server. In order to use SMB signing, you must first either enable it or require it on both the SMB client and the SMB server. Note that the SMB signing imposes a performance penalty. It does not consume any more network bandwidth, but it uses more CPU cycles on the client and server side.

### Always use the NTFS File system for volumes holding users data

For the most secure configuration, configure servers that host the UE-V settings files to use the NTFS File System. Unlike FAT, NTFS supports Discretionary access control lists (DACLs) and system access control lists (SACLs). DACLs and SACLs control who can perform operations on a file and what events will trigger the logging of actions performed on a file.

### <a href="" id="do-not-rely-on-efs-to-encrypt-users--files-when-transmitted-over-the-network"></a>Do not rely on EFS to encrypt users’ files when transmitted over the network

When you use Encrypting File System (EFS) to encrypt files on a remote server, the encrypted data is not encrypted during transit over the network; It only becomes encrypted when stored on disk.

The exceptions to this are when your system includes Internet Protocol security (IPsec) or Web Distributed Authoring and Versioning (WebDAV). IPsec encrypts data while it is transported over a TCP/IP network. If the file is encrypted before being copied or moved to a WebDAV folder on a server, it will remain encrypted during the transmission and while it is stored on the server.

### Encrypt the Offline Files cache

By default, the Offline Files cache is protected on NTFS partitions by ACLs, but encrypting the cache further enhances security on a local computer. By default, the cache on the local computer is not encrypted, so any encrypted files cached from the network will not be encrypted on the local computer. This may pose a security risk in some environments.

When encryption is enabled, all files in the Offline Files cache are encrypted. This includes encrypting existing files as well as files that are added later. The cached copy on the local computer is affected, but the associated network copy is not.

The cache can be encrypted in one of two ways:

1.  Via Group Policy. - Enable the **Encrypt the Offline Files Cache** setting, located at Computer Configuration\\Administrative Templates\\Network\\Offline Files, in the Group Policy editor.

2.  Manually. - Select Tools and then Folder Options in the command menu of Windows Explorer. Select the Offline Files tab, and then select the **Encrypt offline files to secure data** check box.

### Let the UE-V Agent create folders for each user

To ensure that UE-V works optimally, create only the root share on the server, and let the UE-V Agent create the folders for each user. UE-V will create these user folders with the appropriate security.

This permission configuration allows users to create folders for settings storage. The UE-V agent creates and secures a settingspackage folder while running in the context of the user. The user receives full control to their settingspackage folder. Other users do not inherit access to this folder. You do not need to create and secure individual user directories. This will be done automatically by the agent that runs in the context of the user.

**Note**  
Additional security can be configured when a Windows server is utilized for the settings storage share. UE-V can be configured to verify that either the local administrator's group or the current user is the owner of the folder where settings packages are stored. To enable additional security use the following command:

1.  Add a REG\_DWORD registry key named "RepositoryOwnerCheckEnabled" to `HKEY_LOCAL_MACHINE\Software\Microsoft\UEV\Agent\Configuration`.

2.  Set registry key value to 1.

When this configuration setting is in place, the UE-V agent verifies that the local administrator’s group or current user is the owner of the settingspackage folder. If not, then the UE-V agent will not allow access to the folder.



If you must create folders for the users and ensure that you have the correct permissions set.

We strongly recommend that you do not precreate folders and that instead, you allow the UE-V agent to create the folder for the user.

### <a href="" id="ensure-that-correct-permissions-are-set-when-storing-ue-v-settings-in-a-user-s-home-directory"></a>Ensure that correct permissions are set when storing UE-V settings in a user’s home directory

If you redirect UE-V settings to a user’s home directory, be sure that the permissions on the user's home directory are set appropriately for your organization.

## Related topics


[Security and Privacy for UE-V 1.0](security-and-privacy-for-ue-v-10.md)









