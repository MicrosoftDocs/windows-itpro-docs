---
title: Install Windows Configuration Designer
description: Learn how to install and use Windows Configuration Designer so you can easily configure devices running Windows 10/11.
ms.topic: how-to
ms.reviewer: kevinsheehan
ms.date: 12/31/2017
---

# Install Windows Configuration Designer, and learn about any limitations

Use the Windows Configuration Designer tool to create provisioning packages to easily configure devices running Windows client. Windows Configuration Designer is primarily used by IT departments for business and educational institutions who need to provision bring-your-own-device (BYOD) and business-supplied devices.

## Supported platforms

Windows Configuration Designer can create provisioning packages for Windows client desktop, including Windows IoT Core, Microsoft Surface Hub, and Microsoft HoloLens. You can run Windows Configuration Designer on the following operating systems:

**Client OS**:

- Windows 11
- Windows 10 - x86 and amd64
- Windows 8.1 Update - x86 and amd64
- Windows 8.1 - x86 and amd64
- Windows 8 - x86 and amd64
- Windows 7 - x86 and amd64

**Server OS**:

- Windows Server 2016
- Windows Server 2012 R2 Update
- Windows Server 2012 R2
- Windows Server 2012
- Windows Server 2008 R2

>[!WARNING]
>You must run Windows Configuration Designer on Windows client to configure Microsoft Entra enrollment using any of the wizards.

## Install Windows Configuration Designer

On devices running Windows client, you can install [the Windows Configuration Designer app](https://www.microsoft.com/store/apps/9nblggh4tx22) from the Microsoft Store.

## Current Windows Configuration Designer limitations

- When running Windows Configuration Designer on Windows releases earlier than Windows 10, version 2004 you might need to enable TLS 1.2, especially if using Bulk Enrollment Tokens.  You may see the error message in the `icd.log` file: `Error: AADSTS1002016: You are using TLS version 1.0, 1.1 and/or 3DES cipher which are deprecated to improve the security posture of Azure AD` For more information, see [Enable TLS 1.2 on client or server operating systems](/troubleshoot/azure/active-directory/enable-support-tls-environment#enable-tls-12-on-client-or-server-operating-systems-).


- Windows Configuration Designer doesn't work properly when the Group Policy setting **Policies** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Security Zones: Use only machine settings** is enabled. When this policy is set, each step will display oversized buttons that fill the **Windows Configuration Designer** window. Additionally, the various options and descriptions that are normally to the right of the buttons won't be displayed because the buttons take up all of the space in the **Windows Configuration Designer** window. To resolve the problem, run Windows Configuration Designer on a device that doesn't have this policy enabled.

- You can only run one instance of Windows Configuration Designer on your computer at a time.

- When adding apps and drivers, all files stored in the same folder are imported, and may cause errors during the build process.

- The Windows Configuration Designer UI doesn't support multivariant configurations. Instead, you must use the Windows Configuration Designer command-line interface to configure multivariant settings. For more information, see [Create a provisioning package with multivariant settings](provisioning-multivariant.md).

- In Windows Configuration Designer, you can only build one project at a time. You can open multiple projects at the same time, but you can only build one at a time.

- To enable the simplified authoring jscripts to work on a server SKU running Windows Configuration Designer, you must enable **Allow websites to prompt for information using scripted windows**:

  1. Open Internet Explorer.
  1. Go to **Settings** > **Internet Options** > **Security** > **Custom level**.
  1. Select **Allow websites to prompt for information using scripted windows** > **Enable**.

- If you copy a Windows Configuration Designer project from one PC to another PC, then:

  - Copy all the associated files for the deployment assets with the project, including apps and drivers.
  - Copy all the files to the same path as the original PC.

  For example, when you add a driver to a provisioned package, you must copy the `.INF` file to a local directory on the PC that's running Windows Configuration Designer. If you don't copy the `.INF` file, and use a copied version of this project on a different PC, then Windows Configuration Designer might resolve the file paths to the original PC.

- **Recommended**: Before starting, copy all source files to the PC running Windows Configuration Designer. Don't use external sources, like network shares or removable drives. Using local files reduces the risk of interrupting the build process from a network issue, or from disconnecting the USB device.

**Next step**: [How to create a provisioning package](provisioning-create-package.md)

## Related articles

- [Provisioning packages for Windows client](provisioning-packages.md)
- [How provisioning works in Windows client](provisioning-how-it-works.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows client (reference)](provisioning-powershell.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)
