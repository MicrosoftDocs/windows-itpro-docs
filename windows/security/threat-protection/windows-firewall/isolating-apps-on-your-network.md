---
title: Isolating Microsoft Store Apps on Your Network (Windows 10)
description: Isolating Microsoft Store Apps on Your Network
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
ms.date: 10/13/2017
---

# Isolating Microsoft Store Apps on Your Network

**Applies to**
-   Windows 10
-   Windows Server 2016

When you add new devices to your network, you may want to customize your Windows Defender Firewall with Advanced Security configuration to isolate the network access of the new Microsoft Store apps that run on them. Developers who build Microsoft Store apps can declare certain app capabilities that enable different classes of network access. A developer can decide what kind of network access the app requires and configure this capability for the app. When the app is installed on a device, appropriate firewall rules are automatically created to enable access. You can then customize the firewall configuration to further fine-tune this access if they desire more control over the network access for the app.

For example, a developer can decide that their app should only connect to trusted local networks (such as at home or work), and not to the Internet. In this way, developers can define the scope of network access for their app. This network isolation prevents an app from accessing a network and a connection type (inbound or outbound) if the connection has not been configured for the app. Then the network administrator can customize the firewall to further restrict the resources that the app can access.

The ability to set and enforce these network boundaries ensures that apps that get compromised can only access networks where they have been explicitly granted access. This significantly reduces the scope of their impact on other apps, the  device, and the network. In addition, apps can be isolated and protected from malicious access from the network.

When creating new Microsoft Store apps, a developer can define the following network capabilities for their app:

-   **Home\\Work Networking**

    Provides inbound and outbound access to intranet networks that the user has designated as a home or a work network, or if the network has an authenticated domain controller.

-   **Internet (Client)**

    Provides outbound access to the Internet and untrusted networks, such as airports and coffee shops (for example, intranet networks where the user has designated the network as Public). Most apps that require Internet access should use this capability.

-   **Internet (Client and Server)**

    Provides inbound and outbound access to the Internet and untrusted networks, such as airports and coffee shops. This capability is a superset of the **Internet (Client)** capability, and **Internet (Client)** does not need to be enabled if this capability is enabled.

-   **Proximity**

    Provides near-field communication (NFC) with devices that are in close proximity to the  device. Proximity may be used to send files or connect with an application on a proximate device.

**In this topic**

To isolate Microsoft Store apps on your network, you need to use Group Policy to define your network isolation settings and create custom Microsoft Store app firewall rules.

