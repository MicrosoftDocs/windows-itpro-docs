---
title: Deploy code integrity policies - steps (Windows 10)
description: This article describes how to deploy code integrity policies, one of the main features that are part of Device Guard in Windows 10. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
localizationpriority: high
author: brianlic-msft
---

# Deploy code integrity policies: steps

**Applies to**
-   Windows 10
-   Windows Server 2016

For an overview of the process described in the following procedures, see [Deploy code integrity policies: policy rules and file rules](deploy-code-integrity-policies-policy-rules-and-file-rules.md). To understand how the deployment of code integrity policies fits with other steps in the Device Guard deployment process, see [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

## Create a code integrity policy from a golden computer

The process for creating a golden code integrity policy from a reference system is straightforward. This section outlines the process that is required to successfully create a code integrity policy with Windows PowerShell. First, for this example, you must initiate variables to be used during the creation process. Rather than using variables, you can simply use the full file paths in the command. Next, you create the code integrity policy by scanning the system for installed applications. When created, the policy file is converted to binary format so that Windows can consume its contents.

> [!Note] 
> Before you begin this procedure, make sure that the reference PC is virus and malware-free,and that any software you want to be scanned is installed on the system before creating the code integrity policy. 

### Scripting and applications

Each installed software application should be validated as trustworthy before you create a policy. We recommend that you review the reference PC for software that can load arbitrary DLLs and run code or scripts that could render the PC more vulnerable. Examples include software aimed at development or scripting such as msbuild.exe (part of Visual Studio and the .NET Framework) which can be removed if you do not want it to run scripts. 
You can remove or disable such software on reference PCs used to create code integrity policies. You can also fine-tune your control by using Device Guard in combination with AppLocker, as described in [Device Guard with AppLocker](https://technet.microsoft.com/itpro/windows/keep-secure/introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies#device-guard-with-applocker). 

Members of the security community<sup>\*</sup> continuously collaborate with Microsoft® to help protect customers. With the help of their valuable reports, Microsoft has identified a list of valid applications that an attacker could also potentially use to bypass Device Guard code integrity policies. 

Unless your use scenarios explicitly require them, Microsoft recommends that you block the following applications. These applications or files can be used by an attacker to circumvent Application Whitelisting policies, including Device Guard:

- bash.exe
- bginfo.exe 
- cdb.exe
- csi.exe
- dnx.exe
- fsi.exe
- kd.exe
- lxssmanager.dll
- msbuild.exe<sup>[1]</sup>
- mshta.exe
- ntsd.exe
- rcsi.exe
- system.management.automation.dll
- windbg.exe

<sup>[1]</sup>If you are using your reference system in a development context and use msbuild.exe to build managed applications, we recommend that you whitelist msbuild.exe in your code integrity policies. However, if your reference system is an end user device that is not being used in a development context, we recommend that you block msbuild.exe.

<sup>*</sup>Microsoft recognizes the efforts of those in the security community who help us protect customers through responsible vulnerability disclosure, and extends thanks to the following people:

<br />

|Name|Twitter|
|---|---|
|Casey Smith |@subTee| 
|Matt Graeber | @mattifestation| 
|Matt Nelson | @enigma0x3| 
|Oddvar Moe |@Oddvarmoe|

<br />

>[!Note]
>This application list is fluid and will be updated with the latest vendor information as application vulnerabilities are resolved and new issues are discovered. 

Certain software applications may allow additional code to run by design. These types of applications should be blocked by your Device Guard policy. In addition, when an application version is upgraded to fix a security vulnerability or potential Device Guard bypass, you should add deny rules to your code integrity policies for that application’s previous, less secure versions. 

Microsoft recommends that you install the latest security updates. The June 2017 Windows updates resolve several issues in in-box PowerShell modules that allowed an attacker to bypass Device Guard code integrity policies. These modules cannot be blocked by name or version, and therefore must be blocked by their corresponding hashes. 

Microsoft recommends that you block the following Microsoft-signed applications and PowerShell files by merging the following policy into your existing policy to add these deny rules using the Merge-CIPolicy cmdlet:

```
<?xml version="1.0" encoding="utf-8"?>
<SiPolicy xmlns="urn:schemas-microsoft-com:sipolicy">
  <VersionEx>10.0.0.0</VersionEx>
  <PolicyTypeID>{A244370E-44C9-4C06-B551-F6016E563076}</PolicyTypeID>
  <PlatformID>{2E07F7E4-194C-4D20-B7C9-6F44A6C5A234}</PlatformID>
  <Rules>
    <Rule>
      <Option>Enabled:Unsigned System Integrity Policy</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Audit Mode</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Advanced Boot Options Menu</Option>
    </Rule>
    <Rule>
      <Option>Required:Enforce Store Applications</Option>
    </Rule>
    <Rule>
      <Option>Enabled:UMCI</Option>
    </Rule>
  </Rules>
  <!--EKUS-->
  <EKUs />
  <!--File Rules-->
  <FileRules>
    <Deny  ID="ID_DENY_BGINFO"        FriendlyName="bginfo.exe"         FileName="BGINFO.Exe" MinimumFileVersion = "4.21.0.0" />
    <Deny  ID="ID_DENY_CBD"           FriendlyName="cdb.exe"            FileName="CDB.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_KD"            FriendlyName="kd.exe"             FileName="kd.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_WINDBG"        FriendlyName="windbg.exe"         FileName="windbg.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_MSBUILD"       FriendlyName="MSBuild.exe"        FileName="MSBuild.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_CSI"           FriendlyName="csi.exe"            FileName="csi.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_DNX"           FriendlyName="dnx.exe"            FileName="dnx.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_RCSI"          FriendlyName="rcsi.exe"           FileName="rcsi.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_NTSD"          FriendlyName="ntsd.exe"           FileName="ntsd.Exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_LXSS"          FriendlyName="LxssManager.dll"    FileName="LxssManager.dll" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_BASH"          FriendlyName="bash.exe"           FileName="bash.exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_FSI"           FriendlyName="fsi.exe"            FileName="fsi.exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_MSHTA"         FriendlyName="mshta.exe"          FileName="mshta.exe" MinimumFileVersion = "65535.65535.65535.65535" />
    <Deny  ID="ID_DENY_SMA"           FriendlyName="System.Management.Automation.dll" FileName="System.Management.Automation.dll" MinimumFileVersion = "10.0.16215.999" />


    <Deny ID="ID_DENY_D_1" FriendlyName="Powershell 1" Hash="DED853481A176999723413685A79B36DD0F120F9" />
    <Deny ID="ID_DENY_D_2" FriendlyName="Powershell 2" Hash="D027E09D9D9828A87701288EFC91D240C0DEC2C3" />
    <Deny ID="ID_DENY_D_3" FriendlyName="Powershell 3" Hash="46936F4F0AFE4C87D2E55595F74DDDFFC9AD94EE" />
    <Deny ID="ID_DENY_D_4" FriendlyName="Powershell 4" Hash="5090F22BB9C0B168C7F5E9E800784A05AFCCBC4F" />
    <Deny ID="ID_DENY_D_5" FriendlyName="Powershell 5" Hash="A920D0706FCEA648D28638E9198BCC368996B8FD" />
    <Deny ID="ID_DENY_D_6" FriendlyName="Powershell 6" Hash="93E22F2BA6C8B1C09F100F9C0E3B06FAF2D1DDB6" />
    <Deny ID="ID_DENY_D_7" FriendlyName="Powershell 7" Hash="943E307BE7B0B381715CA5CC0FAB7B558025BA80" />
    <Deny ID="ID_DENY_D_8" FriendlyName="Powershell 8" Hash="DE6A02520E1D7325025F2761A97D36E407E8490C" />
    <Deny ID="ID_DENY_D_9" FriendlyName="Powershell 9" Hash="CC968868EDC6718DA14DDDB11228A04D5D5BD9A5" />
    <Deny ID="ID_DENY_D_10" FriendlyName="Powershell 10" Hash="789D0657689DB6F0900A787BEF52A449585A92B5" />
    <Deny ID="ID_DENY_D_11" FriendlyName="Powershell 11" Hash="F29A958287788A6EEDE6035D49EF5CB85EEC40D214FDDE5A0C6CAA65AFC00EEC" />
    <Deny ID="ID_DENY_D_12" FriendlyName="Powershell 12" Hash="84BB081141DA50B3839CD275FF34854F53AECB96CA9AEB8BCD24355C33C1E73E" />
    <Deny ID="ID_DENY_D_13" FriendlyName="Powershell 13" Hash="8D396FEAEED1F0CA709B62B1F27EDC9CCEFF95E3473C923624362A042E91D787" />
    <Deny ID="ID_DENY_D_14" FriendlyName="Powershell 14" Hash="7BF44433D3A606104778F64B11B92C52FC99C4BA570C50B70438275D0B587B8E" />
    <Deny ID="ID_DENY_D_15" FriendlyName="Powershell 15" Hash="6B3CB996EC5129D345830C3D6D5C7C009372FFD9F08837E8B2572AB31E9648A5" />
    <Deny ID="ID_DENY_D_16" FriendlyName="Powershell 16" Hash="C3A5DAB20947CA8FD092E75C25177E7BAE7884CA58710F14827144C09EA1F94B" />
    <Deny ID="ID_DENY_D_17" FriendlyName="Powershell 17" Hash="BE3FFE10CDE8B62C3E8FD4D8198F272B6BD15364A33362BB07A0AFF6731DABA1" />
    <Deny ID="ID_DENY_D_18" FriendlyName="Powershell 18" Hash="75288A0CF0806A68D8DA721538E64038D755BBE74B52F4B63FEE5049AE868AC0" />
    <Deny ID="ID_DENY_D_19" FriendlyName="Powershell 19" Hash="F875E43E12685ECE0BA2D42D55A13798CE9F1FFDE3CAE253D2529F4304811A52" />
    <Deny ID="ID_DENY_D_20" FriendlyName="Powershell 20" Hash="6D89FDD29D50C07801FB01F031CDB96E2E14288F066BD895356AE0517ABB09CE" />
    <Deny ID="ID_DENY_D_21" FriendlyName="Powershell 21" Hash="326669C4A31E2049E3750BCF4287241BB8B555B3670D31A1ACA74C3AC598DF81" />
    <Deny ID="ID_DENY_D_22" FriendlyName="Powershell 22" Hash="38DC1956313B160696A172074C6F5DA9852BF508F55AFB7FA079B98F2849AFB5" />
    <Deny ID="ID_DENY_D_23" FriendlyName="Powershell 23" Hash="C6C073A80A8E76DC13E724B5E66FE4035A19CCA0C1AF3FABBC18E5185D1B66CB" />
    <Deny ID="ID_DENY_D_24" FriendlyName="Powershell 24" Hash="9EA4BD3D8FB8F490E8099E0412F091E545AF028E3C4CAF179324B679124D1742" />
    <Deny ID="ID_DENY_D_25" FriendlyName="Powershell 25" Hash="CD83C3C293EC4D24D3328C74881FA04AAF9CCF73E099631A9EB100BD0F384F58" />
    <Deny ID="ID_DENY_D_26" FriendlyName="Powershell 26" Hash="74E207F539C4EAC648A5507EB158AEE9F6EA401E51808E83E73709CFA0820FDD" />
    <Deny ID="ID_DENY_D_27" FriendlyName="Powershell 27" Hash="148972F670E18790D62D753E01ED8D22B351A57E45544D88ACE380FEDAF24A40" />
    <Deny ID="ID_DENY_D_28" FriendlyName="Powershell 28" Hash="72E4EC687CFE357F3E681A7500B6FF009717A2E9538956908D3B52B9C865C189" />
    <Deny ID="ID_DENY_D_29" FriendlyName="Powershell 29" Hash="F16E605B55774CDFFDB0EB99FAFF43A40622ED2AB1C011D1195878F4B20030BC" />
    <Deny ID="ID_DENY_D_30" FriendlyName="Powershell 30" Hash="BD3139CE7553AC7003C96304F08EAEC2CDB2CC6A869D36D6F1E478DA02D3AA16" />
    <Deny ID="ID_DENY_D_31" FriendlyName="Powershell 31" Hash="71FC552E66327EDAA72D72C362846BD80CB65EECFAE95C4D790C9A2330D95EE6" />
    <Deny ID="ID_DENY_D_32" FriendlyName="Powershell 32" Hash="A1D1AF7675C2596D0DF977F57B54372298A56EE0F3E1FF2D974D387D7F69DD4E" />
    <Deny ID="ID_DENY_D_33" FriendlyName="Powershell 33" Hash="0D905709AB1174F8E12A063F259A52DABE85CAEB8018985F5411F1CE9C6C99C3" />
    <Deny ID="ID_DENY_D_34" FriendlyName="Powershell 34" Hash="939C291D4A2592209EC7664EC832670FA0AC1009F974F47489D866751F4B862F" />
  </FileRules>
  <!--Signers-->
  <Signers />
  <!--Driver Signing Scenarios-->
  <SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DRIVERS_1" FriendlyName="Driver Signing Scenarios">
      <ProductSigners>
        <FileRulesRef>
          <FileRuleRef RuleID="ID_DENY_KD" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
    <SigningScenario Value="12" ID="ID_SIGNINGSCENARIO_WINDOWS" FriendlyName="User Mode Signing Scenarios">
      <ProductSigners>
        <FileRulesRef>
          <FileRuleRef RuleID="ID_DENY_BGINFO"/>
          <FileRuleRef RuleID="ID_DENY_CBD"/>
          <FileRuleRef RuleID="ID_DENY_KD"/>
          <FileRuleRef RuleID="ID_DENY_WINDBG"/>
          <FileRuleRef RuleID="ID_DENY_MSBUILD"/>
          <FileRuleRef RuleID="ID_DENY_CSI"/>
          <FileRuleRef RuleID="ID_DENY_DNX"/>
          <FileRuleRef RuleID="ID_DENY_RCSI"/>
          <FileRuleRef RuleID="ID_DENY_NTSD"/>
          <FileRuleRef RuleID="ID_DENY_LXSS"/>
          <FileRuleRef RuleID="ID_DENY_BASH"/>
          <FileRuleRef RuleID="ID_DENY_FSI"/>
          <FileRuleRef RuleID="ID_DENY_MSHTA"/>
          <FileRuleRef RuleID="ID_DENY_SMA"/>
          <FileRuleRef RuleID="ID_DENY_D_1" />
          <FileRuleRef RuleID="ID_DENY_D_2" />
          <FileRuleRef RuleID="ID_DENY_D_3" />
          <FileRuleRef RuleID="ID_DENY_D_4" />
          <FileRuleRef RuleID="ID_DENY_D_5" />
          <FileRuleRef RuleID="ID_DENY_D_6" />
          <FileRuleRef RuleID="ID_DENY_D_7" />
          <FileRuleRef RuleID="ID_DENY_D_8" />
          <FileRuleRef RuleID="ID_DENY_D_9" />
          <FileRuleRef RuleID="ID_DENY_D_10" />
          <FileRuleRef RuleID="ID_DENY_D_11" />
          <FileRuleRef RuleID="ID_DENY_D_12" />
          <FileRuleRef RuleID="ID_DENY_D_13" />
          <FileRuleRef RuleID="ID_DENY_D_14" />
          <FileRuleRef RuleID="ID_DENY_D_15" />
          <FileRuleRef RuleID="ID_DENY_D_16" />
          <FileRuleRef RuleID="ID_DENY_D_17" />
          <FileRuleRef RuleID="ID_DENY_D_18" />
          <FileRuleRef RuleID="ID_DENY_D_19" />
          <FileRuleRef RuleID="ID_DENY_D_20" />
          <FileRuleRef RuleID="ID_DENY_D_21" />
          <FileRuleRef RuleID="ID_DENY_D_22" />
          <FileRuleRef RuleID="ID_DENY_D_23" />
          <FileRuleRef RuleID="ID_DENY_D_24" />
          <FileRuleRef RuleID="ID_DENY_D_25" />
          <FileRuleRef RuleID="ID_DENY_D_26" />
          <FileRuleRef RuleID="ID_DENY_D_27" />
          <FileRuleRef RuleID="ID_DENY_D_28" />
          <FileRuleRef RuleID="ID_DENY_D_29" />
          <FileRuleRef RuleID="ID_DENY_D_30" />
          <FileRuleRef RuleID="ID_DENY_D_31" />
          <FileRuleRef RuleID="ID_DENY_D_32" />
          <FileRuleRef RuleID="ID_DENY_D_33" />
          <FileRuleRef RuleID="ID_DENY_D_34" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
  </SigningScenarios>
  <UpdatePolicySigners />
  <CiSigners />
  <HvciOptions>0</HvciOptions>
</SiPolicy>

```
<br />

To create a code integrity policy, copy each of the following commands into an elevated Windows PowerShell session, in order:

1.  Initialize variables that you will use. The following example commands use **InitialScan.xml** and **DeviceGuardPolicy.bin** for the names of the files that will be created:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"`

2.  Use [New-CIPolicy](https://technet.microsoft.com/library/mt634473.aspx) to create a new code integrity policy by scanning the system for installed applications:

    ` New-CIPolicy -Level PcaCertificate -FilePath $InitialCIPolicy –UserPEs 3> CIPolicyLog.txt `

    > [!Notes] 
    
    > - When you specify the **-UserPEs** parameter (to include user mode executables in the scan), rule option **0 Enabled:UMCI** is automatically added to the code integrity policy. In contrast, if you do not specify **-UserPEs**, the policy will be empty of user mode executables and will only have rules for kernel mode binaries like drivers, in other words, the whitelist will not include applications. If you create such a policy and later add rule option **0 Enabled:UMCI**, all attempts to start applications will cause a response from Device Guard. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application. 
    
    > - You can add the **-Fallback** parameter to catch any applications not discovered using the primary file rule level specified by the **-Level** parameter. For more information about file rule level options, see [Code integrity file rule levels](deploy-code-integrity-policies-policy-rules-and-file-rules.md#code-integrity-file-rule-levels) in “Deploy code integrity policies: policy rules and file rules.”

    > - To specify that the code integrity policy scan only a specific drive, include the **-ScanPath** parameter followed by a path. Without this parameter, the entire system is scanned.
    
    > - The preceding example includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

3.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the code integrity policy to a binary format:

    ` ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin`

After you complete these steps, the Device Guard binary file (DeviceGuardPolicy.bin) and original .xml file (IntialScan.xml) will be available on your desktop. You can use the binary version as a code integrity policy or sign it for additional security.

> [!Note] 
> We recommend that you keep the original .xml file of the policy for use when you need to merge the code integrity policy with another policy or update its rule options. Alternatively, you would have to create a new policy from a new scan for servicing. For more information about how to merge code integrity policies, see [Merge code integrity policies](#merge-code-integrity-policies).

We recommend that every code integrity policy be run in audit mode before being enforced. Doing so allows administrators to discover any issues with the policy without receiving error message dialog boxes. For information about how to audit a code integrity policy, see the next section, [Audit code integrity policies](#audit-code-integrity-policies).

## Audit code integrity policies

When code integrity policies are run in audit mode, it allows administrators to discover any applications that were missed during an initial policy scan and to identify any new applications that have been installed and run since the original policy was created. While a code integrity policy is running in audit mode, any binary that runs and would have been denied had the policy been enforced is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log. When these logged binaries have been validated, they can easily be added to a new code integrity policy. When the new exception policy is created, you can merge it with your existing code integrity policies.

> [!Note] 
> Before you begin this process, you need to create a code integrity policy binary file. If you have not already done so, see [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer), earlier in this topic, for a step-by-step walkthrough of the process to create a code integrity policy and convert it to binary format.

**To audit a code integrity policy with local policy:**

1.  Find a *.bin policy file that you have created, for example, the DeviceGuardPolicy.bin file that resulted from the steps in the earlier section, [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer). Copy the file to C:\\Windows\\System32\\CodeIntegrity.

2.  On the computer you want to run in audit mode, open the Local Group Policy Editor by running **GPEdit.msc**.

    > [!Note]
    
    > - The computer that you will run in audit mode must be clean of viruses or malware. Otherwise, in the process that you follow after auditing the system, you might unintentionally merge in a code integrity policy that allows viruses or malware to run.
    
    > - An alternative method to test a policy is to rename the test file to SIPolicy.p7b and drop it into C:\\Windows\\System32\\CodeIntegrity, rather than deploy it by using the Local Group Policy Editor.
    
3.  Navigate to **Computer Configuration\\Administrative Templates\\System\\Device Guard**, and then select **Deploy Code Integrity Policy**. Enable this setting by using the appropriate file path, for example, C:\\Windows\\System32\\CodeIntegrity\\DeviceGuardPolicy.bin, as shown in Figure 1.

    > [!Note]
    
    > - The illustration shows the example file name *DeviceGuardPolicy.bin* because this name was used earlier in this topic, in [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer). Also, this policy file does not need to be copied to every system. You can instead copy the code integrity policies to a file share to which all computer accounts have access.

    > - Any policy you select here is converted to SIPolicy.p7b when it is deployed to the individual computers.

    > - You might have noticed that the GPO setting references a .p7b file and this policy uses a .bin file. Regardless of the type of policy you deploy (.bin, .p7b, or .p7), they are all converted to SIPolicy.p7b when dropped onto the computers running Windows 10. We recommend that you make your code integrity policy names friendly and allow the system to convert the policy names for you. By doing this, it ensures that the policies are easily distinguishable when viewed in a share or any other central repository.

   ![Group Policy called Deploy Code Integrity Policy](images/dg-fig22-deploycode.png)

   Figure 1. Deploy your code integrity policy

4.  Restart the reference system for the code integrity policy to take effect.

5.  Use the system as you normally would, and monitor code integrity events in the event log. While in audit mode, any exception to the deployed code integrity policy will be logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log, as shown in Figure 2.

   ![Event showing exception to code integrity policy](images/dg-fig23-exceptionstocode.png)

   Figure 2. Exceptions to the deployed code integrity policy

   You will be reviewing the exceptions that appear in the event log, and making a list of any applications that should be allowed to run in your environment.
   
6. If you want to create a catalog file to simplify the process of including unsigned LOB applications in your code integrity policy, this is a good time to create it. For information, see [Deploy catalog files to support code integrity policies](deploy-catalog-files-to-support-code-integrity-policies.md).   

Now that you have a code integrity policy deployed in audit mode, you can capture any audit information that appears in the event log. This is described in the next section.

## Create a code integrity policy that captures audit information from the event log

Use the following procedure after you have been running a computer with a code integrity policy in audit mode for a period of time. When you are ready to capture the needed policy information from the event log (so that you can later merge that information into the original code integrity policy), complete the following steps. 

<!-- Watch the phrase "later step in this procedure" in step 1, in case the organization of the procedures changes. -->

1.  Review the audit information in the event log. From the code integrity policy exceptions that you see, make a list of any applications that should be allowed to run in your environment, and decide on the file rule level that should be used to trust these applications.

    Although the Hash file rule level will catch all of these exceptions, it may not be the best way to trust all of them. For information about file rule levels, see [Code integrity file rule levels](deploy-code-integrity-policies-policy-rules-and-file-rules.md#code-integrity-file-rule-levels) in "Deploy code integrity policies: policy rules and file rules."
    
    Your event log might also contain exceptions for applications that you eventually want your code integrity policy to block. If these appear, make a list of these also, for a later step in this procedure.

2.  In an elevated Windows PowerShell session, initialize the variables that will be used. The example filename shown here is **DeviceGuardAuditPolicy.xml**:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $CIAuditPolicy=$CIPolicyPath+"DeviceGuardAuditPolicy.xml"`

3.  Use [New-CIPolicy](https://technet.microsoft.com/library/mt634473.aspx) to generate a new code integrity policy from logged audit events. This example uses a file rule level of **Hash** and includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

    ` New-CIPolicy -Audit -Level Hash -FilePath $CIAuditPolicy –UserPEs 3> CIPolicylog.txt`

  > [!Note] 
  > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **Hash** rule level, which is the most specific. Any change to the file (such as replacing the file with a newer version of the same file) will change the Hash value, and require an update to the policy.

4.  Find and review the Device Guard audit policy .xml file that you created. If you used the example variables as shown, the filename will be **DeviceGuardAuditPolicy.xml**, and it will be on your desktop. Look for the following:

    - Any applications that were caught as exceptions, but should be allowed to run in your environment. These are applications that should be in the .xml file. Leave these as-is in the file.
    
    - Any applications that actually should not be allowed to run in your environment. Edit these out of the .xml file. If they remain in the .xml file, and the information in the file is merged into your existing code integrity policy, the policy will treat the applications as trusted, and allow them to run. 

You can now use this file to update the existing code integrity policy that you ran in audit mode by merging the two policies. For instructions on how to merge this audit policy with the existing code integrity policy, see the next section, [Merge code integrity policies](#merge-code-integrity-policies).

> [!Note] 
> You may have noticed that you did not generate a binary version of this policy as you did in [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer). This is because code integrity policies created from an audit log are not intended to run as stand-alone policies but rather to update existing code integrity policies.

## <a href="" id="plug-ins"></a>Use a code integrity policy to control specific plug-ins, add-ins, and modules

As of Windows 10, version 1703, you can use code integrity policies not only to control applications, but also to control whether specific plug-ins, add-ins, and modules can run from specific apps (such as a line-of-business application or a browser):

| Approach (as of Windows 10, version 1703) | Guideline |
|---|---|
| You can work from a list of plug-ins, add-ins, or modules that you want only a specific application to be able to run. Other applications would be blocked from running them. | Use `New-CIPolicyRule` with the `-AppID` option. |
| In addition, you can work  from a list of plug-ins, add-ins, or modules that you want to block in a specific application. Other applications would be allowed to run them. | Use `New-CIPolicyRule` with the `-AppID` and `-Deny` options. |

To work with these options, the typical method is to create a policy that only affects plug-ins, add-ins, and modules, then merge it into your ‘master’ policy (merging is described in the next section).

For example, to create a code integrity policy that allows **addin1.dll** and **addin2.dll** to run in **ERP1.exe**, your organization’s enterprise resource planning (ERP) application, but blocks those add-ins in other applications, run the following commands. Note that in the second command, **+=** is used to add a second rule to the **$rule** variable:

```
$rule = New-CIPolicyRule -DriverFilePath '.\temp\addin1.dll' -Level FileName -AppID '.\ERP1.exe'
$rule += New-CIPolicyRule -DriverFilePath '.\temp\addin2.dll' -Level FileName -AppID '.\ERP1.exe'
New-CIPolicy -Rules $rule -FilePath ".\AllowERPAddins.xml" -UserPEs
```

As another example, to create a code integrity policy that blocks **addin3.dll** from running in Microsoft Word, run the following command. You must include the `-Deny` option to block the specified add-ins in the specifed application:

```
$rule = New-CIPolicyRule -DriverFilePath '.\temp\addin3.dll' -Level FileName -Deny -AppID '.\winword.exe'
New-CIPolicy -Rules $rule -FilePath ".\BlockAddins.xml" -UserPEs
```

## Merge code integrity policies

When you develop code integrity policies, you will occasionally need to merge two policies. A common example is when a code integrity policy is initially created and audited. Another example is when you create a single master policy by using multiple code integrity policies previously created from golden computers. Because each computer running Windows 10 can have only one code integrity policy, it is important to properly maintain these policies. In this example, audit events have been saved into a secondary code integrity policy that you then merge with the initial code integrity policy.

> [!Note] 
> The following example uses several of the code integrity policy .xml files that you created in earlier sections in this topic. You can follow this process, however, with any two code integrity policies you would like to combine.

To merge two code integrity policies, complete the following steps in an elevated Windows PowerShell session:

1.  Initialize the variables that will be used:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

    ` $AuditCIPolicy=$CIPolicyPath+"DeviceGuardAuditPolicy.xml"`

    ` $MergedCIPolicy=$CIPolicyPath+"MergedPolicy.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"NewDeviceGuardPolicy.bin"`

  > [!Note] 
  > The variables in this section specifically expect to find an initial policy on your desktop called **InitialScan.xml** and an audit code integrity policy called **DeviceGuardAuditPolicy.xml**. If you want to merge other code integrity policies, update the variables accordingly.

2.  Use [Merge-CIPolicy](https://technet.microsoft.com/library/mt634485.aspx) to merge two policies and create a new code integrity policy:

    ` Merge-CIPolicy -PolicyPaths $InitialCIPolicy,$AuditCIPolicy -OutputFilePath $MergedCIPolicy`

3.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the merged code integrity policy to binary format:

    ` ConvertFrom-CIPolicy $MergedCIPolicy $CIPolicyBin `

Now that you have created a new code integrity policy (for example, called **NewDeviceGuardPolicy.bin**), you can deploy the policy to systems manually or by using Group Policy or Microsoft client management solutions. For information about how to deploy this new policy with Group Policy, see the [Deploy and manage code integrity policies with Group Policy](#deploy-and-manage-code-integrity-policies-with-group-policy) section.

## Enforce code integrity policies

Every code integrity policy is created with audit mode enabled. After you have successfully deployed and tested a code integrity policy in audit mode and are ready to test the policy in enforced mode, complete the following steps in an elevated Windows PowerShell session:

> [!Note] 
> Every code integrity policy should be tested in audit mode first. For information about how to audit code integrity policies, see [Audit code integrity policies](#audit-code-integrity-policies), earlier in this topic.

1.  Initialize the variables that will be used:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml" `

    ` $EnforcedCIPolicy=$CIPolicyPath+"EnforcedPolicy.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"EnforcedDeviceGuardPolicy.bin"`

    > [!Note] 
    > The initial code integrity policy that this section refers to was created in the [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer) section. If you are using a different code integrity policy, update the **CIPolicyPath** and **InitialCIPolicy** variables.

2. Ensure that rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”) are set the way that you intend for this policy. We strongly recommend that you enable these rule options before you run any enforced policy for the first time. Enabling these options provides administrators with a pre-boot command prompt, and allows Windows to start even if the code integrity policy blocks a kernel-mode driver from running. When ready for enterprise deployment, you can remove these options.

    To ensure that these options are enabled in a policy, use [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) as shown in the following commands. You can run these commands even if you're not sure whether options 9 and 10 are already enabled—if so, the commands have no effect.
    
    ` Set-RuleOption -FilePath $InitialCIPolicy -Option 9`
    
    ` Set-RuleOption -FilePath $InitialCIPolicy -Option 10`

3.  Copy the initial file to maintain an original copy:

    ` copy $InitialCIPolicy $EnforcedCIPolicy`

4.  Use [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) to delete the audit mode rule option:

    ` Set-RuleOption -FilePath $EnforcedCIPolicy -Option 3 -Delete`

  > [!Note] 
  > To enforce a code integrity policy, you delete option 3, the **Audit Mode Enabled** option. There is no “enforced” option that can be placed in a code integrity policy.

5.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the new code integrity policy to binary format:

    ` ConvertFrom-CIPolicy $EnforcedCIPolicy $CIPolicyBin`

Now that this policy is in enforced mode, you can deploy it to your test computers. Rename the policy to SIPolicy.p7b and copy it to C:\\Windows\\System32\\CodeIntegrity for testing, or deploy the policy through Group Policy by following the instructions in [Deploy and manage code integrity policies with Group Policy](#deploy-and-manage-code-integrity-policies-with-group-policy). You can also use other client management software to deploy and manage the policy.

## Signing code integrity policies with SignTool.exe

Signed code integrity policies give organizations the highest level of malware protection available in Windows 10. In addition to their enforced policy rules, signed policies cannot be modified or deleted by a user or administrator on the computer. These policies are designed to prevent administrative tampering and kernel mode exploit access. With this in mind, it is much more difficult to remove signed code integrity policies than unsigned ones. Before you sign and deploy a signed code integrity policy, we recommend that you audit the policy to discover any blocked applications that should be allowed to run. For more information about how to audit code integrity policies, see the [Audit code integrity policies](#audit-code-integrity-policies) section.

Signing code integrity policies by using an on-premises CA-generated certificate or a purchased code signing certificate is straightforward. If you do not currently have a code signing certificate exported in .pfx format (containing private keys, extensions, and root certificates), see [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md) to create one with your on-premises CA. 

Before signing code integrity policies for the first time, be sure to enable rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”) to leave troubleshooting options available to administrators. To ensure that a rule option is enabled, you can run a command such as `Set-RuleOption -FilePath <PathAndFilename> -Option 9` even if you're not sure whether the option is already enabled—if so, the command has no effect. When validated and ready for enterprise deployment, you can remove these options. For more information about rule options, see [Code integrity policy rules](deploy-code-integrity-policies-policy-rules-and-file-rules.md#code-integrity-policy-rules) in "Deploy code integrity policies: policy rules and file rules."

> [!Note] 
> Signing code integrity policies is the last step in a code integrity deployment. It is much more difficult to remove a signed code integrity policy than an unsigned one. Before you deploy a signed code integrity policy to deployed client computers, be sure to test its effect on a subset of computers.

To sign a code integrity policy with SignTool.exe, you need the following components:

-   SignTool.exe, found in the Windows SDK (Windows 7 or later)

-   The binary format of the code integrity policy that you generated in the [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer) section or another code integrity policy that you have created

-   An internal CA code signing certificate or a purchased code signing certificate

If you do not have a code signing certificate, see the [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md) section for instructions on how to create one. If you use an alternate certificate or code integrity policy, be sure to update the following steps with the appropriate variables and certificate so that the commands will function properly. To sign the existing code integrity policy, copy each of the following commands into an elevated Windows PowerShell session:

1.  Initialize the variables that will be used:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`
    
    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`
    
    ` $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"`

   > [!Note] 
   > This example uses the code integrity policy that you created in the [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer) section. If you are signing another policy, be sure to update the **$CIPolicyPath** and **$CIPolicyBin** variables with the correct information.

2.  Import the .pfx code signing certificate. Import the code signing certificate that you will use to sign the code integrity policy into the signing user’s personal store on the computer that will be doing the signing. In this example, you use the certificate that was created in [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md).

3.  Export the .cer code signing certificate. After the code signing certificate has been imported, export the .cer version to your desktop. This version will be added to the policy so that it can be updated later.

4.  Navigate to your desktop as the working directory:

    ` cd $env:USERPROFILE\Desktop `

5.  Use [Add-SignerRule](https://technet.microsoft.com/library/mt634479.aspx) to add an update signer certificate to the code integrity policy:

    ` Add-SignerRule -FilePath $InitialCIPolicy -CertificatePath <Path to exported .cer certificate> -Kernel -User –Update`

   > [!Note] 
   > *&lt;Path to exported .cer certificate&gt;* should be  the full path to the certificate that you exported in   step 3.
    Also, adding update signers is crucial to being able to modify or disable this policy in the future. For more information about how to disable signed code integrity policies, see the [Disable signed code integrity policies within Windows](#disable-signed-code-integrity-policies-within-windows) section.

6.  Use [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) to remove the unsigned policy rule option:

    ` Set-RuleOption -FilePath $InitialCIPolicy -Option 6 -Delete`

7.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the policy to binary format:

    ` ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin`

8.  Sign the code integrity policy by using SignTool.exe:

    ` <Path to signtool.exe> sign -v /n "ContosoDGSigningCert" -p7 . -p7co 1.3.6.1.4.1.311.79.1 -fd sha256 $CIPolicyBin`

   > [!Note] 
   > The *&lt;Path to signtool.exe&gt;* variable should be the full path to the SignTool.exe utility. **ContosoDGSigningCert** is the subject name of the certificate that will be used to sign the code integrity policy. You should import this certificate to your personal certificate store on the computer you use to sign the policy.

9.  Validate the signed file. When complete, the commands should output a signed policy file called DeviceGuardPolicy.bin.p7 to your desktop. You can deploy this file the same way you deploy an enforced or non-enforced policy. For information about how to deploy code integrity policies, see [Deploy and manage code integrity policies with Group Policy](#deploy-and-manage-code-integrity-policies-with-group-policy).

## Disable unsigned code integrity policies

There may come a time when an administrator wants to disable a code integrity policy. For unsigned code integrity policies, this process is simple. Depending on how the code integrity policy was deployed, unsigned policies can be disabled in one of two ways. If a code integrity policy was manually enabled and copied to the code integrity folder location, simply delete the file and restart the computer. The following locations can contain executing code integrity policies:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\

If the code integrity policy was deployed by using Group Policy, the GPO that is currently enabling and deploying the policy must be set to disabled. Then, the code integrity policy will be disabled on the next computer restart.

## Disable signed code integrity policies within Windows

Signed policies protect Windows from administrative manipulation as well as malware that has gained administrative-level access to the system. For this reason, signed code integrity policies are intentionally more difficult to remove than unsigned policies. They inherently protect themselves from modification or removal and therefore are difficult even for administrators to remove successfully. If the signed code integrity policy is manually enabled and copied to the CodeIntegrity folder, to remove the policy, you must complete the following steps.

> [!Note] 
> For reference, signed code integrity policies should be replaced and removed from the following locations:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\


1.  Replace the existing policy with another signed policy that has the **6 Enabled: Unsigned System Integrity Policy** rule option enabled.

    > **Note**&nbsp;&nbsp;To take effect, this policy must be signed with a certificate previously added to the **UpdatePolicySigners** section of the original signed policy you want to replace.

2.  Restart the client computer.

3.  Verify that the new signed policy exists on the client.

    > **Note**&nbsp;&nbsp;If the signed policy that contains rule option 6 has not been processed on the client, the addition of an unsigned policy may cause boot failures.

4.  Delete the new policy.

5.  Restart the client computer.

If the signed code integrity policy has been deployed using by using Group Policy, you must complete the following steps:

1.  Replace the existing policy in the GPO with another signed policy that has the **6 Enabled: Unsigned System Integrity Policy** rule option enabled.

    > **Note**&nbsp;&nbsp;To take effect, this policy must be signed with a certificate previously added to the **UpdatePolicySigners** section of the original signed policy you want to replace.

2.  Restart the client computer.

3.  Verify that the new signed policy exists on the client.

    > **Note**&nbsp;&nbsp;If the signed policy that contains rule option 6 has not been processed on the client, the addition of an unsigned policy may cause boot failures.

4.  Set the GPO to disabled.

5.  Delete the new policy.

6.  Restart the client computer.

## Disable signed code integrity policies within the BIOS

There may be a time when signed code integrity policies cause a boot failure. Because code integrity policies enforce kernel mode drivers, it is important that they be thoroughly tested on each software and hardware configuration before being enforced and signed. Signed code integrity policies are validated in the pre-boot sequence by using Secure Boot. When you disable the Secure Boot feature in the BIOS, and then delete the file from the following locations on the operating system disk, it allows the system to boot into Windows:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\

## Deploy and manage code integrity policies with Group Policy

Code integrity policies can easily be deployed and managed with Group Policy. A Device Guard administrative template will be available in Windows Server 2016 that allows you to simplify deployment of Device Guard hardware-based security features and code integrity policies. The following procedure walks you through how to deploy a code integrity policy called **DeviceGuardPolicy.bin** to a test OU called *DG Enabled PCs* by using a GPO called **Contoso GPO Test**.

> [!Note] 
> This walkthrough requires that you have previously created a code integrity policy and have a computer running Windows 10 on which to test a Group Policy deployment. For more information about how to create a code integrity policy, see [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer), earlier in this topic.

> [!Note] 
> Signed code integrity policies can cause boot failures when deployed. We recommend that signed code integrity policies be thoroughly tested on each hardware platform before enterprise deployment.

To deploy and manage a code integrity policy with Group Policy:

1.  On a domain controller on a client computer on which RSAT is installed, open the GPMC by running **GPMC.MSC** or searching for “Group Policy Management” in Windows Search.

2.  Create a new GPO: right-click an OU, for example, the **DG Enabled PCs OU**, and then click **Create a GPO in this domain, and Link it here**, as shown in Figure 3.

    > **Note**&nbsp;&nbsp;You can use any OU name. Also, security group filtering is an option when you consider different ways of combining code integrity policies (or keeping them separate), as discussed in [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

   ![Group Policy Management, create a GPO](images/dg-fig24-creategpo.png)

   Figure 3. Create a GPO

3.  Name new GPO **Contoso GPO Test**. This example uses Contoso GPO Test as the name of the GPO. You can choose any name that you prefer for this example.

4.  Open the Group Policy Management Editor: right-click the new GPO, and then click **Edit**.

5.  In the selected GPO, navigate to Computer Configuration\\Administrative Templates\\System\\Device Guard. Right-click **Deploy Code Integrity Policy** and then click **Edit**.

    ![Edit the group policy for code integrity](images/dg-fig25-editcode.png)

    Figure 4. Edit the group policy for code integrity

6.  In the **Display Code Integrity Policy** dialog box, select the **Enabled** option, and then specify the code integrity policy deployment path.

   In this policy setting, you specify either the local path in which the policy will exist on the client computer or a Universal Naming Convention (UNC) path that the client computers will look to retrieve the latest version of the policy. For example, with DeviceGuardPolicy.bin on the test computer, the example file path would be C:\\Windows\\System32\\CodeIntegrity\\DeviceGuardPolicy.bin, as shown in Figure 5.

  > [!Note] 
  > The illustration shows the example file name *DeviceGuardPolicy.bin* because this name was used earlier in this topic, in [Create a code integrity policy from a golden computer](#create-a-code-integrity-policy-from-a-golden-computer). Also, this policy file does not need to be copied to every computer. You can instead copy the code integrity policies to a file share to which all computer accounts have access. Any policy selected here is converted to SIPolicy.p7b when it is deployed to the individual client computers.

   ![Group Policy called Deploy Code Integrity Policy](images/dg-fig26-enablecode.png)

   Figure 5. Enable the code integrity policy

   > [!Note] 
   > You may have noticed that the GPO setting references a .p7b file and this example uses a .bin file for the policy. Regardless of the type of policy you deploy (.bin, .p7b, or .p7), they are all converted to SIPolicy.p7b when dropped on the client computer running Windows 10. Make your code integrity policies friendly and allow the system to convert the policy names for you to ensure that the policies are easily distinguishable when viewed in a share or any other central repository.

7.  Close the Group Policy Management Editor, and then restart the Windows 10 test computer. Restarting the computer updates the code integrity policy. For information about how to audit code integrity policies, see the [Audit code integrity policies](#audit-code-integrity-policies) section.

## Related topics

[Introduction to Device Guard: virtualization-based security and code integrity policies](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md)

[Deploy Device Guard: enable virtualization-based security](deploy-device-guard-enable-virtualization-based-security.md)

