---
title: AppLocker CSP
description: Learn how the AppLocker configuration service provider is used to specify which applications are allowed or disallowed.
ms.assetid: 32FEA2C9-3CAD-40C9-8E4F-E3C69637580F
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 11/19/2019
---

# AppLocker CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The AppLocker configuration service provider is used to specify which applications are allowed or disallowed. There's no user interface shown for apps that are blocked.

The following example shows the AppLocker configuration service provider in tree format.

```console
./Vendor/MSFT
AppLocker
----ApplicationLaunchRestrictions
--------Grouping
------------EXE
----------------Policy
----------------EnforcementMode
----------------NonInteractiveProcessEnforcement
------------MSI
----------------Policy
----------------EnforcementMode
------------Script
----------------Policy
----------------EnforcementMode
------------StoreApps
----------------Policy
----------------EnforcementMode
------------DLL
----------------Policy
----------------EnforcementMode
----------------NonInteractiveProcessEnforcement
------------CodeIntegrity
----------------Policy
----EnterpriseDataProtection
--------Grouping
------------EXE
----------------Policy
------------StoreApps
----------------Policy
----LaunchControl
--------Grouping
------------EXE
----------------Policy
----------------EnforcementMode
------------StoreApps
----------------Policy
----------------EnforcementMode
----FamilySafety
--------Grouping
------------EXE
----------------Policy
----------------EnforcementMode
------------StoreApps
----------------Policy
----------------EnforcementMode
```
<a href="" id="--vendor-msft-applocker"></a>**./Vendor/MSFT/AppLocker**  
Defines the root node for the AppLocker configuration service provider.

<a href="" id="applocker-applicationlaunchrestrictions"></a>**AppLocker/ApplicationLaunchRestrictions**  
Defines restrictions for applications.

> [!NOTE]
> When you create a list of allowed apps, all [inbox apps](#inboxappsandcomponents) are also blocked, and you must include them in your list of allowed apps. Don't forget to add the inbox apps for Phone, Messaging, Settings, Start, Email and accounts, Work and school, and other apps that you need.
>
> Delete/unenrollment is not properly supported unless Grouping values are unique across enrollments. If multiple enrollments use the same Grouping value, then unenrollment will not work as expected since there are duplicate URIs that get deleted by the resource manager. To prevent this problem, the Grouping value should include some randomness. The best practice is to use a randomly generated GUID. However, there's no requirement on the exact value of the node.

> [!NOTE]
> The AppLocker CSP will schedule a reboot when a policy is applied or when a deletion occurs using the AppLocker/ApplicationLaunchRestrictions/Grouping/CodeIntegrity/Policy URI.

<a href="" id="applocker-applicationlaunchrestrictions-grouping"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_**  
Grouping nodes are dynamic nodes, and there may be any number of them for a given enrollment (or a given context). The actual identifiers are selected by the management endpoint, whose job it's to determine what their purpose is, and to not conflict with other identifiers that they define.
Different enrollments and contexts may use the same Authority identifier, even if many such identifiers are active at the same time.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-exe"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/EXE**  
Defines restrictions for launching executable applications.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-exe-policy"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/EXE/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-exe-enforcementmode"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/EXE/EnforcementMode**  
The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) doesn't affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).

The data type is a string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-exe-noninteractiveprocessenforcement"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/EXE/NonInteractiveProcessEnforcement**  
The data type is a string.

Supported operations are Add, Delete, Get, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-msi"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/MSI**  
Defines restrictions for executing Windows Installer files.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-msi-policy"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/MSI/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string. 

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-msi-enforcementmode"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/MSI/EnforcementMode**  
The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) doesn't affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).

The data type is a string. 

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-script"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/Script**  
Defines restrictions for running scripts.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-script-policy"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/Script/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string. 

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-script-enforcementmode"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/Script/EnforcementMode**  
The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) doesn't affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).

The data type is a string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-storeapps"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/StoreApps**  
Defines restrictions for running apps from the Microsoft Store.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-storeapps-policy"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/StoreApps/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-storeapps-enforcementmode"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/StoreApps/EnforcementMode**  
The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) doesn't affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).

The data type is a string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-dll"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/DLL**  
Defines restrictions for processing DLL files.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-dll-policy"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/DLL/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-dll-enforcementmode"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/DLL/EnforcementMode**  
The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) doesn't affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).

The data type is a string.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-dll-noninteractiveprocessenforcement"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/DLL/NonInteractiveProcessEnforcement**  
The data type is a string.

Supported operations are Add, Delete, Get, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-codeintegrity"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/CodeIntegrity**  
This node is only supported on the desktop. 

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-applicationlaunchrestrictions-grouping-codeintegrity-policy"></a>**AppLocker/ApplicationLaunchRestrictions/_Grouping_/CodeIntegrity/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is Base64.

Supported operations are Get, Add, Delete, and Replace.

> [!NOTE]
> To use Code Integrity Policy, you first need to convert the policies to binary format using the `ConvertFrom-CIPolicy` cmdlet. Then a Base64-encoded blob of the binary policy representation should be created (for example, using the [certutil -encode](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc732443(v=ws.11)) command line tool) and added to the Applocker-CSP.

<a href="" id="applocker-enterprisedataprotection"></a>**AppLocker/EnterpriseDataProtection**  
Captures the list of apps that are allowed to handle enterprise data. Should be used with the settings in **./Device/Vendor/MSFT/EnterpriseDataProtection** in [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md).

In Windows 10, version 1607 the Windows Information Protection has a concept for allowed and exempt applications. Allowed applications can access enterprise data and the data handled by those applications are protected with encryption. Exempt applications can also access enterprise data, but the data handled by those applications aren't protected. This is because some critical enterprise applications may have compatibility problems with encrypted data.

You can set the allowed list using the following URI:

- ./Vendor/MSFT/AppLocker/EnterpriseDataProtection/_Grouping_/EXE/Policy
- ./Vendor/MSFT/AppLocker/EnterpriseDataProtection/_Grouping_/StoreApps/Policy

