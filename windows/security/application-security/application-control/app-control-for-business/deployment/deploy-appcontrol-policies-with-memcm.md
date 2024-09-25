---
title: Deploy App Control for Business policies with Configuration Manager
description: You can use Microsoft Configuration Manager to configure App Control for Business. Learn how with this step-by-step guide.
ms.date: 09/11/2024
ms.topic: how-to
ms.localizationpriority: medium
---

# Deploy App Control policies by using Microsoft Configuration Manager

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

You can use Microsoft Configuration Manager to configure App Control for Business on client machines.

## Use Configuration Manager's built-in policies

Configuration Manager includes native support for App Control, which allows you to configure Windows 10 and Windows 11 client computers with a policy that will only allow:

- Windows components
- Microsoft Store apps
- Apps installed by Configuration Manager (Configuration Manager self-configured as a managed installer)
- (Optional) Reputable apps as defined by the Intelligent Security Graph (ISG)
- (Optional) Apps and executables already installed in admin-definable folder locations that Configuration Manager will allow through a one-time scan during policy creation on managed endpoints.

Configuration Manager doesn't remove policies once deployed. To stop enforcement, you should switch the policy to audit mode, which will produce the same effect. If you want to disable App Control for Business altogether (including audit mode), you can deploy a script to delete the policy file from disk, and either trigger a reboot or wait for the next reboot.

### Create an App Control Policy in Configuration Manager

1. Select **Asset and Compliance** > **Endpoint Protection** > **App Control for Business** > **Create Application Control Policy**

   :::image type="content" alt-text="Create an App Control policy in Configuration Manager." source="../images/memcm/memcm-create-appcontrol-policy.jpg":::

2. Enter the name of the policy > **Next**
3. Enable **Enforce a restart of devices so that this policy can be enforced for all processes**
4. Select the mode that you want the policy to run (Enforcement enabled / Audit Only)
5. Select **Next**

   :::image type="content" alt-text="Create an enforced App Control policy in Configuration Manager." source="../images/memcm/memcm-create-appcontrol-policy-2.jpg":::

6. Select **Add** to begin creating rules for trusted software

   :::image type="content" alt-text="Create an App Control path rule in Configuration Manager." source="../images/memcm/memcm-create-appcontrol-rule.jpg":::

7. Select **File** or **Folder** to create a path rule > **Browse**

   :::image type="content" alt-text="Select a file or folder to create a path rule." source="../images/memcm/memcm-create-appcontrol-rule-2.jpg":::

8. Select the executable or folder for your path rule > **OK**

   :::image type="content" alt-text="Select the executable file or folder." source="../images/memcm/memcm-create-appcontrol-rule-3.jpg":::

9. Select **OK** to add the rule to the table of trusted files or folder
10. Select **Next** to navigate to the summary page > **Close**

    :::image type="content" alt-text="Confirm the App Control path rule in Configuration Manager." source="../images/memcm/memcm-confirm-appcontrol-rule.jpg":::

### Deploy the App Control policy in Configuration Manager

1. Right-click the newly created policy > **Deploy Application Control Policy**

   :::image type="content" alt-text="Deploy App Control via Configuration Manager." source="../images/memcm/memcm-deploy-appcontrol.jpg":::

2. Select **Browse**

   :::image type="content" alt-text="Select Browse." source="../images/memcm/memcm-deploy-appcontrol-2.jpg":::

3. Select the Device Collection you created earlier > **OK**

   :::image type="content" alt-text="Select the device collection." source="../images/memcm/memcm-deploy-appcontrol-3.jpg":::

4. Change the schedule > **OK**

   :::image type="content" alt-text="Change the App Control deployment schedule." source="../images/memcm/memcm-deploy-appcontrol-4.jpg":::

For more information on using Configuration Manager's native App Control policies, see [App Control for Business management with Configuration Manager](/mem/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager).

Download the entire [App Control in Configuration Manager lab paper](https://download.microsoft.com/download/c/f/d/cfd6227c-8ec4-442d-8c50-825550d412f6/WDAC-Deploy-WDAC-using-MEMCM.pdf).

## Deploy custom App Control policies using Packages/Programs or Task Sequences

Using Configuration Manager's built-in policies can be a helpful starting point, but customers may find the circle-of-trust options available in Configuration Manager too limiting. To define your own circle-of-trust, you can use Configuration Manager to deploy custom App Control policies using [script-based deployment](deploy-appcontrol-policies-with-script.md) via Software Distribution Packages and Programs or Operating System Deployment Task Sequences.
