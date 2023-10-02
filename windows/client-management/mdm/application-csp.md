---
title: APPLICATION CSP
description: Learn how the APPLICATION configuration service provider is used to configure an application transport using Open Mobile Alliance (OMA) Client Provisioning.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# APPLICATION CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The APPLICATION configuration service provider is used to configure an application transport using Open Mobile Alliance (OMA) Client Provisioning.

OMA considers each transport to be an application and requires a corresponding APPLICATION configuration service provider.

The following list shows the supported transports:

- w7, for bootstrapping a device with an OMA Device Management (OMA DM) account. For more information, see [w7 APPLICATION configuration service provider](w7-application-csp.md).

- w4, for configuring Multimedia Messaging Service (MMS). For more information, see [w4 APPLICATION configuration service provider](w4-application-csp.md).

The APPID parameter differentiates these application transports. Each APPID must be registered with OMA, and any APPLICATION configuration service provider must be in the root of the provisioning document.

For the device to decode correctly, provisioning XML that contains the APPLICATION characteristic must support OMA Client Provisioning version 1.1.

## Related topics

[Configuration service provider reference](index.yml)

