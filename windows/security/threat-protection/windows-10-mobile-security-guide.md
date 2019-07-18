---
title: Windows 10 Mobile security guide (Windows 10)
description: This guide provides a detailed description of the most important security features in the Windows 10 Mobile operating system—identity access and control, data protection, malware resistance, and app platform security.
ms.assetid: D51EF508-699E-4A68-A7CD-91D821A97205
ms.reviewer: 
manager: dansimp
ms.author: dolmont
keywords: data protection, encryption, malware resistance, smartphone, device, Microsoft Store
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security, mobile
ms.localizationpriority: medium
author: dulcemontemayor
ms.date: 10/13/2017
---
# Windows 10 Mobile security guide

*Applies to Windows 10 Mobile, version 1511 and Windows Mobile, version 1607*

>This guide provides a detailed description of the most important security features in the Windows 10 Mobile operating system—identity access and control, data protection, malware resistance, and app platform security.

Smartphones now serve as a primary productivity tool for business workers and, just like desktops or laptops, need to be secured against malware and data theft. Protecting these devices can be challenging due to the wide range of device operating systems and configurations and the fact that many employees use their own personal devices. IT needs to secure corporate assets on every device, but also ensure the privacy of the user’s personal apps and data.
Windows 10 Mobile addresses these security concerns directly, whether workers are using personal or corporate-owned devices. It uses the same security technologies as the Windows 10 operating system to help protect against known and emerging security threats across the spectrum of attack vectors. These technologies include:
-	**Windows Hello for Business** Enhanced identity and access control features ensure that only authorized users can access corporate data and resources. Windows Hello simplifies multifactor authentication (MFA) deployment and use, offering PIN, companion device, and biometric authentication methods.
-	**Windows Information Protection** Automatic data separation keeps corporate information from being shared with personal data and apps.
-	**Malware resistance** Multi-layered protections built into the device hardware, startup processes, and app platform help reduce the threat of malware that can compromise employee devices.

This guide helps IT administrators better understand the security features in Windows 10 Mobile, which can be used to improve protection against unauthorized access, data leakage, and malware.

**In this article:**
-	Windows Hello for Business
-	Windows Information Protection
-	Malware resistance

## Windows Hello

Windows 10 Mobile includes Windows Hello, a simple, yet powerful, multifactor authentication solution that confirms a user’s identity before allowing access to corporate confidential information and resources. Multifactor authentication is a more secure alternative to password-based device security. Users dislike having to enter long, complex passwords – particularly on a mobile device touch screen – that corporate policy requires they change frequently. This leads to poor security practices like password reuse, written down passwords, or weak password creation.

Windows Hello offers a simple, cost-effective way to deploy multifactor authentication across your organization. Unlike smart cards, it does not require public key infrastructure or the implementation of additional hardware. Workers use a PIN, a companion device (like Microsoft Band), or biometrics to validate their identity for accessing corporate resources on their Azure Active Directory (Azure AD) registered Windows 10 Mobile device.

Because Windows Hello is supported across all Windows 10 devices, organizations can uniformly implement multifactor authentication across their environment. Deploying Windows Hello on Windows 10 Mobile devices does require Azure AD (sold separately), but you can use Azure AD Connect to synchronize with your on-premises Active Directory services.

Windows Hello supports iris scan, fingerprint, and facial recognition-based authentication for devices that have biometric sensors.

>**Note:** When Windows 10 first shipped, it included **Microsoft Passport** and **Windows Hello**, which worked together to provide multifactor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the **Windows Hello** name. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.

### <a href="" id="secured-credentials"></a>Secured credentials

Windows Hello eliminates the use of passwords for login, reducing the risk that an attacker will steal and reuse a user’s credentials. Windows 10 Mobile devices are required to have a Trusted Platform Module (TPM), a microchip that enables advanced security features. The TPM creates encryption keys that are “wrapped” with the TPM’s own storage root key, which is itself stored within the TPM to prevent credentials from being compromised. Encryption keys created by the TPM can only be decrypted by the same TPM, which protects the key material from attackers who want to capture and reuse it.

To compromise Windows Hello credentials, an attacker would need access to the physical device, and then find a way to spoof the user’s biometric identity or guess his or her PIN. All of this would have to be accomplished before TPM brute-force resistance capabilities lock the mobile device, the theft-protection mechanism kicks in, or the user or corporate administrator remotely wipes the device. With TPM-based protection, an attacker’s window of opportunity for compromising a user’s credentials is greatly reduced.

### <a href="" id="support-for-biometrics"></a>Support for biometrics

Biometrics help prevent credential theft and make it easier for users to login to their devices. Users always have their biometric identity with them – there is nothing to forget, lose, or leave behind. Attackers would need to have both access to the user’s device and be able to impersonate the user’s biometric identity to gain access to corporate resources, which is far more difficult than stealing a password.

