---
title: eSIM Enterprise Management
description: Learn how Mobile Device Management (MDM) Providers support the eSIM Profile Management Solution on Windows.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 07/08/2024
---

# How Mobile Device Management Providers support eSIM Management on Windows

The eSIM Profile Management Solution places the Mobile Device Management (MDM) Provider in the front and center. The whole idea is to use an already-existing solution that customers are familiar with and use to manage devices.

The expectations from an MDM are that it uses the same sync mechanism that it uses for device policies to push any policy to the eSIM profile, and use Groups and Users the same way. This way, the eSIM profile download and the installation happen in the background without impacting the end user. Similarly, the IT admin would use the same method of managing the eSIM profiles (Assignment/un-assignment, etc.) the same way as they currently do device management.

If you're a Mobile Device Management (MDM) Provider and want to support eSIM Management on Windows, perform the following steps:

- Onboard to Microsoft Entra ID
- Contact mobile operators directly or contact orchestrator providers. Windows provides the capability for MDM providers to manager eSIM profiles for enterprise use cases. However, Windows doesn't limit how ecosystem partners offer this service to their own partners and/or customers. As such, the eSIM profile management capability is something that can be supported by integrating with the Windows OMA-DM. This characteristic makes it possible to remotely manage the eSIM profiles according to the company policies.

  As an MDM provider, if you're looking to integrate/onboard to a mobile operator on a 1:1 basis, contact them and learn more about their onboarding. If you would like to integrate and work with only one MDM provider, contact that provider directly. If you would like to offer eSIM management to customers using different MDM providers, contact an orchestrator provider. Orchestrator providers act as proxy handling MDM onboarding and as a mobile operator onboarding. Their role is to make the process as painless and scalable as possible for all parties.

  Potential orchestrator providers you could contact include:

  - [HPE Device Entitlement Gateway](https://www.hpe.com/emea_europe/en/solutions/digital-communications-services.html)
  - [IDEMIA The Smart Connect - Hub](https://www.idemia.com/smart-connect-hub)
  - [Nokia IMPACT Mobile Device Manager](https://www.nokia.com/networks/internet-of-things/impact-mobile-device-manager/)

- Assess solution type that you would like to provide your customers
- Batch/offline solution
- IT Admin can manually import a flat file containing list of eSIM activation codes, and provision eSIM on LTE enabled devices.
- Operator doesn't have visibility over status of the eSIM profiles
- Real-time solution
- MDM automatically syncs with the Operator backend system for subscription pool and eSIM management, via SIM vendor solution component. IT Admin can view subscription pool and provision eSIM in real time.
- Operator is notified of the status of each eSIM profile and has visibility on which devices are being used

> [!NOTE]
> End users don't notice the solution type. The choice between the two is made between the MDM and the Mobile Operator.
