---
title: Create policies to enable applications
description: Learn how to create policies to enable the installation and execution of apps on Windows SE.
ms.date: 05/23/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Create policies to enable applications

:::row:::
   :::column span="":::
    :::image type="icon" source="images/phase-1-off.svg" border="false":::<br>
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-2-off.svg" border="false":::<br>
      [**Validate the application**](validate-apps.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-on.svg" border="false":::<br>
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
:::row-end:::

You can create AppLocker policies to allow apps that are [semi-compatible](./validate-apps.md#semi-compatible-apps) or [incompatible](./validate-apps.md#incompatible-apps) with the managed installer to run.

<!--
You can create policies to allow applications that are [semi-compatible](./validate-apps.md#semi-compatible-apps) or [incompatible](./validate-apps.md#incompatible-apps) with the managed installer.

The following table details the two policy types to allow apps to run:

| **Policy type** | **How it works** | **When should I use this policy?** | **Security risk** |
|---|---|---|---|
| WDAC supplemental policy | Allows apps meeting the rule criteria to run | For executables that the Windows 11 SE base policy blocks. The blocked executables are visible from the Event Viewer in the [CodeIntegrity events](./troubleshoot.md). | Low |
| AppLocker policy | Sets an app to be considered as a managed installer | Only for executables that do installations or updates, that the Windows 11 SE base policy blocks. | High |

> [!NOTE]
> The specifics of the policy you will need to create vary from app to app. Public documentation can help you determine which rules would be useful for your app.


## WDAC supplemental policies

A *supplemental policy* can expand only one base policy, but multiple supplemental policies can expand the same base policy. When you use supplemental policies, the apps allowed by the base or its supplemental policies will be allowed to execute.\
The base policy that you must target for Windows SE devices has a PolicyID of **{82443e1e-8a39-4b4a-96a8-f40ddc00b9f3}**.

> [!WARNING]
> The maximum number of active policies is 32, which includes the Windows 11 SE base policy, the Microsoft vulnerable driver block list, and potentially other inbox policies. When planning your supplemental policy strategy, avoid adding too many. For example, avoid creating a supplemental policy per app, which can add up very quickly.

After you create WDAC supplemental policies, you must sign them and deploy them through Intune.\
To create supplemental policies, download and install the [WDAC Policy Wizard][EXT-1] from a **non-Windows SE device**.

The following video provides an overview and explains how to create supplemental policies for apps blocked by the Windows 11 SE base policy.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWWReO]

### Create a supplemental policy for Win32 apps

There are different ways to write a supplemental policy. The suggested method is to use [audit events][WIN-3], as they list the actions that Windows 11 SE would block. From the audit events, you can create a policy to allow those actions.\
From a non-Windows SE device with the WDAC Policy Wizard installed, follow these steps:

1. Apply an audit mode WDAC Base policy. The WDAC Wizard includes a template policy called *WinSEPolicy.xml*, which is based on the Windows 11 SE base policy:
    - Open the **WDAC Wizard** and select **Policy Editor**
    - In the Policy Path to Edit field, browse for *%ProgramFiles%\WindowsApps\Microsoft.WDAC\** and select the file called *WinSEPolicy.xml*. Select **Next**
      :::image type="content" source="images/wdac-winsepolicy.png" alt-text="WDAC wizard - creation of a policy targeting the base WinSEPolicy.xml policy":::
    - Toggle the option for **Audit Mode** and complete the wizard. Note the location of the *.cip* and *.xml* files shown on the final page of the wizard
    - From an elevated PowerShell session, run the following command to activate the policy:

     ```cmd
     citool.exe -up <"Path to the .cip file">
     ```

1. With the *Base audit mode policy* for Windows 11 SE in place:
    - Download and run the app install for your app
    - Launch the app and exercise the app's capabilities
    - Uninstall the app
1. Use the WDAC Wizard to create a policy from audit events:
   - Open the **WDAC Wizard** and select **Policy Editor**
   - Select **Convert Event Log to a WDAC Policy** then select **Parse Event Log** to parse from the system Event Viewer. Select **Next**
   - Review each row in the table and choose the type of rule to create. You may want to sort the table by FileName to group duplicate rows together. You need to create a single rule if the values are duplicates
   - Complete the wizard to generate the policy. The policy will be a *Base* policy. Note the location of the *.xml* shown, as you'll use it in the next step.
   - Check the event log **AppLocker** > **MSI and Script** for any events
       - If any events are shown, you can use the **WDAC Wizard** to edit the policy and add more rules
       - Alternatively, you can save all events to *.evtx* file and create a policy from audit events, but browse for the saved *.evtx* file rather than parsing events from the system Event Viewer
1. Convert the policy created in the previous step to a supplemental policy, specifying the Base audit policy you created in the first step as its base

   ```PowerShell
   Set-CiPolicyIdInfo -FilePath "<Path to.xml file from step #4>" -BasePolicyToSupplementPath "<Path to the WDAC Base policy .xml created from step #2>"
   ```

1. From an elevated PowerShell session, run the following command to activate the policy:

   ```cmd
   citool.exe -up '<Path to the .cip file>'
   ```

1. Clear the two event logs:
    - **CodeIntegrity** > **Operational**
    - **AppLocker** > **MSI and Script**
1. Repeat the app testing from step 3. Repeat these steps as needed until no further events are generated.
1. Once you have a policy that works for your app, reset the supplemental policy's Base policy to the official Windows 11 SE BasePolicyId. From an elevated PowerShell session, run the following command:

    ```PowerShell
    Set-CiPolicyIdInfo -FilePath "<Path to .xml from step #4>" -SupplementsBasePolicyId "{82443e1e-8a39-4b4a-96a8-f40ddc00b9f3}"
    ```

    > [!NOTE]
    > If you have created multiple supplemental policies for different apps, it's recommended to merge all supplemental policies together before deploying. You can merge policies using the WDAC Wizard.
1. The creation of the supplemental policy is complete. You must sign and deploy the policy to your devices to take effect.

### Create a supplemental policy for UWP LOB apps

UWP apps don't work out-of-box due to the Windows 11 SE Windows 11 SE base policy.\
From a non-Windows SE device with the WDAC Policy Wizard installed, you can create and deploy a supplemental policy using these steps:

1. Open the **WDAC Wizard** and select **Policy Creator > Supplemental policy**
    - Choose a **Policy Name** and **Policy File Location**
    - In the **Base Policy** path to, browse for *%ProgramFiles%\WindowsApps\Microsoft.WDAC\** and select the     file called *WinSEPolicy.xml*. Select **Next**
    - In **Policy Rules**, select **Next**
    - In **Signing Rules**, select **Add Custom Rule** and choose:
      - **Rule scope**: **Usermode Rule**
      - **Rule action**: **Allow**
      - **Rule type**: **Packaged App**
      - **Package Name**: specify the package name of app. If the app is installed, you can search by name. If the app isn't installed, check the **Use Custom Package Family** box and specify the package family name of the app
        :::image type="content" source="images/wdac-uwp-policy.png" alt-text="WDAC wizard - selection of an installed UWP app package.":::
    - Select the app name
    - Select **Create Rule**
    - Select **Next**
1. The policy should be created and output an *.xml* and *.cip* files to the policy file location specified earlier
1. The policy isn't yet targeting the right base policy. Run the following PowerShell command to set the base policy to the Windows 11 SE Windows 11 SE base policy:

    ```PowerShell
    Set-CiPolicyIdInfo -FilePath "<Path to.xml file from previous step>" -SupplementsBasePolicyId "{82443e1e-8a39-4b4a-96a8-f40ddc00b9f3}"
    ```

1. The creation of the supplemental policy is complete. You must sign and deploy the policy to your devices to take effect.

### Guidelines for authoring WDAC supplemental policy rules

Here are some general guidelines to follow when writing WDAC supplemental policies:

- For packaged apps (*.appx* or *.msix*), choose **PackagedApp** and allow the file by its **PackageFamilyName**
- For other apps, try to create **Publisher** rules wherever possible, combining the **Publisher** with other properties like **Product**, **Filename**, and **Version**

> [!NOTE]
  > The WDAC Wizard defaults to use all of the properties, if present. In some cases, you may want to combine a subset of the properties to allow multiple files. For example: Publisher + ProductName + Version.

- When a **Publisher** rule isn't an option (for example, when the file is unsigned), use *Hash* as the most restrictive option
- You might have to opt for a **FileAttribute** rule, but it can be easily spoofed

For additional information:

- [WDAC Policy Wizard][EXT-1]
- [Policy creation for common WDAC usage scenarios][WIN-1]
- [Create a new supplemental policy with the wizard][WIN-2]

## AppLocker policies

> [!WARNING]
> It's recommended to use AppLocker policies for processes that perform **updates** or **install as managed installers** only. The preferred method to allow incompatible applications or other executables to run, is to write **WDAC supplemental policies** instead of modifying AppLocker policies.

Additional AppLocker policies work by configuring other apps to be *managed installers*. However, since anything downloaded or installed by a managed installer is trusted to run, it creates a significant security risk. For example, if the executable for a third-party browser is set as a managed installer, anything downloaded from that browser will be allowed to run.\
Using a WDAC supplemental policy instead, allows you to have more control over what is allowed to run without the risk of those permissions propagating unintentionally.

To allow apps to run by setting their installers as managed installers, follow the guidance here:
-->

Additional AppLocker policies work by configuring other apps to be *managed installers*. However, since anything downloaded or installed by a managed installer is trusted to run, it creates a significant security risk. For example, if the executable for a third-party browser is set as a managed installer, anything downloaded from that browser will be allowed to run.

To allow apps to run by setting their installers as managed installers, follow the guidance here:

- [Edit an AppLocker policy][WIN-5]
- [Allow apps deployed with a WDAC managed installer][WIN-6]

## Next steps

<!--
Before moving on to the next section, ensure that you've completed the following tasks.

For a WDAC supplemental policy:

> [!div class="checklist"]
>
> - Create a policy, targeting  the base policy: **82443e1e-8a39-4b4a-96a8-f40ddc00b9f3**

For an AppLocker policy:

> [!div class="checklist"]
>
> - Only applied to an updater or installer
> - Created the policy with the **Merge** option

Advance to the next article to learn how to deploy the WDAC supplemental policies or AppLocker policies to Windows 11 SE devices.
-->

Advance to the next article to learn how to deploy the AppLocker policies to Windows 11 SE devices.

> [!div class="nextstepaction"]
> [Next: deploy policies >](deploy-policies.md)

[EXT-1]: https://webapp-wdac-wizard.azurewebsites.net/
[WIN-1]: /windows/security/threat-protection/windows-defender-application-control/types-of-devices
[WIN-2]: /windows/security/threat-protection/windows-defender-application-control/wdac-wizard-create-supplemental-policy
[WIN-3]: /windows/security/threat-protection/windows-defender-application-control/audit-windows-defender-application-control-policies
[WIN-5]: /windows/security/threat-protection/windows-defender-application-control/applocker/edit-an-applocker-policy
[WIN-6]: /windows/security/threat-protection/windows-defender-application-control/configure-authorized-apps-deployed-with-a-managed-installer
