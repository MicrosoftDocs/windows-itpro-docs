---
title: Enhanced Phishing Protection in Microsoft Defender SmartScreen
description: Learn how Enhanced Phishing Protection for Microsoft Defender SmartScreen helps protect Microsoft school or work passwords against phishing and unsafe usage on sites and apps.
ms.date: 07/10/2024
ms.topic: conceptual
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 22H2</a>
---

# Enhanced Phishing Protection in Microsoft Defender SmartScreen

Starting in Windows 11, version 22H2, Enhanced Phishing Protection in Microsoft Defender SmartScreen helps protect Microsoft school or work passwords against phishing and unsafe usage on sites and apps.

If a user signs into Windows using a password, Enhanced Phishing Protection works alongside Windows security protections, and helps protect typed work or school password used to sign into Windows 11 in these ways:

- If users type or paste their work or school password on any browser, into a site deemed malicious by Microsoft Defender SmartScreen, Enhanced Phishing Protection alerts them. It also alerts them to change their password so attackers can't gain access to their account.
- Reusing work or school passwords makes it easy for attackers who compromise a user's password to gain access to their other accounts. Enhanced Phishing Protection can warn users if they reuse their work or school Microsoft account password on sites and apps and alert them to change their password.
- Since it's unsafe to store plaintext passwords in text editors, Enhanced Phishing Protection can warn users if they store their work or school password in Notepad, Word, or any Microsoft 365 Office app, and recommends they delete their password from the file.
- If users type their work or school password into a website or app that SmartScreen finds suspicious, Enhanced Phishing Protection can automatically collect information from that website or app to help identify security threats. For example, the content displayed, sounds played, and application memory.

> [!NOTE]
> When a user signs in to a device using a Windows Hello for Business PIN or biometric, Enhanced Phishing Protection does not alert the user or send events to [Microsoft Defender for Endpoint (MDE)](/microsoft-365/security/defender-endpoint/).

## Benefits of Enhanced Phishing Protection in Microsoft Defender SmartScreen

Enhanced Phishing Protection provides robust phishing protections for work or school passwords that are used to sign into Windows 11. The benefits of Enhanced Phishing Protection are:

- **Anti-phishing support:** Phishing attacks trick users through convincing imitations of safe content or through credential harvesting content hosted inside trusted sites and applications. Enhanced Phishing Protection helps protect users from reported phishing sites by evaluating the URLs a site or app is connecting to, along with other characteristics, to determine if they're known to distribute or host unsafe content.

- **Secure operating system integration:** Enhanced Phishing Protection is integrated directly into the Windows 11 operating system, so it can understand users' password entry context (including process connections, URLs, certificate information) in any browser or app. Because Enhanced Phishing Protection has unparalleled insight into what is happening at the OS level, it can identify when users type their work or school password unsafely. If users do use their work or school password unsafely, the feature empowers users to change their password to minimize chances of their compromised credential being weaponized against them.

- **Unparalleled telemetry shared throughout Microsoft's security suite:** Enhanced Phishing Protection is constantly learning from phishing attacks seen throughout the entire Microsoft security stack. It works alongside other Microsoft security products, to provide a layered approach to password security, especially for organizations early in their password-less authentication journey. If your organization uses Microsoft Defender for Endpoint, you can see valuable phishing sensors data in the Microsoft 365 Defender Portal. This portal lets you view Enhanced Phishing Protection alerts and reports for unsafe password usage in your environment.

- **Easy management through Group Policy and Microsoft Intune:** Enhanced Phishing Protection works with Group Policy and mobile device management (MDM) settings to help you manage your organization's computer settings. Based on how you set up Enhanced Phishing Protection, you can customize which phishing protection scenarios show users warning dialogs. For example, the Service Enabled setting determines whether the Enhanced Phishing Protection service is on or off. The feature is in audit mode if the other settings, which correspond to notification policies, aren't enabled.

[!INCLUDE [enhanced-phishing-protection-with-smartscreen](../../../../../includes/licensing/enhanced-phishing-protection-with-smartscreen.md)]

## Configure Enhanced Phishing Protection for your organization

Enhanced Phishing Protection can be configured via Microsoft Intune, Group Policy Objects (GPO) or Configuration Service Providers (CSP) with an MDM service. These settings are available to configure your devices using either Microsoft Intune, GPO, or CSP.

