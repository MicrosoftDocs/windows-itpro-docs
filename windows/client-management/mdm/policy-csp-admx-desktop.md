---
title: Policy CSP - ADMX_Desktop
description: Learn about Policy CSP - ADMX_Desktop.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/02/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Desktop

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Desktop policies

<dl>
  <dd>
    <a href="#admx-desktop-ad-enablefilter">ADMX_Desktop/AD_EnableFilter</a>
  </dd>
  <dd>
    <a href="#admx-desktop-ad-hidedirectoryfolder">ADMX_Desktop/AD_HideDirectoryFolder</a>
  </dd>
  <dd>
    <a href="#admx-desktop-ad-querylimit">ADMX_Desktop/AD_QueryLimit</a>
  </dd>
  <dd>
    <a href="#admx-desktop-forceactivedesktopon">ADMX_Desktop/ForceActiveDesktopOn</a>
  </dd>
  <dd>
    <a href="#admx-desktop-noactivedesktop">ADMX_Desktop/NoActiveDesktop</a>
  </dd>
  <dd>
    <a href="#admx-desktop-noactivedesktopchanges">ADMX_Desktop/NoActiveDesktopChanges</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nodesktop">ADMX_Desktop/NoDesktop</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nodesktopcleanupwizard">ADMX_Desktop/NoDesktopCleanupWizard</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nointerneticon">ADMX_Desktop/NoInternetIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nomycomputericon">ADMX_Desktop/NoMyComputerIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nomydocumentsicon">ADMX_Desktop/NoMyDocumentsIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nonethood">ADMX_Desktop/NoNetHood</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nopropertiesmycomputer">ADMX_Desktop/NoPropertiesMyComputer</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nopropertiesmydocuments">ADMX_Desktop/NoPropertiesMyDocuments</a>
  </dd>
  <dd>
    <a href="#admx-desktop-norecentdocsnethood">ADMX_Desktop/NoRecentDocsNetHood</a>
  </dd>
  <dd>
    <a href="#admx-desktop-norecyclebinicon">ADMX_Desktop/NoRecycleBinIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-norecyclebinproperties">ADMX_Desktop/NoRecycleBinProperties</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nosavesettings">ADMX_Desktop/NoSaveSettings</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nowindowminimizingshortcuts">ADMX_Desktop/NoWindowMinimizingShortcuts</a>
  </dd>
  <dd>
    <a href="#admx-desktop-wallpaper">ADMX_Desktop/Wallpaper</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disableadd">ADMX_Desktop/sz_ATC_DisableAdd</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disableclose">ADMX_Desktop/sz_ATC_DisableClose</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disabledel">ADMX_Desktop/sz_ATC_DisableDel</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disableedit">ADMX_Desktop/sz_ATC_DisableEdit</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-nocomponents">ADMX_Desktop/sz_ATC_NoComponents</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-admincomponents-title">ADMX_Desktop/sz_AdminComponents_Title</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-db-dragdropclose">ADMX_Desktop/sz_DB_DragDropClose</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-db-moving">ADMX_Desktop/sz_DB_Moving</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-dwp-nohtmlpaper">ADMX_Desktop/sz_DWP_NoHTMLPaper</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-desktop-ad-enablefilter"></a>**ADMX_Desktop/AD_EnableFilter**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Displays the filter bar above the results of an Active Directory search. The filter bar consists of buttons for applying more filters to search results.

If you enable this setting, the filter bar appears when the Active Directory Find dialog box opens, but users can hide it.

If you disable this setting or don't configure it, the filter bar doesn't appear, but users can display it by selecting "Filter" on the "View" menu.

To see the filter bar, open Network Locations, click Entire Network, and then click Directory. Right-click the name of a Windows domain, and click Find. Type the name of an object in the directory, such as  "Administrator." If the filter bar doesn't appear above the resulting display, on the View menu, click Filter.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable filter in Find dialog box*
-   GP name: *AD_EnableFilter*
-   GP path: *Desktop\Active Directory*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-ad-hidedirectoryfolder"></a>**ADMX_Desktop/AD_HideDirectoryFolder**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Hides the Active Directory folder in Network Locations.

The Active Directory folder displays Active Directory objects in a browse window.

