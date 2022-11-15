---
title: Configure access to Microsoft Store (Windows 10)
description: Learn how to configure access to Microsoft Store for client computers and mobile devices in your organization.
ms.reviewer: 
manager: aaroncz
ms.prod: windows-client
author: lizgt2000
ms.author: lizlong
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 4/16/2018
ms.collection: highpri
ms.technology: itpro-configure
---

# Configure access to Microsoft Store


**Applies to**

-   Windows 10

>For more info about the features and functionality that are supported in each edition of Windows, see [Compare Windows 10 Editions](https://www.microsoft.com/WindowsForBusiness/Compare).

IT pros can configure access to Microsoft Store for client computers in their organization. For some organizations, business policies require blocking access to Microsoft Store.

> [!Important]
> All executable code including Microsoft Store applications should have an update and maintenance plan.  Organizations that use Microsoft Store applications should ensure that the applications can be updated through the Microsoft Store over the internet, through the [Private Store](/microsoft-store/distribute-apps-from-your-private-store), or [distributed offline](/microsoft-store/distribute-offline-apps) to keep the applications up to date.

## Options to configure access to Microsoft Store

You can use these tools to configure access to Microsoft Store: AppLocker or Group Policy. For Windows 10, this is only supported on Windows 10 Enterprise edition.

## <a href="" id="block-store-applocker"></a>Block Microsoft Store using AppLocker

Applies to: Windows 10 Enterprise, Windows 10 Education


AppLocker provides policy-based access control management for applications. You can block access to Microsoft Store app with AppLocker by creating a rule for packaged apps. You'll give the name of the Microsoft Store app as the packaged app that you want to block from client computers.

For more information on AppLocker, see [What is AppLocker?](/windows/device-security/applocker/what-is-applocker) For more information on creating an AppLocker rule for app packages, see [Create a rule for packaged apps](/windows/device-security/applocker/create-a-rule-for-packaged-apps).

**To block Microsoft Store using AppLocker**

1.  Type secpol in the search bar to find and start AppLocker.

2.  In the console tree of the snap-in, click **Application Control Policies**, click **AppLocker**, and then click **Packaged app Rules**.

3.  On the **Action** menu, or by right-clicking on **Packaged app Rules**, click **Create New Rule**.

4.  On **Before You Begin**, click **Next**.

5.  On **Permissions**, select the action (allow or deny) and the user or group that the rule should apply to, and then click **Next**.

6.  On **Publisher**, you can select **Use an installed app package as a reference**, and then click **Select**.

7.  On **Select applications**, find and click **Store** under **Applications** column, and then click **OK**. Click **Next**.

    [Create a rule for packaged apps](/windows/device-security/applocker/create-a-rule-for-packaged-apps) has more information on reference options and setting the scope on packaged app rules.

8.  Optional: On **Exceptions**, specify conditions by which to exclude files from being affected by the rule. This allows you to add exceptions based on the same rule reference and rule scope as you set before. Click **Next**.

## <a href="" id="block-store-csp"></a>Block Microsoft Store using configuration service provider

Applies to: Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education

If you have Windows 10 devices in your organization that are managed using a mobile device management (MDM) system, such as Microsoft Intune, you can block access to Microsoft Store app using the following configuration service providers (CSPs):

- [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider)
- [AppLocker CSP](/windows/client-management/mdm/applocker-csp)

For more information, see [Configure an MDM provider](/microsoft-store/configure-mdm-provider-microsoft-store-for-business).

For more information on the rules available via AppLocker on the different supported operating systems, see [Operating system requirements](/windows/security/threat-protection/windows-defender-application-control/applocker/requirements-to-use-applocker#operating-system-requirements).


## <a href="" id="block-store-group-policy"></a>Block Microsoft Store using Group Policy


Applies to: Windows 10 Enterprise, Windows 10 Education 

> [!Note]
> Not supported on Windows 10 Pro, starting with version 1511. For more info, see [Knowledge Base article #3135657](/troubleshoot/windows-client/group-policy/cannot-disable-microsoft-store).

You can also use Group Policy to manage access to Microsoft Store.

**To block Microsoft Store using Group Policy**

1.  Type gpedit in the search bar to find and start Group Policy Editor.

2.  In the console tree of the snap-in, click **Computer Configuration**, click **Administrative Templates**, click **Windows Components**, and then click **Store**.

3.  In the Setting pane, click **Turn off the Store application**, and then click **Edit policy setting**.

4.  On the **Turn off the Store application** setting page, click **Enabled**, and then click **OK**.

> [!Important]
> When you enable the policy to **Turn off the Store application**, it turns off app updates from the Microsoft Store. To allow store apps to update, disable the policy to **Turn off automatic download and install of Updates**. This configuration allows in-box store apps to update while still blocking access to the store.

## Show private store only using Group Policy 

Applies to Windows 10 Enterprise, Windows 10 Education

If you're using Microsoft Store for Business and you want employees to only see apps you're managing in your private store, you can use Group Policy to show only the private store. Microsoft Store app will still be available, but employees can't view or purchase apps. Employees can view and install apps that the admin has added to your organization's private store. 

**To show private store only in Microsoft Store app**

1. Type **gpedit** in the search bar, and then select **Edit group policy (Control panel)** to find and start Group Policy Editor.

2. In the console tree of the snap-in, go to **User Configuration** or **Computer Configuration** > **Administrative Templates** > **Windows Components**, and then click **Store**.

3. Right-click **Only display the private store within the Microsoft Store app** in the right pane, and click **Edit**.

    This opens the **Only display the private store within the Microsoft Store app** policy settings.

4. On the **Only display the private store within the Microsoft Store app** setting page, click **Enabled**, and then click **OK**.

## Related topics

[Distribute apps using your private store](/microsoft-store/distribute-apps-from-your-private-store)

[Manage access to private store](/microsoft-store/manage-access-to-private-store)


 
