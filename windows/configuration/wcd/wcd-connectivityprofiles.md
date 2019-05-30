---
title: ConnectivityProfiles (Windows 10)
description: This section describes the ConnectivityProfile settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
---

# ConnectivityProfiles (Windows Configuration Designer reference)

Use to configure profiles that a user will connect with, such as an email account or VPN profile.

## Applies to

| Setting groups  | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Email](#email)  | X |  X  | X |  |  |
| [Exchange](#exchange) | X |  X  | X |  |  |
| [KnownAccounts](#knownaccounts) | X |  X  | X |  |  |
| [VPN](#vpn) | X |  X  | X | X |  |
| [WiFiSense](#wifisense) | X |  X  | X |  |  |
| [WLAN](#wlan) | X |  X  | X | X |  |

## Email

Specify an email account to be automatically set up on the device. 

1. In **Available customizations**, select **Email**, enter a friendly name for the account, and then click **Add**.
2. In **Available customizations**, select the name that you just created. The following table describes the settings you can configure for each account. Settings in **bold** are required.

| Setting | Description | 
| --- | --- |
| **AccountType** | Select between **Normal email** and **Visual voice mail** |
| AuthForOutgoingMail | Set to **True** if the outgoing server requires authentication |
| Domain | Enter the domain for the account |
| HaveAlternateCredentialsForSMTP | Specify whether the user's alternate SMTP account is enabled. If enabled, configure the **SMTPDomain**, **SMTPName**, and **SMTPPassword** settings |
| InboxUpdateFrequency | Specify the time between email send/receive updates, in minutes. Available values are:</br></br>- Manual update</br>- Every 2 hours</br>- Every 15 minutes</br>- Every 30 minutes</br>- Every hour  |
| **IncomingMailServerName** | Enter the name of the messaging service's incoming email server |
| **OutgoingServerName** | Enter the name of the messaging service's outgoing mail server  |
| Password | Enter the password for the account |
| ReplyAddress | Enter the reply address for the account  |
| SenderName | Enter the name of the sender for the account |
| **ServiceName** | Enter the name of the email service |
| **ServiceType** | Select **IMAP4** or **POP3** for service type |
| SMTPDomain | Enter the domain name for the user's alternate SMTP account, if **HaveAlternateCredentialsForSMTP** is enabled  |
| SMTPName | Enter the display name associated with the user's alternate SMTP account, if **HaveAlternateCredentialsForSMTP** is enabled |
| SMTPPassword | Enter the password for the user's alternate SMTP account, if **HaveAlternateCredentialsForSMTP** is enabled  |
| SSLIncoming | Specify whether the incoming email server uses SSL |
| SSLOutgoing | Specify whether the outgoing email server uses SSL |
| SyncOptions | Specify how many days' worth of emails should be downloaded from the server. Available values are:</br></br>- All mail</br>- Two weeks</br>- One month</br>- One week |
| **UserName** | Enter the user name for the account |

## Exchange

Configure settings related to Exchange email server. These settings are related to the [ActiveSync configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/activesync-csp).


1. In **Available customizations**, select **Exchange**, enter a name for the account, and then click **Add**. A globally unique identifier (GUID) is generated for the account.
2. In **Available customizations**, select the GUID that you just created. The following table describes the settings you can configure. Settings in **bold** are required.

| Setting | Description | 
| --- | --- |
| AccountIcon | Specify the location of the icon associated with the account.</br></br>The account icon can be used as a tile in the Start list or as an icon in the applications list under **Settings > Email & accounts**. Some icons are already provided on the device. The suggested icon for POP/IMAP or generic ActiveSync accounts is at `res://AccountSettingsSharedRes{ScreenResolution}!%s.genericmail.png`. The suggested icon for Exchange Accounts is at `res://AccountSettingsSharedRes{ScreenResolution}!%s.office.outlook.png`. Custom icons can be added if desired. |
| **AccountName** | Enter the name that refers to the account on the device |
| **AccountType** | Select **Exchange** |
| **DiagnosticLogging** | Select whether to disable logging, enable basic logging, or enable advanced logging |
| Domain | Enter the domain name of the Exchange server |
| **EmailAddress** | Enter the email address associated with the Exchange ActiveSync account. |
| **MailAgeFilter** | Specify the time window used for syncing email items to the device. Available values are:</br></br>- All email is synced</br>- Only email up to three days old is synced</br>-Email up to a week old is synced (default)</br>- Email up to two weeks old is synced</br>- Email up to a month old is synced  |
| **Password** | Enter the password for the account |
| **Schedule** | Specify the time until the next sync is performed, in minutes. Available values are:</br></br>- As items are received (default)</br>- Sync manually</br>- Every 15 minutes</br>- Every 30 minutes</br>- Every 60 minutes |
| **ServerName**| Enter the server name used by the account |
| SyncCalendar_Enable | Enable or disable calendar sync |
| SyncCalendar_Name | If you enable calendar sync, enter **Calendar** |
| SyncContacts_Enable | Enable or disable contacts sync |
| SyncContacts_Name | If you enable contacts sync, enter **Contacts** |
| SyncEmail_Enable| Enable or disable email sync  |
| SyncEmail_Name | If you enable email sync, enter **Email** |
| SyncTasks_Enable | Enable or disable tasks sync |
| SyncTasks_Name | If you enable tasks sync, enter **Tasks** |
| **UserName** | Enter the user name for the account |
| UseSSL | Specify whether to use Secure Sockets Layer (SSL) |

## KnownAccounts

Configure the settings to add additional email accounts.

| Setting | Description |
| --- | --- |
| KnownAccountsOEM |Enter the source or file location of the KnownAccountsOEM.xml file on your development workstation. |
| OemFilePath | Enter the name of the XML file that defines the new account to be added. The name must be KnownAccountsOEM.xml.  |

## VPN

Configure settings to change the default maximum transmission unit ([MTU](#mtu)) size settings for Point-to-Point Protocol (PPP) connections or for virtual private network (VPN) connections, or to create a [VPN profile](#vpn).

### MTU

| Setting | Description |
| --- | --- |
| PPPProtocolType  | Select **VPNPPPProtocolType**  |
| ProtocolType | Select **VPNProtocolType** |
| TunnelMTU | Enter the desired MTU size, between **1** and **1500** |

### VPN

1. In **Available customizations**, select **VPNSetting**, enter a friendly name for the account, and then click **Add**.
2. In **Available customizations**, select the name that you just created. The following table describes the settings you can configure. Settings in **bold** are required.

| Setting | Description |
| --- | --- |
| **ProfileType**  | Choose between **Native** and **Third Party**  |
| AlwaysOn | Set to **True** to automatically connect the VPN at sign-in  |
| ByPassForLocal | When set to **True**, requests to local resources on the same Wi-Fi neetwork as the VPN client can bypass VPN  |
| DnsSuffix | Enter one or more comma-separated DNS suffixes. The first suffix listed is usedas the primary connection-specific DNS suffix for the VPN interface. The list is added to the SuffixSearchList.  |
| LockDown | When set to **True**:</br>- Profile automatically becomes an "always on" profile</br>- VPN cannot be disconnected</br>-If the profile is not connected, the user has no network connectivity</br>- No other profiles can be connected or modified |
| Proxy | Configure to **Automatic** or **Manual**  |
| ProxyAutoConfigUrl  | When **Proxy** is set to **Automatic**, enter the URL to automatically retrieve the proxy settings |
| ProxyServer | When **Proxy** is set to **Manual**, enter the proxy server address as a fully qualified hostname or enter `IP address:Port` |
| RememberCredentials | Select whether credentials should be cached |
| TrustedNetworkDetection | Enter a comma-separated string to identify the trusted network. VPN will not connect automatically when the user is on their corporate wireless network where protected resources are directly accessible to the device. |

When **ProfileType** is set to **Native**, the following additional settings are available.

Setting | Description 
--- | ---
AuthenticationUserMethod | When you set **NativeProtocolType** to **IKEv2**, choose between **EAP** and **MSChapv2**.
EAPConfiguration | When you set **AuthenticationUserMethod** to **EAP**, enter the HTML-encoded XML to configure EAP. For more information, see [EAP configuration](https://docs.microsoft.com/windows/client-management/mdm/eap-configuration).
NativeProtocolType | Choose between **PPTP**, **L2TP**, **IKEv2**, and **Automatic**.
RoutingPolicyType | Choose between **SplitTunnel**, in which traffic can go over any interface as determined by the networking stack, and **ForceTunnel**, in which all IP traffic must go over the VPN interface.
Server | Enter the public or routable IP address or DNS name for the VPN gateway. It can point to the exteranl IP of a gateway or a virtual IP for a server farm.

When **ProfileType** is set to **Third Party**, the following additional settings are available.

Setting | Description
--- |---
PluginProfileCustomConfiguration | Enter HTML-encoded XML for SSL-VPN plug-in specific configuration, including authentication information that is deployed to the device to make it available for SSL-VPN plug-ins. Contact the plug-in provider for format and other details. Most plug-ins can also configure values based on the server negotiations as well as defaults.
PluginProfilePackageFamilyName | Choose between **Pulse Secure VPN**, **F5 VPN Client**, and **SonicWALL Mobile Connect**.
PluginProfileServerUrlList | Enter a comma-separated list of servers in URL, hostname, or IP format.

## WiFiSense

Configure settings related to Wi-Fi Sense. 

### Config

The **Config** settings are initial settings that can be overwritten when settings are pushed to the device by the cloud. 

| Setting | Description |
| --- | --- |
| WiFiSharingFacebookInitial | Enable or disable sharing of Wi-Fi networks with Facebook contacts  |
| WiFiSharingOutlookInitial | Enable or disable sharing of Wi-Fi networks with Outlook contacts |
| WiFiSharingSkypeInitial | Enable or disable sharing of Wi-Fi networks with Skype contacts |

### FirstBoot 

| Setting | Description |
| --- | --- |
| DefaultAutoConnectOpenState | When enabled, the OOBE Wi-Fi Sense checkbox to automatically connect to open networks will be checked. |
| DefaultAutoConnectSharedState | When enabled, the OOBE Wi-Fi Sense checkbox to share networks with contacts will be checked. |
| WiFiSenseAllowed | Enable or disable Wi-Fi Sense. Wi-Fi Sense features include auto-connect to Wi-Fi hotspots and credential sharing. |

### SystemCapabilities 

You can use these settings to configure system capabilities for Wi-Fi adapters, which is a new functionality in Windows 10. These system capabilities are added at image time to ensure that the information is at its most accurate. The capabilities allow the OS to have a better understanding of the underlying hardware that it's running on. Diagnostic data is generated by the system to provide data that can be used to diagnose both software and hardware issues. 

| Setting | Description | 
| --- | --- |
| CoexistenceSupport | Specify the type of co-existence that's supported on the device:</br></br>- **Both**: Both Wi-Fi and Bluetooth work at the same performance level during co-existence</br>- **Wi-Fi reduced**: On a 2X2 system, Wi-Fi performance is reduced to 1X1 level</br>- **Bluetooth centered**: When co-existing, Bluetooth has priority and restricts Wi-Fi performance</br>- **One**: Either Wi-Fi or Bluetooth will stop working  |
| NumAntennaConnected | Enter the number of antennas that are connected to the WLAN radio |
| SimultaneousMultiChannelSupported | Enter the maximum number of channels that the Wi-Fi device can simultaneously operate on. For example, you can use this to specify support for Station mode and Wi-Fi Direct GO on separate channels simultaneously.  |
| WLANFunctionLevelDeviceResetSupported | Select whether the device supports functional level device reset (FLDR). The FLDR feature in the OS checks this system capability exclusively to determine if it can run. |
| WLANPlatformLevelDeviceResetSupported | Select whether the device supports platform level device reset (PLDR). The PLDR feature in the OS checks this system capability exclusively to determine if it can run. |


## WLAN

Configure settings for wireless connectivity.  

### Profiles

**To add a profile**

1. Create [the wireless profile XML](https://msdn.microsoft.com/library/windows/desktop/aa369853.aspx).
2. In **WLAN > Profiles**, browse to and select the profile XML file.
3. Click **Add**.

### WLANXmlSettings

Enter a SSID, click **Add**, and then configure the following settings for the SSID.

| Settings | Description |
| --- |  --- |
| ProxyServerPort |  (Optional) Specify the configuration of the network proxy as **host:port**. A proxy server host and port can be specified per connection for Windows 10 for mobile devices. The host can be server name, FQDN, or SLN or IPv4 or IPv6 address. This proxy configuration is only supported in Windows 10 for mobile devices. Using this configuration in Windows 10 for desktop editions will result in failure.   |
| AutoConnect |  (Optional) Select **True** or **false** to specify whether to automatically connect to WLAN.     |
| HiddenNetwork |  (Optional) Select **True** or **false** to specify whether the network is hidden.    |
| SecurityType |  Choose between **Open**, **WEP**, and **WPA2-Personal**. </br></br>If you select **WEP** or **WPA2-Personal**, enter the **SecurityKey** required by the WLAN.    |