If you enable this setting, the Active Directory folder doesn't appear in the Network Locations folder.

If you disable this setting or don't configure it, the Active Directory folder appears in the Network Locations folder.

This setting is designed to let users search Active Directory but not tempt them to casually browse Active Directory.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Active Directory folder*
-   GP name: *AD_HideDirectoryFolder*
-   GP path: *Desktop\Active Directory*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-ad-querylimit"></a>**ADMX_Desktop/AD_QueryLimit**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the maximum number of objects the system displays in response to a command to browse or search Active Directory. This setting affects all browse displays associated with Active Directory, such as those displays in Local Users and Groups, Active Directory Users and Computers, and dialog boxes used to set permissions for user or group objects in Active Directory.

If you enable this setting, you can use the "Number of objects returned" box to limit returns from an Active Directory search.

If you disable this setting or don't configure it, the system displays up to 10,000 objects. This screen-display consumes approximately 2 MB of memory or disk space.

This setting is designed to protect the network and the domain controller from the effect of expansive searches.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Maximum size of Active Directory searches*
-   GP name: *AD_QueryLimit*
-   GP path: *Desktop\Active Directory*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-forceactivedesktopon"></a>**ADMX_Desktop/ForceActiveDesktopOn**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Enables Active Desktop and prevents users from disabling it.

This setting prevents users from trying to enable or disable Active Desktop while a policy controls it.

If you disable this setting or don't configure it, Active Desktop is disabled by default, but users can enable it.

> [!NOTE]
> If both the "Enable Active Desktop" setting and the "Disable Active Desktop" setting are enabled, the "Disable Active Desktop" setting is ignored.  If the "Turn on Classic Shell" setting (in User Configuration\Administrative Templates\Windows Components\Windows Explorer) is enabled, Active Desktop is disabled, and both of these policies are ignored.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Active Desktop*
-   GP name: *ForceActiveDesktopOn*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-noactivedesktop"></a>**ADMX_Desktop/NoActiveDesktop**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Disables Active Desktop and prevents users from enabling it.

This setting prevents users from trying to enable or disable Active Desktop while a policy controls it.

If you disable this setting or don't configure it, Active Desktop is disabled by default, but users can enable it.

> [!NOTE]
> If both the "Enable Active Desktop" setting and the "Disable Active Desktop" setting are enabled, the "Disable Active Desktop" setting is ignored. If the "Turn on Classic Shell" setting (in User Configuration\Administrative Templates\Windows Components\Windows Explorer) is enabled, Active Desktop is disabled, and both these policies are ignored.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable Active Desktop*
-   GP name: *NoActiveDesktop*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-noactivedesktopchanges"></a>**ADMX_Desktop/NoActiveDesktopChanges**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents the user from enabling or disabling Active Desktop or changing the Active Desktop configuration.

This setting is a comprehensive one that locks down the configuration you establish by using other policies in this folder. This setting removes the Web tab from Display in Control Panel. As a result, users can't enable or disable Active Desktop. If Active Desktop is already enabled, users can't add, remove, or edit Web content or disable, lock, or synchronize Active Desktop components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit changes*
-   GP name: *NoActiveDesktopChanges*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nodesktop"></a>**ADMX_Desktop/NoDesktop**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes icons, shortcuts, and other default and user-defined items from the desktop, including Briefcase, Recycle Bin, Computer, and Network Locations.

Removing icons and shortcuts doesn't prevent the user from using another method to start the programs or opening the items they represent.

Also, see "Items displayed in Places Bar" in User Configuration\Administrative Templates\Windows Components\Common Open File Dialog to remove the Desktop icon from the Places Bar. The removal of the Desktop icon will help prevent users from saving data to the Desktop.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide and disable all items on the desktop*
-   GP name: *NoDesktop*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nodesktopcleanupwizard"></a>**ADMX_Desktop/NoDesktopCleanupWizard**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from using the Desktop Cleanup Wizard.

If you enable this setting, the Desktop Cleanup wizard doesn't automatically run on a user's workstation every 60 days. The user will also not be able to access the Desktop Cleanup Wizard.

If you disable this setting or don't configure it, the default behavior of the Desktop Clean Wizard running every 60 days occurs.