Windows Hello supports three biometric sensor scenarios:
-	**Facial recognition** uses special IR cameras to reliably tell the difference between a photograph or scan and a living person. Several vendors are shipping external cameras that incorporate this technology, and major manufacturers are already shipping laptops with integrated facial-recognition technology. Both Surface Pro 4 and Surface Book support this technology.
-	**Fingerprint recognition** uses a sensor to scan the user’s fingerprint. Although fingerprint readers have been available for computers running the Windows operating system for years, the detection, anti-spoofing, and recognition algorithms in Windows 10 are more advanced than in previous Windows versions. Most existing fingerprint readers (whether external to or integrated into laptops or USB keyboards) that support the Windows Biometric Framework will work with Windows Hello.
-	**Iris scanning** uses cameras designed to scan the user’s iris, the colorful and highly detailed portion of the eye. Because the data must be accurate, iris scanning uses a combination of an IR light source and a high-quality camera. Microsoft Lumia 950 and 950 XL devices support this technology.

>Users must create an unlock PIN while they enroll a biometric gesture. The device uses this PIN as a fallback mechanism in situations where it cannot capture the biometric gesture.

All three of these biometric factors – face, finger, and iris – are unique to an individual. To capture enough data to uniquely identify an individual, a biometric scanner might initially capture images in multiple conditions or with additional details. For example, an iris scanner will capture images of both eyes or both eyes with and without eyeglasses or contact lenses.

Spoofing biometric data is often a big concern in enterprise environments. Microsoft employs several anti-spoofing techniques in Windows 10 Mobile that verify the trustworthiness of the biometric device, as well as guard against intentional collision with stored biometric measurements. These techniques help improve the false-acceptance rate (the rate at which spoofed biometric data is accepted as authentic) while maintaining the overall usability and manageability of MFA.

The biometric image collected at enrollment is converted into an algorithmic form that cannot be converted back into the original image. Only the algorithmic form is kept; the actual biometric image is removed from the device after conversion. Windows 10 Mobile devices both encrypt the algorithmic form of the biometric data and bind the encrypted data to the device, both of which help prevent someone from removing the data from the phone. As a result, the biometric information that Windows Hello uses is a local gesture and doesn’t roam among the user’s devices.

### <a href="" id="companion-devices"></a>Companion devices

A Windows Hello companion device enables a physical device, like a wearable, to serve as a factor for validating the user’s identity before granting them access to their credentials. For instance, when the user has physical possession of a companion device they can easily, possibly even automatically, unlock their PC and authenticate with apps and websites. This type of device can be useful for smartphones or tablets that don’t have integrated biometric sensors or for industries where users need a faster, more convenient sign-in experience, such as retail.

In some cases, the companion device for Windows Hello enables a physical device, like a phone, wearable, or other types of device to store all of the user’s credentials. Storage of the credentials on a mobile device makes it possible to use them on any supporting device, like a kiosk or family PC, and eliminates the need to enroll Windows Hello on each device. Companion devices also help enable organizations to meet regulatory requirements, such as Federal Information Processing Standard (FIPS) Publication 140-2, (FIPS 140-2).

### <a href="" id="standards-based-approach"></a>Standards-based approach

The Fast Identity Online (FIDO) Alliance is a nonprofit organization that works to address the lack of interoperability among strong authentication devices and the problems users face in creating and remembering multiple user names and passwords. FIDO standards help reduce reliance on passwords to authenticate users of online services securely, allowing any business network, app, website, or cloud application to interface with a broad variety of existing and future FIDO-enabled devices and operating system platforms.

In 2014, Microsoft joined the board of the FIDO Alliance. The FIDO 1.0 specifications, published in December 2014, provide for two types of authentications: password-less (known as UAF) and second factor (U2F). The FIDO Alliance is working on a set of 2.0 proposals that incorporate the best ideas from its U2F and UAF FIDO 1.0 standards. Microsoft has contributed Windows Hello technology to the FIDO 2.0 specification workgroup for review and feedback and continues to work with the FIDO Alliance as the FIDO 2.0 specification moves forward. Interoperability of FIDO products is a hallmark of FIDO authentication. Microsoft believes that bringing a FIDO solution to market will help solve a critical need for both enterprises and consumers.

## Windows Information Protection

Enterprises have seen huge growth in the convergence of personal and corporate data storage. Personal data is frequently stored on corporate devices and vice versa. This fluidity increases the potential for sensitive corporate data to be accidentally compromised.

Inadvertent disclosure is rapidly becoming the biggest source of confidential data leakage as organizations allow personal devices to access corporate resources. It’s easy to imagine that an employee using work email on their personal phone could unintentionally save an attachment containing sensitive company information to personal cloud storage, which could be shared with unauthorized people. This accidental sharing of corporate data is just one example of the challenges common to using mobile devices in the workplace. To prevent this type of data leakage, most solutions require users to login with a separate username and password to a container that stores all corporate apps and data, an experience that degrades user productivity.

