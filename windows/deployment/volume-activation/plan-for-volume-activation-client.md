---
title: Plan for volume activation (Windows 10)
description: Product activation is the process of validating software with the manufacturer after it has been installed on a specific computer.
ms.assetid: f84b005b-c362-4a70-a84e-4287c0d2e4ca
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
ms.date: 09/27/2017
ms.topic: article
---

# Plan for volume activation

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

*Product activation* is the process of validating software with the manufacturer after it has been installed on a specific computer. Activation confirms that the product is genuine—not a fraudulent copy—and that the product key or serial number is valid and has not been compromised or revoked. Activation also establishes a link or relationship between the product key and the particular installation.

During the activation process, information about the specific installation is examined. In the case of online activations, this information is sent to a server at Microsoft. This information may include the software version, the product key, the IP address of the computer, and information about the device. The activation methods that Microsoft uses are designed to help protect user privacy, and they cannot be used to track back to the computer or user. The gathered data confirms that the software is a legally licensed copy, and this data is used for statistical analysis. Microsoft does not use this information to identify or contact the user or the organization.

>[!NOTE]
>The IP address is used only to verify the location of the request, because some editions of Windows (such as “Starter” editions) can only be activated within certain geographical target markets.

## Distribution channels and activation

In general, Microsoft software is obtained through three main channels: retail, original equipment manufacturer (OEM), and volume licensing agreements. Different activations methods are available through each channel. Because organizations are free to obtain software through multiple channels (for example, buying some at retail and others through a volume licensing program) most organizations choose to use a combination of activation methods.

### Retail activations

The retail activation method has not changed in several versions of Windows and Windows Server. Each purchased copy comes with one unique product key (often referred to as a retail key). The user enters this key during product installation. The computer uses this retail key to complete the activation after the installation is complete. Most activations are performed online, but telephone activation is also available.
Recently, retail keys have been expanded into new distribution scenarios. Product key cards are available to activate products that have been preinstalled or downloaded. Programs such as Windows Anytime Upgrade and Get Genuine allow users to acquire legal keys separately from the software. These electronically distributed keys may come with media that contains software, they can come as a software shipment, or they may be provided on a printed card or electronic copy. Products are activated the same way with any of these retail keys.

### Original equipment manufacturer

Most original equipment manufacturers (OEMs) sell systems that include a standard build of the Windows operating system. The hardware vendor activates Windows by associating the operating system with the firmware (BIOS) of the computer. This occurs before the computer is sent to the customer, and no additional actions are required.
OEM activation is valid as long as the customer uses the OEM-provided image on the system. OEM activation is available only for computers that are purchased through OEM channels and have the Windows operating system preinstalled.

### Volume licensing

Volume licensing offers customized programs that are tailored to the size and purchasing preference of the organization. To become a volume licensing customer, the organization must set up a volume licensing agreement with Microsoft.There is a common misunderstanding about acquiring licenses for a new computer through volume licensing. There are two legal ways to acquire a full Windows client license for a new computer:
-   Have the license preinstalled through the OEM.
-   Purchase a fully packaged retail product.

The licenses that are provided through volume licensing programs such as Open License, Select License, and Enterprise Agreements cover upgrades to Windows client operating systems only. An existing retail or OEM operating system license is needed for each computer running Windows 10, Windows 8.1 Pro, Windows 8 Pro, Windows 7 Professional or Ultimate, or Windows XP Professional before the upgrade rights obtained through volume licensing can be exercised.
Volume licensing is also available through certain subscription or membership programs, such as the Microsoft Partner Network and MSDN. These volume licenses may contain specific restrictions or other changes to the general terms applicable to volume licensing.

**Note**  
Some editions of the operating system, such as Windows 10 Enterprise, and some editions of application software are available only through volume licensing agreements or subscriptions.

## Activation models

For a user or IT department, there are no significant choices about how to activate products that are acquired through retail or OEM channels. The OEM performs the activation at the factory, and the user or the IT department need take no activation steps.

With a retail product, the Volume Activation Management Tool (VAMT), which is discussed later in this guide, helps you track and manage keys. For each retail activation, you can choose:
-   Online activation
-   Telephone activation
-   VAMT proxy activation

Telephone activation is primarily used in situations where a computer is isolated from all networks. VAMT proxy activation (with retail keys) is sometimes used when an IT department wants to centralize retail activations or when a computer with a retail version of the operating system is isolated from the Internet but connected to the LAN. For volume-licensed products, however, you must determine the best method or combination of methods to use in your environment. For Windows 10 Pro and Enterprise, you can choose from three models:
-   MAKs
-   KMS
-   Active Directory-based activation

