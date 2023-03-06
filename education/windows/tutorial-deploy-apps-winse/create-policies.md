---
title: Create policies to enable applications
description: Learn how to create policies to enable the installation and execution of apps on Windows SE.
ms.date: 03/06/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Create policies to enable applications

:::image type="content" source="./images/create-policies.png" alt-text="Diagram showing the three tutorial steps, highlighting the policy creation step." border="false":::

You can create policies to allow applications that are [semi-compatible](./validate-apps.md#semi-compatible-apps) or [incompatible](./validate-apps.md#incompatible-apps) with the managed installer.

The following table details the two policy types to allow apps to run:

| **Policy type** | **How it works** | **When should I use this policy?** | **Security risk** |
|---|---|---|---|
| WDAC supplemental policy | Allows apps meeting the rule criteria to run | For executables that are blocked by the E-Mode policy. The blocked executables are visible from the Event Viewer in the [CodeIntegrity events](./troubleshoot.md) | Low |
| AppLocker policy | Sets an app to be considered as a managed installer | Only for executables that do installations or updates which are blocked by the E-Mode policy | High |

> [!NOTE]
> The specifics of the policy you will need to create vary from app to app. Public documentation can help you determine which rules would be useful for your app.

## WDAC supplemental policies

You can create WDAC supplemental policies and then deploy them through Intune.

To allow apps to install and run, you must write *supplemental policies* targeting the correct base policy. The base policy that you must target has a PolicyID of `{82443E1E-8A39-4B4A-96A8-F40DDC00B9F3}`.

### Create a supplemental policy for Win32 apps

There are different ways to write a supplemental policy. The suggested method is to use [audit events][WIN-3], as they allow to observe the actions that would be blocked by Windows 11 SE. From the audit events, you can create a policy to allow those actions.

1. On a **non-Windows SE device**, download, install, and launch the [WDAC Policy Wizard][EXT-1]
1. Apply an audit mode WDAC Base policy. The WDAC Wizard includes a template policy called *WinSEPolicy.xml* which is based on the **Windows 11 SE E-mode** policy:
   - Open the **WDAC Wizard** and select **Policy Editor**
   - In the Policy Path to Edit field, browse for *%ProgramFiles%\WindowsApps\Microsoft.WDAC\** and select the file called *WinSEPolicy.xml*. Select **Next**
      :::image type="content" source="images/wdac-winsepolicy.png" alt-text="WDAC wizard - creation of a policy targeting the base WinSEPolicy.xml policy":::
   - Toggle the option for **Audit Mode** and complete the Wizard. Note the location of the .cip and .xml files shown on the final page of the wizard
   - From an elevated PowerShell session, run the following command to activate the policy:
     ```cmd
     citool.exe -up <"Path to the .cip file">
     ```
2. With the *Base audit mode policy* for Windows 11 SE in place:
    - Download and run the app install for your app
    - Launch the app and exercise the app's capabilities
    - Uninstall the app
3. Use the WDAC Wizard to create a policy from audit events:
   - Open the **WDAC Wizard** and select **Policy Editor**
   - Select **Convert Event Log to a WDAC Policy** then select **Parse Event Log** to parse from the system Event Viewer. Select **Next**
   - Review each row in the table and choose the type of rule to create. You may want to sort the table by FileName to group duplicate rows together. You need to create a single rule if the values are duplicates
   - Complete the wizard to generate the policy. This will be a *Base* policy. Note the location of the .xml shown, as you will use this in the next step.
   - Check the event log **AppLocker** > **MSI and Script** for any events
       - If any events are shown, you can use the **WDAC Wizard** to edit the policy and add additional rules
       - Alternatively, you can save all events to *.evtx* file and create a policy from audit events, but browse for the saved *.evtx* file rather than parsing events from the system Event Viewer
4. Convert the policy created in the previous step to a supplemental policy, specifying the E mode audit policy you created in the first step as its *Base*.

   ```PowerShell
   Set-CiPolicyIdInfo -FilePath "<Path to.xml file from step #4>" -BasePolicyToSupplementPath "<Path to the E-Mode .xml created from step #2>"
   ```

5. From an elevated PowerShell session, run the following command to activate the policy:

   ```cmd
   citool.exe -up '<Path to the .cip file>'
   ```

6. Clear the two event logs:
    - **CodeIntegrity** > **Operational**
    - **AppLocker** > **MSI and Script**
7. Repeat the app testing from step 3. Repeat these steps as needed until no further events are generated.
8. Once you have a policy that works for your app, reset the supplemental policy's Base policy to the official Windows 11 SE BasePolicyId. From an elevated PowerShell session, run the following command:

```PowerShell
Set-CiPolicyIdInfo -FilePath "<Path to .xml from step #3>" -SupplementsBasePolicyId "{82443E1E-8A39-4B4A-96A8-F40DDC00B9F3}"
```

> [!NOTE]
> If you have created multiple supplemental policies for different apps, it's recommended to merge all supplemental policies together before deploying. You can merge policies using the WDAC Wizard.

In the following video, Jeffrey Sutherland explains how to create a supplemental policy for an app that is blocked by the Windows 11 SE E-Mode policy.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWWReO]

For additional information:

