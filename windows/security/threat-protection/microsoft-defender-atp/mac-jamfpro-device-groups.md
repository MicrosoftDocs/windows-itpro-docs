---
title: Set up device groups in Jamf Pro
description: Learn how to set up device groups in Jamf Pro for Microsoft Defender ATP for macOS
keywords: device, group, microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamfpro, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Set up Microsoft Defender ATP for macOS device groups in Jamf Pro

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

Set up the device groups similar to Group policy  organizational unite (OUs), Microsoft Endpoint Configuration Manager's device collection, and Intune's device groups.

1. Navigate to **Static Computer Groups**.

2. Select **New**. 

    ![Image of Jamf Pro](images/jamf-pro-static-group.png)

3. Provide a display name and select **Save**.

    ![Image of Jamf Pro](images/jamfpro-machine-group.png)

4. Now you will see the **Contoso's Machine Group** under **Static Computer Groups**.

    ![Image of Jamf Pro](images/contoso-machine-group.png)

## Next step
- [Set up Microsoft Defender ATP for macOS policies in Jamf Pro](mac-jamfpro-policies.md)