---
title: Operating System security
description: Windows 11 security book - Operating System security chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Virus and threat protection

:::image type="content" source="images/operating-system.png" alt-text="Diagram of containing a list of security features." lightbox="images/operating-system.png" border="false":::

Today's threat landscape is more complex than ever. This new world requires a new approach to threat prevention, detection, and response. Microsoft Defender Antivirus, along with many other features that are built into Windows 11, is at the frontlines, protecting customers against current and emerging threats.

## Microsoft Defender SmartScreen

Microsoft Defender SmartScreen protects against phishing, malware websites and applications, and the downloading of potentially malicious files.

SmartScreen determines whether a site is potentially malicious by:

- Analyzing visited webpages to find indications of suspicious behavior. If it determines a page is suspicious, it will show a warning page advising caution
- Checking the visited sites against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, SmartScreen warns that the site might be malicious

SmartScreen also determines whether a downloaded app or app installer is potentially malicious by:

- Checking downloaded files against a list of reported malicious software sites and programs known to be unsafe. If it finds a match, SmartScreen warns that the file might be malicious
- Checking downloaded files against a list of well-known files. If the file is of a dangerous type and not well-known, SmartScreen displays a caution alert

With enhanced phishing protection in Windows 11, SmartScreen also alerts people when they are entering their Microsoft credentials into a potentially risky location, regardless of which application or browser is used. IT can customize which notifications appear through Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>. This protection runs in audit mode by default, giving IT admins full control to make decisions around policy creation and enforcement.

Because Windows 11 comes with these enhancements already built in and enabled, users have extra security from the moment they turn on their device.

The app and browser control section contains information and settings for Microsoft Defender SmartScreen. IT administrators and IT pros can get configuration guidance in the [Microsoft Defender SmartScreen documentation library](/windows/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview).

## Microsoft Defender Antivirus

Microsoft Defender Antivirus is a next-generation protection solution included in all versions of Windows 10 and Windows 11. From the moment you turn on Windows, Microsoft Defender Antivirus continually monitors for malware, viruses, and security threats. In addition to real-time protection, updates are downloaded automatically to help keep your device safe and protect it from threats. If you have another antivirus app installed and turned on, Microsoft Defender Antivirus will turn off automatically. If you uninstall the other app, Microsoft Defender Antivirus will turn back on.

Microsoft Defender Antivirus includes real-time, behavior-based, and heuristic antivirus protection. This combination of always-on content scanning, file and process behavior monitoring, and other heuristics effectively prevents security threats. Microsoft Defender Antivirus continually scans for malware and threats and also detects and blocks potentially unwanted applications (PUA), applications deemed to negatively impact your device but are not considered malware.

Microsoft Defender Antivirus always-on protection is integrated with cloud-delivered protection, which helps ensure near-instant detection and blocking of new and emerging threats. This combination of local and cloud-delivered technologies provides award-winning protection at home and at work.

:::image type="content" source="images/defender-antivirus.png" alt-text="Diagram of the Microsoft Defender Antivirus components." border="false":::

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Next-generation protection with Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows).

## Attack surface reduction

Attack surface reduction rules help prevent software behaviors that are often abused to compromise devices and networks. By reducing the attack surface, you can reduce the overall vulnerability of your organization. Administrators can configure specific attack surface reduction rules to help block certain behaviors, such as:

- Launching executable files and scripts that attempt to download or run files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

For example, an attacker might try to run an unsigned script from a USB drive or have a macro in an Office document make calls directly to the Win32 API. Attack surface reduction rules can constrain these kinds of risky behaviors and improve the defensive posture of the device. For comprehensive protection, follow steps for enabling hardware-based isolation

For Microsoft Edge and reducing the attack surface across applications, folders, device,
network, and firewall.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Attack surface reduction](/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction)

## Tamper protection

Attacks like ransomware attempt to disable security features, such as anti-virus protection. Bad actors like to disable security features to get easier access to user's data, to install malware, or otherwise exploit user's data, identity, and devices without fear of being blocked. Tamper protection helps prevent these kinds of activities.

