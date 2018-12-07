---
title: 
# Fine-tune Windows Information Policy (WIP) with WIP Learning
description: How to access the WIP Learning report to monitor and apply Windows Information Protection in your company.
ms.assetid: 53db29d2-d99d-4db6-b494-90e2b4872ca2
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, WIP Learning
ms.prod: w10
ms.mktglfcycl:
ms.sitesec: library
ms.pagetype: security
author: justinha
ms.author: justinha
ms.localizationpriority: medium
ms.date: 10/15/2018
---

# Fine-tune Windows Information Protection (WIP) with WIP Learning
**Applies to:**

- Windows 10, version 1703 and later
- Windows 10 Mobile, version 1703 and later

With WIP Learning, you can intelligently tune which apps and websites are included in your WIP policy to help reduce disruptive prompts and keep it accurate and relevant. WIP Learning generates two reports: The **App learning report** and the **Website learning report**. Both reports are accessed from Microsoft Azure Intune, and you can alternately access the App learning report from Microsoft Operations Management Suite (OMS).

The **App learning report** monitors your apps, not in policy, that attempt to access work data. You can identify these apps using the report and add them to your WIP policies to avoid productivity disruption before fully enforcing WIP with [“Block”](protect-enterprise-data-using-wip.md#bkmk-modes) mode. Frequent monitoring of the report will help you continuously identify access attempts so you can update your policy accordingly.

In the **Website learning report**, you can view a summary of the devices that have shared work data with websites. You can use this information to determine which websites should be added to group and user WIP policies. The summary shows which website URLs are accessed by WIP-enabled apps so you can decide which ones are cloud or personal, and add them to the resource list.

## Access the WIP Learning reports

1. Open the [Azure portal](http://portal.azure.com/). 

1. Click **All services**, type **Intune** in the text box filter, and click the star to add it to **Favorites**.

1. Click **Intune** > **Client apps** > **App protection status** > **Reports**.

   ![Image showing the UI path to the WIP report](images/access-wip-learning-report.png) 

1. Select either **App learning report for Windows Information Protection** or **Website learning report for Windows Information Protection**. 

   ![Image showing the UI with for app and website learning reports](images/wip-learning-select-report.png) 

Once you have the apps and websites showing up in the WIP Learning logging reports, you can decide whether to add them to your app protection policies. Next, we'll look at how to do that in Operations Management Suite (OMS).

## View the WIP app learning report in Microsoft Operations Management Suite

From Intune, you can open OMS by choosing **WIP in the OMS console**. Then you can view the WIP App learning blade to monitor access events per app, and devices that have reported WIP access events:

![View in Intune of the link to OMS](images/wip-in-oms-console-link.png) 

If you don't have OMS linked to your Microsoft Azure Account, and want to configure your environment for Windows Analytics: Device Health, see [Get Started with Device Health](https://docs.microsoft.com/windows/deployment/update/device-health-get-started) for more information.

>[!NOTE]
>Intune has a 14 day data retention capacity, while OMS offers better querying capabilities and longer data retention.

Once you have WIP policies in place, by using the WIP section of Device Health, you can:

- Reduce disruptive prompts by adding rules to allow data sharing from approved apps.
- Tune WIP rules by confirming that certain apps are allowed or denied by current policy.

![Main Windows Information Protection view](images/oms-wip-app-learning-tile.png)

The **APP LEARNING** tile shows details of app statistics that you can use to evaluate each incident and update app policies by using WIP AppIDs.

![Details view](images/WIPNEW1-chart-selected-sterile.png)

In this chart view, you can see apps that have been used on connected devices which, when clicked on, will open additional details on the app, including details you need to adjust your WIP Policy:
    
![Details view for a specific app](images/WIPappID-sterile.png)

Here, you can copy the **WipAppid** and use it to adjust your WIP protection policies.

## Use OMS and Intune to adjust WIP protection policy

1. Click the **APP LEARNING** tile in OMS, as described above, to determine which apps are being used for work so you can add those you choose to your WIP policy.

2. Click the app you want to add to your policy and copy the publisher information from the app details screen.

3. Back in Intune, click **App protection policies** and then choose the app policy you want to add an application to.

4. Click **Protected apps**, and then click **Add Apps**.

5. In the **Recommended apps** drop down menu, choose either **Store apps** or **Desktop apps**, depending on the app you've chosen (for example, an executable (EXE) is a desktop app). 

    ![View of drop down menu for Store or desktop apps](images/wip-learning-choose-store-or-desktop-app.png)

6. In **NAME** (optional), type the name of the app, and then in **PUBLISHER** (required), paste the publisher information that you copied in step 2 above.

    ![View of Add Apps app info entry boxes](images/wip-learning-app-info.png)

7. Type the name of the product in **PRODUCT NAME** (required)  (this will probably be the same as what you typed for **NAME**).

8. Back in OMS, copy the name of the executable (for example, snippingtool.exe) and then go back to Intune and paste it in **FILE** (required).

9. Go back to OMS one more time and note the version number of the app and type it in **MIN VERSION** in Intune (alternately, you can specify the max version, but one or the other is required), and then select the **ACTION**: **Allow** or **Deny**

When working with WIP-enabled apps and WIP-unknown apps, it is recommended that you start with **Silent** or **Allow overrides** while verifying with a small group that you have the right apps on your allowed apps list. After you're done, you can change to your final enforcement policy, **Block**. For more information about WIP modes, see: [Protect enterprise data using WIP: WIP-modes](protect-enterprise-data-using-wip.md#bkmk-modes)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
