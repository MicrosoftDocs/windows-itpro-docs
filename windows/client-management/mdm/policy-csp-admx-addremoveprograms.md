---
title: Policy CSP - ADMX_AddRemovePrograms
description: Policy CSP - ADMX_AddRemovePrograms 
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 08/13/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_AddRemovePrograms

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## Policy CSP - ADMX_AddRemovePrograms  

<dl>
  <dd>
    <a href="#admx-addremoveprograms-defaultcategory">ADMX_AddRemovePrograms/DefaultCategory</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noaddfromcdorfloppy">ADMX_AddRemovePrograms/NoAddFromCDorFloppy</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noaddfrominternet">ADMX_AddRemovePrograms/NoAddFromInternet</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noaddfromnetwork">ADMX_AddRemovePrograms/NoAddFromNetwork</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noaddpage">ADMX_AddRemovePrograms/NoAddPage</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noaddremoveprograms">ADMX_AddRemovePrograms/NoAddRemovePrograms</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-nochooseprogramspage">ADMX_AddRemovePrograms/NoChooseProgramsPage</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noremovepage">ADMX_AddRemovePrograms/NoRemovePage</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-noservices">ADMX_AddRemovePrograms/NoServices</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-nosupportinfo">ADMX_AddRemovePrograms/NoSupportInfo</a>
  </dd>
  <dd>
    <a href="#admx-addremoveprograms-nowindowssetuppage">ADMX_AddRemovePrograms/NoWindowsSetupPage</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-defaultcategory"></a>**ADMX_AddRemovePrograms/DefaultCategory**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. The policy setting specifies the category of programs that appears when users open the "Add New Programs" page. If you enable this setting, only the programs in the category you specify are displayed when the "Add New Programs" page opens. You can use the Category box on the "Add New Programs" page to display programs in other categories. 

To use this setting, type the name of a category in the Category box for this setting. You must enter a category that is already defined in Add or Remove Programs. To define a category, use Software Installation.

If you disable this setting or do not configure it, all programs (Category: All) are displayed when the "Add New Programs" page opens. You can use this setting to direct users to the programs they are most likely to need. 

> [!NOTE]
> This setting is ignored if either the "Remove Add or Remove Programs" setting or the "Hide Add New Programs page" setting is enabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Specify default category for Add New Programs*
- GP name: *DefaultCategory*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noaddfromcdorfloppy"></a>**ADMX_AddRemovePrograms/NoAddFromCDorFloppy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes the "Add a program from CD-ROM or floppy disk" section from the Add New Programs page. This prevents users from using Add or Remove Programs to install programs from removable media.

If you disable this setting or do not configure it, the "Add a program from CD-ROM or floppy disk" option is available to all users. This setting does not prevent users from using other tools and methods to add or remove program components.

> [!NOTE]
> If the "Hide Add New Programs page" setting is enabled, this setting is ignored. Also, if the "Prevent removable media source for any install" setting (located in User Configuration\Administrative Templates\Windows Components\Windows Installer) is enabled, users cannot add programs from removable media, regardless of this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide the "Add a program from CD-ROM or floppy disk" option*
- GP name: *NoAddFromCDorFloppy*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noaddfrominternet"></a>**ADMX_AddRemovePrograms/NoAddFromInternet**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes the "Add programs from Microsoft" section from the Add New Programs page. This setting prevents users from using Add or Remove Programs to connect to Windows Update.

If you disable this setting or do not configure it, "Add programs from Microsoft" is available to all users. This setting does not prevent users from using other tools and methods to connect to Windows Update.

> [!NOTE]
> If the "Hide Add New Programs page" setting is enabled, this setting is ignored.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide the "Add programs from Microsoft" option*
- GP name: *NoAddFromInternet*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noaddfromnetwork"></a>**ADMX_AddRemovePrograms/NoAddFromNetwork**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from viewing or installing published programs. This setting removes the "Add programs from your network" section from the Add New Programs page. The "Add programs from your network" section lists published programs and provides an easy way to install them. Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer. Typically, system administrators publish programs to notify users that the programs are available, to recommend their use, or to enable users to install them without having to search for installation files. 

If you enable this setting, users cannot tell which programs have been published by the system administrator, and they cannot use Add or Remove Programs to install published programs. However, they can still install programs by using other methods, and they can view and install assigned (partially installed) programs that are offered on the desktop or on the Start menu. 

If you disable this setting or do not configure it, "Add programs from your network" is available to all users.

> [!NOTE]
> If the "Hide Add New Programs page" setting is enabled, this setting is ignored.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide the "Add programs from your network" option*
- GP name: *NoAddFromNetwork*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noaddpage"></a>**ADMX_AddRemovePrograms/NoAddPage**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes the Add New Programs button from the Add or Remove Programs bar. As a result, users cannot view or change the attached page. The Add New Programs button lets users install programs published or assigned by a system administrator.

