---
title: Troubleshoot issues on Microsoft Defender ATP for Android
ms.reviewer: 
description: Troubleshoot issues for Microsoft Defender ATP for Android
keywords: microsoft, defender, atp, android, cloud, connectivity, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Troubleshooting issues on Microsoft Defender for Endpoint for Android

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

When onboarding a device, you might see sign in issues after the app is installed. 

During onboarding, you might encounter sign in issues after the app is installed on your device. 

This article provides solutions to help address the sign-on issues.  

## Sign in failed - unexpected error
**Sign in failed:** *Unexpected error, try later*

![Image of sign in failed error Unexpected error](images/f9c3bad127d636c1f150d79814f35d4c.png)

**Message:**

Unexpected error, try later

**Cause:**

You have an older version of "Microsoft Authenticator" app installed on your
device.

**Solution:**

Install latest version and of [Microsoft
Authenticator](https://play.google.com/store/apps/details?androidid=com.azure.authenticator)
from Google Play Store and try again

## Sign in failed - invalid license

**Sign in failed:** *Invalid license, please contact administrator*

![Image of sign in failed  please contact administrator](images/920e433f440fa1d3d298e6a2a43d4811.png)

**Message:** *Invalid license, please contact administrator*

**Cause:**

You do not have Microsoft 365 license assigned, or your organization does not have a license for Microsoft 365 Enterprise subscription.

**Solution:**

Contact your administrator for help.

## Phishing pages aren't blocked on some OEM devices

**Applies to:** Specific OEMs only

-   **Xiaomi**

Phishing and harmful web threats that are detected by Defender for Endpoint
for Android are not blocked on some Xiaomi devices. The following functionality doesn't work on these devices.

![Image of site reported unsafe](images/0c04975c74746a5cdb085e1d9386e713.png)


**Cause:**

Xiaomi devices include a new permission model. This prevents Defender for Endpoint
for Android from displaying pop-up windows while it runs in the background.

Xiaomi devices permission: "Display pop-up windows while running in the
background."

![Image of pop up setting](images/6e48e7b29daf50afddcc6c8c7d59fd64.png)

**Solution:**

Enable the required permission on Xiaomi devices.

-   Display pop-up windows while running in the background.
