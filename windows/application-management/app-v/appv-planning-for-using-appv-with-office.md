---
title: Planning for Deploying App-V with Office (Windows 10)
description: Planning for Using App-V with Office
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Planning for deploying App-V with Office

>Applies to: Windows 10, version 1607

Use the following information to plan how to deploy Office within Microsoft Application Virtualization (App-V).

## App-V language pack support

You can use the App-V Sequencer to create plug-in packages for language packs, language interface packs, proofing tools, and ScreenTip languages. You can then include the plug-in packages in a connection group, along with the Office package that you create by using the Office Deployment Toolkit. The Office applications and the plug-in language packs will interact seamlessly in the same connection group.

>[!NOTE]
>Microsoft Visio and Microsoft Project do not support the Thai Language Pack.

## Supported versions of Microsoft Office

For a list of supported Office products, see [Microsoft Office Product IDs that App-V supports](https://support.microsoft.com/help/2842297/product-ids-that-are-supported-by-the-office-deployment-tool-for-click).

>[!NOTE]
>You must use the Office Deployment Tool instead of the App-V Sequencer to create App-V packages for Office 365 ProPlus. App-V does not support package creation for volume-licensed versions of Office Professional Plus or Office Standard. Support for the [Office 2013 version of Office 365 ended in February 2017](https://support.microsoft.com/kb/3199744).

## Using App-V with coexisting versions of Office

You can simultaneously install more than one version of Microsoft Office on the same computer with a feature called “Microsoft Office coexistence.” You can implement Office coexistence with combinations of all major versions of Office and with installation methods, as applicable, by using the Windows Installer-based (MSI) version of Office, Click-to-Run, and App-V. However, Microsoft doesn't recommend using Office coexistence.

Microsoft’s recommended best practice is to avoid Office coexistence completely to prevent compatibility issues. However, in cases where issues arise during migration that you can't immediately resolve, Office coexistence can allow for faster migration to the latest Office version. Since this solution is only meant to be temporary, your organization must set up a plan to fully transition to the newer version of Office in the meantime.

### Before you implement Office coexistence

Before implementing Office coexistence, review the information in the following table that corresponds to the newest version of Office that you will use in coexistence. The documentation linked here will guide you in implementing coexistence for Windows Installer-based (MSI) and Click-to-Run installations of Office.

|Office version|Relevant how-to guides|
|---|---|
|Office 2016|[How to use Outlook 2016 or 2013 and an earlier version of Outlook installed on the same computer](https://support.microsoft.com/kb/2782408)|
|Office 2013|[How to use Office 2013 suites and programs (MSI deployment) on a computer running another version of Office](https://support.microsoft.com/kb/2784668)|
|Office 2010|How to use Office 2010 suites and programs on a computer running another version of Office](https://support.microsoft.com/kb/2121447)|

Once you've reviewed the relevant guide, this topic will supplement what you've learned with information about Office coexistence that's more specific to App-V deployments.

### Supported Office coexistence scenarios

The following tables summarize supported coexistence scenarios. They are organized according to the version and deployment method you’re starting with and the version and deployment method you are migrating to. Be sure to fully test all coexistence solutions before deploying them to a production audience.

>[!NOTE]
>Microsoft does not support the use of multiple versions of Office in Windows Server environments that have the Remote Desktop Session Host role service enabled. To run Office coexistence scenarios, you must disable this role service.

### Windows integrations and Office coexistence

Windows Installer-based and Click-to-Run Office installation methods integrate with certain points of the underlying Windows OS, but coexistence can cause these integrations to conflict. App-V can sequence certain version of Office to exclude integrations that could be potential problem spots, isolating them from the OS and preventing compatibility or user experience issues.

The following table describes the integration level of each version of Office, and which mode App-V can use to sequence them.

|Office version|The modes App-V can sequence this version of Office with|
|---|---|
|Office 2007|Always non-integrated. App-V does not offer any operating system integrations with a virtualized version of Office 2007.|
|Office 2010|Integrated and non-integrated mode.|
|Office 2013|Always integrated. Windows operating system integrations cannot be disabled.|
|Office 2016|Always integrated. Windows operating system integrations cannot be disabled.|

Microsoft recommends deploying Office coexistence with only one integrated Office instance. For example, if you’re using App-V to deploy Office 2010 and Office 2013, you should sequence Office 2010 in non-integrated mode. For more information about sequencing Office in non-integration (isolated) mode, see [How to sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/kb/2830069).

### Known limitations of Office coexistence scenarios

The following sections describe issues you might encounter when using App-V to implement coexistence with Office.

### Limitations common to Windows Installer-based/Click-to-Run and App-V Office coexistence scenarios

Limitations can occur when you install the following versions of Office on the same computer:

* Office 2010 with the Windows Installer-based version
* Office 2013 or Office 2016 with App-V

Publishing Office 2013 or Office 2016 with App-V at the same time as an earlier version of the Windows Installer-based Office 2010 might cause the Windows Installer to start. This is because either the Windows Installer-based or Click-to-Run version of Office 2010 is trying to automatically register itself to the computer.

To bypass the auto-registration operation for native Word 2010, follow these steps:

1. Exit Word 2010.
2. Start the Registry Editor by doing the following:

    * In Windows 7k, select **Start**, type **regedit** in the Start Search box, then select the Enter key.

    * In Windows 8.1 or Windows 10, enter **regedit**, select **Enter** on the Start page, then select the Enter key.

    If you're prompted for an administrator password, enter the password. If you're prompted for a confirmation, select **Continue**.
3. Locate and then select the following registry subkey:

    ``` syntax
    HKEY_CURRENT_USER\Software\Microsoft\Office\14.0\Word\Options
    ```
4. On the **Edit** menu, select **New**, then select **DWORD Value**.
5. Type **NoReReg**, then select the Enter key.
6. Right-click **NoReReg**, then select **Modify**.
7. In the **Valuedata** box, enter **1**, then select **OK**.
8. On the File menu, select **Exit** to close Registry Editor.

## How Office integrates with Windows when you use App-V to deploy Office

When you deploy Office 2013 or Office 2016 with App-V, Office is fully integrated with the operating system that provides end-users with the same features and functionality that Office has when deployed without App-V.

The Office 2013 or Office 2016 App-V package supports the following integration points with the Windows operating system:

|Integration point|Description|
|---|---|
|Skype for Business (formerly Lync) Meeting Join plug-in for Firefox and Chrome|User can join Skype meetings from Firefox and Chrome|
|Sent to OneNote Print Driver|User can print to OneNote|
|OneNote Linked Notes|OneNote Linked Notes|
|Send to OneNote Internet Explorer add-in|User can send to OneNote from IE|
|Firewall exception for Skype for Business (formerly Lync) and Outlook|Firewall exception for Skype for Business (formerly Lync) and Outlook|
|MAPI client|Native apps and add-ins can interact with virtual Outlook through MAPI|
|SharePoint Plug-in for Firefox|User can use SharePoint features in Firefox|
|Mail Control Panel Applet|User gets the mail control panel applet in Outlook|
|Primary Interop Assemblies|Support managed add-ins|
|Office Document Cache Handler|Allows Document Cache for Office applications|
|Outlook Protocol Search Handler|User can search in Outlook|
|Active X Controls|For more information on ActiveX controls, refer to [ActiveX Control API Reference](<https://msdn.microsoft.com/library/vs/alm/ms440037(v=office.14).aspx>).|
|OneDrive Pro Icon Overlays|Windows Explorer shell icon overlays when users look at folders OneDrive Pro folders|
|Shell extensions||
|Shortcuts||
|Windows Search||





## Related topics

* [Deploying Microsoft Office 2016 by Using App-V](appv-deploying-microsoft-office-2016-with-appv.md)
* [Deploying Microsoft Office 2013 by Using App-V](appv-deploying-microsoft-office-2013-with-appv.md)
* [Deploying Microsoft Office 2010 by Using App-V](appv-deploying-microsoft-office-2010-wth-appv.md)
