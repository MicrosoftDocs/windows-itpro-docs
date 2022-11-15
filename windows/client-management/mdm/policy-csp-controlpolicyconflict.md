---
title: Policy CSP - ControlPolicyConflict
description: Use the Policy CSP - ControlPolicyConflict setting to control which policy is used whenever both the MDM policy and its equivalent Group Policy are set on the device.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ControlPolicyConflict



<hr/>

<!--Policies-->
## ControlPolicyConflict policies

<dl>
  <dd>
    <a href="#controlpolicyconflict-mdmwinsovergp">ControlPolicyConflict/MDMWinsOverGP</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="controlpolicyconflict-mdmwinsovergp"></a>**ControlPolicyConflict/MDMWinsOverGP**

> [!NOTE]
> This setting doesn't apply to the following types of group policies:
>
> - If they don't map to an MDM policy. For example, firewall policies and account lockout policies.
> - If they aren't defined by an ADMX. For example, Password policy - minimum password age.
> - If they're in the Windows Update category.
> - If they have list entries. For example, the Microsoft Edge CookiesAllowedForUrls policy.

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the IT admin to control which policy will be used whenever both the MDM policy and its equivalent Group Policy (GP) are set on the device.

> [!NOTE]
> MDMWinsOverGP only applies to policies in Policy CSP. MDM policies win over Group Policies where applicable; not all Group Policies are available via MDM or CSP. It does not apply to other MDM settings with equivalent GP settings that are defined in other CSPs.

This policy is used to ensure that MDM policy wins over GP when policy is configured on MDM channel.
The default value is 0. The MDM policies in Policy CSP will behave as described if this policy value is set 1.

> [!NOTE]
> This policy doesn't support the Delete command and doesn’t support setting the value to 0 again after it was previously set to 1. Windows 10 version 1809 will support using the Delete command to set the value to 0 again, if it was previously set to 1.

The following list shows the supported values:

- 0 (default)
- 1 - The MDM policy is used and the GP policy is blocked.

The policy should be set at every sync to ensure the device removes any settings that conflict with MDM just as it does on the very first set of the policy.
This ensures that:

-  GP settings that correspond to MDM applied settings aren't conflicting
-  The current Policy Manager policies are refreshed from what MDM has set
-  Any values set by scripts/user outside of GP that conflict with MDM are removed

The [Policy DDF](policy-ddf-file.md) contains the following tags to identify the policies with equivalent GP:

-  \<MSFT:ADMXBacked\>
-  \<MSFT:ADMXMapped\>
-  \<MSFT:GPRegistryMappedName\>
-  \<MSFT:GPDBMappedName\>

For the list MDM-GP mapping list, see [Policies in Policy CSP supported by Group Policy
](./policies-in-policy-csp-supported-by-group-policy.md).

The MDM Diagnostic report shows the applied configurations states of a device including policies, certificates, configuration sources, and resource information. The report includes a list of blocked GP settings because MDM equivalent is configured, if any. To get the diagnostic report, go to **Settings** > **Accounts** > **Access work or school** > and then click the desired work or school account. Scroll to the bottom of the page to **Advanced Diagnostic Report** and then click **Create Report**.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default)
- 1 - The MDM policy is used and the GP policy is blocked.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>



<!--/Policies-->
