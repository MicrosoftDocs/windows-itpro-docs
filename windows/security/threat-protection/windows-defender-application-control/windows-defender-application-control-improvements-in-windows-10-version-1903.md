---
title: Windows Defender Application Control improvements in Windows 10 version 1903 (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/06/2018
---

# Windows Defender Application Control improvements in Windows 10 version 1903 

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic covers improvements introduced in Windows 10, version 1903.

## Path-based rules

Beginning with Windows 10 version 1903, Windows Defender Application Control (WDAC) policies can contain path-based rules.

- New-CIPolicy parameters
  - FilePath: create path rules under path \<path to scan> for anything not user-writeable (at the individual file level)
    ```powershell
    New-CIPolicy -f .\mypolicy.xml -l FilePath -s <path to scan> -u
    ```
    Optionally, add -UserWriteablePaths to ignore user writeability

  - FilePathRule: create a rule where filepath string is directly set to value of \<any path string>
    ```powershell
    New-CIPolicyRule -FilePathRule <any path string>
    ```
    Useful for wildcards like C:\foo\\*

- Usage follows the same flow as per-app rules:
  ```powershell
  $rules = New-CIPolicyRule …
  $rules += New-CIPolicyRule …
  …
  New-CIPolicyRule -f .\mypolicy.xml -u
  ```

- Wildcards supported
  - Suffix (ex. C:\foo\\*) OR Prefix (ex. *\foo\bar.exe)
    - One or the other, not both at the same time
    - Does not support wildcard in the middle (ex. C:\\*\foo.exe)
  - Examples:
    - %WINDIR%\\...
    - %SYSTEM32%\\...
    - %OSDRIVE%\\...

- Disable default FilePath rule protection of enforcing user-writeability. For example, to add “Disabled:Runtime FilePath Rule Protection” to the policy:
  ```powershell
  Set-RuleOption -o 18 .\policy.xml
  ```

## Multiple Policies

Beginning with Windows 10 version 1903, WDAC supports multiple code integrity policies for one device. 

### Precedence

- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files that are allowed by the base policy or the supplemental policy are not blocked

### Newly Supported Scenarios

WDAC brings you the ability to support multiple CI policies. Three scenarios are now supported:

1.	Enforce and Audit Side-by-Side (Intersection)
    - To validate policy changes before deploying in enforcement mode, deploy an audit-mode base policy side-by-side with an existing enforcement-mode base policy
2.	Multiple Base Policies (Intersection)
    - Enforce two or more base policies simultaneously to allow simpler policy targeting for policies with different scope/intent
    - Ex. Base1 is a corporate standard policy that is relatively loose to accommodate all organizations while forcing minimum corp standards (e.g. Windows works + Managed Installer + path rules). Base2 is a team-specific policy that further restricts what is allowed to run (e.g. Windows works + Managed Installer + corporate signed apps only)
3.	Supplemental Policies (Union)
    - Deploy a supplemental policy (or policies) to expand a base policy
    - Ex. The Azure host base policy restricts tightly to just allow Windows and hardware drivers. Can add a supplemental policy to allow just the additional signer rules needed to support signed code from the Exchange team.

## COM Whitelisting

•	https://docs.microsoft.com/en-us/windows/desktop/com/the-component-object-model

Get GUID of application to allow by either:
- Finding block event in Event Viewer (Application and Service Logs > Microsoft > Windows > AppLocker > MSI and Script) and extracting GUID
- Creating audit policy (using New-CIPolicy –Audit), potentially with specific provider, and use info from block events to get GUID

### Author setting

Three elements:
- Provider: platform on which code is running (values are  Powershell, WSH, IE, VBA, MSI, or a wildcard “AllHostIds”)
- Key: GUID for the program you with to run, in the format Key="{33333333-4444-4444-1616-161616161616}"
- ValueName: needs to be set to "EnterpriseDefinedClsId"
One attribute:
- Value: needs to be “true” for allow and “false” for deny
  Note: without quotation marks
  Note: deny only works in base policies
- The setting needs to be placed in the order of ASCII values, first by Provider, then Key, then ValueName

### Examples

```xml
    <Setting Provider="AllHostIds" Key="AllKeys" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>true</Boolean>
      </Value>
    </Setting>
    <Setting Provider="IE" Key="{00000000-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>false</Boolean>
      </Value>
    </Setting>
    <Setting Provider="PowerShell" Key="{33333333-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>true</Boolean>
      </Value>
    </Setting>
```

## New PowerShell parameters

New-CIPolicy
- MultiplePolicyFormat: allows for multiple policies

```powershell
New-CIPolicy [-FilePath] <string> -Level {None | Hash | FileName | SignedVersion | Publisher | FilePublisher | LeafCertificate | PcaCertificate | RootCertificate | WHQL | WHQLPublisher | WHQLFilePublisher | PFN | FilePath}
   [-DriverFiles <DriverFile[]>] [-Fallback {None | Hash | FileName | SignedVersion | Publisher | FilePublisher | LeafCertificate | PcaCertificate | RootCertificate | WHQL | WHQLPublisher | WHQLFilePublisher | PFN | FilePath}]
   [-Audit] [-ScanPath <string>] [-ScriptFileNames] [-AllowFileNameFallbacks] [-SpecificFileNameLevel {None | OriginalFileName | InternalName | FileDescription | ProductName | PackageFamilyName | FilePath}] [-UserPEs] [-NoScript]
   [-Deny] [-NoShadowCopy] [-MultiplePolicyFormat] [-OmitPaths <string[]>] [-PathToCatroot <string>]  [<CommonParameters>] – to generate new policy format(base policy and policy type and policy guid)
```

Set-CIPolicyIdInfo
- **SupplementsBasePolicyID**: guid of new supplemental policy
- **BasePolicyToSupplementPath**: base policy that the supplemental policy applies to
- **ResetPolicyID**: reset the policy guids back to a random guid

```powershell
Set-CIPolicyIdInfo [-FilePath] <string> [-PolicyName <string>] [-SupplementsBasePolicyID <guid>] [-BasePolicyToSupplementPath <string>] [-ResetPolicyID] [-PolicyId <string>]  [<CommonParameters>]
```

Add-SignerRule
- **Supplemental**: provides supplemental signers

```powershell
Add-SignerRule -FilePath <string> -CertificatePath <string> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]  [<CommonParameters>] 
```

Set-RuleOption
- **Enabled:Allow Supplemental Policies**: makes base policy able to be supplemented

### Examples

**Scenario #1: Creating a new base policy**

```powershell
New-CiPolicy -MulitplePolicyFormat -foo –bar
```

- **MultiplePolicyFormat** switch results in 1) random GUIDs being generated for the policy ID and 2) the policy type being specified as base.
  Can optionally choose to make it supplementable:
  - Set-RuleOption has a new option **Enabled:Allow Supplemental Policies** to set for base policy
