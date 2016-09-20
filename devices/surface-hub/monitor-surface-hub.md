---
title: Monitor your Microsoft Surface Hub
description: Monitoring for Microsoft Surface Hub devices is enabled through Microsoft Operations Management Suite (OMS).
ms.assetid: 1D2ED317-DFD9-423D-B525-B16C2B9D6942
keywords: monitor Surface Hub, Microsoft Operations Management Suite, OMS
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Monitor your Microsoft Surface Hub


Monitoring for Microsoft Surface Hub devices is enabled through Microsoft Operations Management Suite (OMS).

The [Operations Management Suite (OMS)](https://go.microsoft.com/fwlink/?LinkId=718138) is Microsoft's IT management solution that helps you manage and protect your entire IT infrastructure, including your Surface Hubs. You can use OMS to help you track the health of your Surface Hubs as well as understand how they are being used. Log files are read on the devices and sent to the OMS service. Issues like servers being offline, the calendar not syncing, or the device account being unable to log into Skype are shown in OMS in the Surface Hub dashboard. By using the data in the dashboard, you can identify devices that are not running, or that are having other problems, and potentially apply fixes for the detected issues.

### OMS requirements

In order to manage your Surface Hubs from the Microsoft Operations Management Suite (OMS), you'll need the following:

-   A valid [subscription to OMS](http://www.microsoft.com/server-cloud/operations-management-suite/overview.aspx).
-   [Subscription level](https://go.microsoft.com/fwlink/?LinkId=718139) in line with the number of devices. OMS pricing varies depending on how many devices are enrolled, and how much data it processes. You'll want to take this into consideration when planning your Surface Hub rollout.

Next, you will either add an OMS subscription to your existing Microsoft Azure subscription or create a new workspace directly through the OMS portal. Detailed instructions for setting up the account can be found at: [Onboard in minutes](https://go.microsoft.com/fwlink/?LinkId=718141). Once the OMS subscription is set up, there are two ways to enroll your Surface Hub devices:

1.  Automatically through [InTune](https://go.microsoft.com/fwlink/?LinkId=718150), or
2.  Manually through Settings.

### Setting up monitoring

You can monitor health and activity of your Surface Hub using Microsoft Operations Management Suite (OMS). The device can be enrolled in OMS remotely, using InTune, or locally, by using Settings.

### Enrolling devices through InTune

You'll need the workspace ID and primary key for your Surface Hub. You can get those from the OMS portal.

InTune is a Microsoft product that allows you to centrally manage the OMS configuration settings that will be applied to one or more of your devices. Follow these steps to configure your devices through InTune:

1.  Sign in to InTune.
2.  Navigate to **Settings** &gt; **Connected Sources**.
3.  Create or edit a policy based on the Surface Hub template.
4.  Navigate to the OMS section of the policy, and add the **workspace ID** and **primary key** to the policy.
5.  Save the policy.
6.  Associate the policy with the appropriate group of devices.

InTune will now sync the OMS settings with the devices in the target group, enrolling them in your OMS workspace.

### Enrolling devices using the Settings app

You'll need the workspace ID and primary key for your Surface Hub. You can get those from the OMS portal.

If you don't use InTune to manage your environment, you can enroll devices manually through **Settings**:

1.  From your Surface Hub, start **Settings**.
2.  Enter the device admin credentials when prompted.
3.  Click **System**, and navigate to Microsoft Operations Management Suite.
4.  Click **Configure**.
5.  Select **Enable monitoring**.
6.  In the OMS settings dialog, type the **workspace ID**.
7.  Repeat steps 5 and 6 for the **primary key**.
8.  Click **OK** to complete the configuration.

A confirmation dialog will appear telling you whether or not the OMS configuration was successfully applied to the device. If it was, the device will start sending data to OMS.

### Monitoring devices

Monitoring your Surface Hubs using OMS is much like monitoring any other enrolled devices.

1.  Sign in to the OMS portal.
2.  Navigate to the Surface Hub solution pack dashboard.
3.  Your device's health will be displayed here.

You can create OMS alerts based on existing or custom queries that use the data collected through OMS.

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





