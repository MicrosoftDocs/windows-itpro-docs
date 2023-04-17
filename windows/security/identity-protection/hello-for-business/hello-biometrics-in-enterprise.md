---
title: Windows Hello biometrics in the enterprise (Windows)
description: Windows Hello uses biometrics to authenticate users and guard against potential spoofing, through fingerprint matching and facial recognition.
ms.date: 01/12/2021
ms.topic: article
---

# Windows Hello biometrics in the enterprise

Windows Hello is the biometric authentication feature that helps strengthen authentication and helps to guard against potential spoofing through fingerprint matching and facial recognition.

>[!NOTE]
>When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.

Because we realize your employees are going to want to use this new technology in your enterprise, we've been actively working with the device manufacturers to create strict design and performance recommendations that help to ensure that you can more confidently introduce Windows Hello biometrics into your organization.

## How does Windows Hello work?

Windows Hello lets your employees use fingerprint, facial recognition, or iris recognition as an alternative method to unlocking a device. With Windows Hello, authentication happens when the employee provides his or her unique biometric identifier while accessing the device-specific Windows Hello credentials.

The Windows Hello authenticator works to authenticate and allow employees onto your enterprise network. Authentication doesn't roam among devices, isn't shared with a server, and can't easily be extracted from a device. If multiple employees share a device, each employee will use his or her own biometric data on the device.

## Why should I let my employees use Windows Hello?

Windows Hello provides many benefits, including:

- It helps to strengthen your protections against credential theft. Because an attacker must have both the device and the biometric info or PIN, it's much more difficult to gain access without the employee's knowledge.

- Employees get a simple authentication method (backed up with a PIN) that's always with them, so there's nothing to lose. No more forgetting passwords!

- Support for Windows Hello is built into the operating system so you can add additional biometric devices and policies as part of a coordinated rollout or to individual employees or groups using Group Policy or Mobile Device Management (MDM) configurations service provider (CSP) policies.<br>For more info about the available Group Policies and MDM CSPs, see the [Implement Windows Hello for Business in your organization](hello-manage-in-organization.md) topic.

## Where is Windows Hello data stored?

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Additionally, even if an attacker was actually able to get the biometric data from a device, it cannot be converted back into a raw biometric sample that could be recognized by the biometric sensor.

> [!NOTE]
>Each sensor on a device will have its own biometric database file where template data is stored. Each database has a unique, randomly generated key that is encrypted to the system. The template data for the sensor will be encrypted with this per-database key using AES with CBC chaining mode. The hash is SHA256. Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors will store biometric data on the fingerprint module instead of in the database file.

## Has Microsoft set any device requirements for Windows Hello?

We've been working with the device manufacturers to help ensure a high-level of performance and protection is met by each sensor and device, based on these requirements:

- **False Accept Rate (FAR).** Represents the instance a biometric identification solution verifies an unauthorized person. This is normally represented as a ratio of number of instances in a given population size, for example 1 in 100 000. This can also be represented as a percentage of occurrence, for example, 0.001%. This measurement is heavily considered the most important with regard to the security of the biometric algorithm.

- **False Reject Rate (FRR).** Represents the instances a biometric identification solution fails to verify an authorized person correctly. Usually represented as a percentage, the sum of the True Accept Rate and False Reject Rate is 1. Can be with or without anti-spoofing or liveness detection.

### Fingerprint sensor requirements

To allow fingerprint matching, you must have devices with fingerprint sensors and software. Fingerprint sensors, or sensors that use an employee's unique fingerprint as an alternative logon option, can be touch sensors (large area or small area) or swipe sensors. Each type of sensor has its own set of detailed requirements that must be implemented by the manufacturer, but all of the sensors must include anti-spoofing measures (required).

**Acceptable performance range for small to large size touch sensors**

- False Accept Rate (FAR): &lt;0.001 – 0.002%

- Effective, real world FRR with Anti-spoofing or liveness detection: &lt;10%

**Acceptable performance range for swipe sensors**

- False Accept Rate (FAR): &lt;0.002%

- Effective, real world FRR with Anti-spoofing or liveness detection: &lt;10%

### Facial recognition sensors

To allow facial recognition, you must have devices with integrated special infrared (IR) sensors and software. Facial recognition sensors use special cameras that see in IR light, letting them tell the difference between a photo and a living person while scanning an employee's facial features. These sensors, like the fingerprint sensors, must also include anti-spoofing measures (required) and a way to configure them (optional).

- False Accept Rate (FAR): &lt;0.001%

- False Reject Rate (FRR) without Anti-spoofing or liveness detection: &lt;5%

- Effective, real world FRR with Anti-spoofing or liveness detection: &lt;10%

> [!NOTE]
>Windows Hello face authentication does not currently support wearing a mask during enrollment or authentication. Wearing a mask to enroll is a security concern because other users wearing a similar mask may be able to unlock your device. The product group is aware of this behavior and is investigating this topic further. Please remove a mask if you are wearing one when you enroll or unlock with Windows Hello face authentication. If your working environment doesn’t allow you to remove a mask temporarily, please consider unenrolling from face authentication and only using PIN or fingerprint.

### Iris recognition sensor requirements

To use Iris authentication, you’ll need a [HoloLens 2 device](/hololens/). All HoloLens 2 editions are equipped with the same sensors. Iris is implemented the same way as other Windows Hello technologies and achieves biometrics security FAR of 1/100K.

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](/windows/security/identity-protection/hello-for-business/hello-faq)
