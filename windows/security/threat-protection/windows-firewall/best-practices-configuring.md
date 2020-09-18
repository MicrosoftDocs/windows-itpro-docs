---
title: Best practices for configuring Windows Defender Firewall
description: Learn about best practices for configuring Windows Defender Firewall
keywords: firewall, best practices
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: maccruz
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 01/22/2020
---

# Best practices for configuring Windows Defender Firewall

**Applies to**

-   Windows Operating Systems including Windows 10

-   Windows Server Operating Systems

Windows Defender Firewall with Advanced Security provides host-based, two-way
network traffic filtering and blocks unauthorized network traffic flowing into
or out of the local device. Configuring your Windows Firewall based on the
following best practices can help you optimize protection for devices in your
network. These recommendations cover a wide range of deployments including home
networks and enterprise desktop/server systems.

To open Windows Firewall, go to the **Start** menu, click **Run**,
type **WF.msc**, and then click **OK**.

## Understanding default settings

When you open the Windows Defender Firewall for the first time, you can see the
default settings applicable to the local computer. The Overview panel displays
security settings for each type of network the device can connect to.

![A screenshot of a social media post Description automatically generated](images/fw01-profiles.png)

**Figure 1: Windows Defender Firewall**

1.  **Domain profile**: Security settings in this profile are designed for a
    network where there is a system of account authentication against a domain
    controller (DC), such as an Azure Active Directory DC.

2.  **Private profile**: This profile’s settings are designed for and best used
    in private networks such as a home network.

3.  **Public profile**: This profile is designed with higher security in mind
    for public networks like Wi-Fi hotspots, coffee shops, airports, hotels, and
    stores.

You can view detailed settings for each profile by right-clicking (or selecting
and holding) the top-level **Windows Defender Firewall with Advanced Security**
node in the left pane and then selecting **Properties**.

**Best practice:** You should maintain the default settings shipped with the Windows Defender
Firewall whenever possible. These settings have been designed to safeguard your
computer for use in most common network scenarios.

One key example is the default Block behavior for Inbound connections (shown
below). In order to maintain maximum security, changing this setting is highly
discouraged.

## Creating new rules

In many cases, a next step for administrators will be to customize these
profiles so that they can work with user apps or other types of software. For
example, an administrator or user may choose to add a rule to accommodate a
program, open a port or protocol, or allow a predefined type of traffic.

This can be accomplished by selecting either **Inbound Rules** or **Outbound
Rules** and right clicking to select **New Rule**. The interface for adding a
new rule looks like this:

![A screenshot of a computer Description automatically generated](images/fw02-createrule.png)

**Figure 2: Rule Creation Wizard**

NOTE – It is not the purpose of this document to cover the step-by-step of rule
configuration. See the [Windows Firewall with Advanced Security Deployment
Guide](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-deployment-guide)
for general guidance on policy creation.

The remainder of this articles deals with best practices when creating these
rules.

![A screenshot of a cell phone Description automatically generated](images/fw03-defaults.png)

**Figure 3: Default Inbound/Outbound connection behavior**

### Creating inbound rules

In many cases, allowing specific types of inbound traffic will be required for
applications to function on the network.

Administrators should keep the following rule precedence behaviors in mind when
allowing these inbound exceptions.

1.  Explicitly defined allow rules will take precedence over the default Block
    setting.

2.  Explicit block rules will take precedence over any conflicting explicating
    allow rules.

3.  More specific rules will take precedence over less specific rules, except in
    the case of explicit block rules as mentioned in 2. (For example, if the
    parameters of rule 1 includes an IP address range, while the parameters of
    rule 2 include a single IP host address; rule 2 will take precedence.)

Because of 1 and 2, it is important that, when designing a set of policies, you
make sure that there are no other active block rules in place that could
inadvertently overlap, thus preventing the traffic flow you wish to allow.

**Best practice:** That said, general security best practice dictates that a
rule should be as specific as possible. However, when new rules must be made
that use ports or IP addresses, consider using consecutive ranges or subnets
instead of individual addresses or ports where possible. This avoids creation of
multiple filters under the hood, thus reducing complexity and helping to avoid
performance degradation.

### **NOTE:** 

The Windows Defender Firewall does not support rule ordering in the traditional
sense whereby a weighting value is administratively assigned to a rule to
determine its order of precedence. That said, an effective policy set with
expected behaviors can be created by keeping in mind the few consistent and
logical rule behaviors described above.

### Understanding user query behaviors

When designing a set of firewall policies for your network, it is a best
practice to configure allow rules for any networked applications deployed on the
host. Having these rules in place before the user first launches the application
will help ensure a seamless experience.

The absence of these staged rules does not necessarily mean that in the end an
application will be unable to communicate on the network. However, the behaviors
involved in the automatic creation of application rules at runtime can sometimes
be problematic due to the need for user interaction. The source of confusion
around this process can typically be boiled down to a few primary causes:

1.  A user with sufficient privileges receives a query notification advising
    them that the application needs to make a change to the firewall policy. Not
    fully understanding the meaning of the prompt, the user then cancels or
    otherwise dismisses the prompt.

2.  A user lacking sufficient privileges and is therefore not prompted to allow
    the application to make the appropriate policy changes.

3.  Local Policy Merge is disabled, preventing the application or network
    service from plumbing local rules.

![A screenshot of a cell phone Description automatically generated](images/fw04-userquery.png)

**Figure 4: User Query Notification**

### Additional Background