- For signed policies that are being made supplementable, need to ensure that supplemental signers are defined. Use “Add-SignerRule” to provide supplemental signers.
  ```powershell
  Add-SignerRule -FilePath <string> -CertificatePath <string> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]  [<CommonParameters>]
  ```

**Scenario #2: Creating a new supplemental policy**

1. Scan using `New-CiPolicy –MuliplePolicyFormat` to generate a base policy:
   ```powershell
   New-CIPolicy -Level PcaCertificate -UserPEs -ScanPath <path> -MultiplePolicyFormat 3> <path\CIPolicyLog.txt> -FilePath <path\SupplementalPolicy.xml>
   ```
2. Change this new base policy to a supplemental policy
   - Provide path of base in `Set-CIPolicyIdInfo –BasePolicytoSupplementPath`
   - Provide GUID of base in `Set-CIPolicyIdInfo –SupplementsBasePolicyID`
   ```powershell
   Set-CIPolicyIdInfo -BasePolicyToSupplementPath <path\SupplementalPolicy.xml> -SupplementsBasePolicyID <BasePolicyID> -FilePath <path\SupplementalPolicy.xml>
   ```   
   - Can revert the policy back to being a base policy using `-ResetPolicyID`
   
**Scenario #3: Merging policies**

- When merging, the policy type and ID of the leftmost/first policy specified is used
  - If the leftmost is a base policy with ID <ID>, then regardless of what the GUIDS and types are for any subsequent policies, the merged policy will be a base policy with ID <ID>

## Packaged App Rules

`New-CIPolicyRule -Package $Package -Deny` to block apps is your best use case, so something like:

