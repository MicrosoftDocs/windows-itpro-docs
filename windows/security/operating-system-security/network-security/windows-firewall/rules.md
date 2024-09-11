---
title: Windows Firewall rules
description: Learn about Windows Firewall rules and design recommendations.
ms.date: 09/06/2024
ms.topic: concept-article
---

# Windows Firewall rules

In many cases, a first step for administrators is to customize the firewall profiles using *firewall rules*, so that they can work with applications or other types of software. For example, an administrator or user may choose to add a rule to accommodate a program, open a port or protocol, or allow a predefined type of traffic.

This article describes the concepts and recommendations for creating and managing firewall rules.

## Rule precedence for inbound rules

In many cases, allowing specific types of inbound traffic is required for applications to function in the network. Administrators should keep the following rule precedence behaviors in mind when configuring inbound exceptions:

1. Explicitly defined allow rules take precedence over the default block setting
1. Explicit block rules take precedence over any conflicting allow rules
1. More specific rules take precedence over less specific rules, except if there are explicit block rules as mentioned in 2. For example, if the parameters of rule 1 include an IP address range, while the parameters of rule 2 include a single IP host address, rule 2 takes precedence

Because of 1 and 2, when designing a set of policies you should make sure that there are no other explicit block rules that could inadvertently overlap, thus preventing the traffic flow you wish to allow.

> [!NOTE]
> Windows Firewall doesn't support weighted, administrator-assigned rule ordering. An effective policy set with expected behaviors can be created by keeping in mind the few, consistent, and logical rule behaviors as described.

## Applications rules

When first installed, network applications and services issue a *listen call* specifying the protocol/port information required for them to function properly. Since there's a default *block* action in Windows Firewall, you must create inbound exception rules to allow the traffic. It's common for the app or the app installer itself to add this firewall rule. Otherwise, the user (or firewall admin on behalf of the user) needs to manually create a rule.

:::row:::
  :::column span="2":::
    If there's no active application or administrator-defined allow rule(s), a dialog box prompts the user to either allow or block an application's packets the first time the app is launched or tries to communicate in the network:

    - If the user has admin permissions, they're prompted. If they respond *No* or cancel the prompt, block rules are created. Two rules are typically created, one each for TCP and UDP traffic
    - If the user isn't a local admin, they won't be prompted. In most cases, block rules are created

  :::column-end:::
  :::column span="2":::
    :::image type="content" source="images/uac.png" alt-text="Screenshot showing the User Account Control (UAC) prompt to allow Microsoft Teams." border="false":::
  :::column-end:::
:::row-end:::

In either of these scenarios, once the rules are added, they must be deleted to generate the prompt again. If not, the traffic continues to be blocked.

> [!NOTE]
> The firewall's default settings are designed for security. Allowing all inbound connections by default introduces the network to various threats. Therefore, creating exceptions for inbound connections from non-Microsoft software should be determined by trusted app developers, the user, or the admin on behalf of the user.

### WDAC tagging policies

Windows Firewall supports the use of Windows Defender Application Control (WDAC) Application ID (AppID) tags in firewall rules. With this capability, Windows Firewall rules can be scoped to an application or a group of applications by referencing process tags, without using absolute path or sacrificing security. There are two steps for this configuration:

