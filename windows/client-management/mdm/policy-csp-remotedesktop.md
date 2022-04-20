---
title: Policy CSP - RemoteDesktop
description: Learn how the Policy CSP - RemoteDesktop setting allows you to specify a custom message to display.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - RemoteDesktop

<hr/>

<!--Policies-->
## RemoteDesktop policies  
> [!Warning]
> Some information relates to prerelease products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<dl>
  <dd>
    <a href="#remotedesktop-autosubscription">RemoteDesktop/AutoSubscription</a>
  </dd>
  <dd>
    <a href="#remotedesktop-loadaadcredkeyfromprofile">RemoteDesktop/LoadAadCredKeyFromProfile</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="remotedesktop-autosubscription"></a>**RemoteDesktop/AutoSubscription<**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy allows to set the default connection URL for Remote Desktop Application. If you define this policy the specified URL is configured as the default subscription URL to Azure Virtual Desktop work spaces. 

<!--/Description-->

<!--ADMXBacked-->

ADMX Info:  
-   GP Friendly name: *Customize warning messages*
-   GP name: *AutoSubscription*
-   GP path: *System/Remote Desktop*
-   GP ADMX file name: *remotedesktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotedesktop-loadaadcredkeyfromprofile"></a>**RemoteDesktop/LoadAadCredKeyFromProfile**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the user to load the DPAPI cred key from their user profile and decrypt any previously encrypted DPAPI data in the user profile or encrypt any new DPAPI data.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Disabled. 
- 1 - Enabled. 

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow DPAPI cred keys to be loaded from user profiles during logon for AADJ accounts*
-   GP name: *LoadAadCredKeyFromProfile*
-   GP path: *System/RemoteDesktop*
-   GP ADMX file name: *remotedesktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>


<!--/Policies-->