1. Get the info about an installed package.
   ```powershell
   $package = Get-AppxPackage -name <netflix>
   ```
   Dependencies field in output is full Package object, can be accessed and passed directly to New-CIPolicyRule.
2. Make a rule.
   ```powershell   
   $Rule = New-CIPolicyRule -Package $package -deny
   ```
3. Repeat for other packages you want to block using $rule +=…. 
4. Make a policy for just the blocks you created for packages.   
   ```powershell
   New-CIpolicy -rules $rule -f .\policy.xml -u
   ```
5. Merge with allow windows policy, or you could also use examplepolicies\AllowAll.xml.
   ```powershell
   Merge-CIPolicy -PolicyPaths .\policy.xml,C:\windows\Schemas\codeintegrity\examplepolicies\DefaultWindows_Audit.xml -o allowWindowsDenyPackages.xml
   ```
6. Disable audit mode.
   ```powershell
   Set-RuleOption -o 3 -Delete .\allowWindowsDenyPackages.xml
   ```
7. Enable invalidate EAs on reboot.
   ```powershell
   Set-RuleOption -o 15 .\allowWindowsDenyPackages.xml 
   ```
8. Compile the policy
   ```powershell
   ConvertFrom-CIPolicy .\AllowWindowsDenyPackages.xml C:\compiledpolicy.bin
   ```
9. Install the policy withwout restarting.
   ```powershell
   Invoke-CimMethod -Namespace root\Microsoft\Windows\CI -ClassName PS_UpdateAndCompareCIPolicy -MethodName Update -Arguments @{FilePath = "C:\compiledpolicy.bin"}
   ```

After doing this on the next build of Dev3, for the apps that you blocked, already installed apps should fail to launch, and should you put this policy on another machine that hasn’t yet installed the apps, store should block them from being purchased/installed.
If you wanted to make a rule for an app that isn’t already installed, first make a rule for an app that is.  Then for the app you want to actually block take the store URL (from store page click … then share, then copy link to get something like: https://www.microsoft.com/store/productId/9WZDNCRFJ3TJ) and grab the hash code at the end (in bold) then replace the bolded bit below:
https://bspmts.mp.microsoft.com/v1/public/catalog/Retail/Products/9wzdncrfj3tj/applockerdata
then grab packagefamilyname and replace the one in the xml you got in step 4 with the PFN from the link above, then run through 5-9 again.

## FAQs

Misc
a.	Questions:
•	What uniquely identifies a “file”? SHA1, SHA256, either, both?
o	What is the “Flat hash” vs. normal?
Either hash works as a unique identifier, would recommend sha256 though just because lower collision chance.
“Authenticode Hash” is the hash we use, it is calculated in a way that does not change even if the file is embed signed, whereas “flat hash” is just a direct hash on the bytes of the file and changes with signature.
For Scripts/MSIs an embedded hash would use the SIP of the particular script type, while a catalog hash would use the flat hash (since catalogs are only aware of a few select SIPs, particularly the PE exe/dll one), so the 8028/8029 events log the “CatalogHash” as well, in case it differs from the hash used to evaluate against an embedded sig
 
•	What property of a file is used to map out to a publisher?
Files are tied to publishers via their signature (either embed signed or catalog signed via a signed catalog containing that files hash), correlate 3089 events in order to get publisher data
 
•	Can you give a description/enumeration of values for “signing level”?
 
Base signing levels are:
#define SE_SIGNING_LEVEL_UNCHECKED         0x00000000
#define SE_SIGNING_LEVEL_UNSIGNED          0x00000001
#define SE_SIGNING_LEVEL_ENTERPRISE        0x00000002
#define SE_SIGNING_LEVEL_CUSTOM_1          0x00000003
#define SE_SIGNING_LEVEL_DEVELOPER         SE_SIGNING_LEVEL_CUSTOM_1
#define SE_SIGNING_LEVEL_AUTHENTICODE      0x00000004
#define SE_SIGNING_LEVEL_CUSTOM_2          0x00000005
#define SE_SIGNING_LEVEL_STORE             0x00000006
#define SE_SIGNING_LEVEL_CUSTOM_3          0x00000007
#define SE_SIGNING_LEVEL_ANTIMALWARE       SE_SIGNING_LEVEL_CUSTOM_3
#define SE_SIGNING_LEVEL_MICROSOFT         0x00000008
#define SE_SIGNING_LEVEL_CUSTOM_4          0x00000009
#define SE_SIGNING_LEVEL_CUSTOM_5          0x0000000A
#define SE_SIGNING_LEVEL_DYNAMIC_CODEGEN   0x0000000B
#define SE_SIGNING_LEVEL_WINDOWS           0x0000000C
#define SE_SIGNING_LEVEL_CUSTOM_7          0x0000000D
#define SE_SIGNING_LEVEL_WINDOWS_TCB       0x0000000E
#define SE_SIGNING_LEVEL_CUSTOM_6          0x0000000F
 
The TL;DR on signing levels is we have collections of certificates+EKUs that we use to define broad “security levels” based on signer, for example SE_SIGNING_LEVEL_WINDOWS generally maps to “signed as part of a production windows build)
Some also inherit from others (e.g. signing level windows is a subset of microsoft)
 