**Note**  
A specialized method, Token-based activation, is available for specific situations when approved customers rely on a public key infrastructure in a completely isolated, and usually high-security, environment. For more information, contact your Microsoft Account Team or your service representative.
Token-based Activation option is available for Windows 10 Enterprise LTSB editions (Version 1507 and 1607).

### Multiple activation key

A Multiple Activation Key (MAK) is commonly used in small- or mid-sized organizations that have a volume licensing agreement, but they do not meet the requirements to operate a KMS or they prefer a simpler approach. A MAK also
allows permanent activation of computers that are isolated from the KMS or are part of an isolated network that does not have enough computers to use the KMS.

To use a MAK, the computers to be activated must have a MAK installed. The MAK is used for one-time activation with the Microsoft online hosted activation services, by telephone, or by using VAMT proxy activation.
In the simplest terms, a MAK acts like a retail key, except that a MAK is valid for activating multiple computers. Each MAK can be used a specific number of times. The VAMT can assist in tracking the number of activations that have been performed with each key and how many remain.

Organizations can download MAK and KMS keys from the [Volume Licensing Service Center](https://go.microsoft.com/fwlink/p/?LinkId=618213) website. Each MAK has a preset number of activations, which are based on a percentage of the count of licenses the organization purchases; however, you can increase the number of activations that are available with your MAK by calling Microsoft.

### Key Management Service

With the Key Management Service (KMS), IT pros can complete activations on their local network, eliminating the need for individual computers to connect to Microsoft for product activation. The KMS is a lightweight service that does not require a dedicated system and can easily be cohosted on a system that provides other services.

Volume editions of Windows 10 and Windows Server 2012 R2 (in addition to volume editions of operating system editions since Windows Vista and Windows Server 2008) automatically connect to a system that hosts the KMS to request activation. No action is required from the user.

The KMS requires a minimum number of computers (physical computers or virtual machines) in a network environment. The organization must have at least five computers to activate Windows Server 2012 R2 and at least 25 computers to activate client computers that are running Windows 10. These minimums are referred to as *activation thresholds*.

Planning to use the KMS includes selecting the best location for the KMS host and how many KMS hosts to have. One KMS host can handle a large number of activations, but organizations will often deploy two KMS hosts to ensure availability. Only rarely would more than two KMS hosts be used. The KMS can be hosted on a client computer or on a server, and it can be run on older versions of the operating system if proper configuration steps are taken. Setting up your KMS is discussed later in this guide.

### Active Directory-based activation

Active Directory-based activation is the newest type of volume activation, and it was introduced in Windows 8. In many ways, Active Directory-based activation is similar to activation by using the KMS, but the activated computer does not need to maintain periodic connectivity with the KMS host. Instead, a domain-joined computer running Windows 10, Windows 8.1, Windows 8, Windows Server 2012 R2, or Windows Server 2012 R2 queries AD DS for a volume activation object that is stored in the domain. The operating system checks the digital signatures that are contained in the activation object, and then activates the device.

Active Directory-based activation allows enterprises to activate computers through a connection to their domain. Many companies have computers at remote or branch locations, where it is impractical to connect to a KMS, or would not reach the KMS activation threshold. Rather than use MAKs, Active Directory-based activation provides a way to activate computers running Windows 10, Windows 8.1, Windows 8, Windows Server 2012 R2, or Windows Server 2012 R2 as long as the computers can contact the company’s domain. Active Directory-based activation offers the advantage of extending volume activation services everywhere you already have a domain presence.

## Network and connectivity

A modern business network has many nuances and interconnections. This section examines evaluating your network and the connections that are available to determine how volume activations will occur.

### Core network

Your core network is that part of your network that enjoys stable, high-speed, reliable connectivity to infrastructure servers. In many cases, the core network is also connected to the Internet, although that is not a requirement to use the KMS or Active Directory-based activation after the KMS server or AD DS is configured and active. Your core network likely consists of many network segments. In many organizations, the core network makes up the vast majority of the business network.

In the core network, a centralized KMS solution is usually recommended. You can also use Active Directory-based activation, but in many organizations, KMS will still be required to activate older client computers and computers that are not joined to the domain. Some administrators prefer to run both solutions to have the most flexibility, while others prefer to choose only a KMS-based solution for simplicity. Active Directory-based activation as the only solution is workable if all of the clients in your organization are running Windows 10, Windows 8.1, or Windows 8.

A typical core network that includes a KMS host is shown in Figure 1.

![Typical core network](../images/volumeactivationforwindows81-01.jpg)

**Figure 1**. Typical core network

### Isolated networks

In a large network, it is all but guaranteed that some segments will be isolated, either for security reasons or because of geography or connectivity issues.

**Isolated for security**

Sometimes called a *high-security zone*, a particular network segment may be isolated from the core network by a firewall or disconnected from other networks totally. The best solution for activating computers in an isolated network depends on the security policies in place in the organization.

If the isolated network can access the core network by using outbound requests on TCP port 1688, and it is allowed to receive remote procedure calls (RPCs), you can perform activation by using the KMS in the core network, thereby avoiding the need to reach additional activation thresholds.

If the isolated network participates fully in the corporate forest, and it can make typical connections to domain controllers, such as using Lightweight Directory Access Protocol (LDAP) for queries and Domain Name Service (DNS) for name resolution, this is a good opportunity to use Active Directory-based activation for Windows 10, Windows 8.1, Windows 8, Windows Server 2012 R2, and Windows Server 2012 R2.

If the isolated network cannot communicate with the core network’s KMS server, and it cannot use Active Directory-based activation, you can set up a KMS host in the isolated network. This configuration is shown in Figure 2. However, if the isolated network contains only a few computers, it will not reach the KMS activation threshold. In that case, you can activate by using MAKs.

If the network is fully isolated, MAK-independent activation would be the recommended choice, perhaps using the telephone option. But VAMT proxy activation may also be possible. You can also use MAKs to activate new computers during setup, before they are placed in the isolated network.

![New KMS host in an isolated network](../images/volumeactivationforwindows81-02.jpg)

**Figure 2**. New KMS host in an isolated network

**Branch offices and distant networks**
From mining operations to ships at sea, organizations often have a few computers that are not easily connected to the core network or the Internet. Some organizations have network segments at branch offices that are large and well-connected internally, but have a slow or unreliable WAN link to the rest of the organization. In these situations, you have several options:
-   **Active Directory-based activation**. In any site where the client computers are running Windows 10, Active Directory-based activation is supported, and it can be activated by joining the domain.
-   **Local KMS**. If a site has 25 or more client computers, it can activate against a local KMS server.
-   **Remote (core) KMS**. If the remote site has connectivity to an existing KMS (perhaps through a virtual private network (VPN) to the core network), that KMS can be used. Using the existing KMS means that you only need to meet the activation threshold on that server.
-   **MAK activation**. If the site has only a few computers and no connectivity to an existing KMS host, MAK activation is the best option.

### Disconnected computers

Some users may be in remote locations or may travel to many locations. This scenario is common for roaming clients, such as the computers that are used by salespeople or other users who are offsite but not at branch locations. This scenario can also apply to remote branch office locations that have no connection to the core network. You can consider this an “isolated network,” where the number of computers is one. Disconnected computers can use Active Directory-based activation, the KMS, or MAK depending on the client version and how often the computers connect to the core network.
If the computer is joined to the domain and running Windows 10, Windows 8.1, Windows 8, Windows Server 2012 R2, or Windows Server 2012 R2 8, you can use Active Directory-based activation—directly or through a VPN—at least once every 180 days. If the computer connects to a network with a KMS host at least every 180 days, but it does not support Active Directory-based activation, you can use KMS activation. Otherwise for computers that rarely or never connect to the network, use MAK independent activation (by using the telephone or the Internet).

### Test and development labs

Lab environments often have large numbers of virtual machines, and physical computers and virtual machines in labs are reconfigured frequently. Therefore, first determine whether the computers in test and development labs require activation. Editions of Windows 10 that include volume licensing will operate normally, even if they cannot activate immediately.
If you have ensured that your test or development copies of the operating system are within the license agreement, you may not need to activate the lab computers if they will be rebuilt frequently. If you require that the lab computers be activated, treat the lab as an isolated network and use the methods described earlier in this guide.
In labs that have a high turnover of computers and a small number of KMS clients, you must monitor the KMS activation count. You might need to adjust the time that the KMS caches the activation requests. The default is 30 days.

## Mapping your network to activation methods

Now it’s time to assemble the pieces into a working solution. By evaluating your network connectivity, the numbers of computers you have at each site, and the operating system versions in use in your environment, you have collected the information you need to determine which activation methods will work best for you. You can fill-in information in Table 1 to help you make this determination.

**Table 1**. Criteria for activation methods

|Criterion |Activation method |
|----------|------------------|
|Number of domain-joined computers that support Active Directory-based activation (computers running Windows 10, Windows 8.1, Windows 8, Windows Server 2012 R2, or Windows Server 2012 R2) and will connect to a domain controller at least every 180 days. Computers can be mobile, semi-isolated, or located in a branch office or the core network. |Active Directory-based activation |
|Number of computers in the core network that will connect (directly or through a VPN) at least every 180 days<p><strong>Note</strong><br>The core network must meet the KMS activation threshold. |KMS (central) |
|Number of computers that do not connect to the network at least once every 180 days (or if no network meets the activation threshold) |MAM |
|Number of computers in semi-isolated networks that have connectivity to the KMS in the core network |KMS (central) |
|Number of computers in isolated networks where the KMS activation threshold is met |KMS (local) |
|Number of computers in isolated networks where the KMS activation threshold is not met |MAK |
|Number of computers in test and development labs that will not be activated |None|
|Number of computers that do not have a retail volume license |Retail (online or phone) |
|Number of computers that do not have an OEM volume license |OEM (at factory) |
|Total number of computer activations<p><strong>Note</strong><br>This total should match the total number of licensed computers in your organization. |

## Choosing and acquiring keys

When you know which keys you need, you must obtain them. Generally speaking, volume licensing keys are collected in two ways:
-   Go to the **Product Keys** section of the [Volume Licensing Service Center](https://go.microsoft.com/fwlink/p/?LinkID=618213) for the following agreements: Open, Open Value, Select, Enterprise, and Services Provider License.
-   Contact your [Microsoft Activation Center](https://go.microsoft.com/fwlink/p/?LinkId=618264).

### KMS host keys

A KMS host needs a key that activates, or authenticates, the KMS host with Microsoft. This key is usually referred to as the *KMS host key*, but it is formally known as a *Microsoft Customer Specific Volume License Key* (CSVLK). Most documentation and Internet references earlier than Windows 8.1 use the term KMS key, but CSVLK is becoming more common in current documentation and management tools.

A KMS host running Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 can activate both Windows Server and Windows client operating systems. A KMS host key is also needed to create the activation objects in AD DS, as described later in this guide. You will need a KMS host key for any KMS that you want to set up and if you are going to use Active Directory-based activation.

### Generic volume licensing keys

When you create installation media or images for client computers that will be activated by KMS or Active Directory-based activation, install a generic volume license key (GVLK) for the edition of Windows you are creating. GVLKs are also referred to as KMS client setup keys.

Installation media from Microsoft for Enterprise editions of the Windows operating system may already contain the GVLK. One GVLK is available for each type of installation. Note that the GLVK will not activate the software against Microsoft activation servers, only against a KMS or Active Directory-based activation object. In other words, the GVLK does not work unless a valid KMS host key can be found. GVLKs are the only product keys that do not need to be kept confidential.

Typically, you will not need to manually enter a GVLK unless a computer has been activated with a MAK or a retail key and it is being converted to a KMS activation or to Active Directory-based activation. If you need to locate the GVLK for a particular client edition, see [Appendix A: KMS Client Setup Keys](https://technet.microsoft.com/library/jj612867.aspx).

### Multiple activation keys

You will also need MAK keys with the appropriate number of activations available. You can see how many times a MAK has been used on the Volume Licensing Service Center website or in the VAMT.

## Selecting a KMS host

The KMS does not require a dedicated server. It can be cohosted with other services, such as AD DS domain controllers and read-only domain controllers.
KMS hosts can run on physical computers or virtual machines that are running any supported Windows operating system. A KMS host that is running Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 can activate any Windows client or server operating system that supports volume activation. A KMS host that is running Windows 10 can activate only computers running Windows 10, Windows 8.1, Windows 8, Windows 7, or Windows Vista.
A single KMS host can support unlimited numbers of KMS clients, but Microsoft recommends deploying a minimum of two KMS hosts for failover purposes. However, as more clients are activated through Active Directory-based activation, the KMS and the redundancy of the KMS will become less important. Most organizations can use as few as two KMS hosts for their entire infrastructure.

The flow of KMS activation is shown in Figure 3, and it follows this sequence:

1.  An administrator uses the VAMT console to configure a KMS host and install a KMS host key.
2.  Microsoft validates the KMS host key, and the KMS host starts to listen for requests.
3.  The KMS host updates resource records in DNS to allow clients to locate the KMS host. (Manually adding DNS records is required if your environment does not support DNS dynamic update protocol.)
4.  A client configured with a GVLK uses DNS to locate the KMS host.
5.  The client sends one packet to the KMS host.
6.  The KMS host records information about the requesting client (by using a client ID). Client IDs are used to maintain the count of clients and detect when the same computer is requesting activation again. The client ID is only used to determine whether the activation thresholds are met. The IDs are not stored permanently or transmitted to Microsoft. If the KMS is restarted, the client ID collection starts again.
7.  If the KMS host has a KMS host key that matches the products in the GVLK, the KMS host sends a single packet back to the client. This packet contains a count of the number of computers that have requested activation from this KMS host.
8.  If the count exceeds the activation threshold for the product that is being activated, the client is activated. If the activation threshold has not yet been met, the client will try again.

![KMS activation flow](../images/volumeactivationforwindows81-03.jpg)

**Figure 3**. KMS activation flow

## See also
-   [Volume Activation for Windows 10](volume-activation-windows-10.md)
 
 
