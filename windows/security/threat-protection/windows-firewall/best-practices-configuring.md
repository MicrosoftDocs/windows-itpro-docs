---
title: Best practices for configuring Windows Defender Firewall
description: Learn about best practices for configuring Windows Defender Firewall
ms.prod: windows-client
ms.date: 11/09/2022
ms.collection: 
  - highpri
  - tier3
ms.topic: article
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Best practices for configuring Windows Defender Firewall

Windows Defender Firewall with Advanced Security provides host-based, two-way
network traffic filtering and blocks unauthorized network traffic flowing into
or out of the local device. Configuring your Windows Firewall based on the
following best practices can help you optimize protection for devices in your
network. These recommendations cover a wide range of deployments including home
networks and enterprise desktop/server systems.

To open Windows Firewall, go to the **Start** menu, select **Run**,
type **WF.msc**, and then select **OK**. See also [Open Windows Firewall](./open-windows-firewall-with-advanced-security.md).

## Keep default settings

When you open the Windows Defender Firewall for the first time, you can see the default settings applicable to the local computer. The Overview panel displays security settings for each type of network to which the device can connect.

![Windows Defender Firewall with Advanced Security first time opening.](images/fw01-profiles.png)

*Figure 1: Windows Defender Firewall*

1. **Domain profile**: Used for networks where there's a system of account authentication against an Active Directory domain controller
1. **Private profile**: Designed for and best used in private networks such as a home network
1. **Public profile**: Designed with higher security in mind for public networks, like Wi-Fi hotspots, coffee shops, airports, hotels, or stores

View detailed settings for each profile by right-clicking the top-level **Windows Defender Firewall with Advanced Security** node in the left pane and then selecting **Properties**.

Maintain the default settings in Windows Defender
Firewall whenever possible. These settings have been designed to secure your device for use in most network scenarios. One key example is the default Block behavior for Inbound connections.

![A screenshot of a cell phone Description automatically generated.](images/fw03-defaults.png)

*Figure 2: Default inbound/outbound settings*

> [!IMPORTANT]
> To maintain maximum security, do not change the default Block setting for inbound connections.

For more on configuring basic firewall settings, see [Turn on Windows Firewall and Configure Default Behavior](./turn-on-windows-firewall-and-configure-default-behavior.md) and [Checklist: Configuring Basic Firewall Settings](./checklist-configuring-basic-firewall-settings.md).

## Understand rule precedence for inbound rules

In many cases, a next step for administrators will be to customize these profiles using rules (sometimes called filters) so that they can work with user apps or other types of software. For example, an administrator or user may choose to add a rule to accommodate a program, open a port or protocol, or allow a predefined type of traffic.

This rule-adding task can be accomplished by right-clicking either **Inbound Rules** or **Outbound Rules**, and selecting **New Rule**. The interface for adding a new rule looks like this:

![Rule creation wizard.](images/fw02-createrule.png)

*Figure 3: Rule Creation Wizard*

> [!NOTE]
>This article does not cover step-by-step rule configuration. See the [Windows Firewall with Advanced Security Deployment Guide](./windows-firewall-with-advanced-security-deployment-guide.md) for general guidance on policy creation.

In many cases, allowing specific types of inbound traffic will be required for applications to function in the network. Administrators should keep the following rule precedence behaviors in mind when allowing these inbound exceptions.

1. Explicitly defined allow rules will take precedence over the default block setting.
1. Explicit block rules will take precedence over any conflicting allow rules.
1. More specific rules will take precedence over less specific rules, except if there are explicit block rules as mentioned in 2. (For example, if the parameters of rule 1 include an IP address range, while the parameters of rule 2 include a single IP host address, rule 2 will take precedence.)

Because of 1 and 2, it's important that, when designing a set of policies, you make sure that there are no other explicit block rules in place that could inadvertently overlap, thus preventing the traffic flow you wish to allow.

A general security best practice when creating inbound rules is to be as specific as possible. However, when new rules must be made that use ports or IP addresses, consider using consecutive ranges or subnets instead of individual addresses or ports where possible. This approach avoids creation of multiple filters under the hood, reduces complexity, and helps to avoid performance degradation.

> [!NOTE]
> Windows Defender Firewall does not support traditional weighted, administrator-assigned rule ordering. An effective policy set with expected behaviors can be created by keeping in mind the few, consistent, and logical rule behaviors described above.

## Create rules for new applications before first launch

### Inbound allow rules

When first installed, networked applications and services issue a listen call specifying the protocol/port information required for them to function properly. As there's a default block action in Windows Defender Firewall, it's necessary to create inbound exception rules to allow this traffic. It's common for the app or the app installer itself to add this firewall rule. Otherwise, the user (or firewall admin on behalf of the user) needs to manually create a rule.

If there's no active application or administrator-defined allow rule(s), a dialog box will prompt the user to either allow or block an application's packets the first time the app is launched or tries to communicate in the network.

- If the user has admin permissions, they'll be prompted. If they respond *No* or cancel the prompt, block rules will be created. Two rules are typically created, one each for TCP and UDP traffic.

- If the user isn't a local admin, they won't be prompted. In most cases, block rules will be created.

In either of the scenarios above, once these rules are added they must be deleted in order to generate the prompt again. If not, the traffic will continue to be blocked.

> [!NOTE]
> The firewall's default settings are designed for security. Allowing all inbound connections by default introduces the network to various threats. Therefore, creating exceptions for inbound connections from third-party software should be determined by trusted app developers, the user, or the admin on behalf of the user. 

