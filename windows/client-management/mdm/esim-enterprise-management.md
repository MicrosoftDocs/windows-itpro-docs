---
title: eSIM Enterprise Management
description: Learn how Mobile Device Management (MDM) Providers support the eSIM Profile Management Solution on Windows.
keywords: eSIM enterprise management
ms.prod: w10
ms.mktglfcycl:
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: conceptual
---

# How Mobile Device Management Providers support eSIM Management on Windows
The eSIM Profile Management Solution puts the Mobile Device Management (MDM) Provider in the front and center. The whole idea is to use an already existing solution that customers are familiar with and that they use to manage devices. The expectations from an MDM are that it will use the same sync mechanism that it uses for device policies to push any policy to the eSIM profile, and be able to use Groups and Users the same way. This way, the eSIM profile download and the installation happen in the background without impacting the end user. Similarly, the IT admin would use the same method of managing the eSIM profiles (Assignment/de-assignment, etc.) the same way as they currently do device management.
 If you are a Mobile Device Management (MDM) Provider and want to support eSIM Management on Windows, perform the following steps:
- Onboard to Azure Active Directory
- Contact mobile operators directly or contact orchestrator providers. Windows provides the capability for eSIM profiles to be managed by MDM providers in the case of enterprise use cases. However, Windows does not limit how ecosystem partners might want to offer this to their own partners and/or customers. As such, the eSIM profile management capability is something that can be supported by integrating with the Window OMA-DM. This makes it possible to remotely manage the eSIM profiles according to the company policies. Contact mobile operators directly or contact orchestrator providers. Windows provides the capability for eSIM profiles to be managed by MDM providers in the case of enterprise use cases. However, Windows does not limit how ecosystem partners might want to offer this to their own partners and/or customers. As such, the eSIM profile management capability is something that can be supported by integrating with the Window OMA-DM. This makes it possible to remotely manage the eSIM profiles according to the company policies. As an MDM provider, if you are looking to integrate/onboard to a mobile operator on a 1:1 basis, contact them and learn more about their onboarding. If you would like to integrate and work with only one MDM provider, contact that provider directly. If you would like to offer eSIM management to customers using different MDM providers, contact an orchestrator provider. Orchestrator providers act as proxy handling MDM onboarding as well as mobile operator onboarding. Their role is to make the process as painless and scalable as possible for all parties. Potential orchestrator providers you could contact include:
    - [HPE’s Device Entitlement Gateway](https://www.hpe.com/emea_europe/en/solutions/digital-communications-services.html)
    - [IDEMIA’s The Smart Connect - Hub](https://www.idemia.com/smart-connect-hub)
- Assess solution type that you would like to provide your customers
- Batch/offline solution
- IT Admin can manually import a flat file containing list of eSIM activation codes, and provision eSIM on LTE enabled devices.
- Operator doesn't have visibility over status of the eSIM profiles and device eSIM has been downloaded and installed to
- Real-time solution
- MDM automatically syncs with the Operator backend system for subscription pool and eSIM management, via sim vendor solution component. IT Admin can view subscription pool and provision eSIM in real time.
- Operator is notified of the status of each eSIM profile and has visibility on which devices are being used
**Note:** End users don't notice the solution type. The choice between the two is made between the MDM and the Mobile Operator.
