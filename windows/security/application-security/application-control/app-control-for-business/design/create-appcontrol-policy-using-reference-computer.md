---
title: Create an App Control policy using a reference computer
description: To create an App Control for Business policy that allows all code installed on a reference computer within your organization, follow this guide.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: how-to
---

# Create an App Control policy using a reference computer

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

This section outlines the process to create an App Control for Business policy **using a reference computer** that is already configured with the software you want to allow. You can use this approach for fixed-workload devices that are dedicated to a specific functional purpose and share common configuration attributes with other devices servicing the same functional role. Examples of fixed-workload devices may include Active Directory Domain Controllers, Secure Admin Workstations, pharmaceutical drug-mixing equipment, manufacturing devices, cash registers, ATMs, etc. This approach can also be used to turn on App Control on systems "in the wild" and you want to minimize the potential impact on users' productivity.

> [!NOTE]
> Some of the App Control for Business options described in this topic are only available on Windows 10 version 1903 and above, or Windows 11. When using this topic to plan your own organization's App Control policies, consider whether your managed clients can use all or some of these features and assess the impact for any features that may be unavailable on your clients. You may need to adapt this guidance to meet your specific organization's needs.

As described in [common App Control for Business deployment scenarios](common-appcontrol-use-cases.md), we'll use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of App Control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of App Control.

## Create a custom base policy using a reference device

Alice previously created a policy for the organization's fully managed end-user devices. She now wants to use App Control to protect Lamna's critical infrastructure servers. Lamna's imaging practice for infrastructure systems is to establish a "golden" image as a reference for what an ideal system should look like, and then use that image to clone more company assets. Alice decides to use these same "golden" image systems to create the App Control policies, which will result in separate custom base policies for each type of infrastructure server. As with imaging, she'll have to create policies from multiple golden computers based on model, department, application set, and so on.

> [!NOTE]
> Make sure the reference computer is virus and malware-free, and install any software you want to be scanned before creating the App Control policy. <br><br> Each installed software application should be validated as trustworthy before you create a policy. <br><br> We recommend that you review the reference computer for software that can load arbitrary DLLs and run code or scripts that could render the PC more vulnerable. Examples include software aimed at development or scripting such as msbuild.exe (part of Visual Studio and the .NET Framework) which can be removed if you don't want to run scripts. You can remove or disable such software on the reference computer.

Alice identifies the following key factors to arrive at the "circle-of-trust" for Lamna's critical infrastructure servers:

- All devices are running Windows Server 2019 or above;
- All apps are centrally managed and deployed;
- No interactive users.

Based on the above, Alice defines the pseudo-rules for the policy:

1. **"Windows works"** rules that authorize:
   - Windows
   - WHQL (third-party kernel drivers)
   - Windows Store signed apps

2. Rules for **scanned files** that authorize all pre-existing app binaries found on the device

To create the App Control policy, Alice runs each of the following commands in an elevated Windows PowerShell session, in order:

1. Initialize variables.

   ```powershell
   $PolicyPath=$env:userprofile+"\Desktop\"
   $PolicyName="FixedWorkloadPolicy_Audit"
   $LamnaServerPolicy=$PolicyPath+$PolicyName+".xml"
   $DefaultWindowsPolicy=$env:windir+"\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_Audit.xml"
   ```

