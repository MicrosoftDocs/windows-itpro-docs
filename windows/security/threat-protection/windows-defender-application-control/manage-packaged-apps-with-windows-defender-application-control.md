---
title: Manage packaged apps with Windows Defender Application Control  (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/14/2019
---

# Manage packaged apps with Windows Defender Application Control 

**Applies to:**

-   Windows 10
-   Windows Server 2016

This topic for IT professionals describes concepts and lists procedures to help you manage Packaged apps with Windows Defender Application Control (WDAC) as part of your overall application control strategy.

## Understanding Packaged apps and Packaged app installers

Packaged apps, also known as Universal Windows apps, are based on a model that ensures all the files within an app package share the same identity. With classic Windows apps, each file within the app could have a unique identity. 
With packaged apps, it is possible to control the entire app by using a single WDAC rule.
 
Typically, an app consists of multiple components: the installer that is used to install the app, and one or more exes, dlls, or scripts. With classic Windows apps, these components don't always share common attributes such as the software’s publisher name, product name, and product version. Therefore, WDAC controls each of these components separately through different rule collections, such as exe, dll, script, and Windows Installer rules. In contrast, all the components of a packaged app share the same publisher name, package name, and package version attributes. Therefore, you can control an entire app with a single rule.

### <a href="" id="bkmk-compareclassicmetro"></a>Comparing classic Windows apps and packaged apps

WDAC policies for packaged apps can only be applied to apps installed on computers running at least Windows Server 2012 or Windows 8, but classic Windows apps can be controlled on devices running at least Windows Server 
2008 R2 or Windows 7. The rules for classic Windows apps and packaged apps can be enforced in tandem. The differences between packaged apps and classic Windows apps that you should consider include:

-   **Installing the apps**   All packaged apps can be installed by a standard user, whereas a number of classic Windows apps require administrative privileges to install. In an environment where most of the users are standard users, you might not have numerous exe rules (because classic Windows apps require administrative privileges to install), but you might want to have more explicit policies for packaged apps.
-   **Changing the system state**   Classic Windows apps can be written to change the system state if they are run with administrative privileges. Most packaged apps cannot change the system state because they run with limited privileges. When you design your WDAC policies, it is important to understand whether an app that you are allowing can make system-wide changes.
-   **Acquiring the apps**   Packaged apps can be acquired through the Store, or by loading using Windows PowerShell cmdlets (which requires a special enterprise license). Classic Windows apps can be acquired through traditional means.

WDAC uses different rule collections to control packaged apps and classic Windows apps. You have the choice to control one type, the other type, or both.

## Using WDAC to manage packaged apps

Just as there are differences in managing each rule collection, you need to manage the packaged apps with the following strategy:

1.  Gather information about which Packaged apps are running in your environment. 

2.  Create WDAC rules for specific packaged apps based on your policy strategies. For more information, see [Deploy WDAC policy rules and file rules](select-types-of-rules-to-create.md).

3.  Continue to update the WDAC policies as new package apps are introduced into your environment. To do this, see [Merge WDAC policies](merge-windows-defender-application-control-policies.md).

## Blocking packaged apps

You can use `New-CIPolicyRule -Package $Package -Deny` to block packaged apps:

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
If you wanted to make a rule for an app that isn’t already installed, first make a rule for an app that is. Then for the app you want to actually block take the store URL (from store page click … then share, then copy link to get something like: https://www.microsoft.com/store/productId/9WZDNCRFJ3TJ) and grab the hash code at the end (in bold) then replace the bolded bit below:
https://bspmts.mp.microsoft.com/v1/public/catalog/Retail/Products/9wzdncrfj3tj/applockerdata
then grab packagefamilyname and replace the one in the xml you got in step 4 with the PFN from the link above, then run through 5-9 again.
