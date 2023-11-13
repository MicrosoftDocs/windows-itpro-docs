---
title: Configure Firewall rules 
description: Learn how to configure Windows Firewall rules with group policy.
ms.topic: conceptual
ms.date: 09/07/2021
---

# Configure Firewall rules

This article contains examples how to configure Windows Firewall rules using group policy. The examples are based on the *Windows Firewall with Advanced Security* Group Policy Management MMC snap-in.

> [!NOTE]
> To complete these procedures, you must be a member of the Domain Administrators group, or otherwise have delegated permissions to modify the GPOs in the Active Directory domain.
>
> To configure a device using the Local Group Policy editor, you must have administrative rights on the device.

## Create an inbound ICMP rule

This type of rule allows ICMP requests and responses to be received by devices on the network.

To create an inbound ICMP rule:

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).
1. In the navigation pane, click **Inbound Rules**
1. Click **Action**, and then click **New rule**
1. On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**
1. On the **Program** page, click **All programs**, and then click **Next**
1. On the **Protocol and Ports** page, select **ICMPv4** or **ICMPv6** from the **Protocol type** list. If you use both IPv4 and IPv6 on your network, you must create a separate ICMP rule for each
1. Click **Customize**
1. In the **Customize ICMP Settings** dialog box, do one of the following:
    - To allow all ICMP network traffic, click **All ICMP types**, and then click **OK**
    - To select one of the predefined ICMP types, click **Specific ICMP types**, and then select each type in the list that you want to allow. Click **OK**
    - To select an ICMP type that does not appear in the list, click **Specific ICMP types**, select the **Type** number from the list, select the **Code** number from the list, click **Add**, and then select the newly created entry from the list. Click **OK**
1. Click **Next**
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**
1. On the **Action** page, select **Allow the connection**, and then click **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**
1. On the **Name** page, type a name and description for your rule, and then click **Finish**

## Create an inbound port rule

This type of rule allows any program that listens on a specified TCP or UDP port to receive network traffic sent to that port.

To create an inbound port rule:

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
1. In the navigation pane, click **Inbound Rules**
1. Click **Action**, and then click **New rule**
1. On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**
   > [!Note]
   > Although you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.
1. On the **Program** page, click **All programs**, and then click **Next**
   > [!Note]
   > This type of rule is often combined with a program or service rule. If you combine the rule types, you get a firewall rule that limits traffic to a specified port and allows the traffic only when the specified program is running. The specified program cannot receive network traffic on other ports, and other programs cannot receive network traffic on the specified port. If you choose to do this, follow the steps in the [Create an Inbound Program or Service Rule](create-an-inbound-program-or-service-rule.md) procedure in addition to the steps in this procedure to create a single rule that filters network traffic using both program and port criteria.
1. On the **Protocol and Ports** page, select the protocol type that you want to allow. To restrict the rule to a specified port number, you must select either **TCP** or **UDP**. Because this is an incoming rule, you typically configure only the local port number
   If you select another protocol, then only packets whose protocol field in the IP header match this rule are permitted through the firewall.\
   To select a protocol by its number, select **Custom** from the list, and then type the number in the **Protocol number** box.\
   When you have configured the protocols and ports, click **Next**.
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**
1. On the **Action** page, select **Allow the connection**, and then click **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**
   > [!Note]
   > If this GPO is targeted at server computers running Windows Server 2008 that never move, consider modifying the rules to apply to all network location type profiles. This prevents an unexpected change in the applied rules if the network location type changes due to the installation of a new network card or the disconnection of an existing network card's cable. A disconnected network card is automatically assigned to the Public network location type.
1. On the **Name** page, type a name and description for your rule, and then click **Finish**

## Create an outbound port rule

By default, Windows Firewall allows all outbound network traffic, unless it matches a rule that prohibits the traffic. This type of rule blocks any outbound network traffic that matches the specified TCP or UDP port numbers.

