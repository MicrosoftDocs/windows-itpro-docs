---
title: Troubleshoot sign in issues on Microsoft Defender ATP for Android
ms.reviewer:
description: Troubleshoot sign in issues for Microsoft Defender ATP for Android
keywords: microsoft, defender, atp, android, cloud, connectivity, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
---

# Troubleshooting sign in issues on Microsoft Defender ATP for Android

**Applies to:**

-   [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for
    Android](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-android)

During onboarding, you might encounter sign in issues after the app is installed on your device. 

This article provides solutions to address the sign on issues.  

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

You do not have Microsoft 365 license assigned, or your organization does not
have a license for Microsoft 365 Enterprise subscription.

**Solution:**

Contact your administrator for help.

## Phishing pages and harmful web connections are not blocked on specific OEM devices

**Applies to:** Specific OEMs only

-   **Xiaomi**

Phishing and harmful web connection threats detected by Microsoft Defender ATP
for Android are not blocked on Xiaomi devices. The following functionality does not work
on these devices.

![Image of site reported unsafe](images/0c04975c74746a5cdb085e1d9386e713.png)

![Image of connection blocked](images/2f66647cbcefaa4088a5df19d9203afb.png)

**Cause:**

Xiaomi devices introduced a new permission that prevents Microsoft Defender ATP
for Android app from displaying pop-up windows while running in the background.

Xiaomi devices permission: "Display pop-up windows while running in the
background."

![Image of pop up setting](images/6e48e7b29daf50afddcc6c8c7d59fd64.png)

**Solution:**

Enable the required permission on Xiaomi devices.

-   Display pop-up windows while running in the background.