2. Use [New-CIPolicy](/powershell/module/configci/new-cipolicy) to create a new App Control policy by scanning the system for installed applications:

   ```powershell
   New-CIPolicy -FilePath $LamnaServerPolicy -Level SignedVersion -Fallback FilePublisher,FileName,Hash -ScanPath c:\ -UserPEs -MultiplePolicyFormat -OmitPaths c:\Windows,'C:\Program Files\WindowsApps\',c:\windows.old\,c:\users\ 3> CIPolicyLog.txt
   ```

   > [!Note]
   >
   > - You can add the **-Fallback** parameter to catch any applications not discovered using the primary file rule level specified by the **-Level** parameter. For more information about file rule level options, see [App Control for Business file rule levels](select-types-of-rules-to-create.md).
   > - To specify that the App Control policy scan only a specific drive, include the **-ScanPath** parameter followed by a path. Without this parameter, the tool will scan the C-drive by default.
   > - When you specify the **-UserPEs** parameter (to include user mode executables in the scan), rule option **0 Enabled:UMCI** is automatically added to the App Control policy. If you do not specify **-UserPEs**, the policy will be empty of user mode executables and will only have rules for kernel mode binaries like drivers. In other words, the allow list will not include applications. If you create such a policy and later add rule option **0 Enabled:UMCI**, all attempts to start applications will cause a response from App Control for Business. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application.
   > - To create a policy for Windows 10 1903 and above, including support for supplemental policies, use **-MultiplePolicyFormat**.
   > - To specify a list of paths to exclude from the scan, use the **-OmitPaths** option and supply a comma-delimited list of paths.
   > - The preceding example includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

3. Merge the new policy with the WindowsDefault_Audit policy to ensure all Windows binaries and kernel drivers will load.

      ```powershell
      Merge-CIPolicy -OutputFilePath $LamnaServerPolicy -PolicyPaths $LamnaServerPolicy,$DefaultWindowsPolicy
      ```

4. Give the new policy a descriptive name, and initial version number:

      ```powershell
      Set-CIPolicyIdInfo -FilePath $LamnaServerPolicy -PolicyName $PolicyName
      Set-CIPolicyVersion -FilePath $LamnaServerPolicy -Version "1.0.0.0"
      ```

5. Modify the merged policy to set policy rules:

      ```powershell
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 3 # Audit Mode
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 6 # Unsigned Policy
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 9 # Advanced Boot Menu
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 12 # Enforce Store Apps
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 16 # No Reboot
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 17 # Allow Supplemental
      Set-RuleOption -FilePath $LamnaServerPolicy -Option 19 # Dynamic Code Security
      ```

6. If appropriate, add more signer or file rules to further customize the policy for your organization.

7. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the App Control policy to a binary format:

   ```powershell
   [xml]$LamnaServerPolicyXML = Get-Content $LamnaServerPolicy
   $PolicyId = $LamnaServerPolicyXML.SiPolicy.PolicyId
   $LamnaServerPolicyBin = $PolicyPath+$PolicyId+".cip"
   ConvertFrom-CIPolicy $LamnaServerPolicy $LamnaServerPolicyBin
   ```

8. Upload the base policy XML and the associated binary to a source control solution such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

Alice now has an initial policy for Lamna's critical infrastructure servers that is ready to deploy in audit mode.

## Create a custom base policy to minimize user impact on in-use client devices

Alice previously created a policy for the organization's fully managed devices. Alice has included the fully managed device policy as part of Lamna's device build process so all new devices now begin with App Control enabled. She's preparing to deploy the policy to systems that are already in use, but is worried about causing disruption to users' productivity. To minimize that risk, Alice decides to take a different approach for those systems. She'll continue to deploy the fully managed device policy in audit mode to those devices, but for enforcement mode she'll merge the fully managed device policy rules with a policy created by scanning the device for all previously installed software. In this way, each device is treated as its own "golden" system.

Alice identifies the following key factors to arrive at the "circle-of-trust" for Lamna's fully managed in-use devices:

- Everything described for Lamna's [Fully Managed Devices](create-appcontrol-policy-for-fully-managed-devices.md);
- Users have installed apps that they need to continue to run.

Based on the above, Alice defines the pseudo-rules for the policy:

1. Everything included in the Fully Managed Devices policy
2. Rules for **scanned files** that authorize all pre-existing app binaries found on the device

For Lamna's existing, in-use devices, Alice deploys a script along with the Fully Managed Devices policy XML (not the converted App Control policy binary). The script then generates a custom policy locally on the client as described in the previous section, but instead of merging with the DefaultWindows policy, the script merges with Lamna's Fully Managed Devices policy. Alice also modifies the steps above to match the requirements of this different use case.
