---
title: Configure access to Windows Store (Windows 10)
description: IT Pros can configure access to Windows Store for client computers in their organization. For some organizations, business policies require blocking access to Windows Store.
ms.assetid: 7AA60D3D-2A69-45E7-AAB0-B8AFC29C2E97
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: TrudyHa
---

# Configure access to Windows Store


**Applies to**

-   Windows 10
-   Windows 10 Mobile

IT Pros can configure access to Windows Store for client computers in their organization. For some organizations, business policies require blocking access to Windows Store.

## Options to configure access to Windows Store


You can use these tools to configure access to Windows Store: AppLocker or Group Policy. For Windows 10, this is only supported on Windows 10 Enterprise edition.

## <a href="" id="block-store-applocker"></a>Block Windows Store using AppLocker


Applies to: Windows 10 Enterprise, Windows 10 Mobile

AppLocker provides policy-based access control management for applications. You can block access to Windows Store app with AppLocker by creating a rule for packaged apps. You'll give the name of the Windows Store app as the packaged app that you want to block from client computers.

For more information on AppLocker, see [What is AppLocker?](../keep-secure/what-is-applocker.md) For more information on creating an AppLocker rule for app packages, see [Create a rule for packaged apps](../keep-secure/create-a-rule-for-packaged-apps.md).

**To block Windows Store using AppLocker**

1.  Type secpol in the search bar to find and start AppLocker.

2.  In the console tree of the snap-in, click **Application Control Policies**, click **AppLocker**, and then click **Packaged app Rules**.

3.  On the **Action** menu, or by right-clicking on **Packaged app Rules**, click **Create New Rule**.

4.  On **Before You Begin**, click **Next**.

5.  On **Permissions**, select the action (allow or deny) and the user or group that the rule should apply to, and then click **Next**.

6.  On **Publisher**, you can select **Use an installed app package as a reference**, and then click **Select**.

7.  On **Select applications**, find and click **Store** under **Applications** column, and then click **OK**. Click **Next**.

    [Create a rule for packaged apps](../keep-secure/create-a-rule-for-packaged-apps.md) has more information on reference options and setting the scope on packaged app rules.

8.  Optional: On **Exceptions**, specify conditions by which to exclude files from being affected by the rule. This allows you to add exceptions based on the same rule reference and rule scope as you set before. Click **Next**.

## <a href="" id="block-store-group-policy"></a>Block Windows Store using Group Policy


Applies to: Windows 10 Enterprise, version 1511

You can also use Group Policy to manage access to Windows Store.

**To block Windows Store using Group Policy**

1.  Type gpedit in the search bar to find and start Group Policy Editor.

2.  In the console tree of the snap-in, click **Computer Configuration**, click **Administrative Templates** , click **Windows Components**, and then click **Store**.

3.  In the Setting pane, click **Turn off Store application**, and then click **Edit policy setting**.

4.  On the **Turn off Store application** setting page, click **Enabled**, and then click **OK**.

## <a href="" id="block-store-mdm"></a>Block Windows Store using management tool


Applies to: Windows 10 Mobile

If you have mobile devices in your organization that you upgraded from earlier versions of Windows Phone 8 to Windows 10 Mobile, existing policies created using the Windows Phone 8.1 configuration service providers (CSP) with your MDM tool will continue to work on Windows 10 Mobile. If you are starting with Windows 10 Mobile, we recommend using [AppLocker](#block-store-applocker) to manage access to Windows Store app.

When your MDM tool supports Windows Store for Business, the MDM can use these CSPs to block Windows Store app:

-   [Policy](http://go.microsoft.com/fwlink/p/?LinkId=717030)

-   [EnterpriseAssignedAccess](https://msdn.microsoft.com/library/windows/hardware/mt157024.aspx) (Windows 10 Mobile, only)

For more information, see [Configure an MDM provider](configure-mdm-provider-windows-store-for-business.md).
## Related topics


[Distribute apps using your private store](distribute-apps-from-your-private-store.md)

[Manage access to private store](manage-access-to-private-store.md)

 

 





