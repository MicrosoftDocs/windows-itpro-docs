---
title: Plan for volume activation
description: Product activation is the process of validating software with the manufacturer after it's installed on a specific computer.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.localizationpriority: medium
ms.topic: concept-article
ms.service: windows-client
ms.subservice: activation
ms.date: 03/29/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Plan for volume activation

> [!TIP]
>
> Looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/windows/activate-windows-c39005d4-95ee-b91e-b399-2820fda32227).
> - [Product activation for Windows](https://support.microsoft.com/windows/product-activation-for-windows-online-support-telephone-numbers-35f6a805-1259-88b4-f5e9-b52cccef91a0).

*Product activation* is the process of validating software with the manufacturer after it's installed on a specific computer. Activation confirms that the product is genuine and not a fraudulent copy. Activation also confirms that the product key or serial number is valid and isn't compromised or revoked. Activation also establishes a link or relationship between the product key and the particular installation.

During the activation process, information about the specific installation is examined. For online activations, this information is sent to a server at Microsoft. This information might include the software version, the product key, the IP address of the computer, and information about the device. The activation methods that Microsoft uses are designed to help protect user privacy, and they can't be used to track back to the computer or user. The gathered data confirms that the software is a legally licensed copy, and this data is used for statistical analysis. Microsoft doesn't use this information to identify or contact the user or the organization.

>[!NOTE]
>
>The IP address is used only to verify the location of the request, because some editions of Windows (such as "Starter" editions) can only be activated within certain geographical target markets.

## Distribution channels and activation

In general, Microsoft software is obtained through three main channels: retail, original equipment manufacturer (OEM), and volume licensing agreements. Different activations methods are available through each channel. Because organizations are free to obtain software through multiple channels (for example, buying some at retail and others through a volume licensing program) most organizations choose to use a combination of activation methods.

### Retail activations

For retail activation, each purchased copy comes with one unique product key, often referred to as a retail key. The user enters this key during product installation. The computer uses this retail key to complete the activation after the installation is complete. Most activations are performed online, but telephone activation is also available.

Other distribution scenarios also exist. Product key cards are available to activate products that are preinstalled or downloaded. Programs such as Windows Anytime Upgrade and Get Genuine allow users to acquire legal keys separately from the software. These electronically distributed keys might come with media that contains software, they can come as a software shipment, or they might be provided on a printed card or electronic copy. Products are activated the same way with any of these retail keys.

### Original equipment manufacturer

Most original equipment manufacturers (OEMs) sell systems that include a standard build of the Windows operating system. The hardware vendor activates Windows by associating the operating system with the firmware/BIOS of the computer. This activation occurs before the computer is sent to the customer, and no additional actions are required.

OEM activation is valid as long as the customer uses the OEM-provided image on the system. OEM activation is available only for computers that are purchased through OEM channels and have the Windows operating system preinstalled.

### Volume licensing

Volume licensing offers customized programs that are tailored to the size and purchasing preference of the organization. To become a volume licensing customer, the organization must set up a volume licensing agreement with Microsoft. There's a common misunderstanding about acquiring licenses for a new computer through volume licensing. There are two legal ways to acquire a full Windows client license for a new computer:

- Have the license preinstalled through the OEM.
- Purchase a fully packaged retail product.

The licenses that are provided through volume licensing programs such as Open License, Select License, and Enterprise Agreements cover upgrades to Windows client operating systems only. Before the upgrade rights obtained through volume licensing can be exercised, an existing retail or OEM operating system license is needed for each computer running currently supported versions of Windows.

Volume licensing is also available through certain subscription or membership programs, such as the Microsoft Partner Network and Visual Studio Codespace. These volume licenses might contain specific restrictions or other changes to the general terms applicable to volume licensing.

> [!NOTE]
>
> Some editions of the operating system, such as Windows Enterprise, and some editions of application software are available only through volume licensing agreements or subscriptions.

## Activation models

For a user or IT department, there are no significant choices about how to activate products that are acquired through retail or OEM channels. The OEM performs the activation at the factory, and the user or the IT department don't need to take any activation steps.

With a retail product, the Volume Activation Management Tool (VAMT), which is discussed later in this guide, helps track and manage keys. For each retail activation, the following options can be chosen:

- Online activation.
- Telephone activation.
- VAMT proxy activation.

Telephone activation is primarily used in situations where a computer is isolated from all networks. VAMT proxy activation with retail keys is sometimes used when an IT department wants to centralize retail activations. VAMT can also be used when a computer with a retail version of the operating system is isolated from the internet but connected to the LAN. For volume-licensed products, however, the best method or combination of methods must be determined to use in the environment. For currently supported versions of Windows Pro and Enterprise, one of the following three models can be chosen:

- Multiple Activation Keys (MAK).
- KMS.
- Active Directory-based activation.

> [!NOTE]
>
> Token-based activation for Windows Enterprise (including LTSC) and Windows Server is available for specific situations when approved customers rely on a public key infrastructure in an isolated and high-security environment. For more information, contact the Microsoft Account Team or service representative.

### Multiple activation key

A Multiple Activation Key (MAK) is commonly used in small or mid-sized organizations that have a volume licensing agreement, but don't meet the requirements to operate a KMS. MAK can also be used if a simpler approach is preferred. A MAK also allows permanent activation of:

- Computers that are isolated from the KMS.
- Computers that are part of an isolated network that doesn't have enough computers to use the KMS.

To use a MAK, the computers to be activated must have a MAK installed. The MAK is used for one-time activation with the Microsoft online hosted activation services, by telephone, or by using VAMT proxy activation.

In the simplest terms, a MAK acts like a retail key, except that a MAK is valid for activating multiple computers. Each MAK can be used a specific number of times. The VAMT can help with tracking the number of performed activations with each key and how many activations remain.

Organizations can download MAK and KMS keys from the [Volume Licensing Service Center](https://admin.microsoft.com/adminportal/home#/subscriptions/vlnew) website. Each MAK has a preset number of activations, which are based on a percentage of the count of licenses the organization purchases. However, the number of activations that are available can be increased with the MAK by calling Microsoft.

### Key Management Service

With the Key Management Service (KMS), IT pros can complete activations on their local network, eliminating the need for individual computers to connect to Microsoft for product activation. The KMS is a lightweight service that doesn't require a dedicated system and can easily be cohosted on a system that provides other services.

Volume editions of currently supported versions of Windows and Windows Server automatically connect to a system that hosts the KMS to request activation. No action is required from the user.

The KMS requires a minimum number of computers, either physical computers or virtual machines, in a network environment. The organization must have at least five computers to activate currently supported versions of Windows Server and at least 25 computers to activate client computers running currently supported versions of Windows client. These minimums are referred to as *activation thresholds*.

Planning to use the KMS includes selecting the best location for the KMS host and how many KMS hosts to have. One KMS host can handle a large number of activations, but organizations often deploy two KMS hosts to ensure availability. The KMS can be hosted on a client computer or on a server. Setting up KMS is discussed later in this guide.

### Active Directory-based activation

Active Directory-based activation is similar to activation by using the KMS, but the activated computer doesn't need to maintain periodic connectivity with the KMS host. Instead, a domain-joined computer running currently supported versions of Windows or Windows Server queries ADDS for a volume activation object that is stored in the domain. The operating system checks the digital signatures that are contained in the activation object, and then activates the device.

Active Directory-based activation allows enterprises to activate computers through a connection to their domain. Many companies have computers at remote or branch locations, where it's impractical to connect to a KMS, or wouldn't reach the KMS activation threshold. Rather than use MAK, Active Directory-based activation provides a way to activate computers running currently supported versions of Windows and Windows Server as long as the computers can contact the company's domain. Active Directory-based activation offers the advantage of extending volume activation services everywhere where there's already a domain presence.

## Network and connectivity

A modern business network has many nuances and interconnections. This section examines evaluating the organization's network and the connections that are available to determine how volume activations occur.

### Core network

The organization's core network is that part of the network that enjoys stable, high-speed, reliable connectivity to infrastructure servers. In many cases, the core network is also connected to the internet. However, internet connectivity isn't a requirement to use the KMS or Active Directory-based activation after the KMS server or ADDS is configured and active. The organization's core network likely consists of many network segments. In many organizations, the core network makes up most of the business network.

In the core network, a centralized KMS solution is recommended. Active Directory-based activation can also be used, but in many organizations, KMS might still be required to computers that aren't joined to the domain. Some administrators prefer to run both solutions to have the most flexibility, while others prefer to choose only a KMS-based solution for simplicity. Active Directory-based activation as the only solution is workable if all of the clients in the organization are running currently supported versions of Windows.

A typical core network that includes a KMS host is shown in Figure 1.

![Typical core network.](../images/volumeactivationforwindows81-01.jpg)

**Figure 1**. Typical core network

### Isolated networks

In a large network, some segments might be isolated, either for security reasons or because of geography or connectivity issues.

#### Isolated for security

A network segment isolated from the core network by a firewall or disconnected from other networks is sometimes called a *high-security zone*. The best solution for activating computers in an isolated network depends on the security policies in place in the organization.

If the isolated network can:

- Access the core network by using outbound requests on TCP port 1688
- Allowed to receive remote procedure calls (RPCs)

activation can be performed by using the KMS in the core network, avoiding the need to reach additional activation thresholds.

If the isolated network participates fully in the corporate forest, and it can make typical connections to domain controllers, such as:

- Using Lightweight Directory Access Protocol (LDAP) for queries
- Using Domain Name Service (DNS) for name resolution

then this scenario is a good opportunity to use Active Directory-based activation for currently supported versions of Windows and Windows Server.

If the isolated network can't communicate with the core network's KMS server, and it can't use Active Directory-based activation, a KMS host can be set up in the isolated network. This configuration is shown in Figure 2. However, if the isolated network contains only a few computers, it won't reach the KMS activation threshold. In that case, MAKs can be used for activation.

If the network is fully isolated, MAK-independent activation would be the recommended choice, perhaps using the telephone option, but VAMT proxy activation might also be possible. MAKs can also be used to activate new computers during setup, before they're placed in the isolated network.

![New KMS host in an isolated network.](../images/volumeactivationforwindows81-02.jpg)

**Figure 2**. New KMS host in an isolated network

#### Branch offices and distant networks

From mining operations to ships at sea, organizations often have a few computers that aren't easily connected to the core network or the internet. Some organizations have network segments at branch offices that are large and well-connected internally, but have a slow or unreliable WAN link to the rest of the organization. There are several options in these situations:

- **Active Directory-based activation**. In any site where the client computers are running currently supported versions of Windows, Active Directory-based activation is supported, and it can be activated by joining the domain.

- **Local KMS**. If a site has 25 or more client computers, it can activate against a local KMS server.

- **Remote (core) KMS**. If the remote site has connectivity to an existing KMS, perhaps through a virtual private network (VPN) to the core network, that KMS can be used. Using the existing KMS means that the activation threshold only needs to be met on that server.

- **MAK activation**. If the site has only a few computers and no connectivity to an existing KMS host, MAK activation is the best option.

### Disconnected computers

Some users might be in remote locations or might travel to many locations. This scenario is common for roaming clients, such as the computers that are used by salespeople or other users who are offsite but not at branch locations. This scenario can also apply to remote branch office locations that have no connection to the core network. This branch office can be considered an "isolated network," where the number of computers is one. Disconnected computers can use Active Directory-based activation, the KMS, or MAK depending on how often the computers connect to the core network.

Active Directory-based activation can be used on computers when they meet the following conditions:

- The computer is joined to the domain.
- The computer is running a currently supported version of Windows or Windows Server.
- The computer connects to the domain at least once every 180 days, either directly or through a VPN.

Otherwise for computers that rarely or never connect to the network, MAK independent activation should be used either via the telephone or the internet.

### Test and development labs

Lab environments often have large numbers of virtual machines, and physical computers and virtual machines in labs are reconfigured frequently. Therefore, first determine whether the computers in test and development labs require activation. Currently supported editions of Windows that include volume licensing operate normally, even if they can't activate immediately.

If the test or development copies of the operating system are within the license agreement, the lab computers might not need to be activated if they're rebuilt frequently. If the lab computers need to be activated, treat the lab as an isolated network, and use the methods described earlier in this guide.
In labs that have a high turnover of computers and a few KMS clients, the KMS activation count must be monitored. The time that the KMS caches the activation requests might need to be adjusted. The default is 30 days.

## Mapping the network to activation methods

By evaluating network connectivity and the numbers of computers at each site, the information needed to determine which activation methods work best can be determined. This information can be filled in Table 1 to help make this determination.

**Table 1**. Criteria for activation methods

| Criterion | Activation method |
|---|---|
| Number of domain-joined computers that will connect to a domain controller at least every 180 days. Computers can be mobile, semi-isolated, or located in a branch office or the core network. | Active Directory-based activation |
| Number of computers in the core network that will connect at least every 180 days, either directly or through VPN. The core network must meet the KMS activation threshold. | KMS (central) |
| Number of computers that don't connect to the network at least once every 180 days, or if no network meets the activation threshold. | MAK |
| Number of computers in semi-isolated networks that have connectivity to the KMS in the core network. | KMS (central) |
| Number of computers in isolated networks where the KMS activation threshold is met. | KMS (local) |
| Number of computers in isolated networks where the KMS activation threshold isn't met. | MAK |
| Number of computers in test and development labs that won't be activated. | None |
| Number of computers that don't have a retail volume license. | Retail (online or phone) |
| Number of computers that don't have an OEM volume license. | OEM (at factory) |
| Total number of computer activations. This total should match the total number of licensed computers in the organization. | |

## Choosing and acquiring keys

When it's know which keys are needed, the keys must be obtained. Generally speaking, volume licensing keys are collected in two ways:

- Go to the **Product Keys** section of the [Volume Licensing Service Center](https://admin.microsoft.com/adminportal/home#/subscriptions/vlnew) for the following agreements: Open, Open Value, Select, Enterprise, and Services Provider License.

- Contact the [Microsoft activation center](https://www.microsoft.com/licensing/existing-customer/activation-centers).

### KMS host keys

A KMS host needs a key that activates, or authenticates, the KMS host with Microsoft. This key is referred to as the *KMS host key*, but it's formally known as a *Microsoft Customer Specific Volume License Key* (CSVLK). Some documentation and internet references use the term KMS key, but CSVLK is the proper name for current documentation and management tools.

A KMS host running a currently supported version of Windows Server can activate both Windows Server and Windows client operating systems. A KMS host key is also needed to create the activation objects in ADDS, as described later in this guide. A KMS host key is needed for any KMS that is set up. Additionally, it needs to be determined if Active Directory-based activation will be used.

### Generic volume licensing keys

If computers are activated with KMS or Active Directory-based activation when using custom installation media or an image to install Windows, install a generic volume license key (GVLK) when creating the custom installation media or image. The GVLK should match the edition of Windows being installed.

Installation media from Microsoft for Enterprise editions of the Windows operating system might already contain the GVLK. One GVLK is available for each type of installation. The GVLK doesn't activate the software against Microsoft activation servers, but rather against a KMS or Active Directory-based activation object. In other words, the GVLK doesn't work unless a valid KMS host key can be found. GVLKs are the only product keys that don't need to be kept confidential.

Typically, a GVLK doesn't need to be manually entered unless a computer is:

- Activated with a MAK or a retail key.
- Being converted to a KMS activation or to Active Directory-based activation.

If the GVLK for a particular client edition needs to be located, see [Key Management Services (KMS) client activation and product keys](/windows-server/get-started/kms-client-activation-keys).

### Multiple activation keys

MAK keys with the appropriate number of activations available are also needed. The number of times a MAK has been used can be seen on the Volume Licensing Service Center website or in the VAMT.

## Selecting a KMS host

The KMS doesn't require a dedicated server. It can be cohosted with other services, such as ADDS domain controllers and read-only domain controllers.

KMS hosts can run on physical computers or virtual machines that are running any supported Windows operating system. A KMS host that is running currently supported versions of Windows Server can activate any Windows client or server operating system that supports volume activation. A KMS host that is running a currently supported version of Windows client can only activate computers running a currently supported version of Windows client.

A single KMS host can support unlimited numbers of KMS clients, but Microsoft recommends deploying a minimum of two KMS hosts for failover purposes. However, as more clients are activated through Active Directory-based activation, the KMS and the redundancy of the KMS might not be needed. Most organizations can use as few as two KMS hosts for their entire infrastructure.

The flow of KMS activation is shown in Figure 3, and it follows this sequence:

1. An administrator uses the VAMT console to configure a KMS host and install a KMS host key.

1. Microsoft validates the KMS host key, and the KMS host starts to listen for requests.

1. The KMS host updates resource records in DNS to allow clients to locate the KMS host. Manually adding DNS records is required if the environment doesn't support DNS dynamic update protocol.

1. A client configured with a GVLK uses DNS to locate the KMS host.

1. The client sends one packet to the KMS host.

1. The KMS host records information about the requesting client (by using a client ID). Client IDs are used to maintain the count of clients and detect when the same computer is requesting activation again. The client ID is only used to determine whether the activation thresholds are met. The IDs aren't stored permanently or transmitted to Microsoft. If the KMS is restarted, the client ID collection starts again.

1. If the KMS host has a KMS host key that matches the products in the GVLK, the KMS host sends a single packet back to the client. This packet contains a count of the number of computers that requested activation from this KMS host.

1. If the count exceeds the activation threshold for the product that is being activated, the client is activated. If the activation threshold isn't met, the client tries again.

![KMS activation flow.](../images/volumeactivationforwindows81-03.jpg)

**Figure 3**. KMS activation flow

## Related content

- [Volume activation for Windows](volume-activation-windows.md).
