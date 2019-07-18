---
title: Monitor your Microsoft Surface Hub
description: Monitoring for Microsoft Surface Hub devices is enabled through Microsoft Operations Management Suite (OMS).
ms.assetid: 1D2ED317-DFD9-423D-B525-B16C2B9D6942
ms.reviewer: 
manager: dansimp
keywords: monitor Surface Hub, Microsoft Operations Management Suite, OMS
ms.prod: surface-hub
ms.sitesec: library
author: levinec
ms.author: ellevin
ms.topic: article
ms.date: 07/27/2017
ms.localizationpriority: medium
---

# Monitor your Microsoft Surface Hub

Monitoring for Microsoft Surface Hub devices is enabled through Microsoft Operations Management Suite (OMS). The [Operations Management Suite](https://go.microsoft.com/fwlink/?LinkId=718138) is Microsoft's IT management solution that helps you manage and protect your entire IT infrastructure, including your Surface Hubs.


Surface Hub is offered as a Log Analytics solution in OMS, allowing you to collect and view usage and reliability data across all your Surface Hubs. Use the Surface Hub solution to:
- Inventory your Surface Hubs.
- View a snapshot of usage and reliability data for Skype meetings, wired and wireless projection, and apps on your Surface Hubs.
- Create custom alerts to respond quickly if your Surface Hubs report software or hardware issues.

## Add Surface Hub to Operations Management Suite

1. **Sign in to Operations Management Suite (OMS)**. You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.
2. **Create a new OMS workspace**. Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Select **Create**.
3. **Link Azure subscription to your workspace**. If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator.

    > [!NOTE] 
    > If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. Your workspace opens.

4. **Add Surface Hub solution**. In the Solutions Gallery, select the **Surface Hub** tile in the gallery and then select **Add** on the solution’s details page. The solution is now visible on your workspace.

## Use the Surface Hub dashboard
From the **Overview** page in your OMS workspace, click the Surface Hub tile to see the Surface Hub dashboard. Use the dashboard to get a snapshot of usage and reliability data across your Surface Hubs. Click into each view on the dashboard to see detailed data, modify the query as desired, and create alerts.

> [!NOTE]
> Most of these views show data for the past 30 days, but this is subject to your subscription's data retention policy.

**Active Surface Hubs**

Use this view to get an inventory of all your Surface Hubs. Once connected to OMS, each Surface Hub periodically sends a "heartbeat" event to the server. This view shows Surface Hubs that have reported a heartbeat in the past 24 hours.

<!--
**Skype meetings**

Use this view to get usage data for Skype over the past 30 days. The graph shows the total number of Skype Meetings started across your Surface Hubs, and a breakdown between scheduled meetings, ad hoc meetings, and PSTN calls.
-->
 
**Wireless projection**

Use this view to get usage and reliability data for wireless projection over the past 30 days. The graph shows the total number of wireless connections across all your Surface Hubs, which provides an indication whether people in your organization are using this feature. If it's a low number, it may suggest a need to provide training to help people in your organization learn how to wirelessly connect to a Surface Hub.
 
Also, the graph shows a breakdown of successful and unsuccessful connections. If you see a high number of unsuccessful connections, devices may not properly support wireless projection using Miracast. For best performance, Microsoft suggests that devices run a WDI Wi-Fi driver and a WDDM 2.0 graphics driver. Use the details view to learn if wireless projection problems are common with particular devices.
 
When a connection fails, users can also do the following if they are using a Windows laptop or phone:
- Remove the paired device from **Settings** > **Devices** > **Connected devices**, then try to connect again.
- Reboot the device.
 
**Wired projection**

Use this view to get usage and reliability data for wired projection over the past 30 days. If the graph shows a high number of unsuccessful connections, it may indicate a connectivity issue in your audio-visual pipeline. For example, if you use a HDMI repeater or a center-of-room control panel, they may need to be restarted.
 
**Application usage**

Use this view to get usage data for apps on your Surface Hubs over the past 30 days. The data comes from app launches on your Surface Hubs, not including Skype for Business. This view helps you understand which Surface Hub apps are the most valuable in your organization. If you are deploying new line-of-business apps in your environment, this can also help you understand how often they are being used.
 
**Application Crashes**

Use this view to get reliability data for apps on your Surface Hubs over the past 30 days. The data comes from app crashes on your Surface Hubs. This view helps you detect and notify app developers of poorly behaving in-box and line-of-business apps.
 
**Sample Queries**

Use this to create custom alerts based on a recommended set of queries. Alerts help you respond quickly if your Surface Hubs report software or hardware issues. For more inforamtion, see [Set up alerts using sample queries](#set-up-alerts-with-sample-queries).

## Set up alerts with sample queries

Use alerts to respond quickly if your Surface Hubs report software or hardware issues. Alert rules automatically run log searches according to a schedule, and runs one or more actions if the results match specific criteria. For more information, see [Alerts in Log Analytics](https://azure.microsoft.com/documentation/articles/log-analytics-alerts/).
 
The Surface Hub Log Analytics solution comes with a set of sample queries to help you set up the appropriate alerts and understand how to resolve issues you may encounter. Use them as a starting point to plan your monitoring and support strategy.

This table describes the sample queries in the Surface Hub solution:

| Alert type | Impact | Recommended remediation | Details |
| ---------- | ------ | ----------------------- | ------- |
| Software   | Error  | **Reboot the device**. <br> Reboot manually, or using the [Reboot configuration service provider](https://msdn.microsoft.com/library/windows/hardware/mt720802(v=vs.85).aspx). <br> Suggest doing this between meetings to minimize impact to your people in your organization. | Trigger conditions: <br> - A critical process in the Surface Hub operating system, such as the shell, projection, or Skype, crashes or becomes non-responsive. <br> - The device hasn't reported a heartbeat in the past 24 hours. This may be due to network connectivity issue or network-related hardware failure, or an error with the diagnostic data reporting system. |
| Software   | Error  | **Check your Exchange service**. <br> Verify: <br> - The service is available. <br> - The device account password is up to date – see [Password management](password-management-for-surface-hub-device-accounts.md) for details.| Triggers when there's an error syncing the device calendar with Exchange. |
| Software   | Error  | **Check your Skype for Business service**. <br> Verify: <br> - The service is available. <br> - The device account password is up to date – see [Password management](password-management-for-surface-hub-device-accounts.md) for details. <br> - The domain name for Skype for Business is properly configured - see [Configure a domain name](use-fully-qualified-domain-name-surface-hub.md). | Triggers when Skype fails to sign in. |
| Software   | Error  | **Reset the device**. <br> This takes some time, so you should take the device offline. <br> For more information, see [Device reset](device-reset-surface-hub.md).| Triggers when there is an error cleaning up user and app data at the end of a session. When this operation repeatedly fails, the device is locked to protect user data. You must reset the device to continue. |
| Hardware   | Warning | **None**. Indicates negligible impact to functionality.| Triggers when there is an error with any of the following hardware components: <br> - Virtual pen slots <br> - NFC driver <br> - USB hub driver <br> - Bluetooth driver <br> - Proximity sensor <br> - Graphical performance (video card driver) <br> - Mismatched hard drive <br> - No keyboard/mouse detected |
| Hardware   | Error | **Contact Microsoft support**. <br> Indicates impact to core functionality (such as Skype, projection, touch, and internet connectivity). <br> **Note** Some events, including heartbeat, include the device’s serial number that you can use when contacting support.| Triggers when there is an error with any of the following hardware components. <br> **Components that affect Skype**: <br> - Speaker driver <br> - Microphone driver <br> - Camera driver <br> **Components that affect wired and wireless projection**: <br> - Wired touchback driver <br> - Wired ingest driver <br> - Wireless adapter driver <br> - Wi-Fi Direct error <br> **Other components**: <br> - Touch digitizer driver <br> - Network adapter error (not reported to OMS)|

**To set up an alert**
1. From the Surface Hub solution, select one of the sample queries.
2. Modify the query as desired. See Log Analytics search reference to learn more.
3. Click **Alert** at the top of the page to open the **Add Alert Rule** screen. See [Alerts in Log Analytics](https://azure.microsoft.com/documentation/articles/log-analytics-alerts/) for details on the options to configure the alert.
4. Click **Save** to complete the alert rule. It will start running immediately.

## Enroll your Surface Hub

For Surface Hub to connect to and register with the OMS service, it must have access to the port number of your domains and the URLs. This table list the ports that OMS needs. For more information, see [Configure proxy and firewall settings in Log Analytics](https://azure.microsoft.com/documentation/articles/log-analytics-proxy-firewall/).

>[!NOTE]
>Surface Hub does not currently support the use of a proxy server to communicate with the OMS service.

| Agent resource              | Ports | Bypass HTTPS inspection? |
| --------------------------- | ----- | ------------------------ |
| *.ods.opinsights.azure.com  | 443   | Yes |
| *.oms.opinsights.azure.com  | 443   | Yes |
| *.blob.core.windows.net     | 443   | Yes |
| ods.systemcenteradvisor.com | 443   | No  |

The Microsoft Monitoring Agent, used to connect devices to OMS, is integrated with the Surface Hub operating system, so there is no need to install additional clients to connect Surface Hub to OMS.
 
Once your OMS workspace is set up, there are several ways to enroll your Surface Hub devices:
- [Settings app](#enroll-using-the-settings-app)
- [Provisioning package](#enroll-using-a-provisioning-package)
- [MDM provider](#enroll-using-a-mdm-provider), such as Microsoft Intune and Configuration Manager
 
You'll need the workspace ID and primary key of your OMS workspace. You can get these from the OMS portal.
 
### Enroll using the Settings app

**To Enroll using the settings app**

1. From your Surface Hub, start **Settings**.
2. Enter the device admin credentials when prompted.
3. Select **This device**, and navigate to **Device management**.
4. Under **Monitoring**, select **Configure OMS settings**.
5. In the OMS settings dialog, select **Enable monitoring**.
6. Type the workspace ID and primary key of your OMS workspace. You can get these from the OMS portal.
7. Click **OK** to complete the configuration.
 
A confirmation dialog will appear telling you whether or not the OMS configuration was successfully applied to the device. If it was, the device will start sending data to OMS.

### Enroll using a provisioning package
You can use a provisioning package to enroll your Surface Hub. For more information, see [Create provisioning packages](provisioning-packages-for-certificates-surface-hub.md).
 
### Enroll using a MDM provider
You can enroll Surface Hub into OMS using the SurfaceHub CSP. Intune and Configuration Manager provide built-in experiences to help create policy templates for Surface Hub. For more information, see [Manage Surface Hub settings with an MDM provider](manage-settings-with-mdm-for-surface-hub.md).

## Related topics

[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