- Policy creation: [Policy creation for common WDAC usage scenarios (Windows) - Windows security | Microsoft Docs][WIN-1]
- Supplemental Policy creation: [Creating a new Supplemental Policy with the Wizard][WIN-2]
- [WDAC Policy Wizard][EXT-1]

### Create a supplemental policy for UWP LOB apps

UWP apps don't work out-of-box due to the Windows 11 SE E-Mode policy. You can create and deploy a supplemental policy using these steps:

1. On a **non-Windows SE device**, download, install, and launch the [WDAC Policy Wizard][EXT-1]
1. Open the **WDAC Wizard** and select **Policy Creator > Supplemental policy**
  - Choose a **Policy Name** and **Policy File Location**
  - In the **Base Policy** path to, browse for *%ProgramFiles%\WindowsApps\Microsoft.WDAC\** and select the file called *WinSEPolicy.xml*. Select **Next**
  - In **Policy Rules**, select **Next**
  - In **Signing Rules**, select **Add Custom Rule** and choose:
    - **Rule scope**: **Usermode Rule**
    - **Rule action**: **Allow**
    - **Rule type**: **Packaged App**
    - **Package Name**: specify the package name of app. This can be retrieved via PowerShell using the following command:
      ```PowerShell
      Get-AppxPackage -Name <"App Name"> | Select PackageFullName
      ```
    If the app is not installed on your current PC, check the "Use Custom Package Family" box.
1. Click the Create button to the right of the Package Name. You should see the package added into the box below.
1. Click the Create Rule button.
1. Back in the WDAC Policy Wizard, click the Next button.
1. The policy should be created and output a .xml and .cip file to the policy file location that you specified earlier.
1. The policy is not yet targeting the right base policy so run the following from PowerShell:  
1. Set-CiPolicyIdInfo - FilePath <"Path to .xml from step 8"> -SupplementsBasePolicyId "{82443E1E-8A39-4B4A-96A8-F40DDC00B9F3}"
1. Creation of the supplemental policy is complete; you still need to have the policy signed by Microsoft and uploaded into Intune to take effect.
    - For review and signing of your policy, follow the instructions at [Create additional policies - Review and sign WDAC supplemental policies (TAP-only)](./create-policies.md)
    - For deployment of your policy after receiving back the signed policy, follow the instructions at: [Create additional policies - Deploy WDAC policies](./create-policies.md)

### Guidelines for authoring WDAC supplemental policy rules

Here are some general guidelines to follow when writing WDAC supplemental policies:

- For packaged apps (AppX or MSIX), choose *PackagedApp* and allow the file by its *PackageFamilyName*
- For other apps, try to create *Publisher* rules wherever possible, combining the *Publisher* with other properties like *Product*, *Filename*, and *Version*

> [!NOTE]
  > The *WDAC Wizard* defaults to use all of the properties, if present. In some cases, you may want to combine a subset of the properties to allow multiple files. For example: Publisher + ProductName + Version.

- When a *Publisher* rule is not an option (e.g. when the file is unsigned), use *Hash* as the most restrictive option
- You might have to opt for a *FileAttribute* rule, but it can be easily spoofed

## AppLocker policies

> [!WARNING]
> It's recommended to use AppLocker policies for processes that perform **updates** or **install as managed installers** only. The preferred method to allow incompatible applications or other executables to run, is to write **WDAC supplemental policies** instead of modifying AppLocker policies.

Additional AppLocker policies work by setting other apps to be managed installers.

However, since anything downloaded or installed by a managed installer is trusted to run, this creates a significant risk for security. For example, if the executable for a third-party browser (e.g. Chrome or Firefox) is set as a managed installer, anything downloaded from that third-party browser will be allowed to run.\
Using a WDAC supplemental policy instead allows you to have more control over what is allowed to run without the risk of those permissions propagating unintentionally.

If you want to allow apps to run by setting their installers as managed installers, follow the guidance here:

- [Edit an AppLocker policy][WIN-5]
- [Allow apps deployed with a WDAC managed installer][WIN-6]

## Next steps

Advance to the next article to learn how to deploy the WDAC supplemental policies or AppLocker policies to Windows 11 SE devices.

> [!div class="nextstepaction"]
> [Next: deploy policies >](deploy-policies.md)

[WIN-1]: /windows/security/threat-protection/windows-defender-application-control/types-of-devices
[WIN-2]: /windows/security/threat-protection/windows-defender-application-control/wdac-wizard-create-supplemental-policy
[WIN-3]: /windows/security/threat-protection/windows-defender-application-control/audit-windows-defender-application-control-policies
[WIN-4]: /windows/security/threat-protection/windows-defender-application-control/deployment/deploy-windows-defender-application-control-policies-using-intune
[WIN-5]: /windows/security/threat-protection/windows-defender-application-control/applocker/edit-an-applocker-policy
[WIN-6]: /windows/security/threat-protection/windows-defender-application-control/configure-authorized-apps-deployed-with-a-managed-installer
[WIN-7]: /windows/security/threat-protection/windows-defender-application-control/applocker/merge-applocker-policies-by-using-set-applockerpolicy

[EXT-1]: https://webapp-wdac-wizard.azurewebsites.net/

[MEM-1]: /mem/intune/apps/intune-management-extension