> [!NOTE]
> When this setting isn't enabled, users can run the Desktop Cleanup Wizard, or have it run automatically every 60 days from Display, by clicking the Desktop tab and then clicking the Customize Desktop button.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove the Desktop Cleanup Wizard*
-   GP name: *NoDesktopCleanupWizard*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nointerneticon"></a>**ADMX_Desktop/NoInternetIcon**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes the Internet Explorer icon from the desktop and from the Quick Launch bar on the taskbar.

This setting doesn't prevent the user from starting Internet Explorer by using other methods.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Internet Explorer icon on desktop*
-   GP name: *NoInternetIcon*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nomycomputericon"></a>**ADMX_Desktop/NoMyComputerIcon**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting hides Computer from the desktop and from the new Start menu. It also hides links to Computer in the Web view of all Explorer windows, and it hides Computer in the Explorer folder tree pane. If the user navigates into Computer via the "Up" button while this setting is enabled, they view an empty Computer folder. This setting allows administrators to restrict their users from seeing Computer in the shell namespace, allowing them to present their users with a simpler desktop environment.

If you enable this setting, Computer is hidden on the desktop, the new Start menu, the Explorer folder tree pane, and the Explorer Web views. If the user manages to navigate to Computer, the folder will be empty.

If you disable this setting, Computer is displayed as usual, appearing as normal on the desktop, Start menu, folder tree pane, and Web views, unless restricted by another setting.

If you don't configure this setting, the default is to display Computer as usual.

> [!NOTE]
> In operating systems earlier than Microsoft Windows Vista, this policy applies to the My Computer icon. Hiding Computer and its contents doesn't hide the contents of the child folders of Computer. For example, if the users navigate into one of their hard drives, they see all of their folders and files there, even if this setting is enabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Computer icon on the desktop*
-   GP name: *NoMyComputerIcon*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nomydocumentsicon"></a>**ADMX_Desktop/NoMyDocumentsIcon**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes most occurrences of the My Documents icon.

This setting removes the My Documents icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.

This setting doesn't prevent the user from using other methods to gain access to the contents of the My Documents folder.

This setting doesn't remove the My Documents icon from the Start menu. To do so, use the "Remove My Documents icon from Start Menu" setting.

> [!NOTE]
> To make changes to this setting effective, you must log off from and log back on to Windows 2000 Professional.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove My Documents icon on the desktop*
-   GP name: *NoMyDocumentsIcon*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nonethood"></a>**ADMX_Desktop/NoNetHood**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes the Network Locations icon from the desktop.

This setting only affects the desktop icon. It doesn't prevent users from connecting to the network or browsing for shared computers on the network.

> [!NOTE]
> In operating systems earlier than Microsoft Windows Vista, this policy applies to the My Network Places icon.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Network Locations icon on desktop*
-   GP name: *NoNetHood*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nopropertiesmycomputer"></a>**ADMX_Desktop/NoPropertiesMyComputer**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting hides Properties on the context menu for Computer.

If you enable this setting, the Properties option won't be present when the user right-clicks My Computer or clicks Computer and then goes to the File menu.  Likewise, Alt-Enter does nothing when Computer is selected.

If you disable or don't configure this setting, the Properties option is displayed as usual.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Properties from the Computer icon context menu*
-   GP name: *NoPropertiesMyComputer*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nopropertiesmydocuments"></a>**ADMX_Desktop/NoPropertiesMyDocuments**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting hides the Properties menu command on the shortcut menu for the My Documents icon.

If you enable this policy setting, the Properties menu command won't be displayed when the user does any of the following tasks:

- Right-clicks the My Documents icon.
- Clicks the My Documents icon, and then opens the File menu.
- Clicks the My Documents icon, and then presses ALT+ENTER.

If you disable or don't configure this policy setting, the Properties menu command is displayed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Properties from the Documents icon context menu*
-   GP name: *NoPropertiesMyDocuments*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-norecentdocsnethood"></a>**ADMX_Desktop/NoRecentDocsNetHood**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Remote shared folders aren't added to Network Locations whenever you open a document in the shared folder.

If you disable this setting or don't configure it, when you open a document in a remote shared folder, the system adds a connection to the shared folder to Network Locations.

