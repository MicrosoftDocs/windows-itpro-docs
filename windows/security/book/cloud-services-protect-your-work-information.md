---
title: Cloud services - Protect your work information
description: Windows 11 security book - Cloud services chapter - Protect your work information.
ms.topic: overview
ms.date: 04/09/2024
---

# Protect your work information

:::image type="content" source="images/cloud-security.png" alt-text="Diagram of containing a list of security features for cloud security." lightbox="images/cloud-security.png" border="false":::

## Microsoft Entra ID

Microsoft Entra ID, formerly Azure Active Directory is a comprehensive cloud-based identity management solution that helps enable secure access to applications, networks, and other resources and guard against threats. Microsoft Entra ID can also be used with Windows Autopilot for zero-touch provisioning of devices preconfigured with corporate security policies.

Organizations can deploy Microsoft Entra ID joined devices to enable access to both cloud and on-premises apps and resources. Access to resources can be controlled based on the Microsoft Entra ID account and Conditional Access policies applied to the device. By registering devices with Microsoft Entra ID - also called Workplace joined - IT admins can support users in bring your own device (BYOD) or mobile device scenarios. Credentials are authenticated and bound to the joined device and cannot be copied to another device without explicit reverification.

To provide more security and control for IT and a seamless experience for end users, Microsoft Entra ID works with apps and services, including on-premises software and thousands of software-as-a-service (SaaS) applications. Microsoft Entra ID protections include single sign-on, multifactor authentication, conditional access policies, identity protection, identity governance, and privileged identity management.

Windows 11 works with Microsoft Entra ID to provide secure access, identity management, and single sign-on to apps and services from anywhere. Windows has built-in settings to add work or school accounts by syncing the device configuration to an Active Directory domain or Microsoft Entra ID tenant.

:::image type="content" source="images/access-work-or-school.png" alt-text="Screenshot of the add work or school account in Settings." border="false":::

When a device is Microsoft Entra ID joined and managed with Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>, it receives the following security benefits:

- Default managed user and device settings and policies
- Single sign-in to all Microsoft Online Services
- Full suite of authentication management capabilities using Windows Hello for Business
- Single sign-on (SSO) to enterprise and SaaS applications
- No use of consumer Microsoft Account identity

Organizations and users can join or register their Windows devices with Microsoft Entra ID to get a seamless experience to both native and web applications. In addition, users can setup Windows Hello for Business or FIDO2 security keys with Microsoft Entra ID and benefit from greater security with passwordless authentication.

In combination with Microsoft Intune, Microsoft Entra ID offers powerful security control through Conditional Access to restrict access to organizational resources to healthy and compliant devices. Note that Microsoft Entra ID is only supported on Windows Pro and Enterprise editions.

Every Windows device has a built-in local administrator account that must be secured and protected to mitigate any Pass-the-Hash (PtH) and lateral traversal attacks. Many customers have been using our standalone, on-premises Windows Local Administrator Password Solution (LAPS) to manage their domain-joined Windows machines. We heard from many customers that LAPS support was needed as they modernized their Windows environment to join directly to Microsoft Entra ID.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Local Administrator Password Solution with Microsoft Entra (Azure AD)](https://techcommunity.microsoft.com/t5/microsoft-entra-azure-ad-blog/introducing-windows-local-administrator-password-solution-with/ba-p/1942487)
- [Microsoft Entra plans and pricing](https://www.microsoft.com/security/business/microsoft-entra-pricing?rtc=1)

## Modern device management through (MDM)

Windows 11 supports modern device management through mobile device management (MDM) protocols so that IT professionals can manage company security policies and business applications without compromising user privacy on corporate or employee-owned devices. With MDM solutions like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>, IT can manage Windows 11 using industry standard protocols. To simplify setup for users, management features are built directly into Windows, eliminating the need for a separate MDM client.

Windows 11 built-in management features include:

- The enrollment client, which enrolls and configures the device to securely communicate with the enterprise device management server
- The management client, which periodically synchronizes with the management server to check for updates and apply the latest policies set by IT

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Mobile device management overview](/windows/client-management/mdm-overview)

## Microsoft security baselines

Every organization faces security threats. However, different organizations can be concerned with different types of security threats. For example, an e-commerce company may focus on protecting its internet-facing web apps, while a hospital may focus on protecting confidential patient information. The one thing that all organizations have in common is a need to keep their apps and devices secure. These devices must be compliant with the security standards (or security baselines) defined by the organization.

A security baseline is a group of Microsoft-recommended configuration settings that explains their security implications. These settings are based on feedback from Microsoft security engineering teams, product groups, partners, and customers.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows security baselines you can deploy with Microsoft Intune](/mem/intune/protect/security-baselines)

