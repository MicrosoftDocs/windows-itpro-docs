---
title: Limitations while using Windows Information Protection (WIP)
description: This section includes info about the common problems you might encounter while using Windows Information Protection (WIP).
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.reviewer: rafals
ms.topic: conceptual
ms.date: 04/05/2019
---

# Limitations while using Windows Information Protection (WIP)

_Applies to:_

- Windows 10
- Windows 11

This following list provides info about the most common problems you might encounter while running Windows Information Protection in your organization.

- **Limitation**: Your enterprise data on USB drives might be tied to the device it was protected on, based on your Azure RMS configuration.
  - **How it appears**:
    - If you're using Azure RMS: Authenticated users can open enterprise data on USB drives, on computers running Windows 10, version 1703.
    - If you're not using Azure RMS: Data in the new location remains encrypted, but becomes inaccessible on other devices and for other users. For example, the file won't open or the file opens, but doesn't contain readable text.

  - **Workaround**: Share files with fellow employees through enterprise file servers or enterprise cloud locations. If data must be shared via USB, employees can decrypt protected files, but it will be audited.

    We strongly recommend educating employees about how to limit or eliminate the need for this decryption.

- **Limitation**: Direct Access is incompatible with Windows Information Protection.
  - **How it appears**: Direct Access might experience problems with how Windows Information Protection enforces app behavior and data movement because of how WIP determines what is and isn't a corporate network resource.
  - **Workaround**: We recommend that you use VPN for client access to your intranet resources.

    > [!NOTE]
    > VPN is optional and isn't required by Windows Information Protection.

- **Limitation**: **NetworkIsolation** Group Policy setting takes precedence over MDM Policy settings.
  - **How it appears**: The **NetworkIsolation** Group Policy setting can configure network settings that can also be configured by using MDM. WIP relies on these policies being correctly configured.
  - **Workaround**: If you use both Group Policy and MDM to configure your **NetworkIsolation** settings, you must make sure that those same settings are deployed to your organization using both Group Policy and MDM.

- **Limitation**: Cortana can potentially allow data leakage if it's on the allowed apps list.
  - **How it appears**: If Cortana is on the allowed list, some files might become unexpectedly encrypted after an employee performs a search using Cortana. Your employees will still be able to use Cortana to search and provide results on enterprise documents and locations, but results might be sent to Microsoft.
  - **Workaround**: We don't recommend adding Cortana to your allowed apps list. However, if you wish to use Cortana and don't mind whether the results potentially go to Microsoft, you can make Cortana an Exempt app.

    <a name="single-user"></a>

- **Limitation**: Windows Information Protection is designed for use by a single user per device.
  - **How it appears**: A secondary user on a device might experience app compatibility issues when unenlightened apps start to automatically encrypt for all users. Additionally, only the initial, enrolled user's content can be revoked during the unenrollment process.
  - **Workaround**: Have only one user per managed device.
  - If this scenario occurs, it may be possible to mitigate. Once protection is disabled, a second user can remove protection by changing the file ownership. Although the protection is in place, the file remains accessible to the user.

- **Limitation**: Installers copied from an enterprise network file share might not work properly.
  - **How it appears**: An app might fail to properly install because it can't read a necessary configuration or data file, such as a .cab or .xml file needed for installation, which was protected by the copy action.
  - **Workaround**: To fix this, you can:
    - Start the installer directly from the file share.

      OR

    - Decrypt the locally copied files needed by the installer.

      OR

    - Mark the file share with the installation media as "personal". To do this, you'll need to set the Enterprise IP ranges as **Authoritative** and then exclude the IP address of the file server, or you'll need to put the file server on the Enterprise Proxy Server list.

- **Limitation**: Changing your primary Corporate Identity isn't supported.
  - **How it appears**: You might experience various instabilities, including but not limited to network and file access failures, and potentially granting incorrect access.
  - **Workaround**: Turn off Windows Information Protection for all devices before changing the primary Corporate Identity (first entry in the list), restarting, and finally redeploying.