If you enable this setting, shared folders aren't added to Network Locations automatically when you open a document in the shared folder.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not add shares of recently opened documents to Network Locations*
-   GP name: *NoRecentDocsNetHood*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-norecyclebinicon"></a>**ADMX_Desktop/NoRecycleBinIcon**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes most occurrences of the Recycle Bin icon.

This setting removes the Recycle Bin icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.

This setting doesn't prevent the user from using other methods to gain access to the contents of the Recycle Bin folder.

> [!NOTE]
> To make changes to this setting effective, you must log off and then log back on.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Recycle Bin icon from desktop*
-   GP name: *NoRecycleBinIcon*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-norecyclebinproperties"></a>**ADMX_Desktop/NoRecycleBinProperties**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes the Properties option from the Recycle Bin context menu.

If you enable this setting, the Properties option won't be present when the user right-clicks on Recycle Bin or opens Recycle Bin and then clicks File. Likewise, Alt-Enter does nothing when Recycle Bin is selected.

If you disable or don't configure this setting, the Properties option is displayed as usual.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Properties from the Recycle Bin context menu*
-   GP name: *NoRecycleBinProperties*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nosavesettings"></a>**ADMX_Desktop/NoSaveSettings**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from saving certain changes to the desktop.

If you enable this setting, users can change the desktop, but some changes, such as the position of open windows or the size and position of the taskbar, aren't saved when users sign out. However, shortcuts placed on the desktop are always saved.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Don't save settings at exit*
-   GP name: *NoSaveSettings*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-nowindowminimizingshortcuts"></a>**ADMX_Desktop/NoWindowMinimizingShortcuts**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents windows from being minimized or restored when the active window is shaken back and forth with the mouse.

If you enable this policy, application windows won't be minimized or restored when the active window is shaken back and forth with the mouse.

If you disable or don't configure this policy, this window minimizing and restoring gesture will apply.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Aero Shake window minimizing mouse gesture*
-   GP name: *NoWindowMinimizingShortcuts*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-wallpaper"></a>**ADMX_Desktop/Wallpaper**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the desktop background ("wallpaper") displayed on all users' desktops.

This setting lets you specify the wallpaper on users' desktops and prevents users from changing the image or its presentation. The wallpaper you specify can be stored in a bitmap (*.bmp) or JPEG (*.jpg) file.

To use this setting, type the fully qualified path and name of the file that stores the wallpaper image. You can type a local path, such as C:\Windows\web\wallpaper\home.jpg or a UNC path, such as \\\Server\Share\Corp.jpg. If the specified file isn't available when the user logs on, no wallpaper is displayed. Users can't specify alternative wallpaper. You can also use this setting to specify that the wallpaper image be centered, tiled, or stretched. Users can't change this specification.

If you disable this setting or don't configure it, no wallpaper is displayed. However, users can select the wallpaper of their choice.

Also, see the "Allow only bitmapped wallpaper" in the same location, and the "Prevent changing wallpaper" setting in User Configuration\Administrative Templates\Control Panel.

> [!NOTE]
> This setting doesn't apply to remote desktop server sessions.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Desktop Wallpaper*
-   GP name: *Wallpaper*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-atc-disableadd"></a>**ADMX_Desktop/sz_ATC_DisableAdd**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from adding Web content to their Active Desktop.

This setting removes the "New" button from Web tab in Display in Control Panel. As a result, users can't add Web pages or pictures from the Internet or an intranet to the desktop. This setting doesn't remove existing Web content from their Active Desktop, or prevent users from removing existing Web content.

Also, see the "Disable all items" setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit adding items*
-   GP name: *sz_ATC_DisableAdd*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-atc-disableclose"></a>**ADMX_Desktop/sz_ATC_DisableClose**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from removing Web content from their Active Desktop.

In Active Desktop, you can add items to the desktop but close them so they aren't displayed.

If you enable this setting, items added to the desktop can't be closed; they always appear on the desktop. This setting removes the check boxes from items on the Web tab in Display in Control Panel.

> [!NOTE]
> This setting doesn't prevent users from deleting items from their Active Desktop.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit closing items*
-   GP name: *sz_ATC_DisableClose*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-atc-disabledel"></a>**ADMX_Desktop/sz_ATC_DisableDel**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from deleting Web content from their Active Desktop.