To create an outbound port rule:

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
1. In the navigation pane, select **Outbound Rules**
1. Select **Action**, and then select **New rule**
1. On the **Rule Type** page of the New Outbound Rule wizard, select **Custom**, and then select **Next**
    > [!NOTE]
    > Although you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.
1. On the **Program** page, select **All programs**, and then select **Next**
1. On the **Protocol and Ports** page, select the protocol type that you want to block. To restrict the rule to a specified port number, you must select either **TCP** or **UDP**. Because this rule is an outbound rule, you typically configure only the remote port number
    If you select another protocol, then only packets whose protocol field in the IP header matches this rule are blocked by Windows Defender Firewall. Network traffic for protocols is allowed as long as other rules that match don't block it. To select a protocol by its number, select **Custom** from the list, and then type the number in the **Protocol number** box. When you've configured the protocols and ports, select **Next**
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then select **Next**
1. On the **Action** page, select **Block the connection**, and then select **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then select **Next**
1. On the **Name** page, type a name and description for your rule, and then select **Finish**

## Create an inbound program or service rule

This type of rule allows the program to listen and receive inbound network traffic on any port.

> [!NOTE]
> This type of rule is often combined with a program or service rule. If you combine the rule types, you get a firewall rule that limits traffic to a specified port and allows the traffic only when the specified program is running. The program cannot receive network traffic on other ports, and other programs cannot receive network traffic on the specified port. To combine the program and port rule types into a single rule, follow the steps in the [Create an Inbound Port Rule](#create-an-inbound-port-rule) procedure in addition to the steps in this procedure.

To create an inbound firewall rule for a program or service:

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
1. In the navigation pane, click **Inbound Rules**
1. Click **Action**, and then click **New rule**
1. On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**
    > [!NOTE]
    > Information the user should notice even if skimmingAlthough you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.
1. On the **Program** page, click **This program path**
1. Type the path to the program in the text box. Use environment variables, where applicable, to ensure that programs installed in different locations on different computers work correctly.
1. Do one of the following:
    - If the executable file contains a single program, click **Next**
    - If the executable file is a container for multiple services that must all be allowed to receive inbound network traffic, click **Customize**, select **Apply to services only**, click **OK**, and then click **Next**
    - If the executable file is a container for a single service or contains multiple services but the rule only applies to one of them, click **Customize**, select **Apply to this service**, and then select the service from the list. If the service does not appear in the list, click **Apply to service with this service short name**, and then type the short name for the service in the text box. Click **OK**, and then click **Next**

    > [!IMPORTANT]
    > To use the **Apply to this service** or **Apply to service with this service short name** options, the service must be configured with a security identifier (SID) with a type of **RESTRICTED** or **UNRESTRICTED**. To check the SID type of a service, run the following command: `sc qsidtype <ServiceName>`
    >
    > If the result is `NONE`, then a firewall rule cannot be applied to that service.

    To set a SID type on a service, run the following command: `sc sidtype <ServiceName> <Type>`

    In the preceding command, the value of `<Type>` can be `UNRESTRICTED` or `RESTRICTED`. Although the command also permits the value of `NONE`, that setting means the service cannot be used in a firewall rule as described here. By default, most services in Windows are configured as `UNRESTRICTED`. If you change the SID type to `RESTRICTED`, the service might fail to start. We recommend that you change the SID type only on services that you want to use in firewall rules, and that you change the SID type to `UNRESTRICTED`.

1. It is a best practice to restrict the firewall rule for the program to only the ports it needs to operate. On the **Protocols and Ports** page, you can specify the port numbers for the allowed traffic. If the program tries to listen on a port different from the one specified here, it is blocked. For more information about protocol and port options, see [Create an Inbound Port Rule](create-an-inbound-port-rule.md). After you have configured the protocol and port options, click **Next**
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**
1. On the **Action** page, select **Allow the connection**, and then click **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**
1. On the **Name** page, type a name and description for your rule, and then click **Finish**

## Create an outbound program or service rule

By default, Windows Defender Firewall allows all outbound network traffic unless it matches a rule that prohibits the traffic. This type of rule prevents the program from sending any outbound network traffic on any port.

To create an outbound firewall rule for a program or service:

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
1. In the navigation pane, select **Outbound Rules**
1. Select **Action**, and then select **New rule**
1. On the **Rule Type** page of the New Outbound Rule Wizard, select **Custom**, and then select **Next**
    > [!NOTE]
    > Although you can create many rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.
1. On the **Program** page, select **This program path**
1. Type the path to the program in the text box. Use environment variables as appropriate to ensure that programs installed in different locations on different computers work correctly
1. Do one of the following:
    - If the executable file contains a single program, select **Next**
    - If the executable file is a container for multiple services that must all be blocked from sending outbound network traffic, select **Customize**, select **Apply to services only**, select **OK**, and then select **Next**
    - If the executable file is a container for a single service or contains multiple services but the rule only applies to one of them, select **Customize**, select **Apply to this service**, and then select the service from the list. If the service does not appear in the list, then select **Apply to service with this service short name**, and type the short name for the service in the text box. Select **OK**, and then select **Next**
1. If you want the program to be allowed to send on some ports, but blocked from sending on others, then you can restrict the firewall rule to block only the specified ports or protocols. On the **Protocols and Ports** page, you can specify the port numbers or protocol numbers for the blocked traffic. If the program tries to send to or from a port number different from the one specified here, or by using a protocol number different from the one specified here, then the default outbound firewall behavior allows the traffic. For more information about the protocol and port options, see [Create an Outbound Port Rule](create-an-outbound-port-rule.md). When you have configured the protocol and port options, select **Next**
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then select **Next**
1. On the **Action** page, select **Block the connection**, and then select **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then select **Next**
1. On the **Name** page, type a name and description for your rule, and then select **Finish**

## Create inbound rules to support RPC

To allow inbound remote procedure call (RPC) network traffic, you must create two firewall rules:

- the first rule allows incoming network packets on TCP port 135 to the RPC Endpoint Mapper service. The incoming traffic consists of requests to communicate with a specified network service. The RPC Endpoint Mapper replies with a dynamically assigned port number that the client must use to communicate with the service
- the second rule allows the network traffic that is sent to the dynamically assigned port number

Using the two rules configured as described in this topic helps to protect your device by allowing network traffic only from devices that have received RPC dynamic port redirection and to only those TCP port numbers assigned by the RPC Endpoint Mapper.

### RPC Endpoint Mapper service

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).
1. In the navigation pane, click **Inbound Rules**
1. Click **Action**, and then click **New rule**
1. On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**
1. On the **Program** page, click **This Program Path**, and then type `%systemroot%\system32\svchost.exe`
1. Click **Customize**.
1. In the **Customize Service Settings** dialog box, click **Apply to this service**, select **Remote Procedure Call (RPC)** with a short name of **RpcSs**, click **OK**, and then click **Next**
1. On the warning about Windows service-hardening rules, click **Yes**
1. On the **Protocol and Ports** dialog box, for **Protocol type**, select **TCP**
1. For **Local port**, select **RPC Endpoint Mapper**, and then click **Next**
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**
1. On the **Action** page, select **Allow the connection**, and then click **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**
1. On the **Name** page, type a name and description for your rule, and then click **Finish**

### RPC-enabled network services

1. On the same GPO you edited in the preceding procedure, click **Action**, and then click **New rule**
1. On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**
1. On the **Program** page, click **This Program Path**, and then type the path to the executable file that hosts the network service. Click **Customize**
1. In the **Customize Service Settings** dialog box, click **Apply to this service**, and then select the service that you want to allow. If the service doesn't appear in the list, then click **Apply to service with this service short name**, and then type the short name of the service in the text box
1. Click **OK**, and then click **Next**
1. On the **Protocol and Ports** dialog box, for **Protocol type**, select **TCP**
1. For **Local port**, select **RPC Dynamic Ports**, and then click **Next**
1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**
1. On the **Action** page, select **Allow the connection**, and then click **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**
1. On the **Name** page, type a name and description for your rule, and then click **Finish**
