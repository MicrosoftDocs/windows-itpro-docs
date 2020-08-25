---
title: Onboarding using Microsoft Endpoint Manager 
description: Learn how to onboard to Microsoft Defender ATP using Microsoft Endpoint  Manager
keywords: onboarding, configuration, deploy, deployment, endpoint manager, mdatp, advanced threat protection, collection creation, endpoint detection response, next generation protection, attack surface reduction
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365solution-endpointprotect  
ms.topic: article
---

# Onboarding using Microsoft Endpoint Manager 
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


In this section, we will be using Microsoft Endpoint Manager (MEM) to deploy
Microsoft Defender ATP to your endpoints.

For more information about MEM, check out these resources:
- [Microsoft Endpoint Manager page](https://docs.microsoft.com/mem/)
- [Blog post on convergence of Intune and ConfigMgr](https://www.microsoft.com/microsoft-365/blog/2019/11/04/use-the-power-of-cloud-intelligence-to-simplify-and-accelerate-it-and-the-move-to-a-modern-workplace/)
- [Introduction video on MEM](https://www.microsoft.com/microsoft-365/blog/2019/11/04/use-the-power-of-cloud-intelligence-to-simplify-and-accelerate-it-and-the-move-to-a-modern-workplace)


This process is a multi-step process, you'll need to:

-   Identify target devices or users

    -   Create an Azure Active Directory group (User or Device)

-   Create a Configuration Profile

    -   In MEM, we'll guide you in creating a separate policy for each feature

## Resources


Here are the links you'll need for the rest of the process:

-   [MEM portal](https://aka.ms/memac)

-   [Security Center](https://securitycenter.windows.com/)

-   [Intune Security baselines](https://docs.microsoft.com/mem/intune/protect/security-baseline-settings-defender-atp#microsoft-defender)

## Identify target devices or users
In this section, we will create a test group to assign your configurations on.

>[!NOTE]
>Intune uses Azure Active Directory (Azure AD) groups to manage devices and
users. As an Intune admin, you can set up groups to suit your organizational
needs.<br>
> For more information, see [Add groups to organize users and devices](https://docs.microsoft.com/mem/intune/fundamentals/groups-add).

### Create a group

1.  Open the MEM portal.

2.  Open **Groups > New Group**.

    ![Image of Microsoft Endpoint Manager portal](images/66f724598d9c3319cba27f79dd4617a4.png)

3.  Enter details and create a new group.

    ![Image of Microsoft Endpoint Manager portal](images/b1e0206d675ad07db218b63cd9b9abc3.png)

4.  Add your test user or device.

5.  From the **Groups > All groups** pane, open your new group.

6.  Select  **Members > Add members**.

7.  Find your test user or device and select it.

    ![Image of Microsoft Endpoint Manager portal](images/149cbfdf221cdbde8159d0ab72644cd0.png)

8.  Your testing group now has a member to test.

## Create configuration policies
In the following section, you'll create a number of configuration policies.
First is a configuration policy to select which groups of users or devices will
be onboarded to Microsoft Defender ATP. Then you will continue by creating several
different types of Endpoint security policies.

### Endpoint detection and response

1.  Open the MEM portal.

2.  Navigate to **Endpoint security > Endpoint detection and response**. Click
    on **Create Profile**.

    ![Image of Microsoft Endpoint Manager portal](images/58dcd48811147feb4ddc17212b7fe840.png)

3.  Under **Platform, select Windows 10 and Later, Profile - Endpoint detection
    and response > Create**.

4.  Enter a name and description, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/a5b2d23bdd50b160fef4afd25dda28d4.png)

5.  Select settings as required, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/cea7e288b5d42a9baf1aef0754ade910.png)

    >[!NOTE]
    >In this instance, this has been auto populated as Microsoft Defender ATP has already been integrated with Intune. For more information on the integration, see [Enable Microsoft Defender ATP in Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection-configure#to-enable-microsoft-defender-atp). <br>
    

    ![Image of Microsoft Endpoint Manager portal](images/2466460812371ffae2d19a10c347d6f4.png)

6.  Add scope tags if required, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/ef844f52ec2c0d737ce793f68b5e8408.png)

7.  Add test group by clicking on **Select groups to include** and choose your group, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/fc3525e20752da026ec9f46ab4fec64f.png)

8.  Review and accept, then select  **Create**.

    ![Image of Microsoft Endpoint Manager portal](images/289172dbd7bd34d55d24810d9d4d8158.png)

9.  You can view your completed policy.

    ![Image of Microsoft Endpoint Manager portal](images/5a568b6878be8243ea2b9d82d41ed297.png)

### Next-generation protection

1.  Open the MEM portal.

2.  Navigate to **Endpoint security > Antivirus > Create Policy**.

    ![Image of Microsoft Endpoint Manager portal](images/6b728d6e0d71108d768e368b416ff8ba.png)

3.  Select **Platform - Windows 10 and Later - Windows and Profile – Microsoft
    Defender Antivirus > Create**.

4.  Enter name and description, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/a7d738dd4509d65407b7d12beaa3e917.png)

5.  In the **Configuration settings page**: Set the configurations you require for
    Microsoft Defender Antivirus (Cloud Protection, Exclusions, Real-Time
    Protection, and Remediation).

    ![Image of Microsoft Endpoint Manager portal](images/3840b1576d6f79a1d72eb14760ef5e8c.png)

6.  Add scope tags if required, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/2055e4f9b9141525c0eb681e7ba19381.png)

7.  Select groups to include, assign to your test group, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/48318a51adee06bff3908e8ad4944dc9.png)

8.  Review and create, then select  **Create**.

    ![Image of Microsoft Endpoint Manager portal](images/dfdadab79112d61bd3693d957084b0ec.png)

9.  You'll see the configuration policy you created.

    ![Image of Microsoft Endpoint Manager portal](images/38180219e632d6e4ec7bd25a46398da8.png)

### Attack Surface Reduction – Attack surface reduction rules

1.  Open the MEM portal.

2.  Navigate to **Endpoint security > Attack surface reduction**.

3.  Select  **Create Policy**.

4.  Select **Platform - Windows 10 and Later – Profile - Attack surface reduction
    rules > Create**.

    ![Image of Microsoft Endpoint Manager portal](images/522d9bb4288dc9c1a957392b51384fdd.png)

5.  Enter a name and description, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/a5a71fd73ec389f3cdce6d1a6bd1ff31.png)

