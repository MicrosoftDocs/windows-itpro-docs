---
title: Policy CSP - ADMX_ControlPanel
description: Learn about the Policy CSP - ADMX_ControlPanel.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/05/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_ControlPanel

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_ControlPanel policies

<dl>
  <dd>
    <a href="#admx-controlpanel-disallowcpls">ADMX_ControlPanel/DisallowCpls</a>
  </dd>
  <dd>
    <a href="#admx-controlpanel-forceclassiccontrolpanel">ADMX_ControlPanel/ForceClassicControlPanel</a>
  </dd>
  <dd>
    <a href="#admx-controlpanel-nocontrolpanel">ADMX_ControlPanel/NoControlPanel</a>
  </dd>
  <dd>
    <a href="#admx-controlpanel-restrictcpls">ADMX_ControlPanel/RestrictCpls</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-controlpanel-disallowcpls"></a>**ADMX_ControlPanel/DisallowCpls**

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
This setting allows you to display or hide specified Control Panel items, such as Mouse, System, or Personalization, from the Control Panel window and the Start screen. The setting affects the Start screen and Control Panel window, as well as other ways to access Control Panel items, such as shortcuts in Help and Support or command lines that use control.exe. This policy has no effect on items displayed in PC settings.

If you enable this setting, you can select specific items not to display on the Control Panel window and the Start screen.

To hide a Control Panel item, enable this policy setting and click Show to access the list of disallowed Control Panel items. In the Show Contents dialog box in the Value column, enter the Control Panel item's canonical name. For example, enter Microsoft.Mouse, Microsoft.System, or Microsoft.Personalization.

> [!NOTE]
> For Windows Vista, Windows Server 2008, and earlier versions of Windows, the module name should be entered, for example timedate.cpl or inetcpl.cpl. If a Control Panel item does not have a CPL file, or the CPL file contains multiple applets, then its module name and string resource identification number should be entered, for example @systemcpl.dll,-1 for System, or @themecpl.dll,-1 for Personalization. A complete list of canonical and module names can be found in MSDN by searching "Control Panel items".

If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.

> [!NOTE]
> The Display Control Panel item cannot be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.
>
>To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide specified Control Panel items*
-   GP name: *DisallowCpls*
-   GP path: *Control Panel*
-   GP ADMX file name: *ControlPanel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpanel-forceclassiccontrolpanel"></a>**ADMX_ControlPanel/ForceClassicControlPanel**

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
This policy setting controls the default Control Panel view, whether by category or icons.

If this policy setting is enabled, the Control Panel opens to the icon view.

If this policy setting is disabled, the Control Panel opens to the category view.

If this policy setting isn't configured, the Control Panel opens to the view used in the last Control Panel session.

> [!NOTE]
> Icon size is dependent upon what the user has set it to in the previous session.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Always open All Control Panel Items when opening Control Panel*
-   GP name: *ForceClassicControlPanel*
-   GP path: *Control Panel*
-   GP ADMX file name: *ControlPanel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpanel-nocontrolpanel"></a>**ADMX_ControlPanel/NoControlPanel**

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
Available in the latest Windows 10 Insider Preview Build. Disables all Control Panel programs and the PC settings app.

This setting prevents Control.exe and SystemSettings.exe, the program files for Control Panel and PC settings, from starting. As a result, users can't start Control Panel or PC settings, or run any of their items.

This setting removes Control Panel from:

- The Start screen
- File Explorer

This setting removes PC settings from:

- The Start screen
- Settings charm
- Account picture
- Search results

If users try to select a Control Panel item from the Properties item on a context menu, a message appears explaining that a setting prevents the action.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit access to Control Panel and PC settings*
-   GP name: *NoControlPanel*
-   GP path: *Control Panel*
-   GP ADMX file name: *ControlPanel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpanel-restrictcpls"></a>**ADMX_ControlPanel/RestrictCpls**

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
This policy setting controls which Control Panel items such as Mouse, System, or Personalization, are displayed on the Control Panel window and the Start screen. The only items displayed in Control Panel are those items you specify in this setting. This setting affects the Start screen and Control Panel, as well as other ways to access Control Panel items such as shortcuts in Help and Support or command lines that use control.exe. This policy has no effect on items displayed in PC settings.

To display a Control Panel item, enable this policy setting and click Show to access the list of allowed Control Panel items. In the Show Contents dialog box in the Value column, enter the Control Panel item's canonical name. For example, enter Microsoft.Mouse, Microsoft.System, or Microsoft.Personalization.

> [!NOTE]
> For Windows Vista, Windows Server 2008, and earlier versions of Windows, the module name, for example timedate.cpl or inetcpl.cpl, should be entered. If a Control Panel item does not have a CPL file, or the CPL file contains multiple applets, then its module name and string resource identification number should be entered. For example, enter @systemcpl.dll,-1 for System or @themecpl.dll,-1 for Personalization. A complete list of canonical and module names of Control Panel items can be found in MSDN by searching "Control Panel items".

If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.

> [!NOTE]
> The Display Control Panel item cannot be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.
>
> To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Show only specified Control Panel items*
-   GP name: *RestrictCpls*
-   GP path: *Control Panel*
-   GP ADMX file name: *ControlPanel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)