## MDM security baseline

Windows 11 can be configured with Microsoft's MDM security baseline backed by ADMX policies, which functions like the Microsoft GP-based security baseline. The security baseline enables IT administrators to easily address security concerns and compliance needs for modern cloud-managed devices.

The security baseline includes policies for:

- Microsoft inbox security technology such as BitLocker, Microsoft Defender SmartScreen, virtualization-based security, Exploit Guard, Microsoft Defender Antivirus, and Windows Firewall
- Restricting remote access to devices
- Setting credential requirements for passwords and PINs
- Restricting use of legacy technology

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [MDM security baseline](/windows/security/threat-protection/windows-security-configuration-framework/windows-security-baselines)

## Microsoft Intune

Microsoft Intune15 is a comprehensive endpoint management solution that helps secure, deploy, and manage users, apps, and devices. Intune brings together technologies like Microsoft Configuration Manager and Windows Autopilot to simplify provisioning, configuration management, and software updates across the organization.

Intune works with Microsoft Entra ID to manage security features and processes, including multifactor authentication.

Organizations can cut costs while securing and managing remote PCs through the cloud in compliance with company policies.16 For example, organizations save time and money by provisioning preconfigured devices to remote employees using Windows Autopilot for zerotouch deployment.

Windows 11 enables IT professionals to move to the cloud while consistently enforcing security policies. Windows 11 provides expanded support for Group Policy administrative templates (ADMX-backed policies) in MDM solutions like Microsoft Intune, enabling IT professionals to easily apply the same security policies to both on-premises and remote devices.

### Endpoint Privilege Management (EPM)

Intune Endpoint Privilege Management supports organizations' Zero Trust journeys by helping them achieve a broad user base running with least privilege, while still permitting users to run tasks allowed by the organization to remain productive.

### Local Administrator Password (LAPs)

Local Administrator Password solution was a key consideration for many customers when deciding to make the transition from on-premises to cloud-managed devices using Intune. With LAPS (available in preview), organizations can automatically manage and back up the password of a local administrator account on Microsoft Entra ID joined or hybrid Microsoft Entra ID joined devices.

### Mobile Application Management (MAM)

With Intune, organizations can also extend MAM App Config, MAM App Protection, and App Protection Conditional Access capabilities to Windows. This enables people to access protected organizational content without having the device managed by IT. The first application to support MAM for Windows is Microsoft Edge.

Customers have asked for App Control for Business (previously called Windows Defender Application Control) to manage Installer support for a long time. Now customers will be able to enable allowlisting of Win32 apps within their enterprise to proactively reduce the number of malware infections.

Finally, Config Refresh helps organizations move to cloud from on-premises by protecting against settings deviating from the admin's intent.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows LAPS overview](/windows-server/identity/laps/laps-overview)

Microsoft Intune also has policies and settings to configure and manage the flow of operating system updates to devices, working with WUfB and WUfB-DS and giving admins great control over their deployments

With Intune, organizations can also extend MAM App Config, MAM App Protection, and App Protection Conditional Access capabilities to Windows. This enables people to access protected organizational content without having the device managed by IT. The first application to support MAM for Windows is Microsoft Edge.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune)

## Remote Wipe