If you disable this setting or do not configure it, the Add New Programs button is available to all users. This setting does not prevent users from using other tools and methods to install programs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide Add New Programs page*
- GP name: *NoAddPage*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noaddremoveprograms"></a>**ADMX_AddRemovePrograms/NoAddRemovePrograms**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from using Add or Remove Programs. This setting removes Add or Remove Programs from Control Panel and removes the Add or Remove Programs item from menus. Add or Remove Programs lets users install, uninstall, repair, add, and remove features and components of Windows 2000 Professional and a wide variety of Windows programs. Programs published or assigned to the user appear in Add or Remove Programs. 

If you disable this setting or do not configure it, Add or Remove Programs is available to all users. When enabled, this setting takes precedence over the other settings in this folder. This setting does not prevent users from using other tools and methods to install or uninstall programs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Remove Add or Remove Programs*
- GP name: *NoAddRemovePrograms*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-nochooseprogramspage"></a>**ADMX_AddRemovePrograms/NoChooseProgramsPage**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes the Set Program Access and Defaults button from the Add or Remove Programs bar. As a result, users cannot view or change the associated page. The Set Program Access and Defaults button lets administrators specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations. 

If you disable this setting or do not configure it, the Set Program Access and Defaults button is available to all users. This setting does not prevent users from using other tools and methods to change program access or defaults. This setting does not prevent the Set Program Access and Defaults icon from appearing on the Start menu. See the "Remove Set Program Access and Defaults from Start menu" setting.


<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide the Set Program Access and Defaults page*
- GP name: *NoChooseProgramsPage*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noremovepage"></a>**ADMX_AddRemovePrograms/NoRemovePage**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes the Change or Remove Programs button from the Add or Remove Programs bar. As a result, users cannot view or change the attached page. The Change or Remove Programs button lets users uninstall, repair, add, or remove features of installed programs.

If you disable this setting or do not configure it, the Change or Remove Programs page is available to all users. This setting does not prevent users from using other tools and methods to delete or uninstall programs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide Change or Remove Programs page*
- GP name: *NoRemovePage*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-noservices"></a>**ADMX_AddRemovePrograms/NoServices**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from using Add or Remove Programs to configure installed services. This setting removes the "Set up services" section of the Add/Remove Windows Components page. The "Set up services" section lists system services that have not been configured and offers users easy access to the configuration tools.

If you disable this setting or do not configure it, "Set up services" appears only when there are unconfigured system services. If you enable this setting, "Set up services" never appears. This setting does not prevent users from using other methods to configure services.

> [!NOTE]
> When "Set up services" does not appear, clicking the Add/Remove Windows Components button starts the Windows Component Wizard immediately. Because the only remaining option on the Add/Remove Windows Components page starts the wizard, that option is selected automatically, and the page is bypassed. To remove "Set up services" and prevent the Windows Component Wizard from starting, enable the "Hide Add/Remove Windows Components page" setting. If the "Hide Add/Remove Windows Components page" setting is enabled, this setting is ignored.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Go directly to Components Wizard*
- GP name: *NoServices*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-nosupportinfo"></a>**ADMX_AddRemovePrograms/NoSupportInfo**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes links to the Support Info dialog box from programs on the Change or Remove Programs page. Programs listed on the Change or Remove Programs page can include a "Click here for support information" hyperlink. When clicked, the hyperlink opens a dialog box that displays troubleshooting information, including a link to the installation files and data that users need to obtain product support, such as the Product ID and version number of the program. The dialog box also includes a hyperlink to support information on the Internet, such as the Microsoft Product Support Services Web page.

If you disable this setting or do not configure it, the Support Info hyperlink appears.

> [!NOTE]
> Not all programs provide a support information hyperlink.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Remove Support Information*
- GP name: *NoSupportInfo*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-addremoveprograms-nowindowssetuppage"></a>**ADMX_AddRemovePrograms/NoWindowsSetupPage**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

Available in the latest Windows 10 Insider Preview Build. This policy setting removes the Add/Remove Windows Components button from the Add or Remove Programs bar. As a result, users cannot view or change the associated page. The Add/Remove Windows Components button lets users configure installed services and use the Windows Component Wizard to add, remove, and configure components of Windows from the installation files.

If you disable this setting or do not configure it, the Add/Remove Windows Components button is available to all users. This setting does not prevent users from using other tools and methods to configure services or add or remove program components. However, this setting blocks user access to the Windows Component Wizard.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
- GP English name: *Hide Add/Remove Windows Components page*
- GP name: *NoWindowsSetupPage*
- GP path: *Control Panel/Add or Remove Programs*
- GP ADMX file name: *addremoveprograms.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

