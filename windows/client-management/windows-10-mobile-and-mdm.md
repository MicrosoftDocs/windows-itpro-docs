---
title: Windows 10 Mobile deployment and management guide (Windows 10)
description: This guide helps IT professionals plan for and deploy Windows 10 Mobile devices.
ms.assetid: 6CAA1004-CB65-4FEC-9B84-61AAD2125E5E
ms.reviewer: 
manager: dansimp
ms.author: dansimp
keywords: Mobile, diagnostic data, BYOD, MDM
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: mobile, devices, security
ms.localizationpriority: medium
author: dansimp
ms.date: 01/26/2019
ms.topic: article
---

# Windows 10 Mobile deployment and management guide

**Applies to:**
- Windows 10 Mobile, version 1511 and Windows 10 Mobile, version 1607

This guide helps IT professionals plan for and deploy Windows 10 Mobile devices.

Employees increasingly depend on smartphones to complete daily work tasks, but these devices introduce unique management and security challenges. Whether providing corporate devices or allowing people to use their personal devices, IT needs to deploy and manage mobile devices and apps quickly to meet business goals. However, they also need to ensure that the apps and data on those mobile devices are protected against cybercrime or loss. Windows 10 Mobile helps organizations directly address these challenges with robust, flexible, built-in mobile device and app management technologies.
Windows 10 supports end-to-end device lifecycle management to give companies control over their devices, data, and apps. Devices can easily be incorporated into standard lifecycle practices, from device enrollment, configuration, and application management to maintenance, monitoring, and retirement using a comprehensive mobile device management solution.

