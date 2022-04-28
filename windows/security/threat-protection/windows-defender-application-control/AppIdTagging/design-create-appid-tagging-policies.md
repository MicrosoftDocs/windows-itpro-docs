---
title: Use multiple Windows Defender Application Control Policies  (Windows)
description: Windows Defender Application Control supports multiple code integrity policies for one device.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: jsuther1974
ms.author: dansimp
manager: dansimp
ms.date: 04/27/2022
ms.technology: windows-sec
---

# Creating your WDAC AppId Tagging Policies

**Applies to:**

-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

## Create the policy using the WDAC Wizard

Using this method, you will use a hybrid of the WDAC Wizard and the WDAC PowerShell commands to create an application control policy and convert it to an AppIdTagging policy. The WDAC Wizard is available for download at the [These PowerShell commands are only available on the supported platforms listed in [AppId Tagging Guide](./windows-defender-application-control-appid-tagging-guide.md).

1. Create a new base policy using the templates:

	Start with the Policy Creator task and select Multiple Policy Format and Base Policy. Select the Base Template to use for the policy. Our recommendation is to start with [Default Windows Mode](../wdac-wizard-create-base-policy#template-base-policies) and build ontop of these rules. 

	![Configuring the policy base and template.](images/appid-wdac-wizard-1.png)

2. Set the rule-options on the policy: 

	Set the following rule-options using the Wizard toggles:

	![Configuring the policy rule-options.](images/appid-wdac-wizard-2.png)

3. Create custom rules:

	Selecting the `+ Custom Rules` button will open the Custom Rules panel. The Wizard supports 5 types of file rules: 

	- Publisher rules: Create a rule based off the signing certificate heirarchy. Additionally, the original filename and version can be combined with the signing certificate for additional security. 
	- Path rules: Create a rule based off the path to a file or a parent folder path. Path rules support wildcards. 
	- File attribute rules: Create a rule based off a file's immutable properties like the original filename, file description, product name or internal name.
	- Package app name rules: Create a rule based off the package family name of an appx/msix.
	- Hash rules: Create a rule based off the PE Authenticode hash of a file. 


	For more information on creating new policy file rules, see the guidelines provided in the [creating policy file rules section](wdac-wizard-create-base-policy.md#creating-custom-file-rules).

4. Convert to AppId Tagging Policy:

	After the Wizard builds the policy file, open the file in a text editor and remove the entire SigningScenario block corresponding to "Value=131" (driver section) so that the only remaining signing scenario is "Value=12" or the usermode/application section. Next, open PowerShell in an elevated prompt and run the following command. Replace the AppIdTagging Key-Value pair for your scenario:

	```powershell
	Set-CIPolicyIdInfo -ResetPolicyID -FilePath .\AppIdPolicy.xml -AppIdTaggingPolicy -AppIdTaggingKey "MyKey" -AppIdTaggingValue "MyValue"
	```
	The policyID GUID will be returned by PowerShell if successful. 

5. Depending on your deployment method, convert the xml to binary: 

	```powershell
	Convertfrom-CIPolicy .\policy.xml ".\{PolicyIDGUID}.cip"
	```

6. Optionally, deploy it for local testing:

	```powershell
		copy ".\{Policy ID}.cip" c:\windows\system32\codeintegrity\CiPolicies\Active\
		./RefreshPolicy.exe
	```

## Create the policy using PowerShell 

Using this method, you will create an AppId Tagging policy directly using the WDAC PowerShell commands. These PowerShell commands are only available on the supported platforms listed in [AppId Tagging Guide](./windows-defender-application-control-appid-tagging-guide.md). In an elevate PowerShell instance:

1. Create an AppId rule for the policy based on a combination of the signing certificate chain and version of the application. This is the [SignedVersion Level](../select-types-of-rules-to-create#table-2-windows-defender-application-control-policy---file-rule-levels):

	```powershell
	$rule = New-CiPolicyRule -Level SignedVersion -DriverFilePath <path_to_application>
	```
2. Create the AppId Tagging Policy. Replace the AppIdTagging Key-Value pair for your scenario:

	```powershell
	New-CIPolicy -rules $rule -FilePath .\AppIdPolicy.xml -AppIdTaggingPolicy -AppIdTaggingKey "MyKey" -AppIdTaggingValue "MyValue"
	```
3. Set additional rule-options on the policy:

	```powershell
	Set-RuleOption -Option 0 .\AppIdPolicy.xml  # Usermode Code Integrity (UMCI)
	Set-RuleOption -Option 16 .\AppIdPolicy.xml # Refresh Policy no Reboot
	Set-RuleOption -Option 18 .\AppIdPolicy.xml # (Optional) Disable FilePath Rule Protection
	```

	If you are using filepath rules, you will likely want to set option 18. Otherwise, there is no need. 
	
4. Set the name and ID on the policy which is helpful for future debugging:

	```powershell
	Set-CIPolicyIdInfo -ResetPolicyId -PolicyName "MyPolicyName" -PolicyId "MyPolicyId"" -AppIdTaggingPolicy -FilePath ".\AppIdPolicy.xml"
	```
	The policyID GUID will be returned by PowerShell if successful. 

5. Depending on your deployment method, convert the xml to binary: 

	```powershell
	Convertfrom-CIPolicy .\policy.xml ".\{PolicyIDGUID}.cip"
	```

6. Optionally, deploy it for local testing:

	```powershell
		copy ".\{Policy ID}.cip" c:\windows\system32\codeintegrity\CiPolicies\Active\
		./RefreshPolicy.exe
	```
	RefreshPolicy.exe is available for download from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=102925).