When first installed, networked applications and services issue a ‘listen call’
specifying the protocol/port information required for them to function properly.
As there is a default block action in place on the Windows Defender Firewall, it
is necessary to create inbound exception rules to allow this traffic. In such a
scenario it is common for the app or the app-installer itself to add this
firewall rule. Failing that, the responsibility falls to the user (or firewall
admin on behalf of the user) to manually create them.

Assuming there are no active application or administratively defined allow
rule(s) already present to allow the traffic, creation will have to be dealt
with the first time the application is launched or otherwise tries to
communicate on the network. In such a case a query popup will be triggered
prompting the user to either allow or block the packets.

-   If the user has admin level permissions, they will be prompted. If they
    respond ‘no’ or otherwise cancel the prompt, block rules will be created
    (typically two; one for TCP traffic and one for UDP traffic).

-   If the user is not a local admin they will not be prompted and, in most
    cases, block rules will be created.

In either of the scenarios above, once these rules are added they must be
deleted in order to generate the prompt again. If not, the traffic will continue
to be blocked.

As regards third-party software. Microsoft cannot know in advance [and should
not even assume] whether we should let all packets for the application just come
into the machine. Hence, it is up to the developer of the app, the user (or the
admin acting on behalf of the user) to allow appropriate inbound firewall
exceptions.

### Local Policy Merge and Application Rules

Firewall rules can be deployed locally using the Firewall snap-in (wf.msc) or
PowerShell, or remotely using Group Policy (if member of an Active Directory
Name, SCCM, or Intune (if Workplace joined). Rule merging settings can be used
to control how rules from these two policy sources can be combined.
Administrators can configure different merge behaviors for Domain, Private, and
Public profiles.

The setting is used if you want to allow/disallow local administrators the
ability to create their own firewall rules in addition to those obtained from
Group Policy.

![A screenshot of a cell phone Description automatically generated](images/fw05-rulemerge.png)

**Figure 5: Rule Merge Setting**

The equivalent setting *AllowLocalPolicyMerge* is used when configuring the
firewall using the Firewall CSP and is exposed under each respective profile
node, DomainProfile, PrivateProfile, PublicProfile.

In a case where the merging of local policies is disabled, centralized
deployment of rules will be required for any app that needs inbound
connectivity.

Admins may disable LocalPolicyMerge in high security environments to maintain
tighter control over their device endpoints. This can impact some apps and
services that automatically generate a local firewall policy upon installation
as discussed above. For these types of apps and services to work network
administrators should push rules centrally via group policy (GP), Mobile Device
Management (MDM), or both (for hybrid or co-management environments).

As a best practice, it is important that to list and log such apps, including
the network ports used for communications. Typically, you can find what ports
must be open for a given service on the vendor’s website. For more complex or
customer application deployments however, a more thorough analysis may need to
be made using network packet capture tools. In any event, to maintain maximum
security administrators should only push firewall exceptions for apps and
services determined to serve legitimate purposes.

NOTE: Currently the use of wildcard patterns, such as C:\*\\teams.exe is not
supported in application rules. Currently we only support created using the full
path to an application(s).

### **Shields Up Mode**

A discussion of inbound connections presents a good time to discuss a firewall
option that can be used to help mitigate damage in the face of an active attack.

‘Shields Up Mode’ is an informal term referring to an easy method a firewall
administrator can use to achieve a temporarily heightened state of security in
the face of an active attack. It can be achieved by checking the ‘Block all
incoming connections, including those in the list of allowed apps’ setting
exposed in either the Windows Setting App or the legacy firewall.cpl.

![A picture containing flower, bird Description automatically generated](images/fw06-block.png)

**Figure 6: Windows Settings App/ Windows Security / Firewall Protection /
Network Type**

![A screenshot of a cell phone Description automatically generated](images/fw07-legacy.png)

**Figure 7: Legacy firewall.cpl**

By default, the Windows Defender Firewall will block everything unless there is
an exception rule created. Consider an example involving Remote Desktop. If
Remote Desktop is enabled, but no firewall rules were plumbed, then you cannot
RDP to that machine. This is why the Remote Desktop feature automatically plumbs
the filters when the feature is enabled. With the policy plumbed, RDP works!

Now let us say there is an exploit that is attacking multiple ports and services
on a host. Rather than disable each individual rule, the ‘Block all incoming
connections…’ check box can be used block ALL inbound connections regardless of
these exceptions. In this case, the RDP rules are still present, however RDP
will not work because those rules are being overridden by the block EVERYTHING
nature of the setting.

One the emergency is over, uncheck the setting to resume normal operations.

### Creating outbound rules

What follows are a few general guidelines for configuring outbound filters.

-   The default configuration of Blocked for Outbound rules should and may be
    considered for certain highly secure environments; however, the Inbound rule
    configuration should never be changed in a way that Allows traffic by
    default.

-   It is recommended to Allow Outbound by default for most deployments for the
    sake of simplification around app deployments, and unless the enterprise is
    one that must have tight security controls.

    -   In high security environments, an inventory of all enterprise-spanning
        apps must be taken and logged by the administrator or administrators.
        Records must include whether an app used requires network connectivity.
        Administrators will need to create new rules specific to each app that
        needs network connectivity and push those rules centrally, via group
        policy (GP), Mobile Device Management (MDM), or both (for hybrid or
        co-management environments).

## Document Your Changes

When creating an Inbound or Outbound rule, you should specify details about the
app itself, the port range used, and important notes like the date of creation.
The goal of creating any new rule is for it to be tightly secured and explicitly
documented so that its existence is easily grasped by new administrators, or
existing administrators who may not revisit the rule for a quarter year or more.
Take pains to make the work of reviewing your firewall rules at a later date
easier. And *never* create unnecessary holes in your firewall.