6.  In the **Configuration settings page**: Set the configurations you require for
    Attack surface reduction rules, then select  **Next**.

    >[!NOTE]
    >We will be configuring all of the Attack surface reduction rules to Audit.

    For more information, see [Attack surface reduction rules](attack-surface-reduction.md).

    ![Image of Microsoft Endpoint Manager portal](images/dd0c00efe615a64a4a368f54257777d0.png)

7.  Add Scope Tags as required, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/6daa8d347c98fe94a0d9c22797ff6f28.png)

8.  Select groups to include and assign to test group, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/45cefc8e4e474321b4d47b4626346597.png)

9. Review the details, then select  **Create**.

    ![Image of Microsoft Endpoint Manager portal](images/2c2e87c5fedc87eba17be0cdeffdb17f.png)

10. View the policy.

    ![Image of Microsoft Endpoint Manager portal](images/7a631d17cc42500dacad4e995823ffef.png)

### Attack Surface Reduction – Web Protection

1.  Open the MEM portal.

2.  Navigate to **Endpoint security > Attack surface reduction**.

3.  Select  **Create Policy**.

4.  Select **Windows 10 and Later – Web protection > Create**.

    ![Image of Microsoft Endpoint Manager portal](images/cd7b5a1cbc16cc05f878cdc99ba4c27f.png)

5.  Enter a name and description, then select  **Next**.

    ![Image of Microsoft Endpoint Manager portal](images/5be573a60cd4fa56a86a6668b62dd808.png)

6.  In the **Configuration settings page**: Set the configurations you require for
   Web Protection, then select  **Next**.

    >[!NOTE]
    >We are configuring Web Protection to Block.

    For more information, see [Web Protection](web-protection-overview.md).

    ![Image of Microsoft Endpoint Manager portal](images/6104aa33a56fab750cf30ecabef9f5b6.png)

7.  Add **Scope Tags as required > Next**.

    ![Image of Microsoft Endpoint Manager portal](images/6daa8d347c98fe94a0d9c22797ff6f28.png)