With tamper protection, malware is prevented from taking actions such as:

- Disabling real-time protection
- Turning off behavior monitoring
- Disabling antivirus, such as IOfficeAntivirus (IOAV)
- Disabling cloud-delivered protection
- Removing security intelligence updates

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Tamper protection](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection)

## Exploit protection

Exploit protection automatically applies several exploit mitigation techniques to operating system processes and apps. Exploit protection works best with Microsoft Defender for Endpoint<sup>[\[9\]](conclusion.md#footnote9)</sup>, which gives organizations detailed reporting into exploit protection events and blocks as part of typical alert investigation scenarios. You can enable exploit protection on an individual device and then use Group Policy in Active Directory or Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> to distribute the configuration XML file to multiple devices simultaneously.

When a mitigation is encountered on the device, a notification will be displayed from the Action Center. You can customize the notification with your company details and contact information. You can also enable the rules individually to customize which techniques the feature monitors.

You can use audit mode to evaluate how exploit protection would impact your organization if it were enabled.

Windows 11 provides configuration options for exploit protection. You can prevent users from modifying these specific options with Group Policy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Protecting devices from exploits](/microsoft-365/security/defender-endpoint/enable-exploit-protection)

## Controlled folder access

You can protect your valuable information in specific folders by managing app access to them. Only trusted apps can access protected folders, which are specified when controlled folder access is configured. Typically, commonly used folders, such as those used for documents, pictures, and downloads, are included in the list of controlled folders.

Controlled folder access works with a list of trusted apps. Apps that are included in the list of trusted software work as expected. Apps that are not included in the trusted list are prevented from making any changes to files inside protected folders.

Controlled folder access helps protect user's valuable data from malicious apps and threats such as ransomware.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders)

## Microsoft Defender for Endpoint

Microsoft Defender for Endpoint<sup>[\[9\]](conclusion.md#footnote9)</sup> is an enterprise endpoint detection and response solution that helps security teams detect, investigate, and respond to advanced threats.

Organizations can use the rich event data and attack insights Defender for Endpoint provides to investigate incidents. Defender for Endpoint brings together the following elements to provide a more complete picture of security incidents:

- Endpoint behavioral sensors: Embedded in Windows, these sensors collect and process behavioral signals from the operating system and send this sensor data to your private, isolated cloud instance of Microsoft Defender for Endpoint
- Cloud security analytics: Behavioral signals are translated into insights, detections, and recommended responses to advanced threats. These analytics leverage big data, device learning, and unique Microsoft optics across the Windows ecosystem, enterprise cloud products such as Microsoft 365<sup>[\[9\]](conclusion.md#footnote9)</sup>, and online assets
- Threat intelligence: Microsoft processes over 43 trillion security signals every 24 hours, yielding a deep and broad view into the evolving threat landscape. Combined with our global team of security experts and cutting-edge artificial intelligence and machine learning, we can see threats that others miss. This threat intelligence helps provide unparalleled protection for our customers. The protections built into our platforms and products blocked
attacks that include 31 billion identity threats and 32 billion email threats
- Rich response capabilities: Defender for Endpoint empowers SecOps teams to isolate, remediate, and remote into machines to further investigate and stop active threats in their environment, as well as block files, network destinations, and create alerts for them. In addition, Automated Investigation and Remediation can help reduce the load on the SOC by automatically performing otherwise manual steps towards remediation and providing
detailed investigation outcomes

Defender for Endpoint is also part of Microsoft 365 Defender, our end-to-end, cloud-native extended detection and response (XDR) solution that combines best-of-breed endpoint, email, and identity security products. It enables organizations to prevent, detect, investigate, and remediate attacks by delivering deep visibility, granular context, and actionable insights generated from raw signals harnessed across the Microsoft 365 environment and other
platforms, all synthesized into a single dashboard. This solution offers tremendous value to organizations of any size, especially those that are looking to break away from the added complexity of multiple point solutions, keeping them protected from sophisticated attacks and saving IT and security teams' time and resources.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Microsoft Defender for Endpoint](/defender-endpoint/microsoft-defender-endpoint)
- [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender)
