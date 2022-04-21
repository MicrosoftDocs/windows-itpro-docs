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

<hr/>

<!--Policy-->
<a href="" id="remotedesktop-autosubscription"></a>**RemoteDesktop/AutoSubscription**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->

This policy allows administrators to enable automatic subscription for the Microsoft Remote Desktop client. If you define this policy, the specified URL is used by the client to silently subscribe the logged on user and retrieve the remote resources assigned to them. To automatically subscribe to Azure Virtual Desktop in the Azure Public cloud, set the URL to `https://rdweb.wvd.microsoft.com/api/arm/feeddiscovery`.

<!--/Description-->

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
This policy allows the user to load the DPAPI cred key from their user profile and decrypt any previously encrypted DPAPI data in the user profile or encrypt any new DPAPI data. This policy is needed when using FSLogix user profiles from Azure AD-joined VMs.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Disabled. 
- 1 - Enabled. 

<!--/SupportedValues-->

<!--/Policy-->

<hr/>


<!--/Policies-->