This setting removes the Delete button from the Web tab in Display in Control Panel. As a result, users can temporarily remove, but not delete, Web content from their Active Desktop.

This setting doesn't prevent users from adding Web content to their Active Desktop.

Also, see the "Prohibit closing items" and "Disable all items" settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit deleting items*
-   GP name: *sz_ATC_DisableDel*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-atc-disableedit"></a>**ADMX_Desktop/sz_ATC_DisableEdit**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from changing the properties of Web content items on their Active Desktop.

This setting disables the Properties button on the Web tab in Display in Control Panel. Also, it removes the Properties item from the menu for each item on the Active Desktop. As a result, users can't change the properties of an item, such as its synchronization schedule, password, or display characteristics.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit editing items*
-   GP name: *sz_ATC_DisableEdit*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-atc-nocomponents"></a>**ADMX_Desktop/sz_ATC_NoComponents**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Removes Active Desktop content and prevents users from adding Active Desktop content.

This setting removes all Active Desktop items from the desktop. It also removes the Web tab from Display in Control Panel. As a result, users can't add Web pages or  pictures from the Internet or an intranet to the desktop.

> [!NOTE]
> This setting doesn't disable Active Desktop. Users can  still use image formats, such as JPEG and GIF, for their desktop wallpaper.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable all items*
-   GP name: *sz_ATC_NoComponents*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-admincomponents-title"></a>**ADMX_Desktop/sz_AdminComponents_Title**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Adds and deletes specified Web content items.

You can use the "Add" box in this setting to add particular Web-based items or shortcuts to users' desktops. Users can close or delete the items (if settings allow), but the items are added again each time the setting is refreshed.

You can also use this setting to delete particular Web-based items from users' desktops. Users can add the item again (if settings allow), but the item is deleted each time the setting is refreshed.

> [!NOTE]
> Removing an item from the "Add" list for this setting isn't the same as deleting it. Items that are removed from the "Add" list aren't removed from the desktop. They are simply not added again.

> [!NOTE]
> For this setting to take effect, you must log off and log on to the system.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add/Delete items*
-   GP name: *sz_AdminComponents_Title*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-db-dragdropclose"></a>**ADMX_Desktop/sz_DB_DragDropClose**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from manipulating desktop toolbars.

If you enable this setting, users can't add or remove toolbars from the desktop. Also, users can't drag toolbars onto or off from the docked toolbars.

> [!NOTE]
> If users have added or removed toolbars, this setting prevents them from restoring the default configuration.

> [!TIP]
> To view the toolbars that can be added to the desktop, right-click a docked toolbar (such as the taskbar beside the Start button), and point to "Toolbars."

Also, see the "Prohibit adjusting desktop toolbars" setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent adding, dragging, dropping and closing the Taskbar's toolbars*
-   GP name: *sz_DB_DragDropClose*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-db-moving"></a>**ADMX_Desktop/sz_DB_Moving**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from adjusting the length of desktop toolbars. Also, users can't reposition items or toolbars on docked toolbars.

This setting doesn't prevent users from adding or removing toolbars on the desktop.

> [!NOTE]
> If users have adjusted their toolbars, this setting prevents them from restoring the default configuration.

Also, see the "Prevent adding, dragging, dropping and closing the Taskbar's toolbars" setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit adjusting desktop toolbars*
-   GP name: *sz_DB_Moving*
-   GP path: *Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-desktop-sz-dwp-nohtmlpaper"></a>**ADMX_Desktop/sz_DWP_NoHTMLPaper**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Permits only bitmap images for wallpaper. This setting limits the desktop background ("wallpaper") to bitmap (.bmp) files. If users select files with other image formats, such as JPEG, GIF, PNG, or HTML, through the Browse button on the Desktop tab, the wallpaper doesn't load. Files that are autoconverted to a .bmp format, such as JPEG, GIF, and PNG, can be set as Wallpaper by right-clicking the image and selecting "Set as Wallpaper".

Also, see the "Desktop Wallpaper" and the "Prevent changing wallpaper" (in User Configuration\Administrative Templates\Control Panel\Display) settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow only bitmapped wallpaper*
-   GP name: *sz_DWP_NoHTMLPaper*
-   GP path: *Desktop\Desktop*
-   GP ADMX file name: *Desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)