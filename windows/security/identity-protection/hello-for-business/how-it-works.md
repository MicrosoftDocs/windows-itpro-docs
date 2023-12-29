---
title: How Windows Hello for Business works
description: Learn how Windows Hello for Business works, and how it can help your users authenticate to services.
ms.date: 01/03/2024
ms.topic: overview
---

# How Windows Hello for Business works in Windows Devices

Windows Hello for Business is a two-factor credential that is a more secure alternative to passwords. Whether you are cloud or on-premises, Windows Hello for Business has a deployment option for you. For cloud deployments, you can use Windows Hello for Business with Microsoft Entra joined, Microsoft Entra hybrid joined, or Microsoft Entra registered devices. Windows Hello for Business also works for domain joined devices.

## Technical Deep Dive

Windows Hello for Business is a distributed system that uses several components to accomplish device registration, provisioning, and authentication. Use this section to gain a better understanding of each of the categories and how they support Windows Hello for Business.

### Device Registration

Registration is a fundamental prerequisite for Windows Hello for Business.  Without registration, Windows Hello for Business provisioning cannot start. Registration is where the device **registers** its identity with the identity provider. For cloud and hybrid deployments, the identity provider is Microsoft Entra ID and the device registers with the Azure Device Registration Service (ADRS). For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the enterprise device registration service hosted on the federation servers (AD FS).

For more information, read [how device registration works](/azure/active-directory/devices/device-registration-how-it-works).

### Provisioning

Provisioning is when the user uses one form of authentication to request a new Windows Hello for Business credential. Typically the user signs in to Windows using user name and password. The provisioning flow requires a second factor of authentication before it will create a strong, two-factor Windows Hello for Business credential.

For more information, read [how provisioning works](how-it-works-provisioning.md).

### Authentication

With the device registered and provisioning complete, users can sign-in to Windows using biometrics or a PIN. PIN is the most common gesture and is available on all computers unless restricted by policy requiring a TPM. Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential. Neither the PIN nor the private portion of the credential are ever sent to the identity provider, and the PIN is not stored on the device. It is user provided entropy when performing operations that use the private portion of the credential.

For more information read [how authentication works](how-it-works-authentication.md).

## Windows Hello biometrics in the enterprise

Windows Hello is the biometric authentication feature that helps strengthen authentication and helps to guard against potential spoofing through fingerprint matching and facial recognition.



## How does Windows Hello work?

Windows Hello lets your employees use fingerprint, facial recognition, or iris recognition as an alternative method to unlocking a device. With Windows Hello, authentication happens when the employee provides his or her unique biometric identifier while accessing the device-specific Windows Hello credentials.

The Windows Hello authenticator works to authenticate and allow employees onto your enterprise network. Authentication doesn't roam among devices, isn't shared with a server, and can't easily be extracted from a device. If multiple employees share a device, each employee will use his or her own biometric data on the device.

## Why should I let my employees use Windows Hello?

Windows Hello provides many benefits, including:

- It helps to strengthen your protections against credential theft. Because an attacker must have both the device and the biometric info or PIN, it's much more difficult to gain access without the employee's knowledge.
- Employees get a simple authentication method (backed up with a PIN) that's always with them, so there's nothing to lose. No more forgetting passwords!
- Support for Windows Hello is built into the operating system so you can add additional biometric devices and policies as part of a coordinated rollout or to individual employees or groups using Group Policy or Mobile Device Management (MDM) configurations service provider (CSP) policies.<br>For more info about the available Group Policies and MDM CSPs, see the [Implement Windows Hello for Business in your organization](configure.md) topic.

## Where is Windows Hello data stored?

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Additionally, even if an attacker was actually able to get the biometric data from a device, it cannot be converted back into a raw biometric sample that could be recognized by the biometric sensor.

> [!NOTE]
>Each sensor on a device will have its own biometric database file where template data is stored. Each database has a unique, randomly generated key that is encrypted to the system. The template data for the sensor will be encrypted with this per-database key using AES with CBC chaining mode. The hash is SHA256. Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors will store biometric data on the fingerprint module instead of in the database file.


## Windows Hello for Business and password changes

Changes to a user account password doesn't affect sign-in or unlock, since Windows Hello for Business uses a key or certificate.

## How Windows Hello for Business works: key points

- Windows Hello credentials are based on certificate or asymmetrical key pair. Windows Hello credentials can be bound to the device, and the token that is obtained using the credential is also bound to the device.

- An identity provider validates the user identity and maps the Windows Hello public key to a user account during the registration step. Example providers are Active Directory, Microsoft Entra ID, or a Microsoft account.

- Keys can be generated in hardware (TPM 1.2 or 2.0 for enterprises, and TPM 2.0 for consumers) or software, based on the policy. To guarantee that keys are generated in hardware, you must set policy.

- Authentication is the two-factor authentication with the combination of a key or certificate tied to a device and something that the person knows (a PIN) or something that the person is (biometrics). The Windows Hello gesture doesn't roam between devices and isn't shared with the server. Biometrics templates are stored locally on a device. The PIN is never stored or shared.

- The private key never leaves a device when using TPM. The authenticating server has a public key that is mapped to the user account during the registration process.

- PIN entry and biometric gesture both trigger Windows 10 and later to use the private key to cryptographically sign data that is sent to the identity provider. The identity provider verifies the user's identity and authenticates the user.

- Personal (Microsoft account) and corporate (Active Directory or Microsoft Entra ID) accounts use a single container for keys. All keys are separated by identity providers' domains to help ensure user privacy.

- Certificate private keys can be protected by the Windows Hello container and the Windows Hello gesture.

## Next steps

> [!div class="nextstepaction"]
>
> [Plan a Windows Hello for Business Deployment >](deploy/index.md)