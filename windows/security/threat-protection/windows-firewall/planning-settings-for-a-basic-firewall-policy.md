---
title: Planning Settings for a Basic Firewall Policy (Windows 10)
description: Planning Settings for a Basic Firewall Policy
ms.assetid: 4c90df5a-3cbc-4b85-924b-537c2422d735
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/17/2017
---

# Planning Settings for a Basic Firewall Policy

**Applies to**
-   Windows 10
-   Windows Server 2016

After you have identified your requirements, and have the information about the network layout and devices available, you can begin to design the GPO settings and rules that will enable you to enforce your requirements on the devices.

The following is a list of the firewall settings that you might consider for inclusion in a basic firewall design, together with recommendations to serve as a starting point for your analysis:

-   **Profile selection**. The firewall rules can be configured for any of the network location profiles that you see in the Network and Sharing Center: **Domain**, **Public**, and **Private**. Most settings are enforced in the Domain profile, without an option for the user to change them. However, you might want to leave the profile settings configurable by the user on devices that can be taken from the organization's physical network and joined to a public or home network. If you lock down the public and private profiles, you might prevent a user from accessing a required network program or service. Because they are not on the organization's network, you cannot fix a connectivity problem by deploying rule changes in a GPO. For each section that follows, consider each profile and apply the rules to those profiles that make sense for your organization.

    >**Important:**  We recommend that on server devices that you set all rules for all profiles to prevent any unexpected profile switch from disrupting network connectivity. You might consider a similar practice for your desktop devices, and only support different profiles on portable devices.

-   **Firewall state: On**. We recommend that you prevent the user from turning it off.

-   **Default behavior for Inbound connections: Block**. We recommend that you enforce the default behavior of blocking unsolicited inbound connections. To allow network traffic for a specific program, create an inbound rule that serves as an exception to this default behavior.

-   **Default behavior for Outbound connections: Allow**. We recommend that you enforce the default behavior of allowing outbound connections.

-   **Allow unicast response: Yes**. We recommend that you use the default setting of **Yes** unless you have specific requirements to do otherwise.

-   **Apply local firewall rules: Yes**. We recommend that you allow users to create and use local firewall rules. If you set this to **No**, then when a user clicks **Allow** on the notification message to allow traffic for a new program, Windows does not create a new firewall rule and the traffic remains blocked.

    If you and the IT staff can create and maintain the list of firewall rules for all permitted applications and deploy them by using GPOs then you can set this value to **No**.

-   **Apply local connection security rules: No**. We recommend that you prevent users from creating and using their own connection security rules. Connection failures caused by conflicting rules can be difficult to troubleshoot.

-   **Logging**. We recommend that you enable logging to a file on the local hard disk. Be sure to limit the size, such as 4096 KB, to avoid causing performance problems by filling the user's hard disk. Be sure to specify a folder to which the Windows Defender Firewall with Advanced Security service account has write permissions.

-   **Inbound rules**. Create inbound rules for programs that must be able to receive unsolicited inbound network packets from another device on the network. Make the rules as specific as possible to reduce the risk of malicious programs exploiting the rules. For example, specify both program and port numbers. Specifying a program ensures that the rule is only active when the program is actually running, and specifying the port number ensures that the program cannot receive unexpected traffic on a different port.

    Inbound rules are common on servers, because they host services to which client devices connect. When you install programs and services on a server, the installation program typically creates and enables the rules for you. Examine the rules to ensure that they do not open up more ports than are required.

    >**Important:**  If you create inbound rules that permit RPC network traffic by using the **RPC Endpoint Mapper** and **Dynamic RPC** rule options, then all inbound RPC network traffic is permitted because the firewall cannot filter network traffic based on the UUID of the destination application.

-   **Outbound rules**. Only create outbound rules to block network traffic that must be prevented in all cases. If your organization prohibits the use of certain network programs, you can support that policy by blocking the known network traffic used by the program. Be sure to test the restrictions before you deploy them to avoid interfering with traffic for needed and authorized programs.

**Next: **[Planning Domain Isolation Zones](planning-domain-isolation-zones.md)