### Known issues with automatic rule creation

When designing a set of firewall policies for your network, it's a best practice to configure allow rules for any networked applications deployed on the host. Having these rules in place before the user first launches the application will help ensure a seamless experience.

The absence of these staged rules doesn't necessarily mean that in the end an application will be unable to communicate on the network. However, the behaviors involved in the automatic creation of application rules at runtime require user interaction and administrative privilege. If the device is expected to be used by non-administrative users, you should follow best practices and provide these rules before the application's first launch to avoid unexpected networking issues.

To determine why some applications are blocked from communicating in the network, check for the following instances:

1. A user with sufficient privileges receives a query notification advising them that the application needs to make a change to the firewall policy. Not fully understanding the prompt, the user cancels or dismisses the prompt.
1. A user lacks sufficient privileges and is therefore not prompted to allow the application to make the appropriate policy changes.
1. Local Policy Merge is disabled, preventing the application or network service from creating local rules.

Creation of application rules at runtime can also be prohibited by administrators using the Settings app or Group Policy.

![Windows Firewall prompt.](images/fw04-userquery.png)

*Figure 4: Dialog box to allow access*

See also [Checklist: Creating Inbound Firewall Rules](./checklist-creating-inbound-firewall-rules.md).

## Establish local policy merge and application rules

Firewall rules can be deployed:

1. Locally using the Firewall snap-in (**WF.msc**)
1. Locally using PowerShell 
1. Remotely using Group Policy if the device is a member of an Active Directory Name, System  Center Configuration Manager, or Intune (using workplace join)

Rule merging settings control how rules from different policy sources can be combined. Administrators can configure different merge behaviors for Domain, Private, and Public profiles.

The rule-merging settings either allow or prevent local administrators from creating their own firewall rules in addition to those rules obtained from Group Policy.

![Customize settings.](images/fw05-rulemerge.png)

*Figure 5: Rule merging setting*

> [!TIP]
> In the firewall [configuration service provider](/windows/client-management/mdm/firewall-csp), the equivalent setting is *AllowLocalPolicyMerge*. This setting can be found under each respective profile node, *DomainProfile*, *PrivateProfile*, and *PublicProfile*.

If merging of local policies is disabled, centralized deployment of rules is required for any app that needs inbound connectivity.

Administrators may disable *LocalPolicyMerge* in high-security environments to maintain tighter control over endpoints. This setting can impact some applications and services that automatically generate a local firewall policy upon installation as discussed above. For these types of apps and services to work, admins should push rules centrally via group policy (GP), Mobile Device
Management (MDM), or both (for hybrid or co-management environments).

[Firewall CSP](/windows/client-management/mdm/firewall-csp) and [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider) also have settings that can affect rule merging.

As a best practice, it's important to list and log such apps, including the network ports used for communications. Typically, you can find what ports must be open for a given service on the app's website. For more complex or customer application deployments, a more thorough analysis may be needed using network packet capture tools.

In general, to maintain maximum security, admins should only push firewall exceptions for apps and services determined to serve legitimate purposes.

> [!NOTE]
> The use of wildcard patterns, such as *C:\*\\teams.exe* is not supported in application rules. We currently only support rules created using the full path to the application(s).

## Know how to use "shields up" mode for active attacks

An important firewall feature you can use to mitigate damage during an active attack is the "shields up" mode. It's an informal term referring to an easy method a firewall administrator can use to temporarily increase security in the face of an active attack.

Shields up can be achieved by checking **Block all
incoming connections, including those in the list of allowed apps** setting found in either the Windows Settings app or the legacy file *firewall.cpl*.

![Incoming connections.](images/fw06-block.png)

*Figure 6: Windows settings App/Windows Security/Firewall Protection/Network Type*

![Firewall cpl.](images/fw07-legacy.png)

*Figure 7: Legacy firewall.cpl*

By default, the Windows Defender Firewall will block everything unless there's an exception rule created. This setting overrides the exceptions. 

For example, the Remote Desktop feature automatically creates firewall rules when enabled. However, if there's an active exploit using multiple ports and services on a host, you can, instead of disabling individual rules, use the shields up mode to block all inbound connections, overriding previous exceptions, including the rules for Remote Desktop. The Remote Desktop rules remain intact but remote access won't work as long as shields up is activated.

Once the emergency is over, uncheck the setting to restore regular network traffic.

## Create outbound rules

What follows are a few general guidelines for configuring outbound rules.

- The default configuration of Blocked for Outbound rules can be considered for certain highly secure environments. However, the Inbound rule configuration should never be changed in a way that Allows traffic by default
- It's recommended to Allow Outbound by default for most deployments for the sake of simplification around app deployments, unless the enterprise prefers tight security controls over ease-of-use
- In high security environments, an inventory of all enterprise-spanning apps must be taken and logged by the administrator or administrators. Records must include whether an app used requires network connectivity. Administrators will need to create new rules specific to each app that needs network connectivity and push those rules centrally, via group policy (GP), Mobile Device Management (MDM), or both (for hybrid or co-management environments)

For tasks related to creating outbound rules, see [Checklist: Creating Outbound Firewall Rules](./checklist-creating-outbound-firewall-rules.md).

## Document your changes

When creating an inbound or outbound rule, you should specify details about the app itself, the port range used, and important notes like creation date. Rules must be well-documented for ease of review both by you and other admins. We highly encourage taking the time to make the work of reviewing your firewall rules at a later date easier. And *never* create unnecessary holes in your firewall.
