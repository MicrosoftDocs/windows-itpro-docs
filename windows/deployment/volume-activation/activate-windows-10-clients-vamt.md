---
title: Activate clients running Windows 10 (Windows 10)
description: After you have configured Key Management Service (KMS) or Active Directory-based activation on your network, activating a client running Windows 10 is easy.
ms.assetid: 39446e49-ad7c-48dc-9f18-f85a11ded643
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: vamt, volume activation, activation, windows activation
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Activate clients running Windows 10

**Applies to**
-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2012
-   Windows Server 2008 R2

**Looking for retail activation?**

-   [Get Help Activating Microsoft Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

After you have configured Key Management Service (KMS) or Active Directory-based activation on your network, activating a client running Windows 10 is easy. If the computer has been configured with a Generic Volume License Key (GVLK), neither IT nor the user need take any action. It just works.
Enterprise edition images and installation media should already be configured with the GVLK. When the client computer starts, the Licensing service examines the current licensing condition of the computer.
If activation or reactivation is required, the following sequence occurs:
1.  If the computer is a member of a domain, it asks a domain controller for a volume activation object. If Active Directory-based activation is configured, the domain controller returns the object. If the object matches the edition of the software that is installed and the computer has a matching GVLK, the computer is activated (or reactivated), and it will not need to be activated again for 180 days, although the operating system will attempt reactivation at much shorter, regular intervals.
2.  If the computer is not a member of a domain or if the volume activation object is not available, the computer will issue a DNS query to attempt to locate a KMS server. If a KMS server can be contacted, activation occurs if the KMS has a key that matches the computer’s GVLK.
3.  The computer tries to activate against Microsoft servers if it is configured with a MAK.

If the client is not able to activate itself successfully, it will periodically try again. The frequency of the retry attempts depends on the current licensing state and whether the client computer has been successfully activated in the past. For example, if the client computer had been previously activated by Active Directory-based activation, it will periodically try to contact the domain controller at each restart.

## How Key Management Service works

KMS uses a client–server topology. KMS client computers can locate KMS host computers by using DNS or a static configuration. KMS clients contact the KMS host by using RPCs carried over TCP/IP.

### Key Management Service activation thresholds

You can activate physical computers and virtual machines by contacting a KMS host. To qualify for KMS activation, there must be a minimum number of qualifying computers (called the activation threshold). KMS clients will be activated only after this threshold has been met. Each KMS host counts the number of computers that have requested activation until the threshold is met.

A KMS host responds to each valid activation request from a KMS client with the count of how many computers have already contacted the KMS host for activation. Client computers that receive a count below the activation threshold are not activated. For example, if the first two computers that contact the KMS host are running Windows 10, the first receives an activation count of 1, and the second receives an activation count of 2. If the next computer is a virtual machine on a computer running Windows 10, it receives an activation count of 3, and so on. None of these computers will be activated, because computers running Windows 10, like other client operating system versions, must receive an activation count of 25 or more.
When KMS clients are waiting for the KMS to reach the activation threshold, they will connect to the KMS host every two hours to get the current activation count. They will be activated when the threshold is met.

In our example, if the next computer that contacts the KMS host is running Windows Server 2012 R2, it receives an activation count of 4, because activation counts are cumulative. If a computer running Windows Server 2012 R2 receives an activation count that is 5 or more, it is activated. If a computer running Windows 10 receives an activation count of 25 or more, it is activated.

### Activation count cache

To track the activation threshold, the KMS host keeps a record of the KMS clients that request activation. The KMS host gives each KMS client a client ID designation, and the KMS host saves each client ID in a table. By default, each activation request remains in the table for up to 30 days. When a client renews its activation, the cached client ID is removed from the table, a new record is created, and the 30day period begins again. If a KMS client computer does not renew its activation within 30 days, the KMS host removes the corresponding client ID from the table and reduces the activation count by one.
However, the KMS host only caches twice the number of client IDs that are required to meet the activation threshold. Therefore, only the 50 most recent client IDs are kept in the table, and a client ID could be removed much sooner than 30 days.
The total size of the cache is set by the type of client computer that is attempting to activate. If a KMS host receives activation requests only from servers, the cache will hold only 10 client IDs (twice the required 5). If a client computer running Windows 10 contacts that KMS host, KMS increases the cache size to 50 to accommodate the higher threshold. KMS never reduces the cache size.

### Key Management Service connectivity

KMS activation requires TCP/IP connectivity. By default, KMS hosts and clients use DNS to publish and find the KMS. The default settings can be used, which require little or no administrative action, or KMS hosts and client computers can be manually configured based on network configuration and security requirements.

### Key Management Service activation renewal

KMS activations are valid for 180 days (the *activation validity interval*). To remain activated, KMS client computers must renew their activation by connecting to the KMS host at least once every 180 days. By default, KMS client computers attempt to renew their activation every 7 days. If KMS activation fails, the client computer retries every two hours. After a client computer’s activation is renewed, the activation validity interval begins again.

### Publication of the Key Management Service

The KMS uses service (SRV) resource records in DNS to store and communicate the locations of KMS hosts. KMS hosts use the DNS dynamic update protocol, if available, to publish the KMS service (SRV) resource records. If dynamic update is not available or the KMS host does not have rights to publish the resource records, the DNS records must be published manually, or you must configure client computers to connect to specific KMS hosts.

### Client discovery of the Key Management Service

By default, KMS client computers query DNS for KMS information. The first time a KMS client computer queries DNS for KMS information, it randomly chooses a KMS host from the list of service (SRV) resource records that DNS returns. The address of a DNS server that contains the service (SRV) resource records can be listed as a suffixed entry on KMS client computers, which allows one DNS server to advertise the service (SRV) resource records for KMS, and KMS client computers with other primary DNS servers to find it.
Priority and weight parameters can be added to the DnsDomainPublishList registry value for KMS. Establishing KMS host priority groupings and weighting within each group allows you to specify which KMS host the client computers should try first and balances traffic among multiple KMS hosts. Only Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Server 2012 R2, Windows Server 2012, and Windows Server 2008 R2 provide these priority and weight parameters.
If the KMS host that a client computer selects does not respond, the KMS client computer removes that KMS host from its list of service (SRV) resource records and randomly selects another KMS host from the list. When a KMS host responds, the KMS client computer caches the name of the KMS host and uses it for subsequent activation and renewal attempts. If the cached KMS host does not respond on a subsequent renewal, the KMS client computer discovers a new KMS host by querying DNS for KMS service (SRV) resource records.
By default, client computers connect to the KMS host for activation by using anonymous RPCs through TCP port 1688. (You can change the default port.) After establishing a TCP session with the KMS host, the client computer sends a single request packet. The KMS host responds with the activation count. If the count meets or exceeds the activation threshold for that operating system, the client computer is activated and the session is closed. The KMS client computer uses this same process for renewal requests. 250 bytes are used for communication each way.

### Domain Name System server configuration

The default KMS automatic publishing feature requires the service (SRV) resource record and support for DNS dynamic update protocol. KMS client computer default behavior and the KMS service (SRV) resource record publishing are supported on a DNS server that is running Microsoft software or any other DNS server that supports service (SRV) resource records (per Internet Engineering Task Force \[IETF\] Request for Comments \[RFC\] 2782) and dynamic updates (per IETF RFC 2136). For example, Berkeley Internet Domain Name versions 8.x and 9.x support service (SRV) resource records and dynamic update.
The KMS host must be configured so that it has the credentials needed to create and update the following resource records on the DNS servers: service (SRV), IPv4 host (A), and IPv6 host (AAAA), or the records need to be created manually. The recommended solution for giving the KMS host the needed credentials is to create a security group in AD DS, then add all KMS hosts to that group. On a DNS server that is running Microsoft software, ensure that this security group is given full control over the \_VLMCS.\_TCP record in each DNS domain that will contain the KMS service (SRV) resource records.

### Activating the first Key Management Service host

KMS hosts on the network need to install a KMS key, and then be activated with Microsoft. Installation of a KMS key enables the KMS on the KMS host. After installing the KMS key, complete the activation of the KMS host by telephone or online. Beyond this initial activation, a KMS host does not communicate any information to Microsoft. KMS keys are only installed on KMS hosts, never on individual KMS client computers.

### Activating subsequent Key Management Service hosts

Each KMS key can be installed on up to six KMS hosts. These hosts can be physical computers or virtual machines. After activating a KMS host, the same host can be reactivated up to nine times with the same key. If the organization needs more than six KMS hosts, you can request additional activations for your organization’s KMS key by calling a Microsoft Volume [Licensing Activation Center](https://go.microsoft.com/fwlink/p/?LinkID=618264) to request an exception.

## How Multiple Activation Key works

A MAK is used for one-time activation with Microsoft’s hosted activation services. Each MAK has a predetermined number of allowed activations. This number is based on volume licensing agreements, and it might not match the organization’s exact license count. Each activation that uses a MAK with the Microsoft hosted activation service counts toward the activation limit.

You can activate computers by using a MAK in two ways:
-   **MAK independent activation**. Each computer independently connects and is activated with Microsoft over the Internet or by telephone. MAK independent activation is best suited to computers within an organization that do not maintain a connection to the corporate network. MAK independent activation is shown in Figure 16.

    ![MAK independent activation](../images/volumeactivationforwindows81-16.jpg)
    
    **Figure 16**. MAK independent activation
-   **MAK proxy activation**. MAK proxy activation enables a centralized activation request on behalf of multiple computers with one connection to Microsoft. You configure MAK proxy activation by using the VAMT. MAK proxy activation is appropriate for environments in which security concerns restrict direct access to the Internet or the corporate network. It is also suited for development and test labs that lack this connectivity. MAK proxy activation with the VAMT is shown in Figure 17.

    ![MAK proxy activation with the VAMT](../images/volumeactivationforwindows81-17.jpg)
    
    **Figure 17**. MAK proxy activation with the VAMT

A MAK is recommended for computers that rarely or never connect to the corporate network and for environments in which the number of computers that require activation does not meet the KMS activation threshold.

You can use a MAK for individual computers or with an image that can be duplicated or installed by using Microsoft deployment solutions. You can also use a MAK on a computer that was originally configured to use KMS activation. This is useful for moving a computer off the core network to a disconnected environment.

### Multiple Activation Key architecture and activation

MAK independent activation installs a MAK product key on a client computer. The key instructs that computer to activate itself with Microsoft servers over the Internet.
In MAK proxy activation, the VAMT installs a MAK product key on a client computer, obtains the installation ID from the target computer, sends the installation ID to Microsoft on behalf of the client, and obtains a confirmation ID. The tool then activates the client computer by installing the confirmation ID.

## Activating as a standard user

Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Server 2012 R2, Windows Server 2012, and Windows Server 2008 R2 do not require administrator privileges for activation, but this change does not allow standard user accounts to remove computers running Windows 7 or Windows Server 2008 R2 from the activated state. An administrator account is still required for other activation- or license-related tasks, such as “rearm.”

## See also

-   [Volume Activation for Windows 10](volume-activation-windows-10.md)
 
 