You can set the exempt list using the following URI. The _Grouping_ string must contain the keyword "EdpExempt" anywhere to help distinguish the exempt list from the allowed list. The "EdpExempt" keyword is also evaluated in a case-insensitive manner:

- ./Vendor/MSFT/AppLocker/EnterpriseDataProtection/_Grouping includes "EdpExempt"_/EXE/Policy
- ./Vendor/MSFT/AppLocker/EnterpriseDataProtection/_Grouping includes "EdpExempt"_/StoreApps/Policy

Exempt examples:

- ./Vendor/MSFT/AppLocker/EnterpriseDataProtection/ContosoEdpExempt/EXE/Policy
- ./Vendor/MSFT/AppLocker/EnterpriseDataProtection/xxxxxEdpExemptxxxxx/EXE/Policy

Additional information:

- [Recommended blocklist for Windows Information Protection](#recommended-blocklist-for-windows-information-protection) - example for Windows 10, version 1607 that denies known unenlightened Microsoft apps from accessing enterprise data as an allowed app. This prevention ensures an administrator doesn't accidentally make these apps Windows Information Protection allowed, and avoid known compatibility issues related to automatic file encryption with these applications.

<a href="" id="applocker-enterprisedataprotection-grouping"></a>**AppLocker/EnterpriseDataProtection/_Grouping_**  
Grouping nodes are dynamic nodes, and there may be any number of them for a given enrollment (or a given context). The actual identifiers are selected by the management endpoint, whose job it's to determine what their purpose is, and to not conflict with other identifiers that they define.
Different enrollments and contexts may use the same Authority identifier, even if many such identifiers are active at the same time.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-enterprisedataprotection-grouping-exe"></a>**AppLocker/EnterpriseDataProtection/_Grouping_/EXE**  
Defines restrictions for launching executable applications.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-enterprisedataprotection-grouping-exe-policy"></a>**AppLocker/EnterpriseDataProtection/_Grouping_/EXE/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string. 

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-enterprisedataprotection-grouping-storeapps"></a>**AppLocker/EnterpriseDataProtection/_Grouping_/StoreApps**  
Defines restrictions for running apps from the Microsoft Store.

Supported operations are Get, Add, Delete, and Replace.

<a href="" id="applocker-enterprisedataprotection-grouping-exe-storeapps"></a>**AppLocker/EnterpriseDataProtection/_Grouping_/StoreApps/Policy**  
Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.

Data type is string.

Supported operations are Get, Add, Delete, and Replace.

1. On your phone under **Device discovery**, tap **Pair**. You'll get a code (case sensitive).
2. On the browser on the **Set up access page**, enter the code (case sensitive) into the text box and click **Submit**.

    The **Device Portal** page opens on your browser.

    ![device portal screenshot.](images/applocker-screenshot1.png)

3. On the desktop **Device Portal** page, click **Apps** to open the **App Manager**.
4. On the **App Manager** page under **Running apps**, you'll see the **Publisher** and **PackageFullName** of apps.

    ![device portal app manager.](images/applocker-screenshot3.png)

5. If you don't see the app that you want, look under **Installed apps**. Using the drop- down menu, click on the application and you get the Version, Publisher, and PackageFullName displayed.

    ![app manager.](images/applocker-screenshot2.png)

The following table shows the mapping of information to the AppLocker publisher rule field.

|Device portal data|AppLocker publisher rule field|
|--- |--- |
|PackageFullName|ProductName: The product name is first part of the PackageFullName followed by the version number. In the Windows Camera example, the ProductName is Microsoft.WindowsCamera.|
|Publisher|Publisher|
|Version|Version<br> <br>The version can be used either in the HighSection or LowSection of the BinaryVersionRange.<br> <br>HighSection defines the highest version number and LowSection defines the lowest version number that should be trusted. You can use a wildcard for both versions to make a version- independent rule. Using a wildcard for one of the values will provide higher than or lower than a specific version semantics.|

Here's an example AppLocker publisher rule:

```xml
<FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Reader" BinaryName="*">
  <BinaryVersionRange LowSection="*" HighSection="*" />
</FilePublisherCondition>
```

You can get the publisher name and product name of apps using a web API.

**To find publisher and product name for Microsoft apps in Microsoft Store for Business:**

1. Go to the Microsoft Store for Business website, and find your app. For example, Microsoft OneNote.

2. Copy the ID value from the app URL. For example, Microsoft OneNote's ID URL is [https://www.microsoft.com/store/apps/onenote/9wzdncrfhvjl](https://www.microsoft.com/store/apps/onenote/9wzdncrfhvjl), and you'd copy the ID value: **9wzdncrfhvjl**.

3. In your browser, run the Store for Business portal web API, to return a JavaScript Object Notation (JSON) file that includes the publisher and product name values.

Request URI:

```http
https://bspmts.mp.microsoft.com/v1/public/catalog/Retail/Products/{app ID}/applockerdata
```

Here's the example for Microsoft OneNote:

Request

```http
https://bspmts.mp.microsoft.com/v1/public/catalog/Retail/Products/9wzdncrfhvjl/applockerdata
```

Result

```json
{
  "packageFamilyName": "Microsoft.Office.OneNote_8wekyb3d8bbwe",
  "packageIdentityName": "Microsoft.Office.OneNote",
  "windowsPhoneLegacyId": "ca05b3ab-f157-450c-8c49-a1f127f5e71d",
  "publisherCertificateName": "CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
}
```

|Result data|AppLocker publisher rule field|
|--- |--- |
|packageIdentityName|ProductName|
|publisherCertificateName|Publisher|
|windowsPhoneLegacyId|Same value maps to the ProductName and Publisher name. <br> <br> This value will only be present if there's a XAP package associated with the app in the Store. <br> <br>If this value is populated, then the simple thing to do to cover both the AppX and XAP package would be to create two rules for the app. One rule for AppX using the packageIdentityName and publisherCertificateName value and another one using the windowsPhoneLegacyId value.|


## <a href="" id="settingssplashapps"></a>Settings apps that rely on splash apps


These apps are blocked unless they're explicitly added to the list of allowed apps. The following table shows the subset of Settings apps that rely on splash apps.

The product name is first part of the PackageFullName followed by the version number.

| Settings app name                  | PackageFullName or Product name                                         | ProductID                            |
|------------------------------------|-------------------------------------------------------------------------|--------------------------------------|
| Work or school account             | Microsoft.AAD.BrokerPlugin                                              | e5f8b2c4-75ae-45ee-9be8-212e34f77747 |
| Email and accounts                 | Microsoft.AccountsControl                                               | 39cf127b-8c67-c149-539a-c02271d07060 |
| SettingsPageKeyboard               | 5b04b775-356b-4aa0-aaf8-6491ffea5608\_1.1.0.0\_neutral\_\_cw8ffb7c56vgc | 5b04b775-356b-4aa0-aaf8-6491ffea5608 |
| SettingsPageTimeRegion             | 5b04b775-356b-4aa0-aaf8-6491ffea560c\_1.0.0.0\_neutral\_\_gqhq4qhgje4fw | 5b04b775-356b-4aa0-aaf8-6491ffea560c |
| SettingsPagePCSystemBluetooth      | 5b04b775-356b-4aa0-aaf8-6491ffea5620\_1.0.0.0\_neutral\_\_nvaj48k0z8te8 | 5b04b775-356b-4aa0-aaf8-6491ffea5620 |
| SettingsPageNetworkAirplaneMode    | 5b04b775-356b-4aa0-aaf8-6491ffea5621\_1.0.0.0\_neutral\_\_f73kmnfsk0aj2 | 5b04b775-356b-4aa0-aaf8-6491ffea5621 |
| SettingsPageNetworkWiFi            | 5b04b775-356b-4aa0-aaf8-6491ffea5623\_1.0.0.0\_neutral\_\_a3jhh70a240gm | 5b04b775-356b-4aa0-aaf8-6491ffea5623 |
| SettingsPageNetworkInternetSharing | 5b04b775-356b-4aa0-aaf8-6491ffea5629\_1.0.0.0\_neutral\_\_yqcw9dmx6t3pe | 5b04b775-356b-4aa0-aaf8-6491ffea5629 |
| SettingsPageAccountsWorkplace      | 5b04b775-356b-4aa0-aaf8-6491ffea562a\_1.0.0.0\_neutral\_\_q1wjbr14bc3d0 | 5b04b775-356b-4aa0-aaf8-6491ffea562a |
| SettingsPageRestoreUpdate          | 5b04b775-356b-4aa0-aaf8-6491ffea5640\_1.0.0.0\_neutral\_\_j77gbj5kz730y | 5b04b775-356b-4aa0-aaf8-6491ffea5640 |
| SettingsPageKidsCorner             | 5b04b775-356b-4aa0-aaf8-6491ffea5802\_1.0.0.0\_neutral\_\_1wmss2z3sft8c | 5b04b775-356b-4aa0-aaf8-6491ffea5802 |
| SettingsPageDrivingMode            | 5b04b775-356b-4aa0-aaf8-6491ffea5804\_1.0.0.0\_neutral\_\_t553967svy34g | 5b04b775-356b-4aa0-aaf8-6491ffea5804 |
| SettingsPageTimeLanguage           | 5b04b775-356b-4aa0-aaf8-6491ffea5808\_1.0.0.0\_neutral\_\_ecxasj38g8ynw | 5b04b775-356b-4aa0-aaf8-6491ffea5808 |
| SettingsPageAppsCorner             | 5b04b775-356b-4aa0-aaf8-6491ffea580a\_1.0.0.0\_neutral\_\_4vefaa8deck74 | 5b04b775-356b-4aa0-aaf8-6491ffea580a |
| SettingsPagePhoneNfc               | b0894dfd-4671-4bb9-bc17-a8b39947ffb6\_1.0.0.0\_neutral\_\_1prqnbg33c1tj | b0894dfd-4671-4bb9-bc17-a8b39947ffb6 |


## <a href="" id="inboxappsandcomponents"></a>Inbox apps and components

The following list shows the apps that may be included in the inbox.

> [!NOTE]
> This list identifies system apps that ship as part of Windows that you can add to your AppLocker policy to ensure proper functioning of the operating system. If you decide to block some of these apps, we recommend a thorough testing before deploying to your production environment. Failure to do so may result in unexpected failures and can significantly degrade the user experience.

|App|Product ID|Product name|
|--- |--- |--- |
|3D Viewer|f41647c9-d567-4378-b2ab-7924e5a152f3|Microsoft.Microsoft3DViewer (Added in Windows 10, version 1703)|
|Advanced info|b6e3e590-9fa5-40c0-86ac-ef475de98e88|b6e3e590-9fa5-40c0-86ac-ef475de98e88|
|Age out worker|09296e27-c9f3-4ab9-aa76-ecc4497d94bb||
|Alarms and clock|44f7d2b4-553d-4bec-a8b7-634ce897ed5f|Microsoft.WindowsAlarms|
|App downloads|20bf77a0-19c7-4daa-8db5-bc3dfdfa44ac||
|Assigned access lock app|b84f4722-313e-4f85-8f41-cf5417c9c5cb||
|Bing lock images|5f28c179-2780-41df-b966-27807b8de02c||
|Block and filter|59553c14-5701-49a2-9909-264d034deb3d||
|Broker plug-in (same as Work or school account)||Microsoft.AAD.BrokerPlugin|
|Calculator|b58171c6-c70c-4266-a2e8-8f9c994f4456|Microsoft.WindowsCalculator|
|Camera|f0d8fefd-31cd-43a1-a45a-d0276db069f1|Microsoft.WindowsCamera|
|CertInstaller|4c4ad968-7100-49de-8cd1-402e198d869e||
|Color profile|b08997ca-60ab-4dce-b088-f92e9c7994f3||
|Connect|af7d2801-56c0-4eb1-824b-dd91cdf7ece5|Microsoft.DevicesFlow|
|Contact Support|0db5fcff-4544-458a-b320-e352dfd9ca2b|Windows.ContactSupport|
|Cortana|fd68dcf4-166f-4c55-a4ca-348020f71b94|Microsoft.Windows.Cortana|
|Cortana Listen UI||CortanaListenUI|
|Credentials Dialog Host||Microsoft.CredDialogHost|
|Device Portal PIN UX||holopairingapp|
|Email and accounts|39cf127b-8c67-c149-539a-c02271d07060|Microsoft.AccountsControl|
|Enterprise installs app|da52fa01-ac0f-479d-957f-bfe4595941cb||
|Equalizer|373cb76e-7f6c-45aa-8633-b00e85c73261||
|Excel|ead3e7c0-fae6-4603-8699-6a448138f4dc|Microsoft.Office.Excel|
|Facebook|82a23635-5bd9-df11-a844-00237de2db9e|Microsoft.MSFacebook|
|Field Medic|73c58570-d5a7-46f8-b1b2-2a90024fc29c||
|File Explorer|c5e2524a-ea46-4f67-841f-6a9465d9d515|c5e2524a-ea46-4f67-841f-6a9465d9d515|
|FM Radio|f725010e-455d-4c09-ac48-bcdef0d4b626|f725010e-455d-4c09-ac48-bcdef0d4b626|
|Get Started|b3726308-3d74-4a14-a84c-867c8c735c3c|Microsoft.Getstarted|
|Glance|106e0a97-8b19-42cf-8879-a8ed2598fcbb||
|Groove Music|d2b6a184-da39-4c9a-9e0a-8b589b03dec0|Microsoft.ZuneMusic|
|Hands-Free Activation|df6c9621-e873-4e86-bb56-93e9f21b1d6f||
|Hands-Free Activation|72803bd5-4f36-41a4-a349-e83e027c4722||
|HAP update background worker|73c73cdd-4dea-462c-bd83-fa983056a4ef||
|Holographic Shell||HoloShell|
|Lumia motion data|8fc25fd2-4e2e-4873-be44-20e57f6ec52b||
|Maps|ed27a07e-af57-416b-bc0c-2596b622ef7d|Microsoft.WindowsMaps|
|Messaging|27e26f40-e031-48a6-b130-d1f20388991a|Microsoft.Messaging|
|Microsoft account|3a4fae89-7b7e-44b4-867b-f7e2772b8253|Microsoft.CloudExperienceHost|
|Microsoft Edge|395589fb-5884-4709-b9df-f7d558663ffd|Microsoft.MicrosoftEdge|
|Microsoft Frameworks|ProductID = 00000000-0000-0000-0000-000000000000 PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"||
|Migration UI||MigrationUIApp|
|MiracastView|906beeda-b7e6-4ddc-ba8d-ad5031223ef9|906beeda-b7e6-4ddc-ba8d-ad5031223ef9|
|Mixed Reality Portal||Microsoft.Windows.HolographicFirstRun|
|Money|1e0440f1-7abf-4b9a-863d-177970eefb5e|Microsoft.BingFinance|
|Movies and TV|6affe59e-0467-4701-851f-7ac026e21665|Microsoft.ZuneVideo|
|Music downloads|3da8a0c1-f7e5-47c0-a680-be8fd013f747||
|Navigation bar|2cd23676-8f68-4d07-8dd2-e693d4b01279||
|Network services|62f172d1-f552-4749-871c-2afd1c95c245||
|News|9c3e8cad-6702-4842-8f61-b8b33cc9caf1|Microsoft.BingNews|
|OneDrive|ad543082-80ec-45bb-aa02-ffe7f4182ba8|Microsoft.MicrosoftSkydrive|
|OneNote|ca05b3ab-f157-450c-8c49-a1f127f5e71d|Microsoft.Office.OneNote|
|Outlook Calendar and Mail|a558feba-85d7-4665-b5d8-a2ff9c19799b|Microsoft.WindowsCommunicationsApps|
|People|60be1fb8-3291-4b21-bd39-2221ab166481|Microsoft.People|
|Phone|5b04b775-356b-4aa0-aaf8-6491ffea5611|5b04b775-356b-4aa0-aaf8-6491ffea5611|
|Phone (dialer)|f41b5d0e-ee94-4f47-9cfe-3d3934c5a2c7|Microsoft.CommsPhone|
|Phone reset dialog|2864278d-09b5-46f7-b502-1c24139ecbdd||
|Photos|fca55e1b-b9a4-4289-882f-084ef4145005|Microsoft.Windows.Photos|
|Podcasts|c3215724-b279-4206-8c3e-61d1a9d63ed3|Microsoft.MSPodcast|
|Podcast downloads|063773e7-f26f-4a92-81f0-aa71a1161e30||
|PowerPoint|b50483c4-8046-4e1b-81ba-590b24935798|Microsoft.Office.PowerPoint|
|PrintDialog|0d32eeb1-32f0-40da-8558-cea6fcbec4a4|Microsoft.PrintDialog|
|Purchase dialog|c60e79ca-063b-4e5d-9177-1309357b2c3f||
|Rate your device|aec3bfad-e38c-4994-9c32-50bd030730ec||
|RingtoneApp.WindowsPhone|3e962450-486b-406b-abb5-d38b4ee7e6fe|Microsoft.Tonepicker|
|Save ringtone|d8cf8ec7-ec6d-4892-aab9-1e3a4b5fa24b||
|Settings|2a4e62d8-8809-4787-89f8-69d0f01654fb|2a4e62d8-8809-4787-89f8-69d0f01654fb|
|Settings||SystemSettings|
|Setup wizard|07d87655-e4f0-474b-895a-773790ad4a32||
|Sharing|b0894dfd-4671-4bb9-bc17-a8b39947ffb6||
|Sign in for Windows 10 Holographic||WebAuthBridgeInternetSso, WebAuthBridgeInternet, WebAuthBridgeIntranetSso, WebAuthBrokerInternetSso, WebAuthBrokerInternetSso, WebAuthBrokerInternetSso, WebAuthBrokerInternet, WebAuthBrokerIntranetSso, SignIn|
|Skype|c3f8e570-68b3-4d6a-bdbb-c0a3f4360a51|Microsoft.SkypeApp|
|Skype Video|27e26f40-e031-48a6-b130-d1f20388991a|Microsoft.Messaging|
|Sports|0f4c8c7e-7114-4e1e-a84c-50664db13b17|Microsoft.BingSports|
|SSMHost|e232aa77-2b6d-442c-b0c3-f3bb9788af2a||
|Start|5b04b775-356b-4aa0-aaf8-6491ffea5602|5b04b775-356b-4aa0-aaf8-6491ffea5602|
|Storage|5b04b775-356b-4aa0-aaf8-6491ffea564d|5b04b775-356b-4aa0-aaf8-6491ffea564d|
|Store|7d47d89a-7900-47c5-93f2-46eb6d94c159|Microsoft.WindowsStore|
|Touch (gestures and touch)|bbc57c87-46af-4c2c-824e-ac8104cceb38||
|Voice recorder|7311b9c5-a4e9-4c74-bc3c-55b06ba95ad0|Microsoft.WindowsSoundRecorder|
|Wallet|587a4577-7868-4745-a29e-f996203f1462|Microsoft.MicrosoftWallet|
|Wallet|12ae577e-f8d1-4197-a207-4d24c309ff8f|Microsoft.Wallet|
|Weather|63c2a117-8604-44e7-8cef-df10be3a57c8|Microsoft.BingWeather|
|Windows default lock screen|cdd63e31-9307-4ccb-ab62-1ffa5721b503||
|Windows Feedback|7604089d-d13f-4a2d-9998-33fc02b63ce3|Microsoft.WindowsFeedback|
|Word|258f115c-48f4-4adb-9a68-1387e634459b|Microsoft.Office.Word|
|Work or school account|e5f8b2c4-75ae-45ee-9be8-212e34f77747|Microsoft.AAD.BrokerPlugin|
|Xbox|b806836f-eebe-41c9-8669-19e243b81b83|Microsoft.XboxApp|
|Xbox identity provider|ba88225b-059a-45a2-a8eb-d3580283e49d|Microsoft.XboxIdentityProvider|

## <a href="" id="allow-list-examples"></a>Allowlist examples

The following example disables the calendar application.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Add>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/PolicyManager/My/ApplicationManagement/ApplicationRestrictions</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                    <Type xmlns="syncml:metinf">text/plain</Type>
                </Meta>
                <Data><AppPolicy Version="1" xmlns="http://schemas.microsoft.com/phone/2013/policy"><Deny><App ProductId="{a558feba-85d7-4665-b5d8-a2ff9c19799b}"/></Deny></AppPolicy>
                </Data>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

The following example blocks the usage of the map application.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Add>
      <CmdID>$CmdID$</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/ApplicationLaunchRestrictions/AppLockerPhoneGroup0/StoreApps/Policy</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>
            <RuleCollection Type="Appx" EnforcementMode="Enabled">
                <FilePublisherRule Id="a9e18c21-ff8f-43cf-b9fc-db40eed693ba" Name="(Default Rule) All signed Appx packages" Description="Allows members of the Everyone group to run Appx packages that are signed." UserOrGroupSid="S-1-1-0" Action="Allow">
                    <Conditions>
                    <FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*">
                    <BinaryVersionRange LowSection="0.0.0.0" HighSection="*" />
                    </FilePublisherCondition>
                    </Conditions>
                </FilePublisherRule>

                <FilePublisherRule Id="fd686d83-a829-4351-8ff4-27c7de5755d2" Name="Deny Splash appmaps" Description="Deny members of the local Administrators group to run maps." UserOrGroupSid="S-1-1-0" Action="Deny">
                  <Conditions>
                    <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsMaps" BinaryName="*" />
                  </Conditions>
                </FilePublisherRule>

            </RuleCollection>
        </Data>
      </Item>
    </Add>
   <Final/>
  </SyncBody>
</SyncML>
```

The following example disables the Mixed Reality Portal. In the example, the **Id** can be any generated GUID and the **Name** can be any name you choose. `BinaryName="*"` allows you to block any app executable in the Mixed Reality Portal package. **Binary/VersionRange**, as shown in the example, will block all versions of the Mixed Reality Portal app.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Add>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/PolicyManager/My/ApplicationManagement/ApplicationRestrictions</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                    <Type xmlns="syncml:metinf">text/plain</Type>
                </Meta>
                <Data>
                  <RuleCollection Type="Appx" EnforcementMode="Enabled">
                   <FilePublisherRule Id="a9e18c21-ff8f-43cf-b9fc-db40eed693ba" Name="(Default Rule) All signed packaged apps" Description="Allows members of the Everyone group to run packaged apps that are signed." UserOrGroupSid="S-1-1-0" Action="Allow">
                    <Conditions>
                      <FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*">
                        <BinaryVersionRange LowSection="0.0.0.0" HighSection="*" />
                      </FilePublisherCondition>
                    </Conditions>
                  </FilePublisherRule>
                  <FilePublisherRule Id="d26da4e7-0b01-484d-a8d3-d5b5341b2d55" Name="Block Mixed Reality Portal" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
                   <Conditions>
                     <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Windows.HolographicFirstRun" BinaryName="*">
                      <BinaryVersionRange LowSection="*" HighSection="*" />
                      </FilePublisherCondition>
                    </Conditions>
                  </FilePublisherRule>
                 </RuleCollection>>
                </Data>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

In this example, **MobileGroup0** is the node name. We recommend using a GUID for this node.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML>
  <SyncBody>
    <Add>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/ApplicationLaunchRestrictions/MobileGroup0</LocURI>
        </Target>
      </Item>
    </Add>
    <Add>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/ApplicationLaunchRestrictions/MobileGroup0/StoreApps</LocURI>
        </Target>
      </Item>
    </Add>
    <Replace>
      <CmdID>3</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/ApplicationLaunchRestrictions/MobileGroup0/StoreApps/Policy</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>
<RuleCollection Type="Appx" EnforcementMode="Enabled">

    <FilePublisherRule Id="172B8ACE-AAF5-41FA-941A-93AEE126B4A9" Name="Default Rule to Deny ALL" Description="Deny all publisher" UserOrGroupSid="S-1-1-0" Action="Deny">
        <Conditions>
            <FilePublisherCondition PublisherName="CN=*" ProductName="*" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="DDCD112F-E003-4874-8B3E-14CB23851D54" Name="Allowlist Settings splash app" Description="Allow Admins to run Settings." UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="2A4E62D8-8809-4787-89F8-69D0F01654FB" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="757D94A8-C752-4013-9896-D46EF10925E9" Name="Allowlist Settings WorkOrSchool" Description="Allow Admins to run WorkOrSchool" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5B04B775-356B-4AA0-AAF8-6491FFEA562A" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="473BCE1A-94D2-4AE1-8CB1-064B0677CACB" Name="Allowlist WorkPlace AAD BrokerPlugin" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.AAD.BrokerPlugin" BinaryName="*" >
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="E13EA64B-B0D3-4257-87F4-1B522D06EA03" Name="Allowlist Start" Description="Allow Admins to run Start." UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5B04B775-356B-4AA0-AAF8-6491FFEA5602" BinaryName="*" >
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="2898C4B2-4B37-4BFF-8F7B-16B377EDEA88" Name="Allowlist SettingsPageKeyboard" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5608" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="15BBA04F-3989-4FF7-9FEF-83C4DFDABA27" Name="Allowlist SettingsPageTimeRegion" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea560c" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="C3735CB1-060D-4D40-9708-6D33B98A7A2D" Name="Allowlist SettingsPagePCSystemBluetooth" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5620" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="AFACF5A3-2974-41EE-A31A-1486F593C145" Name="Allowlist SettingsPageNetworkAirplaneMode" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5621" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="7B02A339-9E77-4694-AF86-119265138129" Name="Allowlist SettingsPageNetworkWiFi" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5B04B775-356B-4AA0-AAF8-6491FFEA5623" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="F912172F-9D83-46F5-8D6C-BA7AB17063BE" Name="Allowlist SettingsPageNetworkInternetSharing" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5B04B775-356B-4AA0-AAF8-6491FFEA5629" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="67AE8001-4E49-442A-AD72-F837129ABF63" Name="Allowlist SettingsPageRestoreUpdate" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5640" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="7B65BCB2-4B1D-42B6-921B-B87F1474BDC5" Name="Allowlist SettingsPageKidsCorner" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5802" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="3964A53B-E131-4ED6-88DA-71FBDBE4E232" Name="Allowlist SettingsPageDrivingMode" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5804" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="99C4CD58-51A2-429A-B479-976ADB4EA757" Name="Allowlist SettingsPageTimeLanguage" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea5808" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="EBA3BCBE-4651-48CE-8F94-C5AC5D8F72FB" Name="Allowlist SettingsPageAppsCorner" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="5b04b775-356b-4aa0-aaf8-6491ffea580a" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="E16EABCC-46E7-4AB3-9F48-67FFF941BBDC" Name="Allowlist SettingsPagePhoneNfc" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="*" ProductName="b0894dfd-4671-4bb9-bc17-a8b39947ffb6" BinaryName="*">
                <BinaryVersionRange LowSection="*" HighSection="*"/>
            </FilePublisherCondition>
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="1F4C3904-9976-4FEE-A492-5708F14EABA5" Name="Allowlist MSA Cloud Experience Host" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.CloudExperienceHost" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="AA741A28-7C02-49A5-AA5C-35D53FB8A9DC" Name="Allowlist Email and Accounts" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.AccountsControl" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="863BE063-D134-4C5C-9825-9DF9A86B6B56" Name="Allowlist Calculator" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsCalculator" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="1DA2F479-3D1D-4425-9FFA-D4E6908F945A" Name="Allowlist Alarms and  Clock" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsAlarms" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="18E12372-21C6-4DA5-970E-0A58739D7151" Name="Allowlist People" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.People" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="FD686D83-A829-4351-8FF4-27C7DE5755D2" Name="Allowlist Camera" Description="Allow Admins to run camera." UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsCamera" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="16875F70-1778-43CC-96BB-783C9A8E53D5" Name="Allowlist WindowsMaps" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsMaps" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="D21D6F9D-CFF6-4AD1-867A-2411CE6A388D" Name="Allowlist FileExplorer" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="c5e2524a-ea46-4f67-841f-6a9465d9d515" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="450B6D7E-1738-41C9-9241-466C3FA4AB0C" Name="Allowlist FM Radio" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="F725010E-455D-4C09-AC48-BCDEF0D4B626" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="37F4272C-F4A0-4AB8-9B5F-C9194A0EC6F3" Name="Allowlist Microsoft Edge" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.MicrosoftEdge" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="253D3AEA-36C0-4877-B932-9E9C9493F3F3" Name="Allowlist Movies" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.ZuneVideo" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="9A73E081-01D1-4BFD-ADF4-5C29AD4031F7" Name="Allowlist Money" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.BingFinance" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="EE4BF66C-EBF0-4565-982C-922FFDCB2E6D" Name="Allowlist News" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.BingNews" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="D78E6A9D-10F8-4C23-B620-40B01B60E5EA" Name="Allowlist Onedrive" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="AD543082-80EC-45BB-AA02-FFE7F4182BA8" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="0012F35E-C242-47FF-A573-3DA06AF7E43C" Name="Allowlist Onedrive APP" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.MicrosoftSkydrive" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="178B0D68-3498-40CE-A0C3-295C6B3DA169" Name="Allowlist OneNote" Description="Allow Admins to run onenote." UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Office.OneNote" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="673914E4-D73A-405D-8DCF-173E36EA6722" Name="Allowlist GetStarted" Description="Allow Admins to run onenote." UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Getstarted" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="4546BD28-69B6-4175-A44C-33197D48F658" Name="Allowlist Outlook Calendar" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="microsoft.windowscommunicationsapps" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="7B843572-E1AD-45E6-A1F2-C551C70E4A34" Name="Allowlist Outlook Mail" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="microsoft.windowscommunicationsapps" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="E5A1CD1A-8C23-41E4-AACF-BF82FCE775A5" Name="Allowlist Photos" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Windows.Photos" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="0A194DD1-B25B-4512-8AFC-6F560D0EC205" Name="Allowlist PodCasts" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.MSPodcast" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="F5D27860-0238-4D1A-8011-9B8B263C3A33" Name="Allowlist SkypeApp" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="Microsoft.SkypeApp" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="B8BBC965-EC6D-4C16-AC68-C5F0090CB703" Name="Allowlist Store" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsStore" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="6031E1E7-A659-4B3D-87FB-3CB4C900F9D2" Name="Allowlist Sports" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.BingSports" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="A6D61B56-7CF7-4E95-953C-3A5913309B4E" Name="Allowlist Wallet" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.MicrosoftWallet" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="A2C44744-0627-4A52-937E-E3EC1ED476E0" Name="Allowlist Weather" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.BingWeather" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="D79978B4-EFAE-4458-8FE1-0F13B5CE6764" Name="Allowlist Xbox" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.XboxApp" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="395713B9-DD39-4741-8AB3-63D0A0DCA2B0" Name="Allowlist Xbox Identity Provider" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.XboxIdentityProvider" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="7565A8BB-D50B-4237-A9E9-B0997B36BDF9" Name="Allowlist Voice recorder" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsSoundRecorder" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="409A286E-8C3D-48AB-9D7C-3225A48B30C9" Name="Allowlist Word" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Office.Word" BinaryName="*" />
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="F72A5DA6-CA6A-4E7F-A350-AC9FACAB47DB" Name="Allowlist Excel" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Office.Excel" BinaryName="*" />
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="169B3498-2A73-4D5C-8AFB-A0DE2908A07D" Name="Allowlist PowerPoint" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
            <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Office.PowerPoint" BinaryName="*" />
        </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="A483B662-3538-4D70-98A7-1312D51A0DB9" Name="Allowlist Contact Support" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Windows.ContactSupport" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="EAB1CEDC-DD8A-4311-9146-27A3C689DEAF" Name="Allowlist Cortana" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Windows.Cortana" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="01CD8E68-666B-4DE6-8849-7CE4F0C37CA8" Name="Allowlist Storage" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="5B04B775-356B-4AA0-AAF8-6491FFEA564D" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="15D9AD89-58BC-458E-9B96-3A18DA63AC3E" Name="Allowlist Groove Music" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.ZuneMusic" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="E2B71B03-D759-4AE2-8526-E1A0CE2801DE" Name="Allowlist Windows Feedback" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.WindowsFeedback" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="E7A30489-A20B-44C3-91A8-19D9F61A8B5B" Name="Allowlist Messaging and Messaging Video" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Messaging" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="D2A16D0C-8CC0-4C3A-9FB5-C1DB1B380CED" Name="Allowlist Phone splash" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
    <FilePublisherCondition PublisherName="*" ProductName="5B04B775-356B-4AA0-AAF8-6491FFEA5611" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="2A355478-7449-43CB-908A-A378AA59FBB9" Name="Allowlist Phone APP" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.CommsPhone" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="89441630-7F1C-439B-8FFD-0BEEFF400C9B" Name="Allowlist Connect APP" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.DevicesFlow" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="E8AF01B5-7039-44F4-8072-6A6CC71EDF2E" Name="Allowlist Miracast APP" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="906BEEDA-B7E6-4DDC-BA8D-AD5031223EF9" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="DA02425B-0291-4A10-BE7E-B9C7922F4EDF" Name="Allowlist Print Dialog APP" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.PrintDialog" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="42919A05-347B-4A5F-ACB2-73710A2E6203" Name="Allowlist Block and Filter APP" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.BlockandFilterglobal" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="6F3D8885-C15E-4D7E-8E1F-F2A560C08F9E" Name="Allowlist MSFacebook" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.MSFacebook" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

    <FilePublisherRule Id="5168A5C3-5DC9-46C1-87C0-65A9DE1B4D18" Name="Allowlist Advanced Info" Description="Allow Admins" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="B6E3E590-9FA5-40C0-86AC-EF475DE98E88" BinaryName="*" />
      </Conditions>
    </FilePublisherRule>

</RuleCollection>
        </Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## Example for Windows 10 Holographic for Business
The following example for Windows 10 Holographic for Business denies all apps and allows the minimum set of [inbox apps](#inboxappsandcomponents) to enable a working device, and Settings.

```xml
<RuleCollection Type="Appx" EnforcementMode="Enabled">
    <FilePublisherRule Id="96B82A15-F841-499a-B674-963DC647762F"
                     Name="Allowlist BackgroundTaskHost"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="*"
          BinaryName="BackgroundTaskHost*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="8D345CB2-AC5B-4b6b-8F0B-DCE3F6FB9259"
                     Name="Allowlist CertInstaller"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="*"
          ProductName="4c4ad968-7100-49de-8cd1-402e198d869e"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="9F07FB38-B952-4f3c-A17A-CE7EC8132987"
                     Name="Allowlist MigrationUI"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="MigrationUIApp"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="1C32E96F-2F44-4317-9D98-2F624147D7AE"
                     Name="Allowlist CredDiagHost"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="Microsoft.CredDialogHost"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="53DCC751-E92A-4d0a-84DF-E6EAC2A7C7CE"
                     Name="Allowlist Settings"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="SystemSettings"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="70D9E233-81F4-4707-B79D-58F9C3A6BFB1"
                     Name="Allowlist HoloShell"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="HoloShell"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="6557A9BC-BA1F-4b7d-90FD-8C620CA81906"
                     Name="Allowlist MSA"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="Microsoft.Windows.CloudExperienceHost"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="81CD98A6-82EC-443f-87F8-039B00DFBE78"
                     Name="Allowlist BrokerPlugin"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="Microsoft.AAD.BrokerPlugin"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="1330E03E-7D43-4e01-9853-40ED8CF62D10"
                     Name="Allowlist SignIn1"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="WebAuthBridgeInternetSso"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="107EC30A-2CEF-4ec1-B556-F7DAA7DF7998"
                     Name="Allowlist SignIn2"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="WebAuthBridgeInternet"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="F806AC17-3E31-4a83-92EB-6A34696478D1"
                     Name="Allowlist SignIn3"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="WebAuthBridgeIntranetSso"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="E8CAF694-2256-4516-BDCC-CDABF218573C"
                     Name="Allowlist SignIn4"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="WebAuthBrokerInternetSso"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="5918428D-B9A8-4810-8FB4-25AE5A25D5A7"
                     Name="Allowlist SignIn5"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="WebAuthBrokerInternet"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="C90D99E3-C3EE-47c5-B181-7E8C54FA66B3"
                     Name="Allowlist SignIn6"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="WebAuthBrokerIntranetSso"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="9CD87A91-FB48-480d-B788-3770A950CD03"
                     Name="Allowlist SignIn7"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="SignIn"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="DCF74448-C287-4195-9072-8F3649AB9305"
                     Name="Allowlist Cortana"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="Microsoft.Windows.Cortana"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="BE4FD0C4-527B-45a3-A5B8-F4EA00584779"
                      Name="Allowlist Cortana ListenUI"
                      Description=""
                      UserOrGroupSid="S-1-1-0"
                      Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="CortanaListenUI"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="336509A7-FFBA-48cb-81BD-8DF9060B3CF8"
                     Name="Allowlist Email and accounts"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="Microsoft.AccountsControl"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="55912F15-0B94-445b-80E1-83BC8F0E8999"
                     Name="Allowlist Device Portal PIN UX"
                     Description=""
                     UserOrGroupSid="S-1-1-0"
                     Action="Allow">
    <Conditions>
      <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
          ProductName="holopairingapp"
          BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
</RuleCollection>
```

## Recommended blocklist for Windows Information Protection

The following example for Windows 10, version 1607 denies known unenlightened Microsoft apps from accessing enterprise data as an allowed app. (An administrator might still use an exempt rule, instead.) This prevention ensures an administrator doesn't accidentally make these apps Windows Information Protection allowed, and avoid known compatibility issues related to automatic file encryption with these applications.

In this example, Contoso is the node name. We recommend using a GUID for this node.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML>
  <SyncBody>
    <Add>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/EnterpriseDataProtection/Contoso</LocURI>
        </Target>
      </Item>
    </Add>
    <Add>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/EnterpriseDataProtection/Contoso/EXE</LocURI>
        </Target>
      </Item>
    </Add>
    <Replace>
      <CmdID>3</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/AppLocker/EnterpriseDataProtection/Contoso/EXE/Policy</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>
<RuleCollection Type="Exe" EnforcementMode="Enabled">
  <FilePublisherRule Id="b005eade-a5ee-4f5a-be45-d08fa557a4b2" Name="MICROSOFT OFFICE, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
      <Exceptions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="EXCEL.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="LYNC.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="LYNC99.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="MSOSYNC.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="OCPUBMGR.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="POWERPNT.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="UCMAPI.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE" BinaryName="WINWORD.EXE">
          <BinaryVersionRange LowSection="16.0.10336.20000" HighSection="*" />
        </FilePublisherCondition>
      </Exceptions>    
  </FilePublisherRule>
  <FilePublisherRule Id="de9f3461-6856-405d-9624-a80ca701f6cb" Name="MICROSOFT OFFICE 2003, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2003" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="ade1b828-7055-47fc-99bc-432cf7d1209e" Name="2007 MICROSOFT OFFICE SYSTEM, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="2007 MICROSOFT OFFICE SYSTEM" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="f6a075b5-a5b5-4654-abd6-731dacb40d95" Name="MICROSOFT OFFICE ONENOTE, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE ONENOTE" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="12.0.9999.9999" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="0ec03b2f-e9a4-4743-ae60-6d29886cf6ae" Name="MICROSOFT OFFICE OUTLOOK, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE OUTLOOK" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="12.0.9999.9999" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="7b272efd-4105-4fb7-9d40-bfa597c6792a" Name="MICROSOFT OFFICE 2013, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2013" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
  </FilePublisherRule>
  <FilePublisherRule Id="89d8a4d3-f9e3-423a-92ae-86e7333e2662" Name="MICROSOFT ONENOTE, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT ONENOTE" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
    <Exceptions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT ONENOTE" BinaryName="ONENOTE.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
    </Exceptions>
  </FilePublisherRule>
  <FilePublisherRule Id="5a2138bd-8042-4ec5-95b4-f990666fbf61" Name="MICROSOFT OUTLOOK, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OUTLOOK" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
    <Exceptions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OUTLOOK" BinaryName="OUTLOOK.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
    </Exceptions>
  </FilePublisherRule>
  <FilePublisherRule Id="3fc5f9c5-f180-435b-838f-2960106a3860" Name="MICROSOFT ONEDRIVE, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT ONEDRIVE" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
    <Exceptions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT ONEDRIVE" BinaryName="ONEDRIVE.EXE">
        <BinaryVersionRange LowSection="17.3.6386.0412" HighSection="*" />
      </FilePublisherCondition>
    </Exceptions>
  </FilePublisherRule>
  <FilePublisherRule Id="17d988ef-073e-4d92-b4bf-f477b2ecccb5" Name="MICROSOFT OFFICE 2016, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
    <Conditions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="*">
        <BinaryVersionRange LowSection="*" HighSection="*" />
      </FilePublisherCondition>
    </Conditions>
    <Exceptions>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="LYNC.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="LYNC99.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="UCMAPI.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="OCPUBMGR.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="WINWORD.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="EXCEL.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="POWERPNT.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
      <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFT OFFICE 2016" BinaryName="MSOSYNC.EXE">
        <BinaryVersionRange LowSection="16.0.7500.0000" HighSection="*" />
      </FilePublisherCondition>
    </Exceptions>
  </FilePublisherRule>
</RuleCollection>
        </Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)
