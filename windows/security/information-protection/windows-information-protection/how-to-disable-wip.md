---
title: How to disable Windows Information Protection (WIP)
description: How to disable Windows Information Protection (WIP)
ms.date: 07/15/2022
ms.prod: m365-security
ms.topic: how-to
ms.localizationpriority: medium
author: lizgt2000
ms.author: lizlong
ms.reviewer: aaroncz
manager: dougeby
---

# How to disable Windows Information Protection (WIP)

_Applies to:_

- Windows 10
- Windows 11

  > [!NOTE]
   > **liz add blurb about disable**


## Use Intune to disable WIP

To disable Windows Information Protection (WIP) using Intune, you have the following options:

### Option 1 - Unassign the WIP policy (preferred)

Removing an existing enable policy will remove the intent to deploy WIP from those devices. When that intent is removed, a device will remove protection for files and the configuration for WIP.

#### Option 2 - Change current WIP policy to off

If you’re currently deploying a WIP policy for enrolled or unenrolled devices, you switch the WIP policy to Off. When devices check-in after this change, the devices will proceed to unprotect files previously protected by WIP.

1. Sign in to the Microsoft Endpoint Manager.
1. Open Microsoft Intune and select Apps > App protection policies > 
In Client apps - App protection policies, select <> apps. Select the existing policy to turn off.
1. From App protection policy, select the name of your policy, and then select the name of your properties.
1. Edit required settings.
:::image type="content" alt-text="Create Configuration Item wizard, choose your WIP-protection level" source="images/wip-configmgr-disable-wip.png":::
1. Set Windows Information Protection mode to off.
1. After making this change, select review and save.
1. Select save.

   > [!Note]
   > **Another option is to create a disable policy.**<br>
        You can create a separate disable policy for WIP (both enrolled and unenrolled) and deploy that to your organization. You then stage the rollout by complimenting your existing enablement policy and moving entities slowly from being targeted with enable to the disable policy.

## Use Configuration Manager to disable WIP

To remove Windows Information Protection (WIP) using Configuration Manager
## Add a WIP policy
After you've installed and set up Configuration Manager for your organization, you must create a configuration item for WIP, which in turn becomes your WIP policy.

>[!WARNING]
>Don't just delete your existing WIP policy.

**To create a configuration item for WIP**

1.  Open the Configuration Manager console, click the **Assets and Compliance** node, expand the **Overview** node, expand the **Compliance Settings** node, and then expand the **Configuration Items** node.

    ![Configuration Manager, Configuration Items screen.](images/wip-configmgr-addpolicy.png)

2.  Click the **Create Configuration Item** button.<p>
The **Create Configuration Item Wizard** starts.

    ![Create Configuration Item wizard, define the configuration item and choose the configuration type.](images/wip-configmgr-generalscreen.png)

3.  On the **General Information screen**, type a name (required) and an optional description for your policy into the **Name** and **Description** boxes.

4.  In the **Specify the type of configuration item you want to create** area, pick the option that represents whether you use Configuration Manager for device management, and then click **Next**.

    -   **Settings for devices managed with the Configuration Manager client:** Windows 10

        -OR-

    -   **Settings for devices managed without the Configuration Manager client:** Windows 8.1 and Windows 10

5.  On the **Supported Platforms** screen, click the **Windows 10** box, and then click **Next**.

    ![Create Configuration Item wizard, choose the supported platforms for the policy.](images/wip-configmgr-supportedplat.png)

6.  On the **Device Settings** screen, click **Windows Information Protection**, and then click **Next**.

    ![Create Configuration Item wizard, choose the Windows Information Protection settings.](images/wip-configmgr-devicesettings.png)

The **Configure Windows Information Protection settings** page appears, where you'll configure your policy for your organization.

## Manage the WIP-protection level for your enterprise data

**liz I need a different figure below - this is Intune - need config mgr**

Set the Windows Information Protection mode to Off.

:::image type="content" alt-text="Create Configuration Item wizard, choose your WIP-protection level" source="images/wip-configmgr-disable-wip.png":::


## Define your enterprise-managed identity domains

 > [!TIP]
   > For additional help filling out the required fields, please reference <br>[Create and deploy a Windows Information Protection (WIP) policy using Microsoft Endpoint Configuration Manager](/windows/security/information-protection/windows-information-protection/create-wip-policy-using-configmgr)

**Add your corporate identity**

- Type the name of your corporate identity into the **Corporate identity** field. For example, `contoso.com` or `contoso.com|newcontoso.com`.

    ![Create Configuration Item wizard, Add the primary Internet domain for your enterprise identity.](images/wip-configmgr-corp-identity.png)

## Choose where apps can access enterprise data
After you've added a protection mode to your apps, you'll need to decide where those apps can access enterprise data on your network.

**To define where your protected apps can find and send enterprise data on you network**

Add additional network locations your apps can access by clicking **Add**.
The **Add or edit corporate network definition** box appears. Add the required fields.

In the required **Upload a Data Recovery Agent (DRA) certificate to allow recovery of encrypted data** box, click **Browse** to add a data recovery certificate for your policy.

   ![Create Configuration Item wizard, Add a data recovery agent (DRA) certificate.](images/wip-configmgr-dra.png)
## Deploy the WIP policy
After you've created your WIP policy, you'll need to deploy it to your organization's devices. For info about your deployment options, see these topics:
- [Operations and Maintenance for Compliance Settings in Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg699357(v=technet.10))

- [How to Create Configuration Baselines for Compliance Settings in Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg712268(v=technet.10))

- [How to Deploy Configuration Baselines in Configuration Manager](/previous-versions/system-center/system-center-2012-R2/hh219289(v=technet.10))

## Related topics

- [How to collect Windows Information Protection (WIP) audit event logs](collect-wip-audit-event-logs.md)

- [General guidance and best practices for Windows Information Protection (WIP)](guidance-and-best-practices-wip.md)

- [Limitations while using Windows Information Protection (WIP)](limitations-with-wip.md)

-   **[Create a configuration baseline that includes the new configuration item](/mem/configmgr/compliance/deploy-use/create-configuration-baselines)**

-   **[Create a new collection](/mem/configmgr/core/clients/manage/collections/create-collections)**

-   **[Deploy the baseline to the collection](/mem/configmgr/compliance/deploy-use/deploy-configuration-baselines)**

-   **Move devices from old collection to new collection**

**liz for above do we have a reference link for doing this move**