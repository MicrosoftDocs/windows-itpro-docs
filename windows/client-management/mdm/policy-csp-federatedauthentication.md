---
title: Policy CSP - FederatedAuthentication
description: Use the Policy CSP - Represents the enablement state of the Web Sign-in Credential Provider for device sign-in.
ms.author: v-nsatapathy
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.localizationpriority: medium
ms.date: 09/07/2022
ms.reviewer: 
manager: dansimp
---

# Policy CSP - FederatedAuthentication


<hr/>

<!--Policies-->
## FederatedAuthentication policies  

<dl>
  <dd>
    <a href="#federatedauthentication-enablewebsigninforprimaryuser">FederatedAuthentication/EnableWebSignInForPrimaryUser</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="federatedauthentication-enablewebsigninforprimaryuser"></a>**FederatedAuthentication/EnableWebSignInForPrimaryUser**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|No|No|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether Web Sign-in can be used for device sign-in in a single-user environment.​

> [!NOTE]
> Web Sign-in is only supported on Azure AD Joined PCs.

<!--/Description-->

<!--SupportedValues-->
Value type is integer:  
- 0 - (default): Feature defaults as appropriate for edition and device capabilities.
- 1 - Enabled: Web Sign-in Credential Provider will be enabled for device sign-in
- 2 - Disabled: Web Sign-in Credential Provider will not be enabled for device sign-in

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Represents the enablement state of the Web Sign-in Credential Provider for device sign-in*
-   GP name: *EnableWebSignInForPrimaryUser*
-   GP path: *OS\Core\ENS\OS Security\Authentication Platform\Password-Less*
-   GP ADMX file name: *FederatedAuthentication.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