Windows 10 Mobile includes Windows Information Protection to transparently keep corporate data secure and personal data private. Because corporate data is always protected, users cannot inadvertently copy it or share it with unauthorized users or apps. Key features include:
-	Automatically tag personal and corporate data.
-	Protect data while it’s at rest on local or removable storage.
-	Control which apps can access corporate data.
-	Control which apps can access a virtual private network (VPN) connection.
-	Prevent users from copying corporate data to public locations.
-	Help ensure business data is inaccessible when the device is in a locked state.

### <a href="" id="enlightened-apps"></a>Enlightened apps

Third-party data loss protection solutions usually require developers to wrap their apps. However, Windows Information Protection builds this intelligence right into Windows 10 Mobile so most apps require nothing extra to prevent inappropriate corporate data sharing.

Windows Information Protection classifies apps into two categories: enlightened and unenlightened. Enlighted apps can differentiate between corporate and personal data, correctly determining which to protect based on internal policies. Corporate data will be encrypted on the managed device and attempts to copy/paste or share this information with non-corporate apps or users will fail. Unenlightened apps, when marked as corporate-managed, consider all data corporate and encrypt everything by default.

When you do not want all data encrypted by default – because it would create a poor user experience – developers should consider enlightening apps by adding code and compiling them using the Windows Information Protection application programming interfaces. The most likely candidates for enlightenment are apps that:
-	Don’t use common controls for saving files.
-	Don’t use common controls for text boxes.
-	Work on personal and enterprise data simultaneously (e.g., contact apps that display personal and enterprise data in a single view or a browser that displays personal and enterprise web pages on tabs within a single instance).

In many cases, most apps don’t require enlightenment for them to use Windows Information Protection. Simply adding them to the allow list is the only step you need to take. Line-of-Business (LOB) apps are a good example of where this works well because they only handle corporate data.

**When is app enlightenment required?**
-	**Required**
    -	App needs to work with both personal and enterprise data.
-	**Recommended**
    -	App handles only corporate data, but needs to modify a file (such as a configuration file) in order to launch, uninstall itself, update etc. Without enlightenment you wouldn’t be able to properly revoke these apps.
    -	App needs to access enterprise data, while protection under lock is activated.
-	**Not required**
    -	App handles only corporate data
    -	App handles only personal data

### <a href="" id="companion-devices"></a>Data leakage control

To configure Windows Information Protection in a Mobile Device Management (MDM) solution that supports it, simply add authorized apps to the allow list. When a device running Windows 10 Mobile enrolls in the MDM solution, unauthorized apps will not have access to enterprise data.

Windows Information Protection works seamlessly until users try to access enterprise data with or paste enterprise data into unauthorized apps or locations on the web. For example, copying enterprise data from an authorized app to another authorized app works as usual, but Window Information Protection can block users from copying enterprise data from an authorized app to an unauthorized app. Likewise, it will block users from using an unauthorized app to open a file that contains enterprise data.

The extent to which users will be prevented from copying and pasting data from authorized apps to unauthorized apps or locations on the web depends on which protection level is set:
-	**Block.** Windows Information Protection blocks users from completing the operation.
-	**Override.** Windows Information Protection notifies users that the operation is inappropriate but allows them to override the policy, although it logs the operation in the audit log.
-	**Audit.** Windows Information Protection does not block or notify users but logs the operation in the audit log.
-	**Off.** Windows Information Protection does not block or notify users and does not log operations in the audit log.

### <a href="" id="companion-devices"></a>Data separation

Most third-party solutions require an app wrapper that directs enterprise data into a password-protected container and keeps personal data outside the container. Depending on the implementation, this may require two different versions of the same apps to be running on the device: one for personal data and another for enterprise data.

Windows Information Protection provides data separation without requiring a container or special version of an app to access business or personal data. There is no separate login required to see your corporate data or open your corporate applications. Windows Information Protection identifies enterprise data and encrypts it to only enterprise use. Data separation is automatic and seamless.

### <a href="" id="companion-devices"></a>Encryption

Windows 10 Mobile uses device encryption, based on BitLocker technology, to encrypt all internal storage, including operating systems and data storage partitions. The user can activate device encryption, or the IT department can activate and enforce encryption for company-managed devices through MDM tools. When device encryption is turned on, all data stored on the phone is encrypted automatically. A Windows 10 Mobile device with encryption turned on helps protect the confidentiality of data stored – even if the device is lost or stolen. The combination of Windows Hello lock and data encryption makes it extremely difficult for an unauthorized party to retrieve sensitive information from the device.