When a device is lost or stolen, IT administrators might want to remotely wipe data stored in memory and hard disks. A helpdesk agent might also want to reset devices to fix issues encountered by remote workers. A remote wipe can also be used to prepare a previously used device for a new user.

Windows 11 supports the Remote Wipe configuration service provider (CSP) so that MDM Solutions<sup>[\[9\]](conclusion.md#footnote9)</sup> can remotely initiate any of the following operations:

- Reset the device and remove user accounts and data
- Reset the device and clean the drive
- Reset the device but persist user accounts and data

Learn More: [Remote Wipe CSP](/windows/client-management/mdm/remotewipe-csp)

## Microsoft Azure Attestation Service

Remote attestation helps ensure that devices are compliant with security policies and are operating in a trusted state before they are allowed to access resources. Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> integrates with [Microsoft Azure Attestation Service](/azure/attestation/overview) to review Windows device health comprehensively and connect this information with Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> Conditional Access.

**Attestation policies are configured in the Microsoft Azure Attestation Service which can then:**

- Verify the integrity of evidence provided by the Windows Attestation component by validating the signature and ensuring the Platform Configuration Registers (PCRs) match the values recomputed by replaying the measured boot log
- Verify that the TPM has a valid Attestation Identity Key issued by the authenticated TPM
- Verify that security features are in the expected states

Once this verification is complete, the attestation service returns a signed report with the security features state to the relying party - such as Microsoft Intune - to assess the trustworthiness of the platform relative to the admin-configured device compliance specifications. Conditional access is then granted or denied based on the device's compliance.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Azure Attestation overview](/azure/attestation/overview)

## Windows Update for Business deployment service

The Windows Update for Business deployment service, a core component of the Windows Update for Business product family, is a cloud-based solution that transforms the way update management is handled. Complementing existing [Windows Update for Business](/windows/deployment/update/waas-manage-updates-wufb) policies and [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview), the service provides control over the approval, scheduling, and safeguarding of updates - delivered straight from Windows Update to managed devices.

The Windows Update for Business deployment service powers Windows Update management via Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> and Autopatch. The deployment services currently allows the management of [drivers and firmware](/graph/windowsupdates-manage-driver-update), expedited [quality updates](/graph/windowsupdates-deploy-expedited-update) and [feature updates](/graph/windowsupdates-deploy-update).

For an in-depth understanding of this service, including its benefits and prerequisites for use, practical guides on specific capabilities, Microsoft Graph training, and a behind-the-scenes look at how the deployment service functions, read [here](/windows/deployment/update/waas-manage-updates-wufb)[.](/windows/deployment/update/waas-manage-updates-wufb)

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Update for Business - Windows Deployment](/windows/deployment/update/waas-manage-updates-wufb)

## Windows Autopatch

Cybercriminals often target outdated or unpatched software to gain access to networks. Keeping endpoints up to date is critical in closing existing vulnerabilities, but planning, monitoring, and reporting on update compliance can take IT resources away from other important tasks.

Available as part of Windows Enterprise E3 and E5, Windows Autopatch automates update management for Windows, drivers, firmware, Microsoft 365, Edge, and Teams apps. The service can even manage the upgrade to Windows 11. While the service is designed to be simple by default, admins can customize the service to reflect their business organization with Autopatch groups. This allows custom content or deployment schedules to be applied to different populations of devices.

