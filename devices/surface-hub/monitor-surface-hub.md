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


Monitoring for Microsoft Surface Hub devices is enabled through Microsoft Operations Management Suite (OMS). The [Operations Management Suite (OMS)](https://go.microsoft.com/fwlink/?LinkId=718138) is Microsoft's IT management solution that helps you manage and protect your entire IT infrastructure, including your Surface Hubs.

Surface Hub is offered as a Log Analytics solution in OMS, allowing you to collect and view usage and reliability data across all your Surface Hubs. Use the Surface Hub solution to:
- Inventory your Surface Hubs.
- View a snapshot of usage and reliability data for Skype meetings, wired and wireless projection, and apps on your Surface Hubs.
- Create custom alerts to respond quickly if your Surface Hubs report software or hardware issues.

## Add Surface Hub to Operations Management Suite
If you are already using OMS, you'll find Surface Hub solutions in the Solutions Gallery. Select the **Surface Hub** tile in the gallery, and then click **Add** in the solution's details page. If you're not using OMS, you'll need to add Surface Hub to the Solutions Gallery. For more information, see [Get Started with Updgrade Analytics](https://technet.microsoft.com/itpro/windows/deploy/upgrade-analytics-get-started). 

**To add Surface Hube to Operations Management Suite**
1. **Sign in to Operations Management Suite (OMS)**. You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.
2. **Create a new OMS workspace**. Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Select Create.
3. If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator.
**Note**: If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. Your workspace opens.
4. **Add Surface Hub solution**. In the Solutions Galler, select the Surface Hub tile in the gallery and then select **Add** on the solution’s details page. The solution is now visible on your workspace.




You can use OMS to help you track the health of your Surface Hubs as well as understand how they are being used. Log files are read on the devices and sent to the OMS service. Issues like servers being offline, the calendar not syncing, or the device account being unable to log into Skype are shown in OMS in the Surface Hub dashboard. By using the data in the dashboard, you can identify devices that are not running, or that are having other problems, and potentially apply fixes for the detected issues.

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

 

 