See minkernel\published\base\ntseapi_x.w and ntseapi.w, and/or poke around in onecore\base\ci\dll\cipolicy.c searching for references to se_signing_level* for more on signing levels and how they are used with CIPolicy
 
•	What is the “SI Signing Scenario”?
Pretty sure this one maps to either kernel or user mode (0 or 1 respectively), CIPolicy lets you configure whitelists for each separately, e.g. you probably wouldn’t want some random user mode app, say notepad++ to run as a kernel driver 😊 
 
•	Can you also provide the “description” for the events? I know audit/block are each one of two values next to each other, but do they audit/block a specific file type only? Script? Exe?
3076 Audit for exe/dll generated by CI in the createprocess stack
3077 enforced version
3089 Signing information event correlated with either a 3076/3077 event, contains # of signatures and an index as to which signature it is, one 3089 is generated for each signature of a file (so many 3089 map to one 3076/77).  Unsigned files will generate a single 3089 with TotalSignatureCount 0
8028 Audit for scripts/msis generated by WLDP being called by the scripthosts themselves (scripthosts opt in to enforcement, so we don’t enforce on 3rd party scripthosts like python/ruby)
8029 Enforce for scripts
We don’t currently have signer information in the script events
 
•	I don’t understand what the “Policy” fields are.
Code Integrity Policy is at its core an enterprise whitelisting solution.  For these events to be generated, customers would have had to generate a policy xml, compile it, and deploy it.  PolicyName/PolicyID fields are optional fields customers can add to the policy to get propagated into the events, policy hash is literally the hash of the policy (and policy hash matching guarantees that two events were blocked by the same policy).  Since you can have multiple concurrent policies on one system supplementing each other, knowing what policy actually blocked the binary from running is useful
 
•	Is this purely file based or do I need to worry about the “PackageName” grouping?
o	Eg… do I need the packagename to get back to a publisher or are individual files from the package all mapped up directly?
An event is generated for each individual binary that failed policy.  The PackageFamilyName is put in the process token of all binaries loading under an appx and is can be used in rules in policy to attempt to allow an entire package to run rather than whitelisting each individual binary, but we will still generate an individual event for each binary that fails
I can’t currently remember if the PackageFamilyName field is even calculated or just zeroed out if there aren’t PFN rules in a policy
 
•	What field in 3089 am I able to join on to map from File to Publisher?
CorrelationID is actually not in the event templates I sent you and is actually an optional field in the metadata of every eventviewer event.  In the XML of the event the correlationID’s path is:
<Event><System><Correlation ActivityID=”{GUID}” />
For comparison, the rest of the fields look like:
<Event><EventData><Data Name=”FileNameLength”>value</Data><Data Name=”FileName”>value2</Data>…
 
•	3076/77 don’t seem to include ‘File Path’. Can this be deduced from ‘File Name’?
•	8028/8029 don’t seem to include ‘File Name’. Can this be deduced from ‘File Path’?
“File Name” in 3076/77 is actually the path in NT form (\Device\HarddiskVolume3\Windows\System32\myfile.dll), and the “originalfilename” field maps to what would be “File Name” in a file rule in policy XML
For 8028/8029 File Path is the C:\ path to the file and you’ll notice a trend where we didn’t bother to include all the same fields we do for the PE files so there is no “originalFileName”