**In this article**
- [Deploy](#deploy)
- [Configure](#configure)
- [Apps](#apps)
- [Manage](#manage)
- [Retire](#retire)


## Deploy

Windows 10 Mobile has a built-in device management client to deploy, configure, maintain, and support smartphones. Common to all editions of the Windows 10 operating system, including desktop, mobile, and Internet of Things (IoT), this client provides a single interface through which Mobile Device Management (MDM) solutions can manage any device that runs Windows 10. Because the MDM client integrates with identity management, the effort required to manage devices throughout the lifecycle is greatly reduced.
Windows 10 includes comprehensive MDM capabilities that can be managed by Microsoft management solutions, such as Microsoft Intune or System Center Configuration Manager, as well as many third-party MDM solutions. There is no need to install an additional, custom MDM app to enroll devices and bring them under MDM control. All MDM system vendors have equal access to Windows 10 Mobile device management application programming interfaces (APIs), giving IT organizations the freedom to select whichever system best fits their management requirements, whether Microsoft Intune or a third-party MDM product. For more information about Windows 10 Mobile device management APIs, see [Mobile device management](https://go.microsoft.com/fwlink/p/?LinkId=734050).

### <a href="" id="deployment-scenarios"></a>Deployment scenarios

*Applies to: Corporate and personal devices*

The built-in MDM client is common to all editions of the Windows 10 operating system, including desktop, mobile, and Internet of Things (IoT). The client provides a single interface through which you can manage any device that runs Windows 10. The client has two important roles: device enrollment in an MDM system and device management.

Organizations typically have two scenarios to consider when it comes to device deployment: Bring Your Own (BYO) personal devices and Choose Your Own (CYO) company-owned devices. In both cases, the device must be enrolled in an MDM system, which would configure it with settings appropriate for the organization and the employee.
Windows 10 Mobile device management capabilities support both personal devices used in the BYO scenario and corporate devices used in the CYO scenario. The operating system offers a flexible approach to registering devices with directory services and MDM systems. IT organizations can provision comprehensive device-configuration profiles based on their business needs to control and protect mobile business data. Apps can be provisioned easily to personal or corporate devices through the Microsoft Store for Business, or by using their MDM system, which can also work with the Microsoft Store for Business for public store apps.
Knowing who owns the device and what the employee will use it for are the major factors in determining your management strategy and which controls your organization should put in place. Whether personal devices, corporate devices, or a mixture of the two, deployment processes and configuration policies may differ.

For **personal devices**, companies need to be able to manage corporate apps and data on the device without impeding the employee’s ability to personalize it to meet their individual needs. The employee owns the device and corporate policy allows them to use it for both business and personal purposes, with the ability to add personal apps at their discretion. The main concern with personal devices is how organizations can prevent corporate data from being compromised, while still keeping personal data private and under the sole control of the employee. This requires that the device be able to support separation of apps and data with strict control of business and personal data traffic.

For **corporate devices**, organizations have a lot more control. IT can provide a selected list of supported device models to employees, or they can directly purchase and preconfigure them. Because devices are owned by the company, employees can be limited as to how much they can personalize these devices. Security and privacy concerns may be easier to navigate, because the device falls entirely under existing company policy.

### <a href="" id="device-enrollment"></a>Device enrollment

*Applies to: Corporate and personal devices*

The way in which personal and corporate devices are enrolled into an MDM system differs. Your operations team should consider these differences when determining which approach is best for mobile workers in your organization.

**Device initialization and enrollment considerations**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong>Personal devices</strong></td>
<td align="left">Corporate devices</strong></td>
</tr>
<tr class="even">
<td align="left"><strong>Ownership</strong></td>
<td align="left">Employee</td>
<td align="left">Organization</td>
</tr>
<tr class="odd">
<td align="left"><strong>Device Initialization</strong>

In the Out-of-the-Box Experience (OOBE), the first time the employee starts the device, they are requested to add a cloud identity to the device.</td>
<td align="left">The primary identity on the device is a personal identity. Personal devices are initiated with a Microsoft Account (MSA), which uses a personal email address. </td>
<td align="left">The primary identity on the device is an organizational identity. Corporate devices are initialized with an organizational account (account@corporatedomain.ext).
Initialization of a device with a corporate account is unique to Windows 10. No other mobile platform currently offers this capability. The default option is to use an Azure Active Directory organizational identity.
Skipping the account setup in OOBE will result in the creation of a local account. The only option to add a cloud account later is to add an MSA, putting this device into a personal device deployment scenario. To start over, the device will have to be reset.
</td>
</tr>
<tr class="even">
<td align="left"><strong>Device Enrollment</strong>

Enrolling devices in an MDM system helps control and protect corporate data while keeping workers productive. </td>
<td align="left">Device enrollment can be initiated by employees. They can add an Azure account as a secondary account to the Windows 10 Mobile device. Provided the MDM system is registered with your Azure AD, the device is automatically enrolled in the MDM system when the user adds an Azure AD account as a secondary account (MSA+AAD+MDM). If your organization does not have Azure AD, the employee’s device will automatically be enrolled into your organization’s MDM system (MSA+MDM).
MDM enrollment can also be initiated with a provisioning package. This option enables IT to offer easy-to-use self-service enrollment of personal devices. Provisioning is currently only supported for MDM-only enrollment (MSA+MDM).
</td>
<td align="left">The user initiates MDM enrollment by joining the device to the Azure AD instance of their organization. The device is automatically enrolled in the MDM system when the device registers in Azure AD. This requires your MDM system to be registered with your Azure AD (AAD+MDM).</td>
</tr>
</tbody>
</table>

**Recommendation:** Microsoft recommends Azure AD registration and automatic MDM enrollment for corporate devices (AAD+MDM) and personal devices (MSA+AAD+MDM). This requires Azure AD Premium.

### <a href="" id="identity-management"></a>Identity management

*Applies to: Corporate and personal devices*

Employees can use only one account to initialize a device so it’s imperative that your organization controls which account is enabled first. The account chosen will determine who controls the device and influence your management capabilities.

>**Note:** Why must the user add an account to the device in OOBE? Windows 10 Mobile are single user devices and the user accounts give access to a number of default cloud services that enhance the productivity and entertainment value of the phone for the user. Such services are: Store for downloading apps, Groove for music and entertainment, Xbox for gaming, etc. Both an [MSA](https://www.microsoft.com/en-us/account/) and an [Azure AD account](https://www.microsoft.com/en-us/server-cloud/products/azure-active-directory/?WT.srch=1&WT.mc_id=SEM_%5B_uniqid%5D&utm_source=Bing&utm_medium=CPC&utm_term=azure%20ad&utm_campaign=Enterprise_Mobility_Suite) give access to these services.

The following table describes the impact of identity choice on device management characteristics of the personal and corporate device scenarios.

**Identity choice considerations for device management**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong>Personal identity</strong></td>
<td align="left"><strong>Work identity</td>
</tr>
<tr class="even">
<td align="left"><strong>First account on the device</strong></td>
<td align="left">Microsoft Account</td>
<td align="left">Azure AD account</td>
</tr>
<tr class="odd">
<td align="left"><strong>Ease of enrollment</td>
<td align="left">Employees use their Microsoft Account to activate the device. Then, they use their Azure AD account (organizational identity) to register the device in Azure AD and enroll it with the company’s MDM solution (MSA+AAD+MDM).</td>
<td align="left">Employees use their Azure AD account to register the device in Azure AD and automatically enroll it with the organization’s MDM solution (AAD+MDM – requires Azure AD Premium).</td>
</tr>
<tr class="even">
<td align="left"><strong>Credential management</strong></td>
<td align="left">Employees sign in to the device with Microsoft Account credentials.
Users cannot sign in to devices with Azure AD credentials, even if they add the credentials after initial activation with a Microsoft account.
</td>
<td align="left">Employees sign in to the device with Azure AD credentials.
IT can block the addition of a personal identity, such as an MSA or Google Account. IT controls all devices access policies, without limitations.
</td>
</tr>
<tr class="even">
<td align="left"><strong>Ability to block the use of a personal identity on the device</strong></td>
<td align="left">No</td>
<td align="left">Yes</td>
</tr>
<tr class="even">
<td align="left"><strong>User settings and data roaming across multiple Windows devices</td>
<td align="left">User and app settings roam across all devices activated with the same personal identity through OneDrive.</td>
<td align="left">If the device is activated with an MSA, then adds an Azure AD account, user an app settings roam. If you add your MSA to an Azure AD- joined device, this will not be the case. Microsoft is investigating Enterprise roaming for a future release.</td>
</tr>
<tr class="even">
<td align="left"><strong>Level of control</strong></td>
<td align="left">Organizations can apply most of the available restrictive policies to devices and disable the Microsoft account. You can prevent users from reclaiming full control over their devices by unenrolling them from the organization’s MDM solution or resetting the device. Legal limitations may apply. For more information, contact your legal department.</td>
<td align="left">Organizations are free to apply any restrictive policies to devices to bring them in line with corporate standards and compliance regulations. They can also prevent the user from unenrolling the device from the enterprise.</td>
</tr>
<tr class="even">
<td align="left"><strong>Information Protection</strong></td>
<td align="left">You can apply policies to help protect and contain corporate apps and data on the devices and prevent intellectual property leaks, but still provide employees with full control over personal activities like downloading and installing apps and games.</td>
<td align="left">Companies can block personal use of devices. Using organizational identities to initialize devices gives organizations complete control over devices and allows them to prevent personalization.</td>
</tr>
<tr class="even">
<td align="left"><strong>App purchases</strong></td>
<td align="left">Employees can purchase and install apps from the Store using a personal credit card.</td>
<td align="left">Employees can install apps from your Store for Business. Employees cannot install or purchase app from the Store without the addition of an MSA.</td>
</tr>
</tbody>
</table>


>**Note:** In the context of [Windows-as-a-Service](https://technet.microsoft.com/itpro/windows/manage/introduction-to-windows-10-servicing), differentiation of MDM capabilities will change in the future.

### <a href="" id="Infrastructure choices"></a>Infrastructure choices

*Applies to: Corporate and personal devices*

For both personal and corporate deployment scenarios, an MDM system is the essential infrastructure required to deploy and manage Windows 10 Mobile devices. An Azure AD premium subscription is recommended as an identity provider and required to support certain capabilities. Windows 10 Mobile allows you to have a pure cloud-based infrastructure or a hybrid infrastructure that combines Azure AD identity management with an on-premises management system to manage devices. Microsoft now also supports a pure on-premises solution to manage Windows 10 Mobile devices with [Configuration Manager](https://technet.microsoft.com/library/mt627908.aspx).

**Azure Active Directory**
Azure AD is a cloud-based directory service that provides identity and access management. You can integrate it with existing on-premises directories to create a hybrid identity solution. Organizations that use Microsoft Office 365 or Intune are already using Azure AD, which has three editions: Free Basic, and Premium (see [Azure Active Directory editions](https://azure.microsoft.com/documentation/articles/active-directory-editions/)). All editions support Azure AD device registration, but the Premium edition is required to enable MDM auto-enrollment and conditional access based on device state.

**Mobile Device Management**
Microsoft [Intune](https://www.microsoft.com/en-us/server-cloud/products/microsoft-intune/overview.aspx), part of the Enterprise Mobility + Security, is a cloud-based MDM system that manages devices off premises. Like Office 365, Intune uses Azure AD for identity management so employees use the same credentials to enroll devices in Intune that they use to sign into Office 365. Intune supports devices that run other operating systems, such as iOS and Android, to provide a complete MDM solution.
You can also integrate Intune with Configuration Manager to gain a single console for managing all devices in the cloud and on premises, mobile or PC. For more information, see [Manage Mobile Devices with Configuration Manager and Microsoft Intune](https://technet.microsoft.com/library/jj884158.aspx). For guidance on choosing between a stand-alone Intune installation and Intune integrated with System Center Configuration Manager, see Choose between Intune by itself or integrating Intune with System Center Configuration Manager.
Multiple MDM systems support Windows 10 and most support personal and corporate device deployment scenarios. MDM providers that support Windows 10 Mobile currently include: AirWatch, Citrix, MobileIron, SOTI, Blackberry and others. Most industry-leading MDM vendors already support integration with Azure AD. You can find the MDM vendors that support Azure AD in [Azure Marketplace](https://azure.microsoft.com/marketplace/). If your organization doesn’t use Azure AD, the user must use an MSA during OOBE before enrolling the device in your MDM using a corporate account.

>**Note:** Although not covered in this guide, you can use Exchange ActiveSync (EAS) to manage mobile devices instead of using a full-featured MDM system. EAS is available in Microsoft Exchange Server 2010 or later and Office 365.
In addition, Microsoft recently added MDM capabilities powered by Intune to Office 365. MDM for Office 365 supports mobile devices only, such as those running Windows 10 Mobile, iOS, and Android. MDM for Office 365 offers a subset of the management capabilities found in Intune, including the ability to remotely wipe a device, block a device from accessing Exchange Server email, and configure device policies (e.g., passcode requirements). For more information about MDM for Office 365 capabilities, see [Overview of Mobile Device Management for Office 365](https://technet.microsoft.com/library/ms.o365.cc.devicepolicy.aspx).

**Cloud services**
On mobile devices that run Windows 10 Mobile, users can easily connect to cloud services that provide user notifications and collect diagnostic and usage data. Windows 10 Mobile enables organizations to manage how devices consume these cloud services.

**Windows Push Notification Services**
The Windows Push Notification Services enable software developers to send toast, tile, badge, and raw updates from their cloud services. It provides a mechanism to deliver updates to users in a power-efficient and dependable way.
However, push notifications can affect battery life so the battery saver in Windows 10 Mobile limits background activity on the devices to extend battery life. Users can configure battery saver to turn on automatically when the battery drops below a set threshold. Windows 10 Mobile disables the receipt of push notifications to save energy when battery saver is on.
However, there is an exception to this behavior. In Windows 10 Mobile, the Always allowed battery saver setting (found in the Settings app) allows apps to receive push notifications even when battery saver is on. Users can manually configure this list, or IT can use the MDM system to configure the battery saver settings URI scheme in Windows 10 Mobile (ms-settings:batterysaver-settings).

For more information about health attestation in Windows 10 Mobile, see the [Windows 10 Mobile security guide](/windows/device-security/windows-10-mobile-security-guide).

**Windows Update for Business**
Microsoft designed Windows Update for Business to provide IT administrators with additional Windows Update-centric management capabilities, such as the ability to deploy updates to groups of devices and to define maintenance windows for installing updates.

**Microsoft Store for Business**
The Microsoft Store for Business is the place where IT administrators can find, acquire, manage, and distribute apps to Windows 10 devices. This includes both internal line-of-business (LOB) apps, as well as commercially available third-party apps.

## Configure

MDM administrators can define and implement policy settings on any personal or corporate device enrolled in an MDM system. What configuration settings you use will differ based on the deployment scenario, and corporate devices will offer IT the broadest range of control.

>**Note:** This guide helps IT professionals understand management options available for the Windows 10 Mobile OS. Please consult your MDM system documentation to understand how these policies are enabled by your MDM vendor.
Not all MDM systems support every setting described in this guide. Some support custom policies through OMA-URI XML files. See [Microsoft Intune support for Custom Policies](https://docs.microsoft.com/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune#custom-uri-settings-for-windows-10-devices). Naming conventions may also vary among MDM vendors.

### <a href="" id="account-profile"></a>Account profile

*Applies to: Corporate devices*

Enforcing what accounts employees can use on a corporate device is important for avoiding data leaks and protecting privacy. Limiting the device to just one account controlled by the organization will reduce the risk of a data breach. However, you can choose to allow employees to add a personal Microsoft Account or other consumer email accounts.

-   **Allow Microsoft Account** Specifies whether users are allowed to add a Microsoft Account to the device and use this account to authenticate to cloud services, such as purchasing apps in Microsoft Store, Xbox, or Groove.
-   **Allow Adding Non-Microsoft Accounts** Specifies whether users are allowed to add email accounts other than Microsoft accounts.

### <a href="" id="email-account"></a>Email accounts

*Applies to: Corporate and personal devices*

Email and associated calendar and contacts are the primary apps that users access on their smartphones. Configuring them properly is key to the success of any mobility program. In both corporate and personal device deployment scenarios, these email account settings get deployed immediately after enrollment. Using your corporate MDM system, you can define corporate email account profiles, deploy them to devices, and manage inbox policies.

-   Most corporate email systems leverage **Exchange ActiveSync (EAS)**. For more details on configuring EAS email profiles, see the [ActiveSync CSP](https://msdn.microsoft.com/library/windows/hardware/dn920017(v=vs.85).aspx).
-   **Simple Mail Transfer Protocol (SMTP)** email accounts can also be configured with your MDM system. For more detailed information on SMTP email profile configuration, see the [Email CSP](https://msdn.microsoft.com/library/windows/hardware/dn904953(v=vs.85).aspx). Microsoft Intune does not currently support the creation of an SMTP email profile.

### <a href="" id="device-lock-restrictions"></a>Device Lock restrictions

*Applies to: Corporate and personal devices*

It’s common practice to protect a device that contains corporate information with a passcode when it is not in use. As a best practice, Microsoft recommends that you implement a device lock policy for Windows 10 Mobile devices for securing apps and data. You can use a complex password or numeric PIN to lock devices. Introduced with Windows 10, [Windows Hello](https://windows.microsoft.com/en-us/windows-10/getstarted-what-is-hello) allows you to use a PIN, a companion device (like Microsoft band), or biometrics to validate your identity to unlock Windows 10 Mobile devices.

>**Note:** When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multifactor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.
To use Windows Hello with biometrics, specialized hardware, including fingerprint reader, illuminated IR sensor, or other biometric sensors is required. Hardware based protection of the Windows Hello credentials requires TPM 1.2 or greater; if no TPM exists or is configured, credentials/keys protection will be software-based.
Companion devices must be paired with Windows 10 PC’s via Bluetooth. To use a Windows Hello companion device that enables the user to roam with their Windows Hello credentials requires Pro or Enterprise edition on the Windows 10 PC being signed into.

Most of the device lock restriction policies have been available via ActiveSync and MDM since Windows Phone 7 and are still available today for Windows 10 Mobile. If you are deploying Windows 10 devices in a personal device deployment scenario, these settings would apply.

-   **Device Password Enabled** Specifies whether users are required to use a device lock password.
-   **Allow Simple Device Password** Whether users can use a simple password (e.g., 1111 or 1234).
-   **Alphanumeric Device Password Required** Whether users need to use an alphanumeric password. When configured, Windows prompts the user with a full device keyboard to enter a complex password. When not configured, the user will be able to enter a numeric PIN on the keyboard.
-   **Min Device Password Complex Characters** The number of password element types (i.e., uppercase letters, lowercase letters, numbers, or punctuation) required to create strong passwords.
-   **Device Password History** The number of passwords Windows 10 Mobile remembers in the password history (Users cannot reuse passwords in the history to create new passwords.)
-   **Min Device Password Length** The minimum number of characters required to create new passwords.
-   **Max Inactivity Time Device Lock** The number of minutes of inactivity before devices are locked and require a password to unlock.
-   **Allow Idle Return Without Password** Whether users are required to re-authenticate when their devices return from a sleep state before the inactivity time was reached.
-   **Max Device Password Failed Attempts** The number of authentication failures allowed before a device is wiped (A value of zero disables device wipe functionality.)
-   **Screen Timeout While Locked** The number of minutes before the lock screen times out (this policy influences device power management).
-   **Allow Screen Timeout While Locked User Configuration** Whether users can manually configure screen timeout while the device is on the lock screen (Windows 10 Mobile ignores the **Screen Timeout While Locked** setting if you disable this setting).

Settings related to Windows Hello would be important device lock settings to configure if you are deploying devices using the corporate deployment scenario.
Microsoft made it a requirement for all users to create a numeric passcode as part of Azure AD Join. This policy default requires users to select a four-digit passcode, but this can be configured with an AAD-registered MDM system to whatever passcode complexity your organization desires. If you are using Azure AD with an automatic MDM enrollment mechanism, these policy settings are automatically applied during device enrollment.

You will notice that some of the settings are very similar, specifically those related to passcode length, history, expiration, and complexity. If you set the policy in multiple places, both policies will be applied, with the strongest policy retained. Read [PassportForWork CSP](https://msdn.microsoft.com/library/windows/hardware/dn987099(v=vs.85).aspx), [DeviceLock CSP](https://msdn.microsoft.com/library/windows/hardware/dn904945(v=vs.85).aspx) (Windows Phone 8.1), and [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#DeviceLock_AllowIdleReturnWithoutPassword) for more detailed information.

### <a href="" id="prevent-of-settings"></a>Prevent changing of settings

*Applies to: Corporate devices*

Employees are usually allowed to change certain personal device settings that you may want to lock down on corporate devices. Employees can interactively adjust certain settings of the phone through the settings applets. Using MDM, you can limit what users are allowed to change.

-   **Allow Your Account** Specifies whether users are able to change account configuration in the Your Email and Accounts panel in Settings
-   **Allow VPN** Allows the user to change VPN settings</td>
-   **Allow Data Sense** Allows the user to change Data Sense settings</td>
-   **Allow Date Time** Allows the user to change data and time setting
-   **Allow Edit Device Name** Allows users to change the device name
-   **Allow Speech Model Update** Specifies whether the device will receive updates to the speech recognition and speech synthesis models (to improve accuracy and performance)

### <a href="" id="hardware-restrictions"></a>Hardware restrictions

*Applies to: Corporate devices*

Windows 10 Mobile devices use state-of-the-art technology that includes popular hardware features such as cameras, global positioning system (GPS) sensors, microphones, speakers, near-field communication (NFC) radios, storage card slots, USB interfaces, Bluetooth interfaces, cellular radios, and Wi Fi. You can use hardware restrictions to control the availability of these features.

The following lists the MDM settings that Windows 10 Mobile supports to configure hardware restrictions.

>**Note:** Some of these hardware restrictions provide connectivity and assist in data protection.

-   **Allow NFC:** Whether the NFC radio is enabled
-   **Allow USB Connection:** Whether the USB connection is enabled (doesn’t affect USB charging)
-   **Allow Bluetooth:** Whether users can enable and use the Bluetooth radio on their devices
-   **Allow Bluetooth Advertising:** Whether the device can act as a source for Bluetooth advertisements and be discoverable to other devices
-   **Allow Bluetooth Discoverable Mode:** Whether the device can discover other devices (e.g., headsets)
-   **Allow Bluetooth pre-pairing** Whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device
-   **Bluetooth Services Allowed List:** The list of Bluetooth services and profiles to which the device can connect
-   **Set Bluetooth Local Device Name:** The local Bluetooth device name
-   **Allow Camera:** Whether the camera is enabled
-   **Allow Storage Card:** Whether the storage card slot is enabled
-   **Allow Voice Recording:** Whether the user can use the microphone to create voice recordings
-   **Allow Location:** Whether the device can use the GPS sensor or other methods to determine location so applications can use location information

### <a href="" id="certificates"></a>Certificates

*Applies to: Personal and corporate devices*

Certificates help improve security by providing account authentication, Wi Fi authentication, VPN encryption, and SSL encryption of web content. Although users can manage certificates on devices manually, it’s a best practice to use your MDM system to manage those certificates throughout their entire lifecycle – from enrollment through renewal and revocation.
To install certificates manually, you can post them on Microsoft Edge website or send them directly via email, which is ideal for testing purposes.
Using SCEP and MDM systems, certificate management is completely transparent and requires no user intervention, helping improve user productivity, and reduce support calls. Your MDM system can automatically deploy these certificates to the devices’ certificate stores after you enroll the device (as long as the MDM system supports the Simple Certificate Enrollment Protocol (SCEP) or Personal Information Exchange (PFX)). The MDM server can also query and delete SCEP enrolled client certificate (including user installed certificates), or trigger a new enrollment request before the current certificate is expired.
In addition to SCEP certificate management, Windows 10 Mobile supports deployment of PFX certificates. The table below lists the Windows 10 Mobile PFX certificate deployment settings.
Get more detailed information about MDM certificate management in the [Client Certificate Install CSP](https://msdn.microsoft.com/library/windows/hardware/dn920023(v=vs.85).aspx) and [Install digital certificates on Windows 10 Mobile](/windows/access-protection/installing-digital-certificates-on-windows-10-mobile).
Use the Allow Manual Root Certificate Installation setting to prevent users from manually installing root and intermediate CA certificates intentionally or accidently.

> **Note:** To diagnose certificate-related issues on Windows 10 Mobile devices, use the free Certificates app in Microsoft Store. This Windows 10 Mobile app can help you:
> -   View a summary of all personal certificates
> -   View the details of individual certificates
> -   View the certificates used for VPN, Wi-Fi, and email authentication
> -   Identify which certificates may have expired
> -   Verify the certificate path and confirm that you have the correct intermediate and root CA certificates
> -   View the certificate keys stored in the device TPM

### <a href="" id="wi-fi-profiles"></a>Wi-Fi profiles

*Applies to: Corporate and personal devices*

Wi-Fi is used on mobile devices as much as, or more than, cellular data connections. Most corporate Wi Fi networks require certificates and other complex information to restrict and secure user access. This advanced Wi Fi information is difficult for typical users to configure, but MDM systems can fully configure these Wi-Fi profiles without user intervention.
You can create multiple Wi-Fi profiles in your MDM system. The below table lists the Windows 10 Mobile Wi Fi connection profile settings that can be configured by administrators.

-   **SSID** The case-sensitive name of the Wi Fi network Service Set Identifier
-   **Security type** The type of security the Wi Fi network uses; can be one of the following authentication types:
    -   Open 802.11
    -   Shared 802.11
    -   WPA-Enterprise 802.11
    -   WPA-Personal 802.11
    -   WPA2-Enterprise 802.11
    -   WPA2-Personal 802.11
-   **Authentication encryption** The type of encryption the authentication uses; can be one of the following encryption methods:
    -   None (no encryption)
    -   Wired Equivalent Privacy
    -   Temporal Key Integrity Protocol
    -   Advanced Encryption Standard (AES)
-   **Extensible Authentication Protocol Transport Layer Security (EAP-TLS)** WPA-Enterprise 802.11 and WPA2-Enterprise 802.11 security types can use EAP-TLS with certificates for authentication
-   **Protected Extensible Authentication Protocol with Microsoft Challenge Handshake Authentication Protocol version 2 (PEAP-MSCHAPv2)** WPA-Enterprise 802.11 and WPA2-Enterprise 802.11 security types can use PEAP-MSCHAPv2 with a user name and password for authentication
-   **Shared key** WPA-Personal 802.11 and WPA2-Personal 802.11 security types can use a shared key for authentication.
-   **Proxy** The configuration of any network proxy that the Wi Fi connection requires (to specify the proxy server, use its fully qualified domain name [FQDN], Internet Protocol version 4 [IPv4] address, IP version 6 [IPv6] address, or IPvFuture address)
-   **Disable Internet connectivity checks** Whether the Wi Fi connection should check for Internet connectivity
-   **Proxy auto-configuration URL** A URL that specifies the proxy auto-configuration file
-   **Enable Web Proxy Auto-Discovery Protocol (WPAD)** Specifies whether WPAD is enabled

In addition, you can set a few device wide Wi-Fi settings.
-   **Allow Auto Connect to Wi Fi Sense Hotspots** Whether the device will automatically detect and connect to Wi-Fi  networks
-   **Allow Manual Wi-Fi Configuration** Whether the user can manually configure Wi-Fi  settings
-   **Allow Wi-Fi** Whether the Wi-Fi hardware is enabled
-   **Allow Internet Sharing** Allow or disallow Internet sharing
-   **WLAN Scan Mode** How actively the device scans for Wi-Fi  networks

Get more detailed information about Wi-Fi connection profile settings in the [Wi-Fi CSP](https://msdn.microsoft.com/library/windows/hardware/dn904981(v=vs.85).aspx) and [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx).

### <a href="" id="apn-profiles"></a>APN profiles

*Applies to: Corporate devices*

An Access Point Name (APN) defines network paths for cellular data connectivity. Typically, you define just one APN for a device in collaboration with a mobile operator, but you can define multiple APNs if your company uses multiple mobile operators.
An APN provides a private connection to the corporate network that is unavailable to other companies on the mobile operator network.
You can define and deploy APN profiles in MDM systems that configure cellular data connectivity for Windows 10 Mobile. Devices running Windows 10 Mobile can have only one APN profile. The following lists the MDM settings that Windows 10 Mobile supports for APN profiles.

-   **APN name** The APN name
-   *IP connection type* The IP connection type; set to one of the following values:
    - IPv4 only
    - IPv6 only
    - IPv4 and IPv6 concurrently
    - IPv6 with IPv4 provided by 46xlat
-   **LTE attached** Whether the APN should be attached as part of an LTE Attach
-   **APN class ID** The globally unique identifier that defines the APN class to the modem
-   **APN authentication type** The APN authentication type; set to one of the following values:
    - None
    - Auto
    - PAP
    - CHAP
    - MSCHAPv2
-   **User name** The user account when users select Password Authentication Protocol (PAP), CHAP, or MSCHAPv2 authentication in APN authentication type
-   **Password** The password for the user account specified in User name
-   **Integrated circuit card ID** The integrated circuit card ID associated with the cellular connection profile
-   **Always on** Whether the connection manager will automatically attempt to connect to the APN whenever it is available
-   **Connection enabled** Specifies whether the APN connection is enabled
-   **Allow user control** Allows users to connect with other APNs than the enterprise APN
-   **Hide view** Whether the cellular UX will allow the user to view enterprise APNs

Get more detailed information about APN settings in the [APN CSP](https://msdn.microsoft.com/library/windows/hardware/dn958617(v=vs.85).aspx).

### <a href="" id="proxy"></a>Proxy

*Applies to: Corporate devices*

The below lists the Windows 10 Mobile settings for managing APN proxy settings for Windows 10 Mobile device connectivity.

-   **Connection name** Specifies the name of the connection the proxy is associated with (this is the APN name of a configured connection)
-   **Bypass Local** Specifies if the proxy should be bypassed when local hosts are accessed by the device
-   **Enable** Specifies if the proxy is enabled
-   **Exception** Specifies a semi-colon delimited list of external hosts which should bypass the proxy when accessed
-   **User Name** Specifies the username used to connect to the proxy
-   **Password** Specifies the password used to connect to the proxy
-   **Server** Specifies the name of the proxy server
-   **Proxy connection type** The proxy connection type, supporting: Null proxy, HTTP, WAP, SOCKS4
-   **Port** The port number of the proxy connection

For more details on proxy settings, see [CM_ProxyEntries CSP](https://msdn.microsoft.com/library/windows/hardware/dn914762(v=vs.85).aspx).

### <a href="" id="vpn"></a>VPN

*Applies to: Corporate and personal devices*

Organizations often use a VPN to control access to apps and resources on their company’s intranet. In addition to native Microsoft Point to Point Tunneling Protocol (PPTP), Layer 2 Tunneling Protocol (L2TP), and Internet Key Exchange Protocol version 2 (IKEv2) VPNs, Windows 10 Mobile supports SSL VPN connections, which require a downloadable plugin from the Microsoft Store and are specific to the VPN vendor of your choice. These plugins work like apps and can be installed directly from the Microsoft Store using your MDM system (see App Management).

You can create and provision multiple VPN connection profiles and then deploy them to managed devices that run Windows 10 Mobile.
To create a VPN profile that uses native Windows 10 Mobile VPN protocols (such as IKEv2, PPTP, or L2TP), you can use the following settings:

-   **VPN Servers** The VPN server for the VPN profile
-   **Routing policy type** The type of routing policy the VPN profile uses can be set to one of the following values:
    -   Split tunnel. Only network traffic destined to the intranet goes through the VPN connection
    -   Force tunnel. All traffic goes through the VPN connection
-   **Tunneling protocol type** The tunneling protocol used for VPN profiles that use native Windows 10 Mobile VPN protocols can be one the following values: PPTP, L2TP, IKEv2, Automatic
-   **User authentication method** The user authentication method for the VPN connection can have a value of EAP or MSChapv2 (Windows 10 Mobile does not support the value MSChapv2 for IKEv2-based VPN connections)
-   **Machine certificate** The machine certificate used for IKEv2-based VPN connections
-   **EAP configuration** To create a single sign-on experience for VPN users using certificate authentication, you need to create an Extensible Authentication Protocol (EAP) configuration XML file and include it in the VPN profile
-   **L2tpPsk** The pre-shared key used for an L2TP connection
-   **Cryptography Suite** Enable the selection of cryptographic suite attributes used for IPsec tunneling

>**Note:** The easiest way to create a profile for a single sign-on experience with an EAP configuration XML is through the rasphone tool on a Windows 10 PC. Once you run the rasphone.exe, the configuration wizard will walk you through the necessary steps. For step-by-step instructions on creating the EAP configuration XML blob, see EAP configuration. You can use the resulting XML blob in the MDM system to create the VPN profile on Windows 10 Mobile phone. If you have multiple certificates on the devices, you may want to configure filtering conditions for automatic certificate selection, so the employee does not need to select an authentication certificate every time the VPN is turned on. See this article for details. Windows 10 for PCs and Windows 10 Mobile have the same VPN client.

Microsoft Store–based VPN plugins for the VPN connection allow you to create a VPN plugin profile with the following attributes:

-   **VPN server** A comma-separated list of VPN servers; you can specify the servers with a URL, fully qualified host name, or IP address
-   **Custom configuration** An HTML-encoded XML blob for SSL–VPN plugin–specific configuration information (e.g., authentication information) that the plugin provider requires
-   **Microsoft Store VPN plugin family name** Specifies the Microsoft Store package family name for the Microsoft Store–based VPN plugin

In addition, you can specify per VPN Profile:

-   **App Trigger List** You can add an App Trigger List to every VPN profile. The app specified in the list will automatically trigger the VPN profile for intranet connectivity. When multiple VPN profiles are needed to serve multiple apps, the operating system automatically establishes the VPN connection when the user switches between apps. Only one VPN connection at a time can be active. In the event the device drops the VPN connection, Windows 10 Mobile automatically reconnects to the VPN without user intervention.
-   **Route List** List of routes to be added to the routing table for the VPN interface. This is required for split tunneling cases where the VPN server site has more subnets that the default subnet based on the IP assigned to the interface.
-   **Domain Name Information List** Name Resolution Policy Table (NRPT) rules for the VPN profile.
-   **Traffic Filter List** Specifies a list of rules. Only traffic that matches these rules can be sent via the VPN Interface.
-   **DNS suffixes** A comma-separated list of DNS suffixes for the VPN connection. Any DNS suffixes in this list are automatically added to Suffix Search List.
-   **Proxy** Any post-connection proxy support required for the VPN connection; including Proxy server name and Automatic proxy configuration URL. Specifies the URL for automatically retrieving proxy server settings.
-   **Always on connection** Windows 10 Mobile features always-on VPN, which makes it possible to automatically start a VPN connection when a user signs in. The VPN stays connected until the user manually disconnects it.
-   **Remember credentials** Whether the VPN connection caches credentials.
-   **Trusted network detection** A comma-separated list of trusted networks that causes the VPN not to connect when the intranet is directly accessible (Wi-Fi).
-   **Enterprise Data Protection Mode ID** Enterprise ID, which is an optional field that allows the VPN to automatically trigger based on an app defined with a Windows Information Protection policy.
-   **Device Compliance** To set up Azure AD-based Conditional Access for VPN and allow that SSO with a certificate different from the VPN Authentication certificate for Kerberos Authentication in the case of Device Compliance.
-   **Lock Down VPN profile** A Lock Down VPN profile has the following characteristics:
    -   It is an always-on VPN profile.
    -   It can never be disconnected.
    -   If the VPN profile is not connected, the user has no network connectivity.
    -   No other VPN profiles can be connected or modified.
-   **ProfileXML** In case your MDM system does not support all the VPN settings you want to configure, you can create an XML file that defines the VPN profile you want to apply to all the fields you require.

For more details about VPN profiles, see the [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776(v=vs.85).aspx)

Some device-wide settings for managing VPN connections can help you manage VPNs over cellular data connections, which in turn helps reduce costs associated with roaming or data plan charges.
-   **Allow VPN** Whether users can change VPN settings
-   **Allow VPN Over Cellular** Whether users can establish VPN connections over cellular networks
-   **Allow VPN Over Cellular when Roaming** Whether users can establish VPN connections over cellular networks when roaming

### <a href="" id="storage-management"></a>Storage management

*Applies to: Corporate and personal devices*

Protecting the apps and data stored on a device is critical to device security. One method for helping protect your apps and data is to encrypt internal device storage. The [device encryption](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption) in Windows 10 Mobile helps protect corporate data against unauthorized access, even when an unauthorized user has physical possession of the device.

Windows 10 Mobile also has the ability to install apps on a secure digital (SD) card. The operating system stores apps on a partition specifically designated for that purpose. This feature is always on so you don’t need to set a policy explicitly to enable it.

The SD card is uniquely paired with a device. No other devices can see the apps or data on the encrypted partition, but they can access the data stored on the unencrypted partition of the SD card, such as music or photos. This gives users the flexibility to use an SD card while still protecting the confidential apps and data on it.

You can disable the **Allow Storage Card** setting if you wish to prevent users from using SD cards entirely. If you choose not to encrypt storage, you can help protect your corporate apps and data by using the Restrict app data to the system volume and Restrict apps to the system volume settings. These help ensure that users cannot copy your apps and data to SD cards.

Here is a list of MDM storage management settings that Windows 10 Mobile provides.

-   **Allow Storage Card** Whether the use of storage cards for data storage is allowed
-   **Require Device Encryption** Whether internal storage is encrypted (when a device is encrypted, you cannot use a policy to turn encryption off)
-   **Encryption method** Specifies the BitLocker drive encryption method and cipher strength; can be one of the following values:
    -   AES-Cipher Block Chaining (CBC) 128-bit
    -   AES-CBC 256-bit
    -   XEX-based tweaked-codebook mode with cipher text stealing (XTS)–AES (XTS-AES) 128-bit (this is the default)
    -   XTS-AES-256-bit
-   **Allow Federal Information Processing Standard (FIPS) algorithm policy** Whether the device allows or disallows the FIPS algorithm policy
-   **SSL cipher suites** Specifies a list of the allowed cryptographic cipher algorithms for SSL connections
-   **Restrict app data to the system volume** Specifies whether app data is restricted to the system drive
-   **Restrict apps to the system volume** Specifies whether apps are restricted to the system drive


## Apps

*Applies to: Corporate and personal devices*

User productivity on mobile devices is often driven by apps.

Windows 10 makes it possible to develop apps that work seamlessly across multiple devices using the Universal Windows Platform (UWP) for Windows apps. UWP converges the application platform for all devices running Windows 10 so that apps run without modification on all editions of Windows 10. This saves developers both time and resources, helping deliver apps to mobile users more quickly and efficiently. This write-once, run-anywhere model also boosts user productivity by providing a consistent, familiar app experience on any device type.

For compatibility with existing apps, Windows Phone 8.1 apps still run on Windows 10 Mobile devices, easing the migration to the newest platform. Microsoft recommend migrating your apps to UWP to take full advantage of the improvements in Windows 10 Mobile. In addition, bridges have been developed to easily and quickly update existing Windows Phone 8.1 (Silverlight) and iOS apps to the UWP.

Microsoft also made it easier for organizations to license and purchase UWP apps via Microsoft Store for Business and deploy them to employee devices using the Microsoft Store, or an MDM system, that can be integrated with the Microsoft Store for Business. Putting apps into the hands of mobile workers is critical, but you also need an efficient way to ensure those apps comply with corporate policies for data security.

To learn more about Universal Windows apps, see the [Guide to Universal Windows Platform (UWP) apps](https://msdn.microsoft.com/library/windows/apps/dn894631.aspx) for additional information, or take this [Quick Start Challenge: Universal Windows Apps in Visual Studio](https://mva.microsoft.com/en-US/training-courses/quick-start-challenge-universal-windows-apps-in-visual-studio-14477?l=Be2FMfgmB_505192797). Also, see [Porting apps to Windows 10](https://msdn.microsoft.com/windows/uwp/porting/index).

### <a href="" id="windows-store-for-business"></a>Microsoft Store for Business: Sourcing the right app

*Applies to: Corporate and personal devices*

The first step in app management is to obtain the apps your users need. You can develop your own apps or source your apps from the Microsoft Store. With Windows Phone 8.1, an MSA was needed to acquire and install apps from the Microsoft Store. With the Microsoft Store for Business, Microsoft enables organizations to acquire apps for employees from a private store with the Microsoft Store, without the need for MSAs on Windows 10 devices.

Microsoft Store for Business is a web portal that allows IT administrators to find, acquire, manage, and distribute apps to Windows 10 devices.

Azure AD authenticated managers have access to Microsoft Store for Business functionality and settings, and store managers can create a private category of apps that are specific and private to their organization. (You can get more details about what specific Azure AD accounts have access to Microsoft Store for Business here). Microsoft Store for Business enables organizations to purchase app licenses for their organization and make apps available to their employees. In addition to commercially available apps, your developers can publish line-of-business (LOB) apps to Microsoft Store for Business by request. You can also integrate their Microsoft Store for Business subscriptions with their MDM systems, so the MDM system can distribute and manage apps from Microsoft Store for Business.

Microsoft Store for Business supports app distribution under two licensing models: online and offline.

The online model (store-managed) is the recommended method, and supports both personal device and corporate device management scenarios. To install online apps, the device must have Internet access at the time of installation. On corporate devices, an employee can be authenticated with an Azure AD account to install online apps. On personal devices, an employee must register their device with Azure AD to be able to install corporate licensed online apps.
Corporate device users will find company licensed apps in the Store app on their phone in a private catalog. When an MDM system is associated with the Store for Business, IT administrators can present Store apps within the MDM system app catalog where users can find and install their desired apps. IT administrators can also push required apps directly to employee devices without the employee’s intervention.

Employees with personal devices can install apps licensed by their organization using the Store app on their device. They can use either the Azure AD account or Microsoft Account within the Store app if they wish to purchase personal apps. If you allow employees with corporate devices to add a secondary Microsoft Account (MSA), the Store app on the device provides a unified method for installing personal and corporate apps.

Online licensed apps do not need to be transferred or downloaded from the Microsoft Store to the MDM system to be distributed and managed. When an employee chooses a company-owned app, it will automatically be installed from the cloud. Also, apps will be automatically updated when a new version is available or can be removed if needed. When an app is removed from a device by the MDM system or the user, Microsoft Store for Business reclaims the license so it can be used for another user or on another device.

To distribute an app offline (organization-managed), the app must be downloaded from the Microsoft Store for Business. This can be accomplished in the Microsoft Store for Business portal by an authorized administrator. Offline licensing requires the app developer to opt-in to the licensing model, as the Microsoft Store is no longer able to track licenses for the developer. If the app developer doesn’t allow download of the app from Microsoft Store, then you must obtain the files directly from the developer or use the online licensing method.

To install acquired Microsoft Store or LOB apps offline on a Windows 10 Mobile device, IT administrators can use an MDM system. The MDM system distributes the app packages that you downloaded from Microsoft Store (also called sideloading) to Windows 10 Mobile devices. Support for offline app distribution depends on the MDM system you are using, so consult your MDM vendor documentation for details. You can fully automate the app deployment process so that no user intervention is required.

Microsoft Store apps or LOB apps that have been uploaded to the Microsoft Store for Business are automatically trusted on all Windows devices, as they are cryptographically signed with Microsoft Store certificates. LOB apps that are uploaded to the Microsoft Store for Business are private to your organization and are never visible to other companies or consumers. If you do not want to upload your LOB apps, you have to establish trust for the app on your devices. To establish this trust, you’ll need to generate a signing certificate with your Public Key Infrastructure and add your chain of trust to the trusted certificates on the device (see the certificates section). You can install up to 20 self-signed LOB apps per device with Windows 10 Mobile. To install more than 20 apps on a device, you can purchase a signing certificate from a trusted public Certificate Authority, or upgrade your devices to Windows 10 Mobile Enterprise edition.

Learn more about the [Microsoft Store for Business](/microsoft-store/index).

### <a href="" id="managing-apps"></a>Managing apps

*Applies to: Corporate devices*

IT administrators can control which apps are allowed to be installed on Windows 10 Mobile devices and how they should be kept up-to-date.

Windows 10 Mobile includes AppLocker, which enables administrators to create allow or disallow (sometimes also called whitelist/blacklist) lists of apps from the Microsoft Store. This capability extends to built-in apps, as well, such as Xbox, Groove, text messaging, email, and calendar, etc. The ability to allow or deny apps helps to ensure that people use their mobile devices for their intended purposes. However, it is not always an easy approach to find a balance between what employees need or request and security concerns. Creating allow or disallow lists also requires keeping up with the changing app landscape in the Microsoft Store.

For more details, see [AppLocker CSP](https://msdn.microsoft.com/library/windows/hardware/dn920019(v=vs.85).aspx).

In addition to controlling which apps are allowed, IT professionals can also implement additional app management settings on Windows 10 Mobile, using an MDM.

-   **Allow All Trusted Apps** Whether users can sideload apps on the device.
-   **Allow App Store Auto Update** Whether automatic updates of apps from Microsoft Store are allowed.
-   **Allow Developer Unlock** Whether developer unlock is allowed.
-   **Allow Shared User App Data** Whether multiple users of the same app can share data.
-   **Allow Store** Whether Microsoft Store app is allowed to run. This will completely block the user from installing apps from the Store, but will still allow app distribution through an MDM system.
-   **Application Restrictions** An XML blob that defines the app restrictions for a device. The XML blob can contain an app allow or deny list. You can allow or deny apps based on their app ID or publisher. See AppLocker above.
-   **Disable Store Originated Apps** Disables the launch of all apps from Microsoft Store that came pre-installed or were downloaded before the policy was applied.
-   **Require Private Store Only** Whether the private store is exclusively available to users in the Store app on the device. If enabled, only the private store is available. If disabled, the retail catalog and private store are both available.
-   **Restrict App Data to System Volume** Whether app data is allowed only on the system drive or can be stored on an SD card.
-   **Restrict App to System Volume** Whether app installation is allowed only to the system drive or can be installed on an SD card.
-   **Start screen layout** An XML blob used to configure the Start screen (see [Start layout for Windows 10 Mobile](https://msdn.microsoft.com/library/windows/hardware/mt171093(v=vs.85).aspx) for more information).

Find more details on application management options in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#ApplicationManagement_AllowAllTrustedApps)

### <a href="" id="data-leak-prevention"></a>Data leak prevention

*Applies to: Corporate and personal devices*

One of the biggest challenges in protecting corporate information on mobile devices is keeping that data separate from personal data. Most solutions available to create this data separation require users to login in with a separate username and password to a container that stores all corporate apps and data, an experience that degrades user productivity.

Windows 10 Mobile includes Windows Information Protection to transparently keep corporate data protected and personal data private. It automatically tags personal and corporate data and applies policies for those apps that can access data classified as corporate. This includes when data is at rest on local or removable storage. Because corporate data is always protected, users cannot copy it to public locations like social media or personal email.

Windows Information Protection works with all apps, which are classified into two categories: enlightened and unenlightened. Enlighted apps can differentiate between corporate and personal data, correctly determining which to protect based on policies. Corporate data will be encrypted at all times and attempts to copy/paste or share this information with non-corporate apps or users will fail. Unenlightened apps consider all data corporate and encrypt everything by default.

Any app developed on the UWA platform can be enlightened. Microsoft has made a concerted effort to enlighten several of its most popular apps, including:
-   Microsoft Edge
-   Microsoft People
-   Mobile Office apps (Word, Excel, PowerPoint, and OneNote)
-   Outlook Mail and Calendar
-   Microsoft Photos
-   Microsoft OneDrive
-   Groove Music
-   Microsoft Movies & TV
-   Microsoft Messaging

The following table lists the settings that can be configured for Windows Information Protection:
-   **Enforcement level*** Set the enforcement level for information protection:
    -   Off (no protection)
    -   Silent mode (encrypt and audit only)
    -   Override mode (encrypt, prompt, and audit)
    -   Block mode (encrypt, block, and audit)
-   **Enterprise protected domain names*** A list of domains used by the enterprise for its user identities. User identities from one of these domains is considered an enterprise managed account and data associated with it should be protected.
-   **Allow user decryption** Allows the user to decrypt files. If not allowed, the user will not be able to remove protection from enterprise content through the OS or app user experience.
-   **Require protection under lock configuration** Specifies whether the protection under lock feature (also known as encrypt under PIN) should be configured.
-   **Data recovery certificate*** Specifies a recovery certificate that can be used for data recovery of encrypted files. This is the same as the data recovery agent (DRA) certificate for encrypting file system (EFS), only delivered through MDM instead of Group Policy.
-   **Revoke on unenroll** Whether to revoke the information protection keys when a device unenrolls from the management service.
-   **RMS template ID for information protection** Allows the IT admin to configure the details about who has access to RMS-protected files and for how long.
-   **Allow Azure RMS for information protection** Specifies whether to allow Azure RMS encryption for information protection.
-   **Show information protection icons** Determines whether overlays are added to icons for information protection secured files in web browser and enterprise-only app tiles in the Start menu.
-   **Status** A read-only bit mask that indicates the current state of information protection on the device. The MDM service can use this value to determine the current overall state of information protection.
-   **Enterprise IP Range*** The enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected.
-   **Enterprise Network Domain Names*** the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected.
-   **Enterprise Cloud Resources** A list of Enterprise resource domains hosted in the cloud that need to be protected.

>**Note:** * Are mandatory Windows Information Protection policies. To make Windows Information Protection functional, AppLocker and network isolation settings - specifically Enterprise IP Range and Enterprise Network Domain Names –  must be configured. This defines the source of all corporate data that needs protection and also ensures data written to these locations won’t be encrypted by the user’s encryption key (so that others in the company can access it.

For more information on Windows Information Protection, see the [EnterpriseDataProtection CSP](https://msdn.microsoft.com/library/windows/hardware/mt697634(v=vs.85).aspx) and the following in-depth article series [Protect your enterprise data using Windows Information Protection](/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip).

### <a href="" id="managing-user-activities"></a>Managing user activities

*Applies to: Corporate devices*

On corporate devices, some user activities expose corporate data to unnecessary risk. For example, users might create a screen capture of corporate information out of an internal LOB app. To mitigate the risk, you can restrict the Windows 10 Mobile user experience to help protect corporate data and prevent data leaks. The following demonstrates those capabilities that can be used to help prevent data leaks.

-   **Allow copy and paste** Whether users can copy and paste content
-   **Allow Cortana** Whether users can use Cortana on the device (where available)
-   **Allow device discovery** Whether the device discovery user experience is available on the lock screen (for example, controlling whether a device could discover a projector [or other devices] when the lock screen is displayed)
-   **Allow input personalization** Whether personally identifiable information can leave the device or be saved locally (e.g., Cortana learning, inking, dictation)
-   **Allow manual MDM unenrollment** Whether users are allowed to delete the workplace account (i.e., unenroll the device from the MDM system)
-   **Allow screen capture** Whether users are allowed to capture screenshots on the device
-   **Allow SIM error dialog prompt** Specifies whether to display a dialog prompt when no SIM card is installed
-   **Allow sync my settings** Whether the user experience settings are synchronized between devices (works with Microsoft accounts only)
-   **Allow toasts notifications above lock screen** Whether users are able to view toast notification on the device lock screen
-   **Allow voice recording** Whether users are allowed to perform voice recordings
-   **Do Not Show Feedback Notifications** Prevents devices from showing feedback questions from Microsoft
-   **Allow Task Switcher** Allows or disallows task switching on the device to prevent visibility of App screen tombstones in the task switcher
-   **Enable Offline Maps Auto Update** Disables the automatic download and update of map data
-   **Allow Offline Maps Download Over Metered Connection** Allows the download and update of map data over metered connections

You can find more details on the experience settings in Policy CSP.

### <a href="" id="microsoft-edge"></a>Microsoft Edge

*Applies to: Corporate and personal devices*

MDM systems also give you the ability to manage Microsoft Edge on mobile devices. Microsoft Edge is the only browser available on Windows 10 Mobile devices. It differs slightly from the desktop version as it does not support Flash or Extensions. Edge is also an excellent PDF viewer as it can be managed and integrates with Windows Information Protection.

The following settings for Microsoft Edge on Windows 10 Mobile can be managed.

-   **Allow Browser** Whether users can run Microsoft Edge on the device
-   **Allow Do Not Track headers** Whether Do Not Track headers are allowed
-   **Allow InPrivate** Whether users can use InPrivate browsing
-   **Allow Password Manager** Whether users can use Password Manager to save and manage passwords locally
-   **Allow Search Suggestions in Address Bar** Whether search suggestions are shown in the address bar
-   **Allow SmartScreen** Whether SmartScreen Filter is enabled
-   **Cookies**	Whether cookies are allowed
-   **Favorites** Configure Favorite URLs
-   **First Run URL** The URL to open when a user launches Microsoft Edge for the first time
-   **Prevent SmartScreen Prompt Override** Whether users can override the SmartScreen warnings for URLs
-   **Prevent Smart Screen Prompt Override for Files** Whether users can override the SmartScreen warnings for files

## Manage

In enterprise IT environments, the need for security and cost control must be balanced against the desire to provide users with the latest technologies. Since cyberattacks have become an everyday occurrence, it is important to properly maintain the state of your Windows 10 Mobile devices. IT needs to control configuration settings, keeping them from drifting out of compliance, as well as enforce which devices can access internal applications. Windows 10 Mobile delivers the mobile operations management capabilities necessary to ensure that devices are in compliance with corporate policy.

### <a href="" id="servicing-options"></a>Servicing options

**A streamlined update process**

*Applies to: Corporate and personal devices*

Microsoft has streamlined the Windows product engineering and release cycle so new features, experiences, and functionality demanded by the market can be delivered more quickly than ever before. Microsoft plans to deliver two Feature Updates per year (12-month period). <strong>Feature Updates</strong> establish a Current Branch or CB, and have an associated version.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><strong>Branch</strong></td>
<td align="left"><strong>Version</strong></td>
<td align="left"><strong>Release Date</strong></td>
</tr>
<tr class="even">
<td align="left">Current Branch</td>
<td align="left">1511</td>
<td align="left">November 2015</td>
</tr>
<tr class="odd">
<td align="left">Current Branch for Business</td>
<td align="left">1511</td>
<td align="left">March 2016</td>
</tr>
<tr class="even">
<td align="left">Current Branch</td>
<td align="left">1607</td>
<td align="left">July 2016</td>
</tr>
</tbody>
</table>

Microsoft will also deliver and install monthly updates for security and stability directly to Windows 10 Mobile devices. These <strong>Quality Updates</strong>, released under Microsoft control via Windows Update, are available for all devices running Windows 10 Mobile. Windows 10 Mobile devices consume Feature Updates and Quality Updates as part of the same standard update process.

Quality Updates are usually smaller than Feature Updates, but the installation process and experience is very similar, though larger updates will take more time to install.  Enterprise customers can manage the update experience and process on Windows 10 Mobile devices using an MDM system, after upgrading the devices to Enterprise edition. In most cases, policies to manage the update process will apply to both feature and quality updates.

Microsoft aspires to update Windows 10 Mobile devices with the latest updates automatically and without being disruptive for all customers. Out-of-the-box, a Windows 10 Mobile device will Auto Scan for available updates. However, depending on the device’s network and power status, update methods and timing will vary.

<table>
<colgroup>
<col width="15%" />
<col width="25%" />
<col width="15%" />
<col width="15%" />
<col width="15%" />
<col width="15%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><strong>Network connection</strong></td>
<td align="left"><strong>Description</strong></td>
<td align="left"><strong>Auto Scan</strong></td>
<td align="left"><strong>Auto Download</strong></td>
<td align="left"><strong>Auto Install</strong></td>
<td align="left"><strong>Auto Restart</strong></td>
</tr>
<tr class="even">
<td align="left"><strong>Wi-Fi</strong></td>
<td align="left">Device is connected to a personal or corporate Wi-Fi network (no data charges)</td>
<td align="left">Yes</td>
<td align="left">Yes/td&gt;
<td align="left">Yes</td>
<td align="left">Yes – outside of Active Hours (forced restart after 7 days if user postpones restart)</td>
</tr>
<tr class="odd">
<td align="left"><strong>Cellular</strong></td>
<td align="left">Device is only connected to a cellular network (standard data charges apply)</td>
<td align="left">Will skip a daily scan if scan was successfully completed in the last 5 days</td>
<td align="left">Will only occur if update package is small and does not exceed the mobile operator data limit.</td>
<td align="left">Yes</td>
<td align="left">Idem</td>
</tr>
<tr class="even">
<td align="left"><strong>Cellular -- Roaming</strong></td>
<td align="left">Device is only connected to a cellular network and roaming charges apply</td>
<td align="left">No</td>
<td align="left">No</td>
<td align="left">No</td>
<td align="left">Idem</td>
</tr>
</tbody>
</table>

**Keeping track of updates releases**

*Applies to: Corporate and Personal devices*

Microsoft publishes new feature updates for Windows 10 and Windows 10 Mobile on a regular basis. The [Windows release information page](https://technet.microsoft.com/windows/release-info) is designed to help you determine if your devices are current with the latest Windows 10 feature and quality updates. The release information published on this page, covers both Windows 10 for PCs and Windows 10 Mobile. In addition, the [Windows update history page](https://windows.microsoft.com/en-us/windows-10/update-history-windows-10) helps you understand what these updates are about.

>**Note:**
We invite IT Professionals to participate in the Windows Insider Program to test updates before they are officially released to make Windows 10 Mobile even better. If you find any issues, please send us feedback via the Feedback Hub

**Windows as a Service**

*Applies to: Corporate and Personal devices*

Microsoft created a new way to deliver and install updates to Windows 10 Mobile directly to devices without Mobile Operator approval. This capability helps to simplify update deployments and ongoing management, broadens the base of employees who can be kept current with the latest Windows features and experiences, and lowers total cost of ownership for organizations who no longer have to manage updates to keep devices secure.

Update availability depends on what servicing option you choose for the device. These servicing options are outlined in the chart below:

<table>
<colgroup>
<col width="15%" />
<col width="22%" />
<col width="22%" />
<col width="22%" />
<col width="22%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><strong>Servicing option</strong></td>
<td align="left"><strong>Availability of new features for installation</strong></td>
<td align="left"><strong>Minimum length of servicing lifetime</strong></td>
<td align="left"><strong>Key benefits</strong></td>
<td align="left"><strong>Supported editions</strong></td>
</tr>
<tr class="even">
<td align="left"><strong>Windows Insider Builds</strong></td>
<td align="left">As appropriate during development cycle, released to Windows Insiders only</td>
<td align="left">Variable, until the next Insider build is released to Windows Insiders</td>
<td align="left">Allows Insiders to test new feature and application compatibility before a Feature Update is released/td&gt;
<td align="left">Mobile</td>
</tr>
<tr class="odd">
<td align="left"><strong>Current Branch (CB)</strong></td>
<td align="left">Immediately after the Feature Update is published to Windows Update by Microsoft</td>
<td align="left">Microsoft typically releases two Feature Updates per 12-month period (approximately every four months, though it can potentially be longer)</td>
<td align="left">Makes new features available to users as soon as possible</td>
<td align="left">Mobile &amp; Mobile Enterprise</td>
</tr>
<tr class="even">
<td align="left"><strong>Current Branch for Business (CBB)</strong></td>
<td align="left">A minimum of four months after the corresponding Feature Update is first published to Windows Update by Microsoft</td>
<td align="left">A minimum of four months, though it potentially can be longerNo</td>
<td align="left">Provides additional time to test new feature before deployment</td>
<td align="left">Mobile Enterprise only</td>
</tr>
</tbody>
</table>

**Enterprise Edition**

*Applies to: Corporate devices*

While Windows 10 Mobile provides updates directly to user devices from Windows Update, there are many organizations that want to track, test, and schedule updates to corporate devices. To support these requirements, we created the Windows 10 Mobile Enterprise edition.

Upgrading to Windows 10 Mobile Enterprise edition provides additional device and app management capabilities for organizations that want to:
-   **Defer, approve and deploy feature and quality updates:** Windows 10 Mobile devices get updates directly from Windows Update. If you want to curate updates prior to deploying them, an upgrade to Windows 10 Mobile Enterprise edition is required. Once Enterprise edition is enabled, the phone can be set to the Current Branch for Business servicing option, giving IT additional time to test updates before they are released.
-   **Deploy an unlimited number of self-signed LOB apps to a single device:** To use an MDM system to deploy LOB apps directly to devices, you must cryptographically sign the software packages with a code signing certificate that your organization’s certificate authority (CA) generates. You can deploy a maximum of 20 self-signed LOB apps to a Windows 10 Mobile device. To deploy more than 20 self-signed LOB apps, Windows 10 Mobile Enterprise is required.
-   **Set the diagnostic data level:** Microsoft collects diagnostic data to help keep Windows devices secure and to help Microsoft improve the quality of Windows and Microsoft services. An upgrade to Windows 10 Mobile Enterprise edition is required to set the diagnostic data level so that only diagnostic information required to keep devices secured is gathered.

To learn more about diagnostic, see [Configure Windows diagnostic data in your organization](/windows/configuration/configure-windows-diagnostic-data-in-your-organization).

To activate Windows 10 Mobile Enterprise, use your MDM system or a provisioning package to inject the Windows 10 Enterprise license on a Windows 10 Mobile device. Licenses can be obtained from the Volume Licensing portal. For testing purposes, you can obtain a licensing file from the MSDN download center. A valid MSDN subscription is required.

Details on updating a device to Enterprise edition with [WindowsLicensing CSP](https://msdn.microsoft.com/library/windows/hardware/dn904983(v=vs.85).aspx)

>**Recommendation:** Microsoft recommends using Enterprise edition only on corporate devices. Once a device has been upgraded, it cannot be downgraded. Even a device wipe or reset will not remove the enterprise license from personal devices.

**Deferring and Approving Updates with MDM**

*Applies to: Corporate devices with Enterprise edition*

Once a device is upgraded to Windows 10 Mobile Enterprise edition, you can manage devices that receive updates from Windows Update (or Windows Update for Business) with a set of update policies.

To control Feature Updates, you will need to move your devices to the Current Branch for Business (CBB) servicing option. A device that subscribes to CBB will wait for the next CBB to be published by Microsoft Update. While the device will wait for Feature Updates until the next CBB, Quality Updates will still be received by the device.

To control monthly Quality Update additional deferral policies, need to be set to your desired deferral period. When Quality Updates are available for your Windows 10 Mobile devices from Windows Update, these updates will not install until your deferral period lapses. This gives IT Professionals some time to test the impact of the updates on devices and apps.

Before updates are distributed and installed, you may want to test them for issues or application compatibility. IT pros have the ability require updates to be approved. This enables the MDM administrator to select and approve specific updates to be installed on a device and accept the EULA associated with the update on behalf of the user. Please remember that on Windows 10 Mobile all updates are packaged as a “OS updates” and never as individual fixes.

You may want to choose to handle Quality Updates and Feature Updates in the same way and not wait for the next CBB to be released to your devices. This streamlines the release of updates using the same process for approval and release. You can apply different deferral period by type of update. In version 1607 Microsoft added additional policy settings to enable more granularity to control over updates.

Once updates are being deployed to your devices, you may want to pause the rollout of updates to enterprise devices.
For example, after you start rolling out a quality update, certain phone models are adversely impacted or users are reporting a specific LOB app is not connecting and updating a database. Problems can occur that did not surface during initial testing.
IT professionals can pause updates to investigate and remediate unexpected issues.

The following table summarizes applicable update policy settings by version of Windows 10 Mobile.  All policy settings are backward compatible, and will be maintained in future Feature Updates. Consult the documentation of your MDM system to understand support for these settings in your MDM.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><strong>Activity (Policy)</strong></td>
<td align="left"><strong>Version 1511 settings</strong></td>
<td align="left"><strong>Version 1607 settings</strong></td>
</tr>
<tr class="even">
<td align="left"><strong>Subscribe device to CBB, to defer Feature Updates</strong></td>
<td align="left">RequireDeferUpgrade

Defers Feature Update until next CBB release. Device will receive quality updates from Current Branch for Business (CBB).
Defers feature update for minimum of 4 months after Current Branch was release.</td>
<td align="left">BranchReadinessLevel

Defers Feature Update until next CBB release. Device will receive quality updates from Current Branch for Business (CBB).
Defers feature update for minimum of 4 months after Current Branch was release.</td></tr>
<tr class="odd">
<td align="left"><strong>Defer Updates</strong></td>
<td align="left">DeferUpdatePeriod

Defer Quality Updates for 4 weeks or 28 days</td>
<td align="left">DeferQualityUpdatePeriodInDays

Defer Feature and Quality Updates for up to 30 days.</td></tr>
<tr class="even">
<td align="left"><strong>Approve Updates</strong></td>
<td align="left">RequireUpdateApproval

</td>
<td align="left">RequireUpdateApproval

</td>
</tr>
<tr class="odd">
<td align="left"><strong>Pause Update rollout once an approved update is being deployed, pausing the rollout of the update.</strong></td>
<td align="left">PauseDeferrals

Pause Feature Updates for up to 35 days</td>
<td align="left">PauseQualityUpdates

Pause Feature Updates for up to 35 days</td>
</tr>
</tbody>
</table>

**Managing the Update Experience**

*Applies to: Corporate devices with Enterprise edition*

Set update client experience with [Allowautomaticupdate](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#Update_AllowAutoUpdate) policy for your employees. This allows the IT Pro to influence the way the update client on the devices behaves when scanning, downloading, and installing updates.

This can include:
-   Notifying users prior to downloading updates.
-   Automatically downloading updates, and then notifying users to schedule a restart (this is the default behavior if this policy is not configured).
-   Automatically downloading and restarting devices with user notification.
-   Automatically downloading and restarting devices at a specified time.
-   Automatically downloading and restarting devices without user interaction.
-   Turning off automatic updates. This option should be used only for systems under regulatory compliance. The device will not receive any updates.

In addition, in version 1607, you can configure when the update is applied to the employee device to ensure updates installs or reboots don’t interrupt business or worker productivity. Update installs and reboots can be scheduled [outside of active hours](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#Update_ActiveHoursEnd) (supported values are 0-23, where 0 is 12am, 1 is 1am, etc.) or on a specific what [day of the week](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#Update_ScheduledInstallDay) (supported values are 0-7,  where 0 is every day, 1  is Sunday, 2 is Monday, etc.).

**Managing the source of updates with MDM**

*Applies to: Corporate devices with Enterprise edition*

Although Windows 10 Enterprise enables IT administrators to defer installation of new updates from Windows Update, enterprises may also want additional control over update processes. With this in mind, Microsoft created Windows Update for Business. Microsoft designed Windows Update for Business to provide IT administrators with additional Windows Update-centric management capabilities, such as the ability to deploy updates to groups of devices and to define maintenance windows for installing updates. If you are using a MDM system, the use of Windows Update for Business is not a requirement, as you can manage these features from your MDM system.

Learn more about [Windows Update for Business](/windows/deployment/update/waas-manage-updates-wufb).

IT administrators can specify where the device gets updates from with AllowUpdateService. This could be Microsoft Update, Windows Update for Business, or Windows Server Update Services (WSUS.

**Managing Updates with Windows Update Server**

*Applies to: Corporate devices with Enterprise edition*

When using WSUS, set **UpdateServiceUrl** to allow the device to check for updates from a WSUS server instead of Windows Update. This is useful for on-premises MDMs that need to update devices that cannot connect to the Internet, usually handheld devices used for task completion, or other Windows IoT devices.

Learn more about [managing updates with Windows Server Update Services (WSUS)](https://technet.microsoft.com/windowsserver/bb332157.aspx)

**Querying the device update status**

*Applies to: Personal and corporate devices*

In addition to configuring how Windows 10 Mobile Enterprise obtains updates, the MDM administrator can query devices for Windows 10 Mobile update information so that update status can be checked against a list of approved updates.

The device update status query provides an overview of:
-   Installed updates: A list of updates that are installed on the device.
-   Installable updates: A list of updates that are available for installation.
-   Failed updates: A list of updates that failed during installation, including indication of why the update failed.
-   Pending reboot: A list of updates that require a restart to complete update installation.
-   Last successful scan time: The last time a successful update scan was completed.
-   Defer upgrade: Whether the upgrade is deferred until the next update cycle.

### <a href="" id="device-health"></a>Device health

*Applies to: Personal and corporate devices*

Device Health Attestation (DHA) is another line of defense that is new to Windows 10 Mobile. It can be used to remotely detect devices that lack a secure configuration or have vulnerabilities that could allow them to be easily exploited by sophisticated attacks.

Windows 10 Mobile makes it easy to integrate with Microsoft Intune or third-party MDM solutions for an overall view of device health and compliance. Using these solutions together, you can detect jailbroken devices, monitor device compliance, generate compliance reports, alert users or administrators to issues, initiate corrective action, and manage conditional access to resources like Office 365 or VPN.

The first version of Device Health Attestation (DHA) was released in June 2015 for Windows 10 devices that supported TPM 2.0 and operated in an enterprise cloud-based topology. In the Windows 10 anniversary release, Device Health Attestation (DHA) capabilities are extended to legacy devices that support TPM 1.2, hybrid, and on-premises environments that have access to the Internet or operate in an air-gapped network.

The health attestation feature is based on Open Mobile Alliance (OMA) standards. IT managers can use DHA to validate devices that:
-   Run Windows 10 operating system (mobile phone or PC)
-   Support Trusted Module Platform (TPM 1.2 or 2.0) in discrete of firmware format
-   Are managed by a DHA-enabled device management solution (Intune or third-party MDM)
-   Operate in cloud, hybrid, on-premises, and BYOD scenarios

DHA-enabled device management solutions help IT managers create a unified security bar across all managed Windows 10 Mobile devices. This allows IT managers to:
-   Collect hardware attested data (highly assured) data remotely
-   Monitor device health compliance and detect devices that are vulnerable or could be exploited by sophisticated attacks
-   Take actions against potentially compromised devices, such as:
-   Trigger corrective actions remotely so offending device is inaccessible (lock, wipe, or brick the device)
-   Prevent the device from getting access to high-value assets (conditional access)
-   Trigger further investigation and monitoring (route the device to a honeypot for further monitoring)
-   Simply alert the user or the admin to fix the issue

>**Note:** Windows Device Health Attestation Service can be used for conditional access scenarios which may be enabled by Mobile Device Management solutions (e.g.: Microsoft Intune) and other types of management systems (e.g.: SCCM) purchased separately.

For more information about health attestation in Windows 10 Mobile, see the [Windows 10 Mobile security guide](/windows/device-security/windows-10-mobile-security-guide).

Thisis a lists of attributes that are supported by DHA and can trigger the corrective actions mentioned above.
-   **Attestation Identity Key (AIK) present** Indicates that an AIK is present (i.e., the device can be trusted more than a device without an AIK).
-   **Data Execution Prevention (DEP) enabled** Whether a DEP policy is enabled for the device, indicating that the device can be trusted more than a device without a DEP policy.
-   **BitLocker status** BitLocker helps protect the storage on the device. A device with BitLocker can be trusted more than a device without BitLocker.
-   **Secure Boot enabled** Whether Secure Boot is enabled on the device. A device with Secure Boot enabled can be trusted more than a device without Secure Boot. Secure Boot is always enabled on Windows 10 Mobile devices.
-   **Code integrity enabled** Whether the code integrity of a drive or system file is validated each time it’s loaded into memory. A device with code integrity enabled can be trusted more than a device without code integrity.
-   **Safe mode** Whether Windows is running in safe mode. A device that is running Windows in safe mode isn’t as trustworthy as a device running in standard mode.
-   **Boot debug enabled** Whether the device has boot debug enabled. A device that has boot debug enabled is less secure (trusted) than a device without boot debug enabled.
-   **OS kernel debugging enabled** Whether the device has operating system kernel debugging enabled. A device that has operating system kernel debugging enabled is less secure (trusted) than a device with operating system kernel debugging disabled.
-   **Test signing enabled** Whether test signing is disabled. A device that has test signing disabled is more trustworthy than a device that has test signing enabled.
-   **Boot Manager Version** The version of the Boot Manager running on the device. The HAS can check this version to determine whether the most current Boot Manager is running, which is more secure (trusted).
-   **Code integrity version** Specifies the version of code that is performing integrity checks during the boot sequence. The HAS can check this version to determine whether the most current version of code is running, which is more secure (trusted).
-   **Secure Boot Configuration Policy (SBCP) present** Whether the hash of the custom SBCP is present. A device with an SBCP hash present is more trustworthy than a device without an SBCP hash.
-   **Boot cycle whitelist** The view of the host platform between boot cycles as defined by the manufacturer compared to a published whitelist. A device that complies with the whitelist is more trustworthy (secure) than a device that is noncompliant.

**Example scenario**

Windows 10 mobile has protective measures that work together and integrate with Microsoft Intune or third-party Mobile Device Management (MDM) solutions. IT administrators can monitor and verify compliance to ensure corporate resources are protected end-to–end with the security and trust rooted in the physical hardware of the device.

Here is what occurs when a smartphone is turned on:
1. Windows 10 Secure Boot protects the boot sequence, enables the device to boot into a defined and trusted configuration, and loads a factory trusted boot loader.
2. Windows 10 Trusted Boot takes control, verifies the digital signature of the Windows kernel, and the components are loaded and executed during the Windows startup process.
3. In parallel to Steps 1 and 2, Windows 10 Mobile TPM (Trusted Platform Modules – measured boot) runs independently in a hardware-protected security zone (isolated from boot execution path monitors boot activities) to create an integrity protected and tamper evident audit trail - signed with a secret that is only accessible by TPM.
4. Devices managed by a DHA-enabled MDM solution send a copy of this audit trail to Microsoft Health Attestation Service (HAS) in a protected, tamper-resistant, and tamper-evident communication channel.
5. Microsoft HAS reviews the audit trails, issues an encrypted/signed report, and forwards it to the device.
6. IT managers can use a DHA-enabled MDM solution to review the report in a protected, tamper-resistant and tamper-evident communication channel. They can assess if a device is running in a compliant (healthy) state, allow access, or trigger corrective action aligned with security needs and enterprise policies.

### <a href="" id="asset-reporting"></a>Asset reporting

*Applies to: Corporate devices with Enterprise edition*

Device inventory helps organizations better manage devices because it provides in-depth information about those devices. MDM systems collect inventory information remotely and provide reporting capabilities to analyze device resources and information. This data informs IT about the current hardware and software resources of the device (e.g., installed updates).

The following list shows examples of the Windows 10 Mobile software and hardware information that a device inventory provides. In addition to this information, the MDM system can read any of the configuration settings described in this guide.

-   **Installed enterprise apps** List of the enterprise apps installed on the device
-   **Device name** The device name configured for the device
-   **Firmware version** Version of firmware installed on the device
-   **Operating system version** Version of the operating system installed on the device
-   **Device local time** Local time on the device
-   **Processor type** Processor type for the device
-   **Device model** Model of the device as defined by the manufacturer
-   **Device manufacturer** Manufacturer of the device
-   **Device processor architecture** Processor architecture for the device
-   **Device language** Language in use on the device
-   **Phone number** Phone number assigned to the device
-   **Roaming status** Indicates whether the device has a roaming cellular connection
-   **International mobile equipment identity (IMEI) and international mobile subscriber identity (IMSI)	Unique identifiers for the cellular connection for the phone; Global System for Mobile Communications networks identify valid devices by using the IMEI, and all cellular networks use the IMSI to identify the device and user
-   **Wi-Fi IP address** IPv4 and IPv6 addresses currently assigned to the Wi-Fi adapter in the device
-   **Wi-Fi media access control (MAC) address** MAC address assigned to the Wi-Fi adapter in the device
-   **Wi-Fi DNS suffix and subnet mask** DNS suffix and IP subnet mask assigned to the Wi-Fi adapter in the device
-   **Secure Boot state** Indicates whether Secure Boot is enabled
-   **Enterprise encryption policy compliance** Indicates whether the device is encrypted

### <a href="" id="manage-telemetry"></a>Manage diagnostic data

*Applies to: Corporate devices with Windows 10 Mobile Enterprise edition*

Microsoft uses diagnostics, performance, and usage data from Windows devices to help inform decisions and focus efforts to provide the most robust and valuable platform for your business and the people who count on Windows to enable them to be as productive as possible. Diagnostic data helps keep Windows devices healthy, improve the operating system, and personalize features and services.

You can control the level of data that diagnostic data systems collect. To configure devices, specify one of these levels in the Allow Telemetry setting with your MDM system.

For more information, see [Configure Windows diagnostic data in Your organization](/windows/configuration/configure-windows-diagnostic-data-in-your-organization).

>**Note:** Diagnostic data can only be managed when the device is upgraded to Windows 10 Mobile Enterprise edition.

### <a href="" id="mremote-assistance"></a>Remote assistance

*Applies to: Personal and corporate devices*

The remote assistance features in Windows 10 Mobile help resolve issues that users might encounter even when the help desk does not have physical access to the device. These features include:
-   **Remote lock** Support personnel can remotely lock a device. This ability can help when a user loses his or her mobile device and can retrieve it, but not immediately (e.g., leaving the device at a customer site).
-   **Remote PIN reset** Support personnel can remotely reset the PIN, which helps when users forget their PIN and are unable to access their device. No corporate or user data is lost and users are able to quickly gain access to their devices.
-   **Remote ring** Support personnel can remotely make devices ring. This ability can help users locate misplaced devices and, in conjunction with the Remote Lock feature, help ensure that unauthorized users are unable to access the device if they find it.
-   **Remote find** Support personnel can remotely locate a device on a map, which helps identify the geographic location of the device. Remote find parameters can be configured via phone settings (see table below). The remote find feature returns the most current latitude, longitude, and altitude of the device.

**Remote assistance policies**
-   **Desired location accuracy** The desired accuracy as a radius value in meters; has a value between 1 and 1,000 meters
-   **Maximum remote find** Maximum length of time in minutes that the server will accept a successful remote find; has a value between 0 and 1,000 minutes
-   **Remote find timeout** The number of seconds devices should wait for a remote find to finish; has a value between 0 and 1,800 seconds

These remote management features help organizations reduce the IT effort required to manage devices. They also help users quickly regain use of their device should they misplace it or forget the device password.

>**Remote control software** Microsoft does not provide build-in remote control software, but works with partners to deliver these capabilities and services. With version 1607, remote assistant and control applications are available in the Microsoft Store.

## Retire

*Applies to: Corporate and Personal devices*

Device retirement is the last phase of the device lifecycle, which in today’s business environment averages about 18 months. After that time period, employees want the productivity and performance improvements that come with the latest hardware. It’s important that devices being replaced with newer models are securely retired since you don’t want any company data to remain on discarded devices that could compromise the confidentiality of your data. This is typically not a problem with corporate devices, but it can be more challenging in a personal device scenario. You need to be able to selectively wipe all corporate data without impacting personal apps and data on the device. IT also needs a way to adequately support users who need to wipe devices that are lost or stolen.

Windows 10 Mobile IT supports device retirement in both personal and corporate scenarios, allowing IT to be confident that corporate data remains confidential and user privacy is protected.

>**Note:** All these MDM capabilities are in addition to the device’s software and hardware factory reset features, which employees can use to restore devices to their factory configuration.

**Personal devices:** Windows 10 mobile supports the USA regulatory requirements for a “kill switch” in case your phone is lost or stolen. Reset protection is a free service on account.microsoft.com that helps ensure that the phone cannot be easily reset and reused. All you need to do to turn on **Reset Protection** is sign in with your Microsoft account and accept the recommended settings. To manually turn it on, you can find it under Settings > Updates & security > Find my phone. At this point, Reset Protection is only available with an MSA, not with Azure AD account. It is also only available in the USA and not in other regions of the world.

If you choose to completely wipe a device when lost or when an employee leaves the company, make sure you obtain consent from the user and follow any local legislation that protects the user’s personal data.

A better option than wiping the entire device is to use Windows Information Protection to clean corporate-only data from a personal device. As explained in the Apps chapter, all corporate data will be tagged and when the device is unenrolled from your MDM system of your choice, all enterprise encrypted data, apps, settings and profiles will immediately be removed from the device without affecting the employee’s existing personal data. A user can initiate unenrollment via the settings screen or unenrollment action can be taken by IT from within the MDM management console. Unenrollment is a management event and will be reported to the MDM system.

**Corporate device:** You can certainly remotely expire the user’s encryption key in case of device theft, but please remember that will also make the encrypted data on other Windows devices unreadable for the user. A better approach for retiring a discarded or lost device is to execute a full device wipe. The help desk or device users can initiate a full device wipe. When the wipe is complete, Windows 10 Mobile returns the device to a clean state and restarts the OOBE process.

**Settings for personal or corporate device retirement**
-   **Allow manual MDM unenrollment** Whether users are allowed to delete the workplace account (i.e., unenroll the device from the MDM system)
-   **Allow user to reset phone** Whether users are allowed to use Settings or hardware key combinations to return the device to factory defaults


## Related topics

- [Mobile device management](https://go.microsoft.com/fwlink/p/?LinkId=734050)
- [Enterprise Mobility + Security](https://go.microsoft.com/fwlink/p/?LinkId=723984)
- [Overview of Mobile Device Management for Office 365](https://go.microsoft.com/fwlink/p/?LinkId=734052)
- [Microsoft Store for Business](https://go.microsoft.com/fwlink/p/?LinkId=722910)


## Revision History

-   November 2015   Updated for Windows 10 Mobile (version 1511)
-   August 2016     Updated for Windows 10 Mobile Anniversary Update (version 1607)