| Setting | Description |
|--|--|
| Automatic Data Collection | This policy setting determines whether Enhanced Phishing Protection can collect additional information-such as content displayed, sounds played, and application memory-when your users enter their work or school password into a suspicious website or app. This information is used only for security purposes and helps SmartScreen determine whether the website or app is malicious.<li> If you enable this policy setting, Enhanced Phishing Protection may automatically collect additional content for security analysis from a suspicious website or app when your users enter their work or school password into that website or app.</li><li> If you disable this policy setting, Enhanced Phishing Protection won't collect additional content for security analysis when your users enter their work or school password into a suspicious site or app.</li><li> If this policy isn't set, Enhanced Phishing Protection automatic data collection honors the end user's settings.</li> |
| Service Enabled | This policy setting determines whether Enhanced Phishing Protection is in audit mode or off. Users don't see any notifications for any protection scenarios when Enhanced Phishing Protection is in audit mode. In audit mode, Enhanced Phishing Protection captures unsafe password entry events and sends diagnostic data through Microsoft Defender.<li> If you enable or don't configure this setting, Enhanced Phishing Protection is enabled in audit mode, preventing users to turn it off.</li><li> If you disable this policy setting, Enhanced Phishing Protection is off. When off, Enhanced Phishing Protection doesn't capture events, send data, or notify users. Additionally, your users are unable to turn it on.</li> |
| Notify Malicious | This policy setting determines whether Enhanced Phishing Protection warns your users if they type their work or school password into one of the following malicious scenarios: into a reported phishing site, into a sign-in URL with an invalid certificate, or into an application connecting to either a reported phishing site or a sign-in URL with an invalid certificate<li> If you enable this policy setting, Enhanced Phishing Protection warns your users if they type their work or school password into one of the malicious scenarios described above and encourages them to change their password.</li><li> If you disable or don't configure this policy setting, Enhanced Phishing Protection doesn't warn users if they type their work or school password into one of the malicious scenarios described above. |
| Notify Password Reuse | This policy setting determines whether Enhanced Phishing Protection warns your users if they reuse their work or school password.<li> If you enable this policy setting, Enhanced Phishing Protection warns users if they reuse their work, or school password and encourages them to change it.</li><li> If you disable or don't configure this policy setting, Enhanced Phishing Protection doesn't warn users if they reuse their work or school password. |
| Notify Unsafe App | This policy setting determines whether Enhanced Phishing Protection warns your users if they type their work or school passwords in Notepad or Microsoft 365 Office Apps.<li> If you enable this policy setting, Enhanced Phishing Protection warns your users if they store their password in Notepad or Microsoft 365 Office Apps.</li><li> If you disable or don't configure this policy setting, Enhanced Phishing Protection doesn't warn users if they store their password in Notepad or Microsoft 365 Office Apps. |

Enhanced Phishing Protection allows organizations to add their custom identity provider sign-in URL as a recognized URL. Then Enhanced Phishing Protection doesn't consider Microsoft passwords typed into an internal identity provider (IdP) as unknown or password reuse. Without knowledge of an enterprise's custom identity provider URL, SmartScreen might not have enough information about the URL. If you configure warning dialogs for Enhanced Phishing Protection, it might show an unsafe password usage dialog to the user entering their Microsoft password into the URL.

To add your organization's custom sign-in URL to Enhanced Phishing Protection, configure the `EnableWebSignIn` policy in the [Authentication Policy CSP](/windows/client-management/mdm/policy-csp-authentication#enablewebsignin). For more information, see [Web sign-in for Windows](../../../identity-protection/web-sign-in/index.md).

Follow these instructions to configure your devices using either Microsoft Intune, GPO, or CSP.

#### [:::image type="icon" source="../../../images/icons/intune.svg"::: **Intune**](#tab/intune)

To configure devices using Microsoft Intune, create a [**Settings catalog** policy][MEM-2], and use the settings listed under the category **`SmartScreen > Enhanced Phishing Protection`**:

- Automatic Data Collection
- Service Enabled
- Notify Malicious
- Notify Password Reuse
- Notify Unsafe App

Assign the policy to a security group that contains as members the devices or users that you want to configure.

#### [:::image type="icon" source="../../../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

Enhanced Phishing Protection can be configured using the following group policy settings found under **Administrative Templates > Windows Components > Windows Defender SmartScreen > Enhanced Phishing Protection**:

- Automatic Data Collection
- Service Enabled
- Notify Malicious
- Notify Password Reuse
- Notify Unsafe App