-   [Prerequisites](#prerequisites)

-   [Step 1: Define your network](#step-1-define-your-network)

-   [Step 2: Create custom firewall rules](#step-2-create-custom-firewall-rules)

## Prerequisites

-   A domain controller is installed on your network, and your devices are joined to the Windows domain.

-   Your Microsoft Store app is installed on the client device.

-   The Remote Server Administration Tools (RSAT) are installed on your client device. When you perform the following steps from your client device, you can select your Microsoft Store app when you create Windows Defender Firewall rules.

    >**Note:**  You can install the RSAT on your device running Windows 10 from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=45520).

     
## Step 1: Define your network

The **Home\\Work Networking** capability enables access to intranet resources. Administrators can use Group Policy settings to define the scope of the intranet. This ensures that Microsoft Store apps can access intranet resources appropriately.

A network endpoint is considered part of the **Home\\Work Network** if:

-   It is part of the local subnet of a trusted network.

    For example, home users generally flag their network as Trusted. Local  devices will be designated as such.

-   A  device is on a network, and it is authenticated to a domain controller.

    -   Endpoints within the intranet address space are considered private.

    -   Endpoints within the local subnet are considered private.

-   The device is configured for DirectAccess, and the endpoint is part of the intranet address space.

The intranet address space is composed of configured Active Directory sites and subnets, and it is configured for Windows network isolation specifically by using Group Policy. You can disable the usage of Active Directory sites and subnets by using Group Policy by declaring that your subnet definitions are authoritative.

Any proxies that you configure or that are automatically configured with proxy autoconfiguration (by using Web Proxy Auto-Discovery (WPAD) protocol) are exempt from the intranet zone. You can add proxy addresses by using Group Policy.

All other endpoints that do not meet the previously stated criteria are considered endpoints on the Internet.

**To configure a GPO that defines your intranet address space**

1.  Open the Group Policy Management snap-in (gpmc.msc) and edit the Default Domain Policy.

2.  From the Group Policy Management Editor, expand **Computer Configuration**, expand **Policies**, expand **Administrative Templates**, expand **Network**, and click **Network Isolation**.

3.  In the right pane, double-click **Private network ranges for apps**.

4.  In the **Private network ranges for apps** dialog box, click **Enabled**. In the **Private subnets** text box, type the private subnets for your intranet, separated by commas if necessary.

    For example, if the Contoso intranet is defined as 10.0.0.0 with a subnet mask of 255.255.255.0, you would type 10.0.0.0/24 in the **Private subnets** text box.

5.  Double-click **Subnet definitions are authoritative**.

    If you want the subnet definitions that you previously created to be the single source for your subnet definition, click **Enabled**. Otherwise, leave the **Not Configured** default so that you can add additional subnets by using local settings or network isolation heuristics.

**To configure the proxy addresses for the intranet and Internet**

1.  Double-click **Internet proxy servers for apps**. Click **Enabled**, and then in the **Domain Proxies** text box, type the IP addresses of your Internet proxy servers, separated by semicolons.

2.  Double-click **Intranet proxy servers for apps**. Click **Enabled**, and then in the IP address text box, type the IP addresses of your intranet proxy servers, separated by semicolons.

3.  Double-click **Proxy definitions are authoritative**.

    If you want the proxy definitions that you previously created to be the single source for your proxy definition, click **Enabled**. Otherwise, leave the **Not Configured** default so that you can add additional proxies by using local settings or network isolation heuristics.

## Step 2: Create custom firewall rules

Microsoft Store apps can declare many capabilities in addition to the network capabilities discussed previously. For example, apps can declare capabilities to access user identity, the local file system, and certain hardware devices.

The following table provides a complete list of the possible app capabilities.

| Capability | Name | Description |
| - | - | - |
| **Internet (Client)** | internetClient | Your outgoing Internet connection.|
| **Internet (Client &amp; Server)** | internetClientServer| Your Internet connection, including incoming unsolicited connections from the Internet The app can send information to or from your device through a firewall. You do not need to declare **internetClient** if this capability is declared. 
| **Home\Work Networking** |privateNetworkClientServer| A home or work network. The app can send information to or from your  device and other devices on the same network.| 
| **Document Library Access**| documentsLibrary| Your Documents library, including the capability to add, change, or delete files. The package can only access file types that are declared in the manifest.| 
| **Picture Library Access**| picturesLibrary| Your Pictures library, including the capability to add, change, or delete files.| 
| **Video Library Access**| videosLibrary| Your Videos library, including the capability to add, change, or delete files.| 
| **Music Library Access**| musicLibrary|Your Music library, including the capability to add, change, or delete files.| 
| **Default Windows Credentials**| defaultWindowsCredentials| Your Windows credentials for access to a corporate intranet. This application can impersonate you on the network.| 
| **Removable Storage** | removableStorage| A removable storage device, such as an external hard disk, USB flash drive, or MTP portable device, including the capability to add, change, or delete specific files. This package can only access file types that are declared in the manifest.| 
| **Shared User Certificates**| sharedUserCertificates| Software and hardware certificates or a smart card, which the app uses to identify you. This capability can be used by an employer, a bank, or government services to identify you.| 
| **Location**| location| Provides access to the user's current location.| 
| **Microphone** | microphone| Provides access to the microphone's audio feed.| 
| **Near-field Proximity** | proximity| Required for near-field communication (NFC) between devices in close proximity. NFC can be used to send files or connect with an app on a proximate device.| 
| **Text Messaging** | sms| Provides access to text messaging functionality.| 
| **Webcam** | webcam| Provides access to the webcam's video feed.| 
| **Other devices (represented by GUIDs)** | &lt;GUID&gt;| Includes specialized devices and Windows Portable Devices.| 

You can create a Windows Defender Firewall policy that is scoped to a set of apps that use a specified capability or scoped to a specific Microsoft Store app.

For example, you could create a Windows Defender Firewall policy to block Internet access for any apps on your network that have the Documents Library capability.

**To block Internet access for any apps on your network that have the Documents Library capability**

1.  Open the Group Policy Management snap-in (gpmc.msc).

2.  In the left pane, right-click your domain name and click **Create a GPO in this domain, and link it here**.

3.  Type a name for the GPO in the **Name** text box, and then click **OK**.

4.  Right-click the new GPO, and then click **Edit**.

5.  In the Group Policy Management Editor, expand **Computer Configuration**, expand **Policies**, expand **Windows Settings**, expand **Security Settings**, expand **Windows Defender Firewall with Advanced Security**, and click **Windows Defender Firewall – LDAP://…**

6.  Right-click **Outbound Rules**, and then click **New Rule**.

7.  Click **Custom**, and then click **Next**.

8.  Click **Next** on the **Program** page, the **Protocols and Ports** page, and the **Scope** page.

9.  On the **Action** page, ensure that **Block the Connection** is selected, and then click **Next**.

10. On the **Profile** page, click **Next**.

11. On the **Name** page, type a name for your rule, and then click **Finish**.

12. In the right pane, right-click your new rule and click **Properties**.

13. Click the **Local Principals** tab, select the **Only allow connections from these users** check box, and then click **Add**.

14. Click **Application Package Properties**, and then click **OK**.

15. In the **Choose Capabilities** dialog box, click **APPLICATION PACKAGE AUTHORITY\\Your documents library**, and then click **OK**.

16. Click the **Scope** tab under **Remote IP addresses**, and then click **Add**.

17. Click **Predefined set of computers**, select **Internet**, and click **OK**.

    This scopes the rule to block traffic to Internet  devices.

18. Click the **Programs and Services** tab, and in the **Application Packages** area, click **Settings**.

19. Click **Apply to application packages only**, and then click **OK**.

    >**Important:**  You must do this to ensure that the rule applies only to Microsoft Store apps and not to other apps. Desktop apps declare all capabilities by default, and this rule would apply to them if you do not configure it this way.

20. Click **OK** to close the **Properties** dialog box.

21. Close the Group Policy Management Editor.

22. In the Group Policy Management snap-in, ensure that your new GPO is selected, and in the right pane under **Security Filtering**, select **Authenticated Users**. Click **Remove**, and then click **OK**.

23. Under **Security Filtering**, click **Add**.

24. Type **domain computers** in the text box, and then click **OK**.

25. Close the Group Policy Management snap-in.

Use the following procedure if you want to block intranet access for a specific media sharing app on your network.

**To block intranet access for a specific media sharing app on your network**

1.  Open the Group Policy Management snap-in (gpmc.msc).

2.  In the left pane, right-click your domain name, and then click **Create a GPO in this domain, and link it here**.

3.  Type a name for your GPO in the **Name** text box, and then click **OK**.

4.  Right-click your new GPO, and then click **Edit**.

5.  From the Group Policy Management Editor, expand **Computer Configuration**, expand **Policies**, expand **Windows Settings**, expand **Security Settings**, expand **Windows Defender Firewall**, and then click **Windows Defender Firewall – LDAP://**…

6.  Right-click **Outbound Rules**, and then click **New Rule**.

7.  Click **Custom**, and then click **Next**.

8.  Click **Next** on the **Program** page, the **Protocols and Ports** page, and the **Scope** page.

9.  On the **Action** page, ensure **Block the Connection** is selected, and then click **Next**.

10. On the **Profile** page, click **Next**.

11. On the **Name** page, type a name for your rule, and then click **Finish**.

12. In the right pane, right-click your new rule, and then click **Properties**.

13. Click the **Local Principals** tab, select the **Only allow connections from these users** check box, and then click **Add**.

14. Click **Application Package Properties**, and then click **OK**.

15. In the **Choose Capabilities** dialog box, click **APPLICATION PACKAGE AUTHORITY\\A home or work network**, and then click **OK**.

16. Click the **Programs and Services** tab under **Application Packages**, and then click **Settings**.

17. Click **Apply to this application package**, select the app in the text box, and then click **OK**.

18. Click **OK** to close the **Properties** dialog box.

19. Close the Group Policy Management Editor.

20. In Group Policy Management, ensure that your new GPO is selected, and in the right pane under **Security Filtering**, select **Authenticated Users**, click **Remove**, and then click **OK**.

21. Under **Security Filtering**, click **Add**.

22. Type **domain computers** in the text box and click **OK**.

23. Close Group Policy Management.

## See also

-   [Windows Defender Firewall with Advanced Security Overview](windows-firewall-with-advanced-security.md)
