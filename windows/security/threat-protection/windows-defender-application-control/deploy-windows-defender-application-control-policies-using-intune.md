---
title: Deploy Windows Defender Application Control (WDAC) policies by using Microsoft Intune (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: jsuther1974
ms.date: 02/28/2018
---

# Deploy Windows Defender Application Control policies by using Microsoft Intune

**Applies to:**

-   Windows 10
-   Windows Server 2016

You can apply Windows Defender Application Control (WDAC) to Windows 10 client computers using Microsoft Intune.

1. Open the Microsoft Intune portal and click **Create a compliance policy**.

   ![Create a compliance policy in Intune](images\wdac-intune-create-acompliance-policy.png)

2. Click **Create Policy**.

   ![Create a new policy](images\wdac-intune-create-new-policy.png)

3. Type a name for the new policy and for **Platform**, select **Windows 10 and later**.  

   ![Select platform](images\wdac-intune-create-policy-name.png)

4. Click **Device Health**, select **Require** for the following settings and then click **OK**:

   - **Require BitLocker**
   - **Require Secure Boot to be enabled on the device**
   - **Require code integrity**

   ![Device Health settings](images\wdac-intune-device-health-settings.png)

5. Click **Device Properties**, configure any operating system version requirements and then click **OK**.  

   ![Device properties](images\wdac-intune-device-properties.png)

6. Click **System Security**, select any security options to include in the policy and then click **OK**.   

   ![System security settings](images\wdac-intune-system-security-settings.png)

7. When you finish configuring settings, click **OK** and then click **Create**.

8. Click **Assignments**. 

   ![Assignments](images\wdac-intune-assignments.png)

9. Select any mutually exclusive groups to include or exclude from the policy, or assign it to **All users**, and then click **Save**.

   ![Assign the policy to groups](images\wdac-intune-assignments-groups.png)   