#### [:::image type="icon" source="../../../images/icons/gear.svg"::: **CSP**](#tab/csp)

Enhanced Phishing Protection can be configured using the [WebThreatDefense CSP][WIN-1].

| Setting                     | OMA-URI                                                                       | Data type |
|-----------------------------|-------------------------------------------------------------------------------|-----------|
| **AutomaticDataCollection** | `./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/AutomaticDataCollection` | Integer   |
| **NotifyMalicious**         | `./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/NotifyMalicious`         | Integer   |
| **NotifyPasswordReuse**     | `./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/NotifyPasswordReuse`     | Integer   |
| **NotifyUnsafeApp**         | `./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/NotifyUnsafeApp`         | Integer   |
| **ServiceEnabled**          | `./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/ServiceEnabled`          | Integer   |

---

### Recommended settings for your organization

By default, Enhanced Phishing Protection is deployed in audit mode, preventing notifications to the users for any protection scenarios. In audit mode, Enhanced Phishing Protection captures unsafe password entry events and sends diagnostic data through Microsoft Defender. Users aren't warned if they enter their work or school password into a phishing site, if they reuse their password, or if they unsafely store their password in applications. Because of this possibility, it's recommended that you configure Enhanced Phishing Protection to warn users during all protection scenarios.

| Setting                   | Default Value                                                                                              | Recommendation                                                                                                                                                                                                        |
|---------------------------|------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Automatic Data Collection | **Enabled** for domain joined devices or devices enrolled with MDM.<br>**Disabled** for all other devices. | **Enabled**: Turns on collection of additional content for security analysis from a suspicious website or app to improve Microsoft's threat intelligence. This information is used only for security purposes and helps SmartScreen determine whether the website or app is malicious.                                                              |
| Service Enabled           | **Enabled**                                                                                                | **Enabled**: Turns on Enhanced Phishing Protection in audit mode, which captures work or school password entry events and sends diagnostic data but doesn't show any notifications to your users.                     |
| Notify Malicious          | **Disabled** for devices onboarded to MDE.<br>**Enabled** for all other devices.                           | **Enabled**: Turns on Enhanced Phishing Protection notifications when users type their work or school password into one of the previously described malicious scenarios and encourages them to change their password. |
| Notify Password Reuse     | **Disabled**                                                                                               | **Enabled**: Turns on Enhanced Phishing Protection notifications when users reuse their work or school password and encourages them to change their password.                                                         |
| Notify Unsafe App         | **Disabled**                                                                                               | **Enabled**: Turns on Enhanced Phishing Protection notifications when users type their work or school passwords in Notepad and Microsoft 365 Office Apps.                                                             |

To better help you protect your organization, we recommend turning on and using these specific Microsoft Defender SmartScreen settings.

#### [:::image type="icon" source="../../../images/icons/intune.svg"::: **Intune**](#tab/intune)

| Settings catalog element  | Recommended value |
|---------------------------|-------------------|
| Automatic Data Collection | **Enabled**       |
| Service Enabled           | **Enabled**       |
| Notify Malicious          | **Enabled**       |
| Notify Password Reuse     | **Enabled**       |
| Notify Unsafe App         | **Enabled**       |

#### [:::image type="icon" source="../../../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

| Group Policy setting      | Recommended value |
|---------------------------|-------------------|
| Automatic Data Collection | **Enabled**       |
| Service Enabled           | **Enabled**       |
| Notify Malicious          | **Enabled**       |
| Notify Password Reuse     | **Enabled**       |
| Notify Unsafe App         | **Enabled**       |

#### [:::image type="icon" source="../../../images/icons/gear.svg"::: **CSP**](#tab/csp)

| MDM setting             | Recommended value |
|-------------------------|-------------------|
| AutomaticDataCollection | **1**             |
| ServiceEnabled          | **1**             |
| NotifyMalicious         | **1**             |
| NotifyPasswordReuse     | **1**             |
| NotifyUnsafeApp         | **1**             |

---

## Related articles

- [SmartScreen frequently asked questions](https://fb.smartscreen.microsoft.com/smartscreenfaq.aspx)
- [WebThreatDefense CSP][WIN-1]
- [Threat protection](index.md)

<!-- Links -->

[WIN-1]: /windows/client-management/mdm/policy-csp-webthreatdefense
[MEM-2]: /mem/intune/configuration/settings-catalog