8.  Select **Assign to test group > Next**.

    ![Image of Microsoft Endpoint Manager portal](images/45cefc8e4e474321b4d47b4626346597.png)

9.  Select **Review and Create > Create**.

    ![Image of Microsoft Endpoint Manager portal](images/8ee0405f1a96c23d2eb6f737f11c1ae5.png)

10. View the policy.

    ![Image of Microsoft Endpoint Manager portal](images/e74f6f6c150d017a286e6ed3dffb7757.png)

## Validate configuration settings


### Confirm Policies have applied


Once the Configuration policy has been assigned, it will take some time to apply.

For information on timing, see [Intune configuration information](https://docs.microsoft.com/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).

To confirm that the configuration policy has been applied to your test device, follow the following process for each configuration policy.

1.  Open the MEM portal and navigate to the relevant policy as shown in the
    steps above. The following example shows the next generation protection settings.

    ![Image of Microsoft Endpoint Manager portal](images/43ab6aa74471ee2977e154a4a5ef2d39.png)

2.  Select  the **Configuration Policy** to view the policy status.

    ![Image of Microsoft Endpoint Manager portal](images/55ecaca0e4a022f0e29d45aeed724e6c.png)

3.  Select  **Device Status** to see the status.

    ![Image of Microsoft Endpoint Manager portal](images/18a50df62cc38749000dbfb48e9a4c9b.png)

4.  Select  **User Status** to see the status.

    ![Image of Microsoft Endpoint Manager portal](images/4e965749ff71178af8873bc91f9fe525.png)

5.  Select  **Per-setting status** to see the status.

    >[!TIP]
    >This view is very useful to identify any settings that conflict with another policy.

    ![Image of Microsoft Endpoint Manager portal](images/42acc69d0128ed09804010bdbdf0a43c.png)

### Endpoint detection and response


1.  Before applying the configuration, the Microsoft Defender ATP
    Protection service should not be started.

    ![Image of Services panel](images/b418a232a12b3d0a65fc98248dbb0e31.png)

2.  After the configuration has been applied the Microsoft Defender ATP
    Protection Service should be started.

    ![Image of Services panel](images/a621b699899f1b41db211170074ea59e.png)

3.  After the services are running on the device, the device appears in Microsoft
    Defender Security Center.

    ![Image of Microsoft Defender Security Center](images/df0c64001b9219cfbd10f8f81a273190.png)

### Next-generation protection

1.  Before applying the policy on a test device, you should be able to manually
    manage the settings as shown below.

    ![Image of setting page](images/88efb4c3710493a53f2840c3eac3e3d3.png)

2.  After the policy has been applied, you should not be able to manually manage
    the settings.

    >[!NOTE]
    > In the following image **Turn on cloud-delivered protection** and
    **Turn on real-time protection** are being shown as managed.

    ![Image of setting page](images/9341428b2d3164ca63d7d4eaa5cff642.png)

### Attack Surface Reduction – Attack surface reduction rules


1.  Before applying the policy on a test device, pen a PowerShell Window and type `Get-MpPreference`.

2.  This should respond with the following lines with no content:

    AttackSurfaceReductionOnlyExclusions:

    AttackSurfaceReductionRules_Actions:

    AttackSurfaceReductionRules_Ids:

    ![Image of command line](images/cb0260d4b2636814e37eee427211fe71.png)

3.  After applying the policy on a test device, open a PowerShell Windows and type `Get-MpPreference`.

4.  This should respond with the following lines with content as shown below:

    ![Image of command line](images/619fb877791b1fc8bc7dfae1a579043d.png)

### Attack Surface Reduction – Web Protection

1.  On the test device, open a PowerShell Windows and type
    `(Get-MpPreference).EnableNetworkProtection`.

2.  This should respond with a 0 as shown below.

    ![Image of command line](images/196a8e194ac99d84221f405d0f684f8c.png)

3.  After applying the policy, open a PowerShell Windows and type
    `(Get-MpPreference).EnableNetworkProtection`.

4.  This should respond with a 1 as shown below.

    ![Image of command line](images/c06fa3bbc2f70d59dfe1e106cd9a4683.png)
