---
title: Windows Hello biometrics in the enterprise (Windows 10)
description: Windows Hello is the biometric authentication feature that helps strengthen authentication and helps to guard against potential spoofing through fingerprint matching and facial recognition.
ms.assetid: d3f27d94-2226-4547-86c0-65c84d6df8Bc
ms.reviewer: 
keywords: Windows Hello, enterprise biometrics
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
---

# Windows Hello biometrics in the enterprise

**Applies to:**
-   Windows 10

Windows Hello is the biometric authentication feature that helps strengthen authentication and helps to guard against potential spoofing through fingerprint matching and facial recognition.

>[!NOTE]
>When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.

Because we realize your employees are going to want to use this new technology in your enterprise, we’ve been actively working with the device manufacturers to create strict design and performance recommendations that help to ensure that you can more confidently introduce Windows Hello biometrics into your organization.

## How does Windows Hello work?
Windows Hello lets your employees use fingerprint or facial recognition as an alternative method to unlocking a device. With Windows Hello, authentication happens when the employee provides his or her unique biometric identifier while accessing the device-specific Windows Hello credentials.

The Windows Hello authenticator works to authenticate and allow employees onto your enterprise network. Authentication doesn’t roam among devices, isn’t shared with a server, and can’t easily be extracted from a device. If multiple employees share a device, each employee will use his or her own biometric data on the device.

## Why should I let my employees use Windows Hello?
Windows Hello provides many benefits, including:

-   It helps to strengthen your protections against credential theft. Because an attacker must have both the device and the biometric info or PIN, it’s much more difficult to gain access without the employee’s knowledge.

-   Employees get a simple authentication method (backed up with a PIN) that’s always with them, so there’s nothing to lose. No more forgetting passwords!

-   Support for Windows Hello is built into the operating system so you can add additional biometric devices and polices as part of a coordinated rollout or to individual employees or groups using Group Policy or Mobile Device Management (MDM) configurations service provider (CSP) policies.<br>For more info about the available Group Policies and MDM CSPs, see the [Implement Windows Hello for Business in your organization](hello-manage-in-organization.md) topic.

## Where is Microsoft Hello data stored?
The biometric data used to support Windows Hello is stored on the local device only. It doesn’t roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Additionally, even if an attacker was actually able to get the biometric data, it still can’t be easily converted to a form that could be recognized by the biometric sensor.

## Has Microsoft set any device requirements for Windows Hello?
We’ve been working with the device manufacturers to help ensure a high-level of performance and protection is met by each sensor and device, based on these requirements:

-   **False Accept Rate (FAR).** Represents the instance a biometric identification solution verifies an unauthorized person. This is normally represented as a ratio of number of instances in a given population size, for example 1 in 100 000. This can also be represented as a percentage of occurrence, for example, 0.001%. This measurement is heavily considered the most important with regards to the security of the biometric algorithm.

-   **False Reject Rate (FRR).** Represents the instances a biometric identification solution fails to verify an authorized person correctly. Usually represented as a percentage, the sum of the True Accept Rate and False Reject Rate is 1. Can be with or without anti-spoofing or liveness detection.

### Fingerprint sensor requirements
To allow fingerprint matching, you must have devices with fingerprint sensors and software. Fingerprint sensors, or sensors that use an employee’s unique fingerprint as an alternative log on option, can be touch sensors (large area or small area) or swipe sensors. Each type of sensor has its own set of detailed requirements that must be implemented by the manufacturer, but all of the sensors must include anti-spoofing measures (required).

**Acceptable performance range for small to large size touch sensors**

-   False Accept Rate (FAR): &lt;0.001 – 0.002%

-   Effective, real world FRR with Anti-spoofing or liveness detection: &lt;10%

**Acceptable performance range for swipe sensors**

-   False Accept Rate (FAR): &lt;0.002%

-   Effective, real world FRR with Anti-spoofing or liveness detection: &lt;10%

### Facial recognition sensors
To allow facial recognition, you must have devices with integrated special infrared (IR) sensors and software. Facial recognition sensors use special cameras that see in IR light, letting them tell the difference between a photo and a living person while scanning an employee’s facial features. These sensors, like the fingerprint sensors, must also include anti-spoofing measures (required) and a way to configure them (optional).

-   False Accept Rate (FAR): &lt;0.001%

-   False Reject Rate (FRR) without Anti-spoofing or liveness detection: &lt;5%

-   Effective, real world FRR with Anti-spoofing or liveness detection: &lt;10%

## Related topics
- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)

 

 