You can customize how device encryption works to meet your unique security requirements. Device encryption even enables you to define your own cipher suite. For example, you can specify the algorithm and key size that Windows 10 Mobile uses for data encryption, which Transport Layer Security (TLS) cipher suites are permitted, and whether Federal Information Processing Standard (FIPS) policy is enabled. The list below shows the policies you can change to customize device encryption on Windows 10 Mobile devices.
-	Cryptography
    -	Allow FIPS Algorithm: This policy enables or disable the FIPS policy. A restart is needed to enforce this policy. The default value is disabled.
    -	TLS Cipher Suite: This policy contains a list of the cryptographic cipher algorithms allowed for Secure Sockets Layer connections.
-	BitLocker
    -	Encryption Method: Configures the BitLocker Drive Encryption Method and cipher strength. The default value is AES-CBC 128-bit. If the device cannot use the value specified, it will use another one.

To help make the device even more secured against outside interference, Windows 10 Mobile also now includes protection-under-lock. That means that encryption keys are removed from memory whenever a device is locked. Apps are unable to access sensitive data while the device is in a locked state, so hackers and malware have no way to find and co-opt keys. Everything is locked up tight with the TPM until the user unlocks the device with Windows Hello.

### <a href="" id="companion-devices"></a>Government Certifications

Windows 10 Mobile supports both [FIPS 140 standards](http://csrc.nist.gov/groups/STM/cavp/validation.html) for cryptography and [Common Criteria](https://www.niap-ccevs.org/Product/Compliant.cfm?pid=10694) The FIPS 140 certification validates the effectiveness of the cryptographic algorithms used in Windows 10 Mobile. Microsoft has also received Common Criteria certification for Windows 10 Mobile running on Lumia 950, 950 XL, 550, 635, as well as Surface Pro 4, giving customers assurance that securety functionality is implemented properly.

## Malware resistance

The best way to fight malware is prevention. Windows 10 Mobile provides strong malware resistance through secured hardware, startup process defenses, core operating system architecture, and application-level protections.
The table below outlines how Windows 10 Mobile mitigates specific malware threats.

<table>
<colgroup>
<col width="40%" />
<col width="60%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Threat</th>
<th align="left">Windows 10 Mobile mitigation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Firmware bootkits replace the firmware with malware.</p></td>
<td align="left"><p>All certified devices include Unified Extensible Firmware (UEFI) with Secure Boot, which requires signed firmware for updates to UEFI and Option ROMs.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Bootkits start malware before Windows starts.</p></td>
<td align="left"><p>UEFI with Secure Boot verifies Windows bootloader integrity to help ensure that no malicious operating system can start before Windows.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>System or driver rootkits (typically malicious software that hides from the operating system) start kernel- level malware while Windows is starting, before antimalware solutions can start.</p></td>
<td align="left"><p>Windows Trusted Boot verifies Windows boot components, including Microsoft drivers. Measured Boot runs in parallel with Trusted Boot and can provide information to a remote server that verifies the boot state of the device to help ensure that Trusted Boot and other boot components successfully checked the system.</p></td>
</tr>
<tr class="even">
<td align="left"><p>An app infects other apps or the operating system with malware.</p></td>
<td align="left"><p>All Windows 10 Mobile apps run inside an AppContainer that isolates them from all other processes and sensitive operating system components. Apps cannot access any resources outside their AppContainer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>An unauthorized app or malware attempts to start on the device.</p></td>
<td align="left"><p>All Windows 10 Mobile apps must come from Microsoft Store or Microsoft Store for Business. Device Guard enforces administrative policies to select exactly which apps are allowed to run.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User-level malware exploits a vulnerability in the system or an application and owns the device.</p></td>
<td align="left"><p>Improvements to address space layout randomization (ASLR), Data Execution Prevention (DEP), the heap architecture, and memory-management algorithms reduce the likelihood that vulnerabilities can enable successful exploits.</p>
<p>Protected Processes isolates non-trusted processes from each other and from sensitive operating system components.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Users access a dangerous website without knowledge of the risk.</p></td>
<td align="left"><p>The SmartScreen URL Reputation feature prevents users from going to a malicious website that may try to exploit the browser and take control of the device.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Malware exploits a vulnerability in a browser add-on.</p></td>
<td align="left"><p>Microsoft Edge is an app built on the Universal Windows Platform (UWP) that does not run legacy binary extensions, including Microsoft ActiveX and browser helper objects frequently used for toolbars, which eliminates these risks.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>A website that includes malicious code exploits a vulnerability in the web browser to run malware on the client device.</p></td>
<td align="left"><p>Microsoft Edge includes Enhanced Protected Mode, which uses AppContainer-based sandboxing to help protect the system against vulnerabilities that at attacker may discover in the extensions running in the browser (for example, Adobe Flash, Java) or the browser itself.</p></td>
</tr>
</tbody>
</table>

>**Note:** The Windows 10 Mobile devices use a System on a Chip (SoC) design provided by SoC vendors such as Qualcomm. With this architecture, the SoC vendor and device manufacturers provide the pre-UEFI bootloaders and the UEFI environment. The UEFI environment implements the UEFI Secure Boot standard described in section 27 of the UEFI specification, which can be found at [www.uefi.org/specs]( http://www.uefi.org/specs). This standard describes the process by which all UEFI drivers and applications are validated against keys provisioned into a UEFI-based device before they are executed.

### <a href="" id="companion-devices"></a>UEFI with Secure Boot

When a Windows 10 Mobile device starts, it begins the process of loading the operating system by locating the bootloader in the device’s storage system. Without safeguards in place, the phone might simply hand control over to the bootloader without even determining whether it’s a trusted operating system or malware.

UEFI is a standards-based solution that offers a modern-day replacement for the BIOS. In fact, it provides the same functionality as BIOS while adding security features and other advanced capabilities. Like BIOS, UEFI initializes devices, but UEFI components with the Secure Boot feature (version 2.3.1 or later) also helps to ensure that only trusted firmware in Option ROMs, UEFI apps, and operating system bootloaders can start on the mobile phone.

UEFI can run internal integrity checks that verify the firmware’s digital signature before running it. Because only the mobile phone’s manufacturer has access to the digital certificate required to create a valid firmware signature, UEFI has protection against firmware-based malware that loads before Windows 10 Mobile and to try and hide its malicious behavior from the operating system. Firmware-based malware of this nature is typically called bootkits.

When a mobile device with UEFI and Secure Boot starts, the UEFI firmware verifies the bootloader’s digital signature to verify that no one has modified it after it was digitally signed. The firmware also verifies that a trusted authority issued the bootloader’s digital signature. This check helps to ensure that the system starts only after checking that the bootloader is both trusted and unmodified since signing.

All Windows 10 Mobile devices always have Secure Boot enabled. In addition, they trust only the Windows operating system signature. Neither Windows 10 Mobile, apps, or even malware can change the UEFI configuration. For more information about UEFI with Secure Boot, read [Protecting the pre-OS environment with UEFI](https://blogs.msdn.com/b/b8/archive/2011/09/22/protecting-the-pre-os-environment-with-uefi.aspx)

### <a href="" id="companion-devices"></a>Trusted Platform Module

A Trusted Platform Module (TPM) is a tamper-resistant cryptographic module that enhances the security and privacy of computing platforms. The TPM is incorporated as a component in a trusted computing platform like a PC, tablet, or smartphone. A trusted computing platform is specially designed to work with the TPM to support privacy and security scenarios that software alone cannot achieve. A TPM is required to receive Windows 10 Mobile device hardware certification.

A proper implementation of a TPM as part of a trusted computing platform provides a hardware root of trust, meaning that the hardware behaves in a trusted way. For example, if you create a key in a TPM with the property that no one can export that key from the TPM, the key absolutely cannot leave the TPM. The close integration of a TPM with a platform increases the transparency of the boot process and supports device health scenarios by enabling a reliable report of the software used to start a platform.

The following list describes key functionality that a TPM provides in Windows 10 Mobile:
-	**Managing cryptographic keys.** A TPM can create, store, and permit the use of keys in defined ways. Windows 10 Mobile uses the TPM to protect the encryption keys for BitLocker volumes, virtual smart cards, certificates, and various other keys.
-	**Safeguarding and reporting integrity measurements.** Windows 10 Mobile uses the TPM to record and help protect integrity-related measurements of select hardware and Windows boot components for the Measured Boot feature. In this scenario, Measured Boot measures each component – from firmware up through the drivers – and then stores those measurements in the device’s TPM. From here, you can test the measurement log remotely so that a separate system verifies the boot state of the Windows 10 Mobile device.
-	**Proving a TPM is really a TPM.** Managing cryptographic keys and measuring integrity are so central to protecting privacy and security that a TPM must differentiate itself from malware masquerading as a TPM.

Windows 10 Mobile supports TPM implementations that comply with the 2.0 standard. The TPM 2.0 standard includes several improvements that make it superior to the 1.2 standard, the most notable of which is cryptographic agility. TPM 1.2 is restricted to a fixed set of encryption and hash algorithms. When the TPM 1.2 standard appeared in the early 2000s, the security community considered these algorithms cryptographically strong. Since then, advances in cryptographic algorithms and cryptanalysis attacks have increased expectations for stronger cryptography. TPM 2.0 supports additional algorithms that offer stronger cryptographic protection, as well as the ability to plug-in algorithms that certain geographies or industries may prefer. It also opens the possibility for inclusion of future algorithms without changing the TPM component itself.

Many assume that original equipment manufacturers (OEMs) must implant a TPM in hardware on a motherboard as a discrete module, but TPM can also be effective when implemented in firmware. Windows 10 Mobile supports only firmware TPM that complies with the 2.0 standard. Windows does not differentiate between discrete and firmware-based solutions because both must meet the same implementation and security requirements. Therefore, any Windows 10 feature that can take advantage of TPM can be used with Windows 10 Mobile.

>Microsoft requires TPM 2.0 on devices running any version of Windows 10 Mobile. For more information, see [minimum hardware requirements](https://technet.microsoft.com/library/dn915086.aspx)

Several Windows 10 Mobile security features require TPM:
-	Virtual smart cards
-	Measured Boot
-	Health attestation (requires TPM 2.0 or later)

Still other features will use the TPM if it is available. For example, Windows Hello does not require TPM but uses it if it’s available. Organizations can configure policy to require TPM for Windows Hello.

### <a href="" id="companion-devices"></a>Biometrics

Windows 10 Mobile makes biometrics a core security feature. Microsoft has fully integrated biometrics into the Windows 10 Mobile security components, not just tacked it on top of the platform (as was the case in previous versions of Windows). This is a big change. Earlier biometric implementations were largely front-end methods that simplified authentication. Under the hood, the system used biometrics to access a password, which it then used for authentication behind the scenes. Biometrics may have provided convenience, but not necessarily enterprise-grade authentication.

Microsoft has been evangelizing the importance of enterprise-grade biometric sensors to the OEMs that create Windows 10 Mobile devices. These facial-recognition and iris-scanning sensors are fully supported by Windows Hello.

In the future, Microsoft expects OEMs to produce even more advanced enterprise-grade biometric sensors and to continue integrating them into mobile devices. As a result, biometrics will become a commonplace authentication method as part of an MFA system.

### <a href="" id="trusted-boot"></a>Trusted Boot

UEFI with Secure Boot uses hardware technologies to help protect users from bootkits. Secure Boot can validate the integrity of the device, firmware, and bootloader. After the bootloader launches, users must rely on the operating system to protect the integrity of the remainder of the system.

When UEFI with Secure Boot verifies that it trusts the bootloader and starts Windows 10 Mobile, the Windows Trusted Boot feature protects the rest of the startup process by verifying that all Windows startup components are trustworthy (e.g., signed by a trusted source) and have integrity. The bootloader verifies the digital signature of the Windows kernel before loading it. The Windows kernel, in turn, verifies every other component of the Windows startup process, including the boot drivers, and startup files.

### <a href="" id="measured-boot"></a>Measured Boot

In earlier versions of Windows, the biggest challenge with rootkits and bootkits was that they could frequently be undetectable to the client. Because they often started before Windows defenses and the antimalware solution – and they had system-level privileges – rootkits and bootkits could completely disguise themselves while continuing to access system resources. Although UEFI with Secure Boot and Trusted Boot could prevent most rootkits and bootkits, intruders could still potentially exploit a few attack vectors (e.g., if someone compromised the signature used to sign a boot component, such as a non-Microsoft driver, and used it to sign a malicious one).

Windows 10 Mobile implements the Measured Boot feature, which uses the TPM hardware component to record a series of measurements for critical startup-related components, including firmware, Windows boot components, and drivers. Because Measured Boot uses the hardware-based security capabilities of TPM, which isolates and protects the measurement data against malware attacks, the log data is well protected against even sophisticated attacks.

Measured Boot focuses on acquiring the measurement data and protecting it against tampering. To provide more complete security, it must be coupled with a service that can analyze the data to determine device health.

### <a href="" id="device-health-attestation"></a>Device Health Attestation

Device Health Attestation (DHA) is a new feature in Windows 10 Mobile that helps prevent low-level malware infections. DHA uses a device’s TPM and firmware to measure the critical security properties of the device’s BIOS and Windows startup processes. These measurements are made in such a way that even on a system infected with kernel-level malware or a rootkit, an attacker is unlikely to spoof the properties.

You can use DHA with Microsoft Intune (sold separately) or a third-party MDM solution to combine hardware-measured security properties with other device properties and gain an overall view of the device’s health and compliance state. This integration can be useful in a variety of scenarios, including detecting jailbroken devices, monitoring device compliance, generating compliance reports, alerting users or administrators, initiating corrective action on the device, and managing conditional access to resources such as Office 365.

The example that follows shows how Windows 10 protective measures integrate and work with Intune and third-party MDM solutions. It demonstrates how the phone security architecture in Windows 10 Mobile can help you monitor and verify compliance and how the security and trust rooted in the device hardware can protect end-to-end corporate resources.

When a user turns a phone on:
1. The Secure Boot feature in Windows 10 Mobile helps protect the startup sequence, allows the device to boot into a defined and trusted configuration, and loads a factory-trusted boot loader.
2. Windows 10 Mobile Trusted Boot takes control when the Secure Boot process is complete, verifying the digital signature of the Windows kernel and the components that are loaded and executed during the startup process.
3. In parallel to steps 1 and 2, the phone’s TPM runs independently in a hardware-protected security zone (isolated from the boot execution path, which monitors boot activities). It creates a protected, tamper-evident audit trail, signed with a secret that only the TPM can access.
4. Devices that are DHA-enabled send a copy of this audit trail to the Microsoft Health Attestation service (HAS) in a protected, tamper-resistant, and tamper-evident communication channel.
5. HAS reviews the audit trails, issues an encrypted and signed report, and forwards it to the device.
6. From your DHA-enabled MDM solution, you can review the report in a protected, tamper-resistant, and tamper-evident communication channel to assess whether the device is running in a compliant (healthy) state, allow access, or trigger corrective action aligned with the organization’s security needs and policies.
Because this solution can detect and prevent low-level malware that may be extremely difficult to detect any other way, Microsoft recommends that you consider implementing a DHA-enabled MDM system like Intune. It can take advantage of the Windows 10 Mobile cloud-based health attestation server feature to detect and block devices infected with advanced malware.

### <a href="" id="device-guard"></a>Device Guard

Device Guard is a feature set that consists of both hardware and software system integrity–hardening features. These features revolutionize Windows operating system security by moving the entire operating system to a trust-nothing model.

All apps on Windows 10 Mobile must be digitally signed and come from Microsoft Store or a trusted enterprise store. Device Guard implements policies that further restrict this. By default, Device Guard supports all apps from Microsoft Store. You can create policies that define the apps that can and cannot run on the Windows 10 Mobile device. If the app does not have a digital signature, is prevented by policy, or does not come from a trusted store, it will not run on Windows 10 Mobile.

Advanced hardware features, described above, drive these security offerings. By integrating these hardware features further into the core operating system, Windows 10 Mobile can use them in new ways. To deliver this additional security, Device Guard requires UEFI with Secure Boot.

### <a href="" id="address-space-layout-randomaization"></a>Address Space Layout Randomization

One of the most common techniques used by attackers to gain access to a system is to find a vulnerability in a privileged process that is already running, guess or find a location in memory where important system code and data reside, and overwrite that information with a malicious payload. In the early days of operating systems, any malware that could write directly to the system memory could do such a thing; the malware would simply overwrite system memory in well-known and predictable locations.

Address Space Layout Randomization (ASLR) makes that type of attack much more difficult because it randomizes how and where important data is stored in memory. With ASLR, it is more difficult for malware to find the specific location it needs to attack. The below diagram illustrates how ASLR works, showing how the locations of different critical Windows components can change in memory between restarts.

![figure 3](images/mobile-security-guide-figure3.png)

Microsoft has substantively improved the ASLR implementation in Windows 10 Mobile over previous versions, applying it across the entire system rather than only in specific apps. With 64bit system and application processes that can take advantage of a vastly increased memory space, it is even more difficult for malware to predict where Windows 10 Mobile stores vital data. When used on systems that have TPMs, ASLR memory randomization becomes increasingly unique across devices, adding additional degrees of difficulty for repurposing successful exploits to another system.

### <a href="" id="data-execution-prevention"></a>Data Execution Prevention

Malware depends on its ability to insert a malicious payload into memory with the hope that an unsuspecting user will execute it later. While ASLR makes that more difficult, Windows 10 Mobile extends that protection to prevent malware from running if written to an area that you have allocated solely for the storage of information. Data Execution Prevention (DEP) substantially reduces the range of memory that malicious code can use for its benefit. DEP uses the **No execute** bit on modern CPUs to mark blocks of memory as read-only so that malware can’t use those blocks to execute malicious code. All Windows 10 and Windows 10 Mobile devices support DEP.

### <a href="" id="companion-devices"></a>Windows heap

The heap is a location in memory that Windows uses to store dynamic application data. Microsoft continues to improve on earlier Windows heap designs by further mitigating the risk of heap exploits that an attacker could use.
Windows 10 Mobile has made several important improvements to the security of the heap over previous versions of Windows:
-	Internal data structures that the heap uses are better protected against memory corruption.
-	Heap memory allocations have randomized locations and sizes, making it more difficult for an attacker to predict the location of critical memory to overwrite. Specifically, Windows 10 Mobile adds a random offset to the address of a newly allocated heap, making the allocation much less predictable.
-	Windows 10 Mobile uses “guard pages” before and after blocks of memory as tripwires. If an attacker attempts to write past a block of memory (a common technique known as a buffer overflow), the attacker will have to overwrite a guard page. Any attempt to modify a guard page is considered a memory corruption, and Windows 10 Mobile responds by instantly terminating the app.

### <a href="" id="memeory-reservation"></a>Memory reservations

Microsoft reserves the lowest 64 KB of process memory for the operating system. Apps are no longer allowed to allocate that portion of the memory, making it more difficult for malware to overwrite critical system data structures in memory.

### <a href="" id="control-flow-guard"></a>Control Flow Guard

When Windows loads applications into memory, it allocates space to those applications based on the size of the code, requested memory, and other factors. When an application begins to execute code, it calls additional code located in other memory addresses. The relationships among the code locations are well known – they are written in the code itself. However, until Windows 10 Mobile, the operating system didn’t enforce the flow among these locations, giving attackers the opportunity to change the flow to meet their needs. In other words, an application exploit takes advantage of this behavior by running code that the application may not typically run.

Windows 10 Mobile mitigates this kind of threat through Control Flow Guard (CFG). When a trusted application that its creator compiled to use CFG calls code, CFG verifies that the code location called is trusted for execution. If CFG doesn’t trust the location, it immediately terminates the application as a potential security risk.

You cannot configure CFG; rather, an application developer can take advantage of CFG by configuring it when he or she compiles the application. Because browsers are a key entry point for attacks, Microsoft Edge takes full advantage of CFG.

### <a href="" id="protected-processes"></a>Protected Processes

Unfortunately, no device is immune to malware. Despite all the best preventative controls, malware can eventually find a way to infect any operating system or hardware platform. So, although prevention with a defense-in-depth strategy is important, additional malware controls are required.
If malware is running on a system, you need to limit what it can do Protected Processes prevents untrusted processes from tampering with those that have been specially signed. Protected Processes defines levels of trust for processes: it prevents less trusted processes from interacting with and therefore attacking more trusted processes. Windows 10 Mobile uses Protected Processes broadly throughout the operating system.

### <a href="" id="appcontainer"></a>AppContainer

The Windows 10 Mobile security model is based on the principle of least privilege and uses isolation to achieve it. Every app and even portions of the operating system itself run inside their own isolated sandbox called an AppContainer – a secured isolation boundary within which an app and its processes can run. Each AppContainer is defined and implemented through a security policy.

The security policy of a specific AppContainer defines the operating system capabilities that apps have access to from within the AppContainer, such as geographical location information, camera, microphone, networking, or sensors.

A set of default permissions are granted to all AppContainers, including access to a unique, isolated storage location. Access to other capabilities can be declared within the app code itself. Unlike traditional desktop applications, access to additional capabilities and privileges cannot be requested at run time.

The AppContainer concept is advantageous because it provides:
-	**Attack surface reduction.** Apps can access only those capabilities that are declared in the application code and needed to perform their functions.
-	**User consent and control.** Capabilities that apps use are automatically published to the app details page in the Microsoft Store. App access to capabilities that may expose sensitive information automatically prompt the user to acknowledge and provide consent.
-	**App isolation.** Communication between Windows apps is tightly controlled. Apps are isolated from one another and can communicate only by using predefined communication channels and data types.

Apps receive the minimal privileges they need to perform their legitimate tasks. This means that even if a malicious attacker exploits an app, the potential damage is limited because the app cannot elevate its privileges and is contained within its AppContainer. Microsoft Store displays the permissions that the app requires along with the app’s age rating and publisher.

The combination of Device Guard and AppContainer help to prevent unauthorized apps from running. In the event malware slips into the app ecosystem, the AppContainer helps to constrain the app and limit potential damage. The Windows 10 Mobile trust-nothing model doesn’t assume that any component is perfect. However, potential vulnerabilities in apps, AppContainers, and Windows 10 Mobile itself could give an attacker a chance to compromise a system. For this reason, redundant vulnerability mitigations are needed. The next several topics describe some of the redundant mitigations in Windows 10 Mobile.

### <a href="" id="microsoft-edge"></a>Microsoft Edge

The web browser is a critical component of any security strategy. It is the user’s interface to the Internet, an environment teeming with malicious sites and potentially dangerous content. Most users cannot perform at least part of their job without a browser, and many users are completely reliant on one. This reality has made the browser the number one pathway from which malicious hackers initiate their attacks.

Windows 10 Mobile includes Microsoft Edge, an entirely new web browser that goes beyond browsing with features like Reading View. Microsoft Edge is more secure than previous Microsoft web browsers in several ways:
-	**Microsoft Edge on Windows 10 Mobile does not support extensions.** Microsoft Edge has built-in PDF viewing capability.
-	**Microsoft Edge is designed as a UWP app.** It is inherently compartmentalized and runs in an AppContainer that sandboxes the browser from the system, data, and other apps.
-	**Microsoft Edge simplifies security configuration tasks.** Because Microsoft Edge uses a simplified application structure and a single sandbox configuration, fewer security settings are required. In addition, Microsoft established Microsoft Edge default settings that align with security best practices, making it more secure by design.

## Summary

Windows 10 Mobile provides security on personal and corporate-owned devices to protect against unauthorized access, data leakage, and malware threats. All of the features covered in this paper – multifactor authentication, data separation, and malware resistance – are seamlessly incorporated into the operating system. This means enterprises are protected without compromising the productivity and ease of use that drives users to bring mobile devices into the workplace.

## Revision History

November 2015 		Updated for Windows 10 Mobile (version 1511)

July 2016		Updated for Windows 10 Mobile Anniversary Update (version 1607)

