---
title: Security Considerations for UE-V
description: Security Considerations for UE-V
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.topic: article
---


# Security Considerations for UE-V

**Applies to**
-   Windows 10, version 1607

This topic contains a brief overview of accounts and groups, log files, and other security-related considerations for User Experience Virtualization (UE-V). For more information, follow the links that are provided here.

## Security considerations for UE-V configuration


**Important**
When you create the settings storage share, limit the share access to users who require access.

Because settings packages might contain personal information, you should take care to protect them as well as possible. In general, do the following:

-   Restrict the share to only those users who require access. Create a security group for users who have redirected folders on a particular share and limit access to only those users.

-   When you create the share, hide the share by putting a $ after the share name. This addition hides the share from casual browsers, and the share is not visible in My Network Places.

-   Only give users the minimum amount of permissions that they must have. The following tables show the required permissions.

1.  Set the following share-level SMB permissions for the setting storage location folder.

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
    <td align="left"><p>No permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Security group of UE-V</p></td>
    <td align="left"><p>Full control</p></td>
    </tr>
    </tbody>
    </table>


2.  Set the following NTFS file system permissions for the settings storage location folder.

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
    <td align="left"><p>No permissions</p></td>
    <td align="left"><p>No permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain Admins</p></td>
    <td align="left"><p>Full control</p></td>
    <td align="left"><p>This folder, subfolders, and files</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Security group of UE-V users</p></td>
    <td align="left"><p>List folder/read data, create folders/append data</p></td>
    <td align="left"><p>This folder only</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>Remove all permissions</p></td>
    <td align="left"><p>No permissions</p></td>
    </tr>
    </tbody>
    </table>

3.  Set the following share-level SMB permissions for the settings template catalog folder.

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
    <td align="left"><p>No permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain computers</p></td>
    <td align="left"><p>Read permission Levels</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Administrators</p></td>
    <td align="left"><p>Read/write permission levels</p></td>
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
    <td align="left"><p>Full control</p></td>
    <td align="left"><p>This folder, subfolders, and files</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain Computers</p></td>
    <td align="left"><p>List folder contents and Read permissions</p></td>
    <td align="left"><p>This folder, subfolders, and files</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>No permissions</p></td>
    <td align="left"><p>No permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Administrators</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>This folder, subfolders, and files</p></td>
    </tr>
    </tbody>
    </table>

### Use Windows Server as of Windows Server 2003 to host redirected file shares

User settings package files contain personal information that is transferred between the client computer and the server that stores the settings packages. Because of this process, you should ensure that the data is protected while it travels over the network.

User settings data is vulnerable to these potential threats: interception of the data as it passes over the network, tampering with the data as it passes over the network, and spoofing of the server that hosts the data.

As of Windows Server 2003, several features of the Windows Server operating system can help secure user data:

-   **Kerberos** - Kerberos is standard on all versions of Microsoft Windows 2000 Server and Windows Server beginning with Windows Server 2003. Kerberos ensures the highest level of security to network resources. NTLM authenticates the client only; Kerberos authenticates the server and the client. When NTLM is used, the client does not know whether the server is valid. This difference is particularly important if the client exchanges personal files with the server, as is the case with Roaming User Profiles. Kerberos provides better security than NTLM. Kerberos is not available on the Microsoft Windows NT Server 4.0 or earlier operating systems.

-   **IPsec** - The IP Security Protocol (IPsec) provides network-level authentication, data integrity, and encryption. IPsec ensures the following:

    -   Roamed data is safe from data modification while data is en route.

    -   Roamed data is safe from interception, viewing, or copying.

    -   Roamed data is safe from access by unauthenticated parties.

-   **SMB Signing** - The Server Message Block (SMB) authentication protocol supports message authentication, which prevents active message and "man-in-the-middle" attacks. SMB signing provides this authentication by placing a digital signature into each SMB. The digital signature is then verified by both the client and the server. In order to use SMB signing, you must first either enable it, or you must require it on both the SMB client and the SMB server. Note that the SMB signing imposes a performance penalty. It does not consume any more network bandwidth, but it uses more CPU cycles on the client and server side.

### Always use the NTFS file system for volumes that hold user data

For the most secure configuration, configure servers that host the UE-V settings files to use the NTFS file system. Unlike the FAT file system, NTFS supports Discretionary access control lists (DACLs) and system access control lists (SACLs). DACLs and SACLs control who can perform operations on a file and what events trigger the logging of actions that is performed on a file.

### Do not rely on EFS to encrypt user files when they are transmitted over the network

When you use the Encrypting File System (EFS) to encrypt files on a remote server, the encrypted data is not encrypted during transit over the network; it only becomes encrypted when it is stored on disk.

This encryption process does not apply when your system includes Internet Protocol security (IPsec) or Web Distributed Authoring and Versioning (WebDAV). IPsec encrypts data while it is transported over a TCP/IP network. If the file is encrypted before it is copied or moved to a WebDAV folder on a server, it remains encrypted during the transmission and while it is stored on the server.

### Let the UE-V service create folders for each user

To ensure that UE-V works optimally, create only the root share on the server, and let the UE-V service create the folders for each user. UE-V creates these user folders with the appropriate security.

This permission configuration enables users to create folders for settings storage. The UE-V service creates and secures a settings package folder while it runs in the context of the user. Users receive full control to their settings package folder. Other users do not inherit access to this folder. You do not have to create and secure individual user directories. The UE-V service that runs in the context of the user does it automatically.

> **Note**&nbsp;&nbsp;Additional security can be configured when a Windows Server is used for the settings storage share. UE-V can be configured to verify that either the local Administrators group or the current user is the owner of the folder where settings packages are stored. To enable additional security, use the following command:

1.  Add the REG\_DWORD registry key RepositoryOwnerCheckEnabled to `HKEY_LOCAL_MACHINE\Software\Microsoft\UEV\Agent\Configuration`.

2.  Set the registry key value to *1*.

When this configuration setting is in place, the UE-V service verifies that the local Administrators group or current user is the owner of the settings package folder. If not, then the UE-V service does not grant access to the folder.


If you must create folders for the users, ensure that you have the correct permissions set.

We strongly recommend that you do not pre-create folders. Instead, let the UE-V service create the folder for the user.

### Ensure correct permissions to store UE-V 2 settings in a home directory or custom directory

If you redirect UE-V settings to a user’s home directory or a custom Active Directory (AD) directory, ensure that the permissions on the directory are set appropriately for your organization.

### Review the contents of settings location templates and control access to them as needed

When creating a settings location template, the UE-V generator uses a Lightweight Directory Access Protocol (LDAP) query to get username and email address of the current logged in user. This information is stored in the template as the template author name and template author email. (None of this information is sent to Microsoft.)

If you plan to share settings location templates with anyone outside your organization you should review all the settings locations and ensure the settings location templates do not contain any personal or company information. You can view the contents by opening the settings location template files using any XML viewer. The following are ways you can view and remove any personal or company information from the settings location template files before sharing with anyone outside your company:

-   **Template Author Name** – Specify a general, non-identifying name for the template author name or exclude this data from the template.

-   **Template Author Email** – Specify a general, non-identifying template author email or exclude this data from the template.

To remove the template author name or template author email, you can use the UE-V generator application. From the generator, select **Edit a Settings Location Template**. Select the settings location template to edit from the recently used templates or Browse to the settings template file. Select **Next** to continue. On the Properties page, remove the data from the Template author name or Template author email text fields. Save the settings location template.






## Related topics

[Technical Reference for UE-V](uev-technical-reference.md)
