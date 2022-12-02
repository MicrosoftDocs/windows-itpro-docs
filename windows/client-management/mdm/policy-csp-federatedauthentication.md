---
title: Policy CSP - FederatedAuthentication
description: Use the Policy CSP - Represents the enablement state of the Web Sign-in Credential Provider for device sign-in.
ms.author: v-nsatapathy
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
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
|Education|No|No|
|Windows SE|Yes|No|

> [!NOTE]
> Only available on Windows SE edition when Education/IsEducationEnvironment policy is also set to "1".


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
- 1 - Enabled: Web Sign-in Credential Provider will be enabled for device sign-in.
- 2 - Disabled: Web Sign-in Credential Provider won't be enabled for device sign-in.

<!--/SupportedValues-->

<!--/Policy-->

<!--/Policies-->