- **Limitation**: Redirected folders with Client-Side Caching are not compatible with Windows Information Protection.
  - **How it appears**: Apps might encounter access errors while attempting to read a cached, offline file.
  - **Workaround**: Migrate to use another file synchronization method, such as Work Folders or OneDrive for Business.

    > [!NOTE]
    > For more info about Work Folders and Offline Files, see the [Work Folders and Offline Files support for Windows Information Protection blog](https://blogs.technet.microsoft.com/filecab/2016/08/29/work-folders-and-offline-files-support-for-windows-information-protection/). If you're having trouble opening files offline while using Offline Files and Windows Information Protection, see [Can't open files offline when you use Offline Files and Windows Information Protection](/troubleshoot/windows-client/networking/error-open-files-offline-offline-files-wip).

- **Limitation**: An unmanaged device can use Remote Desktop Protocol (RDP) to connect to a WIP-managed device.
  - **How it appears**: 
    - Data copied from the WIP-managed device is marked as **Work**.
    - Data copied to the WIP-managed device is not marked as **Work**.
    - Local **Work** data copied to the WIP-managed device remains **Work** data.
    - **Work** data that is copied between two apps in the same session remains ** data.

  - **Workaround**: Disable RDP to prevent access because there is no way to restrict access to only devices managed by Windows Information Protection. RDP is disabled by default.

- **Limitation**: You can't upload an enterprise file to a personal location using Microsoft Edge or Internet Explorer.
  - **How it appears**: A message appears stating that the content is marked as **Work** and the user isn't given an option to override to **Personal**.
  - **Workaround**: Open File Explorer and change the file ownership to **Personal** before you upload.

- **Limitation**: ActiveX controls should be used with caution.
  - **How it appears**: Webpages that use ActiveX controls can potentially communicate with other outside processes that aren't protected by using Windows Information Protection.
  - **Workaround**: We recommend that you switch to using Microsoft Edge, the more secure and safer browser that prevents the use of ActiveX controls. We also recommend that you limit the usage of Internet Explorer 11 to only those line-of-business apps that require legacy technology.

    For more info, see [Out-of-date ActiveX control blocking](/internet-explorer/ie11-deploy-guide/out-of-date-activex-control-blocking).

- **Limitation**: Resilient File System (ReFS) isn't currently supported with Windows Information Protection.
  - **How it appears**:Trying to save or transfer Windows Information Protection files to ReFS will fail.
  - **Workaround**: Format drive for NTFS, or use a different drive.

- **Limitation**: Windows Information Protection isn't turned on if any of the following folders have the **MakeFolderAvailableOfflineDisabled** option set to **False**:
  - AppDataRoaming
  - Desktop
  - StartMenu
  - Documents
  - Pictures
  - Music
  - Videos
  - Favorites
  - Contacts
  - Downloads
  - Links
  - Searches
  - SavedGames

  <br/>

  - **How it appears**: Windows Information Protection isn't turned on for employees in your organization. Error code 0x807c0008 will result if Windows Information Protection is deployed by using Microsoft Configuration Manager.
  - **Workaround**: Don't set the **MakeFolderAvailableOfflineDisabled** option to **False** for any of the specified folders.  You can configure this parameter, as described [Disable Offline Files on individual redirected folders](/windows-server/storage/folder-redirection/disable-offline-files-on-folders).

    If you currently use redirected folders, we recommend that you migrate to a file synchronization solution that supports Windows Information Protection, such as Work Folders or OneDrive for Business. Additionally, if you apply redirected folders after Windows Information Protection is already in place, you might be unable to open your files offline.

    For more info about these potential access errors, see [Can't open files offline when you use Offline Files and Windows Information Protection](/troubleshoot/windows-client/networking/error-open-files-offline-offline-files-wip).

- **Limitation**: Only enlightened apps can be managed without device enrollment
  - **How it appears**: If a user enrolls a device for Mobile Application Management (MAM) without device enrollment, only enlightened apps will be managed. This is by design to prevent personal files from being unintentionally encrypted by unenlighted apps.

    Unenlighted apps that need to access work using MAM need to be re-compiled as LOB apps or managed by using MDM with device enrollment.

  - **Workaround**: If all apps need to be managed, enroll the device for MDM.

- **Limitation**: By design, files in the Windows directory (%windir% or C:/Windows) cannot be encrypted because they need to be accessed by any user. If a file in the Windows directory gets encrypted by one user, other users can't access it.
  - **How it appears**: Any attempt to encrypt a file in the Windows directory will return a file access denied error. But if you copy or drag and drop an encrypted file to the Windows directory, it will retain encryption to honor the intent of the owner.
  - **Workaround**: If you need to save an encrypted file in the Windows directory, create and encrypt the file in a different directory and copy it.

- **Limitation**: OneNote notebooks on OneDrive for Business must be properly configured to work with Windows Information Protection.
  - **How it appears**: OneNote might encounter errors syncing a OneDrive for Business notebook and suggest changing the file ownership to Personal. Attempting to view the notebook in OneNote Online in the browser will show an error and unable to view it.
  - **Workaround**: OneNote notebooks that are newly copied into the OneDrive for Business folder from File Explorer should get fixed automatically. To do this, follow these steps:

    1. Close the notebook in OneNote.
    2. Move the notebook folder via File Explorer out of the OneDrive for Business folder to another location, such as the Desktop.
    3. Copy the notebook folder and Paste it back into the OneDrive for Business folder.

    Wait a few minutes to allow OneDrive to finish syncing & upgrading the notebook, and the folder should automatically convert to an Internet Shortcut. Opening the shortcut will open the notebook in the browser, which can then be opened in the OneNote client by using the "Open in app" button.

- **Limitation**: Microsoft Office Outlook offline data files (PST and OST files) are not marked as **Work** files, and are therefore not protected.
  - **How it appears**: If Microsoft Office Outlook is set to work in cached mode (default setting), or if some emails are stored in a local PST file, the data is unprotected.
  - **Workaround**: It is recommended to use Microsoft Office Outlook in Online mode, or to use encryption to protect OST and PST files manually.

> [!NOTE]
>
> - When corporate data is written to disk, Windows Information Protection uses the Windows-provided Encrypting File System (EFS) to protect it and associate it with your enterprise identity. One caveat to keep in mind is that the Preview Pane in File Explorer will not work for encrypted files. 
> 
> - Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to our content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