From a technical standpoint, Windows Autopatch configures the policies and deployment service of Windows Update for Business to deliver updates, all within Microsoft Intune.<sup>[\[9\]](conclusion.md#footnote9)</sup> The results for IT admins: up-to-date endpoints and detailed reports to demonstrate compliance or help identify issues. The goal is to help IT teams be more secure and update more efficiently with less effort.

There's a lot more to learn about Windows Autopatch:

- This [Forrester study](https://aka.ms/AutopatchProductivity) commissioned by Microsoft, analyzes the impact of Windows Autopatch on real customers
- [IT pro blogs](https://aka.ms/MoreAboutAutopatch) provide updates and background on Autopatch features and the future of the service
- The [Windows Autopatch community](https://aka.ms/AutopatchCommunity) allows IT professionals to get answers to questions from their peers and the Autopatch team

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Autopatch documentation](https://aka.ms/Autopatchdocs)

## Windows Autopilot and zero-touch deployment

Traditionally, IT professionals spend significant time building and customizing images that will later be deployed to devices. Windows Autopilot introduces a new approach with a collection of technologies used to set up and preconfigure new devices, getting them ready for productive use and ensuring they are delivered locked down and compliant with corporate security policies.

- From a user perspective, it only takes a few simple operations to get their device ready for use
- From an IT professional perspective, the only interaction required from the end user is to connect to a network and verify their credentials. Setup is automated after that point

Windows Autopilot enables you to:

- Automatically join devices to Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> or Active Directory via hybrid Microsoft Entra ID Join. For more information about the differences between these two join options, see [Introduction to device management in Microsoft Entra ID](/azure/active-directory/device-management-introduction).
- Auto-enroll devices into MDM services such as Microsoft Intune (requires an Microsoft Entra ID Premium subscription for configuration)
- Automatic upgrade to Enterprise Edition if required
- Restrict administrator account creation
- Create and auto-assign devices to configuration groups based on a device's profile
- Customize Out of Box Experience (OOBE) content specific to the organization

Existing devices can also be quickly prepared for a new user with [Windows Autopilot Reset](/mem/autopilot/windows-autopilot-reset). The reset capability is also useful in break/fix scenarios to quickly bring a device back to a business-ready state.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Autopilot](https://aka.ms/WindowsAutopilot)

## Enterprise State Roaming with Azure

Available to any organization with a Microsoft Entra ID Premium<sup>[\[9\]](conclusion.md#footnote9)</sup> or Enterprise Mobility + Security (EMS)<sup>[\[9\]](conclusion.md#footnote9)</sup> license, Enterprise State Roaming provides users with a unified Windows Settings experience across their Windows devices and reduces the time needed for configuring a new device.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Enterprise State Roaming FAQ](/azure/active-directory/devices/enterprise-state-roaming-faqs)

## Universal Print

Universal Print eliminates the need for on-premises print servers. It also eliminates the need for print drivers from the users' Windows devices and makes the devices secure, reducing the malware attacks that typically exploit vulnerabilities in driver model. It enables Universal Print-ready printers (with native support) to connect directly to the Microsoft Cloud. All major printer OEMs have these [models](/universal-print/fundamentals/universal-print-partner-integrations). It also supports existing printers by using the connector software that comes with Universal Print.

Unlike traditional print solutions that rely on Windows print servers, Universal Print is a Microsoft-hosted cloud subscription service that supports a Zero Trust security model when using the Universal Print-ready printers. Customers can enable network isolation of printers, including the Universal Print connector software, from the rest of the organization's resources. Users and their devices do not need to be on the same local network as the printers or the Universal Print connector.

Universal Print supports Zero Trust security by requiring that:

- Each connection and API call to Universal Print cloud service requires authentication validated by Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup>. A hacker would have to have knowledge of the right credentials to successfully connect to the Universal Print service
- Every connection established by the user's device (client), the printer, or another cloud service to the Universal Print cloud service uses SSL with TLS 1.2 protection. This protects network snooping of traffic to gain access to sensitive data
- Each printer registered with Universal Print is created as a device object in the customer's Microsoft Entra ID tenant and issued its own device certificate. Every connection from the printer is authenticated using this certificate. The printer can access only its own data and no other device's data
- Applications can connect to Universal Print using either user, device, or application authentication. To ensure data security, it is highly recommended that only cloud applications use application authentication
- Each acting application must register with Microsoft Entra ID and specify the set of permission scopes it requires. Microsoft's own acting applications - for example, the Universal Print connector - are registered with the Microsoft Entra ID service. Customer administrators need to provide their consent to the required permission scopes as part of onboarding the application to their tenant
- Each authentication with Microsoft Entra ID from an acting application cannot extend the permission scope as defined by the acting client app. This prevents the app from requesting additional permissions if the app is breached

Additionally, Windows 11 and Windows 10 include MDM support to simplify printer setup for users. With initial support from Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>, admins can now configure policies to provision specific printers onto the user's Windows devices.

Universal Print stores the print data in cloud securely in Office Storage, the same storage used by other Microsoft Office products.

More information about handling of Microsoft 365 data (this includes Universal Print data) can be found [here](/microsoft-365/enterprise/m365-dr-overview).

The Universal Print secure release platform ensures user privacy, secures organizational data, and reduces print wastage. It eliminates the need for people to rush to a shared printer as soon as they send a print job to ensure that no one sees the private or confidential content. Sometimes, printed documents are picked up by another person or not picked up at all and discarded. Detailed support and configuration information can be found [here](/universal-print/fundamentals/universal-print-qrcode).

Universal Print has integrated with Administrative Units in Microsoft Entra ID to enable customers to assign a Printer Administrator role to their local IT team in the same way customers assign User Administrator or Groups Administrator roles. The local IT team can configure only the printers that are part of the same Administrative Unit.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Universal Print](https://www.microsoft.com/microsoft-365/windows/universal-print)
- [Data handling in Universal Print](/universal-print/data-handling)
- [Delegate Printer Administration with Administrative Units](/universal-print/portal/delegated-admin)

For customers who want to stay on Print Servers, we recommend using the Microsoft IPP Print driver. For features beyond what's covered in the standard IPP driver, use Print Support Applications (PSA) for Windows from the respective printer OEM.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Print support app design guide](/windows-hardware/drivers/devapps/print-support-app-design-guide)

## OneDrive for work or school

Data in OneDrive for work or school is protected both in transit and at rest.

When data transits either into the service from clients or between datacenters, it's protected using transport layer security (TLS) encryption. OneDrive only permits secure access.

Authenticated connections are not allowed over HTTP and instead redirect to HTTPS.

There are several ways that OneDrive for work or school is protected at rest:

- Physical protection: Microsoft understands the importance of protecting customer data and is committed to securing the datacenters that contain it. Microsoft datacenters are designed, built, and operated to strictly limit physical access to the areas where customer data is stored. Physical security at datacenters is in alignment with the defense-in-depth principle. Multiple security measures are implemented to reduce the risk of unauthorized users accessing data and other datacenter resources. Learn more [here](/compliance/assurance/assurance-datacenter-physical-access-security)
- Network protection: The networks and identities are isolated from the corporate network. Firewalls limit traffic into the environment from unauthorized locations
- Application security: Engineers who build features follow the security development lifecycle. Automated and manual analyses help identify possible vulnerabilities. The [Microsoft Security Response Center](https://technet.microsoft.com/security/dn440717.aspx) helps triage incoming vulnerability reports and evaluate mitigations. Through the [Microsoft Cloud Bug Bounty Terms](https://technet.microsoft.com/dn800983), people across the world can earn money by reporting vulnerabilities
- Content protection: Each file is encrypted at rest with a unique AES-256 key. These unique keys are encrypted with a set of master keys that are stored in Azure Key Vault

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [How OneDrive safeguards data in the cloud](https://support.microsoft.com/office/how-onedrive-safeguards-your-data-in-the-cloud-23c6ea94-3608-48d7-8bf0-80e142edd1e1)

## MDM enrollment certificate attestation

When a device is enrolled into device management, the administrator assumes that the device will enroll and receive appropriate policies to secure and manage the PC as they expect. In some circumstances, enrollment certificates can be removed by malicious actors and then used on unmanaged PCs to appear as though they are enrolled, but without the security and management policies the administrator intended. With MDM enrollment certificate attestation, the certificate and keys are bound to a specific machine through the use of the Trusted Platform Module (TPM) to ensure that they can't be lifted from one device and applied to another. This capability has existed for physical PCs since Windows 11 22H2 and is now being extended to Windows 11-based Cloud PCs and Azure Virtual Desktop VMs.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Configuration Service Provider - Windows Client Management](/windows/client-management/mdm/)