1. Deploy *WDAC AppId tagging policies*: a Windows Defender Application Control policy must be deployed, which specifies individual applications or groups of applications to apply a *PolicyAppId tag* to the process token(s). Then, the admin can define firewall rules that are scoped to all processes tagged with the matching *PolicyAppId*. For more information, see the [WDAC AppId tagging guide](../../../application-security/application-control/windows-defender-application-control/AppIdTagging/wdac-appid-tagging-guide.md) to create, deploy, and test an AppID policy to tag applications.
1. Configure firewall rules using *PolicyAppId tags* using one of the two methods:
    - Using the [PolicyAppId node of the Firewall CSP](/windows/client-management/mdm/firewall-csp#mdmstorefirewallrulesfirewallrulenamepolicyappid) with an MDM solution like Microsoft Intune. If you use Microsoft Intune, you can deploy the rules from Microsoft Intune Admin center, under the path **Endpoint security** > **Firewall** > **Create policy** > **Windows 10, Windows 11, and Windows Server** > **Windows Firewall Rules**. When creating the rules, provide the *AppId tag* in the **Policy App ID** setting
    - Create local firewall rules with PowerShell: use the [`New-NetFirewallRule`](/powershell/module/netsecurity/new-netfirewallrule) cmdlet and specify the `-PolicyAppId` parameter. You can specify one tag at a time while creating firewall rules. Multiple User Ids are supported

## Local policy merge and application rules

*Rule merging* policy settings control how rules from different policy sources can be combined. Administrators can configure different merge behaviors for *Domain*, *Private*, and *Public profiles*.

The rule-merging policy settings either allow or prevent local administrators from creating their own firewall rules in addition to those rules obtained from CSP or GPO.

|  | Path |
|--|--|
| **CSP** | Domain Profile: `./Vendor/MSFT/Firewall/MdmStore/DomainProfile/`[AllowLocalPolicyMerge](/windows/client-management/mdm/firewall-csp#mdmstoredomainprofileallowlocalpolicymerge) <br> Private Profile`./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/`[AllowLocalPolicyMerge](/windows/client-management/mdm/firewall-csp#mdmstoreprivateprofileallowlocalpolicymerge) <br> Public Profile `./Vendor/MSFT/Firewall/MdmStore/PublicProfile/`[AllowLocalPolicyMerge](/windows/client-management/mdm/firewall-csp#mdmstorepublicprofileallowlocalipsecpolicymerge) |
| **GPO** | **Computer Configuration** > **Windows Settings** > **Security Settings** > **Windows Defender Firewall with Advanced Security**|

Administrators may disable *LocalPolicyMerge* in high-security environments to maintain tighter control over endpoints. This setting can impact some applications and services that automatically generate a local firewall policy upon installation.

> [!IMPORTANT]
> If merging of local policies is disabled, centralized deployment of rules is required for any app that needs inbound connectivity.

It's important to create and maintain a list of such apps, including the network ports used for communications. Typically, you can find what ports must be open for a given service on the app's website. For more complex deployments, a thorough analysis might be needed using network packet capture tools.

In general, to maintain maximum security, admins should only deploy firewall exceptions for apps and services determined to serve legitimate purposes.

> [!NOTE]
> The use of wildcard patterns, such as `C:\*\teams.exe` isn't supported in application rules. You can only create rules using the full path to the application(s).

## Firewall rules recommendations

Here's a list of recommendations when designing your firewall rules:

- Maintain the default Windows Firewall settings whenever possible. The settings are designed to secure your device for use in most network scenarios. One key example is the default *block behavior* for inbound connections.
- Create your rules in all three profiles, but only enable the firewall rule group on the profiles that suit your scenarios. For example, if you are installing a sharing application that is only used on a private network, then it would be best to create firewall rules in all three profiles, but only enable the firewall rule group containing your rules on the private profile.
- Configure restrictions on your firewall rules depending on which profile the rules are applied to. For applications and services that are designed to only be accessed by devices within a home or small business network, it's best to modify the remote address restriction to specify *Local Subnet* only. The same application or service wouldn't have this restriction when used in an enterprise environment. This can be done by adding the remote address restriction to rules that are added to the private and public profiles, while leaving them unrestricted in the domain profile. This remote address restriction shouldn't apply to applications or services that require global Internet connectivity.
- A general security recommended practice when creating inbound rules is to be as specific as possible. However, when new rules must be made that use ports or IP addresses, consider using consecutive ranges or subnets instead of individual addresses or ports where possible. This approach avoids creation of multiple filters under the hood, reduces complexity, and helps to avoid performance degradation.
- When creating an inbound or outbound rule, you should specify details about the app itself, the port range used, and important notes like creation date. Rules must be well-documented for ease of review both by you and other admins.
- To maintain maximum security, admins should only deploy firewall exceptions for apps and services determined to serve legitimate purposes.

### Known issues with automatic rule creation

When designing a set of firewall policies for your network, it's a recommended practice to configure *allow rules* for any networked applications deployed on the host. Having the rules in place before the user first launches the application helps to ensure a seamless experience.

The absence of these staged rules doesn't necessarily mean that in the end an application will be unable to communicate on the network. However, the behaviors involved in the automatic creation of application rules at runtime require user interaction and administrative privilege. If the device is expected to be used by non-administrative users, you should follow best practices and provide these rules before the application's first launch to avoid unexpected networking issues.

To determine why some applications are blocked from communicating in the network, check for the following instances:

1. A user with sufficient privileges receives a query notification advising them that the application needs to make a change to the firewall policy. Not fully understanding the prompt, the user cancels or dismisses the prompt
1. A user lacks sufficient privileges and is therefore not prompted to allow the application to make the appropriate policy changes
1. [Local policy merge](#local-policy-merge-and-application-rules) is disabled, preventing the application or network service from creating local rules

Creation of application rules at runtime can also be prohibited by administrators using the Settings app or policy settings.

### Outbound rules considerations

What follows are a few general guidelines for configuring outbound rules.

- Changing the outbound rules to *blocked* can be considered for certain highly secure environments. However, the inbound rule configuration should never be changed in a way that allows all traffic by default
- It's recommended to *allow outbound* by default for most deployments for the sake of simplification with app deployments, unless the organization prefers tight security controls over ease-of-use
- In high security environments, an inventory of all apps should be logged and maintained. Records must include whether an app used requires network connectivity. Administrators need to create new rules specific to each app that needs network connectivity and push those rules centrally, via GPO or CSP

## Next steps

> [!div class="nextstepaction"]
> Learn about the tools to configure Windows Firewall and firewall rules:
>
> [Configuration tools >](tools.md)
