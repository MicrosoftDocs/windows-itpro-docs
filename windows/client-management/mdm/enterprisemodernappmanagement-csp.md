---
title: EnterpriseModernAppManagement CSP
description: Learn more about the EnterpriseModernAppManagement CSP.
ms.date: 09/03/2024
---

<!-- Auto-Generated CSP Document -->

<!-- EnterpriseModernAppManagement-Begin -->
# EnterpriseModernAppManagement CSP

<!-- EnterpriseModernAppManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The EnterpriseModernAppManagement configuration service provider (CSP) is used for the provisioning and reporting of modern enterprise apps. For details about how to use this CSP to for reporting apps inventory, installation and removal of apps for users, provisioning apps to devices, and managing app licenses, see [Enterprise app management](../enterprise-app-management.md).

> [!NOTE]
> Windows Holographic only supports per-user configuration of the EnterpriseModernAppManagement CSP.
<!-- EnterpriseModernAppManagement-Editable-End -->

<!-- EnterpriseModernAppManagement-Tree-Begin -->
The following list shows the EnterpriseModernAppManagement configuration service provider nodes:

- ./Device/Vendor/MSFT/EnterpriseModernAppManagement
  - [AppInstallation](#deviceappinstallation)
    - [{PackageFamilyName}](#deviceappinstallationpackagefamilyname)
      - [HostedInstall](#deviceappinstallationpackagefamilynamehostedinstall)
      - [LastError](#deviceappinstallationpackagefamilynamelasterror)
      - [LastErrorDesc](#deviceappinstallationpackagefamilynamelasterrordesc)
      - [ProgressStatus](#deviceappinstallationpackagefamilynameprogressstatus)
      - [Status](#deviceappinstallationpackagefamilynamestatus)
      - [StoreInstall](#deviceappinstallationpackagefamilynamestoreinstall)
  - [AppLicenses](#deviceapplicenses)
    - [StoreLicenses](#deviceapplicensesstorelicenses)
      - [{LicenseID}](#deviceapplicensesstorelicenseslicenseid)
        - [AddLicense](#deviceapplicensesstorelicenseslicenseidaddlicense)
        - [GetLicenseFromStore](#deviceapplicensesstorelicenseslicenseidgetlicensefromstore)
        - [LicenseCategory](#deviceapplicensesstorelicenseslicenseidlicensecategory)
        - [LicenseUsage](#deviceapplicensesstorelicenseslicenseidlicenseusage)
        - [RequesterID](#deviceapplicensesstorelicenseslicenseidrequesterid)
  - [AppManagement](#deviceappmanagement)
    - [AppInventoryQuery](#deviceappmanagementappinventoryquery)
    - [AppInventoryResults](#deviceappmanagementappinventoryresults)
    - [AppStore](#deviceappmanagementappstore)
      - [{PackageFamilyName}](#deviceappmanagementappstorepackagefamilyname)
        - [{PackageFullName}](#deviceappmanagementappstorepackagefamilynamepackagefullname)
          - [Architecture](#deviceappmanagementappstorepackagefamilynamepackagefullnamearchitecture)
          - [InstallDate](#deviceappmanagementappstorepackagefamilynamepackagefullnameinstalldate)
          - [InstallLocation](#deviceappmanagementappstorepackagefamilynamepackagefullnameinstalllocation)
          - [IsBundle](#deviceappmanagementappstorepackagefamilynamepackagefullnameisbundle)
          - [IsFramework](#deviceappmanagementappstorepackagefamilynamepackagefullnameisframework)
          - [IsProvisioned](#deviceappmanagementappstorepackagefamilynamepackagefullnameisprovisioned)
          - [IsStub](#deviceappmanagementappstorepackagefamilynamepackagefullnameisstub)
          - [Name](#deviceappmanagementappstorepackagefamilynamepackagefullnamename)
          - [PackageStatus](#deviceappmanagementappstorepackagefamilynamepackagefullnamepackagestatus)
          - [Publisher](#deviceappmanagementappstorepackagefamilynamepackagefullnamepublisher)
          - [RequiresReinstall](#deviceappmanagementappstorepackagefamilynamepackagefullnamerequiresreinstall)
          - [ResourceID](#deviceappmanagementappstorepackagefamilynamepackagefullnameresourceid)
          - [Users](#deviceappmanagementappstorepackagefamilynamepackagefullnameusers)
          - [Version](#deviceappmanagementappstorepackagefamilynamepackagefullnameversion)
        - [DoNotUpdate](#deviceappmanagementappstorepackagefamilynamedonotupdate)
        - [MaintainProcessorArchitectureOnUpdate](#deviceappmanagementappstorepackagefamilynamemaintainprocessorarchitectureonupdate)
        - [NonRemovable](#deviceappmanagementappstorepackagefamilynamenonremovable)
      - [ReleaseManagement](#deviceappmanagementappstorereleasemanagement)
        - [{ReleaseManagementKey}](#deviceappmanagementappstorereleasemanagementreleasemanagementkey)
          - [ChannelId](#deviceappmanagementappstorereleasemanagementreleasemanagementkeychannelid)
          - [EffectiveRelease](#deviceappmanagementappstorereleasemanagementreleasemanagementkeyeffectiverelease)
            - [ChannelId](#deviceappmanagementappstorereleasemanagementreleasemanagementkeyeffectivereleasechannelid)
            - [ReleaseManagementId](#deviceappmanagementappstorereleasemanagementreleasemanagementkeyeffectivereleasereleasemanagementid)
          - [ReleaseManagementId](#deviceappmanagementappstorereleasemanagementreleasemanagementkeyreleasemanagementid)
    - [LastScanError](#deviceappmanagementlastscanerror)
    - [nonStore](#deviceappmanagementnonstore)
      - [{PackageFamilyName}](#deviceappmanagementnonstorepackagefamilyname)
        - [{PackageFullName}](#deviceappmanagementnonstorepackagefamilynamepackagefullname)
          - [Architecture](#deviceappmanagementnonstorepackagefamilynamepackagefullnamearchitecture)
          - [InstallDate](#deviceappmanagementnonstorepackagefamilynamepackagefullnameinstalldate)
          - [InstallLocation](#deviceappmanagementnonstorepackagefamilynamepackagefullnameinstalllocation)
          - [IsBundle](#deviceappmanagementnonstorepackagefamilynamepackagefullnameisbundle)
          - [IsFramework](#deviceappmanagementnonstorepackagefamilynamepackagefullnameisframework)
          - [IsProvisioned](#deviceappmanagementnonstorepackagefamilynamepackagefullnameisprovisioned)
          - [IsStub](#deviceappmanagementnonstorepackagefamilynamepackagefullnameisstub)
          - [Name](#deviceappmanagementnonstorepackagefamilynamepackagefullnamename)
          - [PackageStatus](#deviceappmanagementnonstorepackagefamilynamepackagefullnamepackagestatus)
          - [Publisher](#deviceappmanagementnonstorepackagefamilynamepackagefullnamepublisher)
          - [RequiresReinstall](#deviceappmanagementnonstorepackagefamilynamepackagefullnamerequiresreinstall)
          - [ResourceID](#deviceappmanagementnonstorepackagefamilynamepackagefullnameresourceid)
          - [Users](#deviceappmanagementnonstorepackagefamilynamepackagefullnameusers)
          - [Version](#deviceappmanagementnonstorepackagefamilynamepackagefullnameversion)
        - [DoNotUpdate](#deviceappmanagementnonstorepackagefamilynamedonotupdate)
        - [MaintainProcessorArchitectureOnUpdate](#deviceappmanagementnonstorepackagefamilynamemaintainprocessorarchitectureonupdate)
        - [NonRemovable](#deviceappmanagementnonstorepackagefamilynamenonremovable)
      - [ReleaseManagement](#deviceappmanagementnonstorereleasemanagement)
        - [{ReleaseManagementKey}](#deviceappmanagementnonstorereleasemanagementreleasemanagementkey)
          - [ChannelId](#deviceappmanagementnonstorereleasemanagementreleasemanagementkeychannelid)
          - [EffectiveRelease](#deviceappmanagementnonstorereleasemanagementreleasemanagementkeyeffectiverelease)
            - [ChannelId](#deviceappmanagementnonstorereleasemanagementreleasemanagementkeyeffectivereleasechannelid)
            - [ReleaseManagementId](#deviceappmanagementnonstorereleasemanagementreleasemanagementkeyeffectivereleasereleasemanagementid)
          - [ReleaseManagementId](#deviceappmanagementnonstorereleasemanagementreleasemanagementkeyreleasemanagementid)
    - [ResetPackage](#deviceappmanagementresetpackage)
    - [System](#deviceappmanagementsystem)
      - [{PackageFamilyName}](#deviceappmanagementsystempackagefamilyname)
        - [{PackageFullName}](#deviceappmanagementsystempackagefamilynamepackagefullname)
          - [Architecture](#deviceappmanagementsystempackagefamilynamepackagefullnamearchitecture)
          - [InstallDate](#deviceappmanagementsystempackagefamilynamepackagefullnameinstalldate)
          - [InstallLocation](#deviceappmanagementsystempackagefamilynamepackagefullnameinstalllocation)
          - [IsBundle](#deviceappmanagementsystempackagefamilynamepackagefullnameisbundle)
          - [IsFramework](#deviceappmanagementsystempackagefamilynamepackagefullnameisframework)
          - [IsProvisioned](#deviceappmanagementsystempackagefamilynamepackagefullnameisprovisioned)
          - [IsStub](#deviceappmanagementsystempackagefamilynamepackagefullnameisstub)
          - [Name](#deviceappmanagementsystempackagefamilynamepackagefullnamename)
          - [PackageStatus](#deviceappmanagementsystempackagefamilynamepackagefullnamepackagestatus)
          - [Publisher](#deviceappmanagementsystempackagefamilynamepackagefullnamepublisher)
          - [RequiresReinstall](#deviceappmanagementsystempackagefamilynamepackagefullnamerequiresreinstall)
          - [ResourceID](#deviceappmanagementsystempackagefamilynamepackagefullnameresourceid)
          - [Users](#deviceappmanagementsystempackagefamilynamepackagefullnameusers)
          - [Version](#deviceappmanagementsystempackagefamilynamepackagefullnameversion)
        - [AppUpdateSettings](#deviceappmanagementsystempackagefamilynameappupdatesettings)
          - [AutoRepair](#deviceappmanagementsystempackagefamilynameappupdatesettingsautorepair)
            - [PackageSource](#deviceappmanagementsystempackagefamilynameappupdatesettingsautorepairpackagesource)
          - [AutoUpdateSettings](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettings)
            - [AutomaticBackgroundTask](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingsautomaticbackgroundtask)
            - [Disable](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingsdisable)
            - [ForceUpdateFromAnyVersion](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingsforceupdatefromanyversion)
            - [HoursBetweenUpdateChecks](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingshoursbetweenupdatechecks)
            - [OnLaunchUpdateCheck](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingsonlaunchupdatecheck)
            - [PackageSource](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingspackagesource)
            - [ShowPrompt](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingsshowprompt)
            - [UpdateBlocksActivation](#deviceappmanagementsystempackagefamilynameappupdatesettingsautoupdatesettingsupdateblocksactivation)
        - [DoNotUpdate](#deviceappmanagementsystempackagefamilynamedonotupdate)
        - [MaintainProcessorArchitectureOnUpdate](#deviceappmanagementsystempackagefamilynamemaintainprocessorarchitectureonupdate)
        - [NonRemovable](#deviceappmanagementsystempackagefamilynamenonremovable)
      - [ReleaseManagement](#deviceappmanagementsystemreleasemanagement)
        - [{ReleaseManagementKey}](#deviceappmanagementsystemreleasemanagementreleasemanagementkey)
          - [ChannelId](#deviceappmanagementsystemreleasemanagementreleasemanagementkeychannelid)
          - [EffectiveRelease](#deviceappmanagementsystemreleasemanagementreleasemanagementkeyeffectiverelease)
            - [ChannelId](#deviceappmanagementsystemreleasemanagementreleasemanagementkeyeffectivereleasechannelid)
            - [ReleaseManagementId](#deviceappmanagementsystemreleasemanagementreleasemanagementkeyeffectivereleasereleasemanagementid)
          - [ReleaseManagementId](#deviceappmanagementsystemreleasemanagementreleasemanagementkeyreleasemanagementid)
    - [UpdateScan](#deviceappmanagementupdatescan)
- ./User/Vendor/MSFT/EnterpriseModernAppManagement
  - [AppInstallation](#userappinstallation)
    - [{PackageFamilyName}](#userappinstallationpackagefamilyname)
      - [HostedInstall](#userappinstallationpackagefamilynamehostedinstall)
      - [LastError](#userappinstallationpackagefamilynamelasterror)
      - [LastErrorDesc](#userappinstallationpackagefamilynamelasterrordesc)
      - [ProgressStatus](#userappinstallationpackagefamilynameprogressstatus)
      - [Status](#userappinstallationpackagefamilynamestatus)
      - [StoreInstall](#userappinstallationpackagefamilynamestoreinstall)
  - [AppLicenses](#userapplicenses)
    - [StoreLicenses](#userapplicensesstorelicenses)
      - [{LicenseID}](#userapplicensesstorelicenseslicenseid)
        - [AddLicense](#userapplicensesstorelicenseslicenseidaddlicense)
        - [GetLicenseFromStore](#userapplicensesstorelicenseslicenseidgetlicensefromstore)
        - [LicenseCategory](#userapplicensesstorelicenseslicenseidlicensecategory)
        - [LicenseUsage](#userapplicensesstorelicenseslicenseidlicenseusage)
        - [RequesterID](#userapplicensesstorelicenseslicenseidrequesterid)
  - [AppManagement](#userappmanagement)
    - [AppInventoryQuery](#userappmanagementappinventoryquery)
    - [AppInventoryResults](#userappmanagementappinventoryresults)
    - [AppStore](#userappmanagementappstore)
      - [{PackageFamilyName}](#userappmanagementappstorepackagefamilyname)
        - [{PackageFullName}](#userappmanagementappstorepackagefamilynamepackagefullname)
          - [Architecture](#userappmanagementappstorepackagefamilynamepackagefullnamearchitecture)
          - [InstallDate](#userappmanagementappstorepackagefamilynamepackagefullnameinstalldate)
          - [InstallLocation](#userappmanagementappstorepackagefamilynamepackagefullnameinstalllocation)
          - [IsBundle](#userappmanagementappstorepackagefamilynamepackagefullnameisbundle)
          - [IsFramework](#userappmanagementappstorepackagefamilynamepackagefullnameisframework)
          - [IsProvisioned](#userappmanagementappstorepackagefamilynamepackagefullnameisprovisioned)
          - [IsStub](#userappmanagementappstorepackagefamilynamepackagefullnameisstub)
          - [Name](#userappmanagementappstorepackagefamilynamepackagefullnamename)
          - [PackageStatus](#userappmanagementappstorepackagefamilynamepackagefullnamepackagestatus)
          - [Publisher](#userappmanagementappstorepackagefamilynamepackagefullnamepublisher)
          - [RequiresReinstall](#userappmanagementappstorepackagefamilynamepackagefullnamerequiresreinstall)
          - [ResourceID](#userappmanagementappstorepackagefamilynamepackagefullnameresourceid)
          - [Users](#userappmanagementappstorepackagefamilynamepackagefullnameusers)
          - [Version](#userappmanagementappstorepackagefamilynamepackagefullnameversion)
        - [AppSettingPolicy](#userappmanagementappstorepackagefamilynameappsettingpolicy)
          - [{SettingValue}](#userappmanagementappstorepackagefamilynameappsettingpolicysettingvalue)
        - [DoNotUpdate](#userappmanagementappstorepackagefamilynamedonotupdate)
        - [MaintainProcessorArchitectureOnUpdate](#userappmanagementappstorepackagefamilynamemaintainprocessorarchitectureonupdate)
      - [ReleaseManagement](#userappmanagementappstorereleasemanagement)
        - [{ReleaseManagementKey}](#userappmanagementappstorereleasemanagementreleasemanagementkey)
          - [ChannelId](#userappmanagementappstorereleasemanagementreleasemanagementkeychannelid)
          - [EffectiveRelease](#userappmanagementappstorereleasemanagementreleasemanagementkeyeffectiverelease)
            - [ChannelId](#userappmanagementappstorereleasemanagementreleasemanagementkeyeffectivereleasechannelid)
            - [ReleaseManagementId](#userappmanagementappstorereleasemanagementreleasemanagementkeyeffectivereleasereleasemanagementid)
          - [ReleaseManagementId](#userappmanagementappstorereleasemanagementreleasemanagementkeyreleasemanagementid)
    - [LastScanError](#userappmanagementlastscanerror)
    - [nonStore](#userappmanagementnonstore)
      - [{PackageFamilyName}](#userappmanagementnonstorepackagefamilyname)
        - [{PackageFullName}](#userappmanagementnonstorepackagefamilynamepackagefullname)
          - [Architecture](#userappmanagementnonstorepackagefamilynamepackagefullnamearchitecture)
          - [InstallDate](#userappmanagementnonstorepackagefamilynamepackagefullnameinstalldate)
          - [InstallLocation](#userappmanagementnonstorepackagefamilynamepackagefullnameinstalllocation)
          - [IsBundle](#userappmanagementnonstorepackagefamilynamepackagefullnameisbundle)
          - [IsFramework](#userappmanagementnonstorepackagefamilynamepackagefullnameisframework)
          - [IsProvisioned](#userappmanagementnonstorepackagefamilynamepackagefullnameisprovisioned)
          - [IsStub](#userappmanagementnonstorepackagefamilynamepackagefullnameisstub)
          - [Name](#userappmanagementnonstorepackagefamilynamepackagefullnamename)
          - [PackageStatus](#userappmanagementnonstorepackagefamilynamepackagefullnamepackagestatus)
          - [Publisher](#userappmanagementnonstorepackagefamilynamepackagefullnamepublisher)
          - [RequiresReinstall](#userappmanagementnonstorepackagefamilynamepackagefullnamerequiresreinstall)
          - [ResourceID](#userappmanagementnonstorepackagefamilynamepackagefullnameresourceid)
          - [Users](#userappmanagementnonstorepackagefamilynamepackagefullnameusers)
          - [Version](#userappmanagementnonstorepackagefamilynamepackagefullnameversion)
        - [AppSettingPolicy](#userappmanagementnonstorepackagefamilynameappsettingpolicy)
          - [{SettingValue}](#userappmanagementnonstorepackagefamilynameappsettingpolicysettingvalue)
        - [DoNotUpdate](#userappmanagementnonstorepackagefamilynamedonotupdate)
        - [MaintainProcessorArchitectureOnUpdate](#userappmanagementnonstorepackagefamilynamemaintainprocessorarchitectureonupdate)
      - [ReleaseManagement](#userappmanagementnonstorereleasemanagement)
        - [{ReleaseManagementKey}](#userappmanagementnonstorereleasemanagementreleasemanagementkey)
          - [ChannelId](#userappmanagementnonstorereleasemanagementreleasemanagementkeychannelid)
          - [EffectiveRelease](#userappmanagementnonstorereleasemanagementreleasemanagementkeyeffectiverelease)
            - [ChannelId](#userappmanagementnonstorereleasemanagementreleasemanagementkeyeffectivereleasechannelid)
            - [ReleaseManagementId](#userappmanagementnonstorereleasemanagementreleasemanagementkeyeffectivereleasereleasemanagementid)
          - [ReleaseManagementId](#userappmanagementnonstorereleasemanagementreleasemanagementkeyreleasemanagementid)
    - [RemovePackage](#userappmanagementremovepackage)
    - [ResetPackage](#userappmanagementresetpackage)
    - [System](#userappmanagementsystem)
      - [{PackageFamilyName}](#userappmanagementsystempackagefamilyname)
        - [{PackageFullName}](#userappmanagementsystempackagefamilynamepackagefullname)
          - [Architecture](#userappmanagementsystempackagefamilynamepackagefullnamearchitecture)
          - [InstallDate](#userappmanagementsystempackagefamilynamepackagefullnameinstalldate)
          - [InstallLocation](#userappmanagementsystempackagefamilynamepackagefullnameinstalllocation)
          - [IsBundle](#userappmanagementsystempackagefamilynamepackagefullnameisbundle)
          - [IsFramework](#userappmanagementsystempackagefamilynamepackagefullnameisframework)
          - [IsProvisioned](#userappmanagementsystempackagefamilynamepackagefullnameisprovisioned)
          - [IsStub](#userappmanagementsystempackagefamilynamepackagefullnameisstub)
          - [Name](#userappmanagementsystempackagefamilynamepackagefullnamename)
          - [PackageStatus](#userappmanagementsystempackagefamilynamepackagefullnamepackagestatus)
          - [Publisher](#userappmanagementsystempackagefamilynamepackagefullnamepublisher)
          - [RequiresReinstall](#userappmanagementsystempackagefamilynamepackagefullnamerequiresreinstall)
          - [ResourceID](#userappmanagementsystempackagefamilynamepackagefullnameresourceid)
          - [Users](#userappmanagementsystempackagefamilynamepackagefullnameusers)
          - [Version](#userappmanagementsystempackagefamilynamepackagefullnameversion)
        - [AppSettingPolicy](#userappmanagementsystempackagefamilynameappsettingpolicy)
          - [{SettingValue}](#userappmanagementsystempackagefamilynameappsettingpolicysettingvalue)
        - [DoNotUpdate](#userappmanagementsystempackagefamilynamedonotupdate)
        - [MaintainProcessorArchitectureOnUpdate](#userappmanagementsystempackagefamilynamemaintainprocessorarchitectureonupdate)
      - [ReleaseManagement](#userappmanagementsystemreleasemanagement)
        - [{ReleaseManagementKey}](#userappmanagementsystemreleasemanagementreleasemanagementkey)
          - [ChannelId](#userappmanagementsystemreleasemanagementreleasemanagementkeychannelid)
          - [EffectiveRelease](#userappmanagementsystemreleasemanagementreleasemanagementkeyeffectiverelease)
            - [ChannelId](#userappmanagementsystemreleasemanagementreleasemanagementkeyeffectivereleasechannelid)
            - [ReleaseManagementId](#userappmanagementsystemreleasemanagementreleasemanagementkeyeffectivereleasereleasemanagementid)
          - [ReleaseManagementId](#userappmanagementsystemreleasemanagementreleasemanagementkeyreleasemanagementid)
    - [UpdateScan](#userappmanagementupdatescan)
<!-- EnterpriseModernAppManagement-Tree-End -->

<!-- Device-AppInstallation-Begin -->
## Device/AppInstallation

<!-- Device-AppInstallation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-Applicability-End -->

<!-- Device-AppInstallation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation
```
<!-- Device-AppInstallation-OmaUri-End -->

<!-- Device-AppInstallation-Description-Begin -->
<!-- Description-Source-DDF -->
Used to perform app installation.
<!-- Device-AppInstallation-Description-End -->

<!-- Device-AppInstallation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppInstallation-Editable-End -->

<!-- Device-AppInstallation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppInstallation-DFProperties-End -->

<!-- Device-AppInstallation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-Examples-End -->

<!-- Device-AppInstallation-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Begin -->
### Device/AppInstallation/{PackageFamilyName}

<!-- Device-AppInstallation-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}
```
<!-- Device-AppInstallation-{PackageFamilyName}-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- Device-AppInstallation-{PackageFamilyName}-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is an optional node.

> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- Device-AppInstallation-{PackageFamilyName}-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: Package family name (PFN) of the app. |
<!-- Device-AppInstallation-{PackageFamilyName}-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for uninstalling an app:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-AppInstallation-{PackageFamilyName}-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Begin -->
#### Device/AppInstallation/{PackageFamilyName}/HostedInstall

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall
```
<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Command to perform an install of an app package from a hosted location (this can be a local drive, a UNC, or https data source).
<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. The following list shows the supported deployment options:

- ForceApplicationShutdown
- DevelopmentMode
- InstallAllResources
- ForceTargetApplicationShutdown
- ForceUpdateToAnyVersion
- DeferRegistration="1". If the app is in use at the time of installation. This option stages the files for an app update and completes the registration of the app update after the app closes. Available in the latest insider flight of 20H1.
- StageOnly="1". Stages the files for an app installation or update without installing the app. Available in 1803.
- LicenseUri="\\server\license.lic". Deploys an offline license. Available in 1607.
- ValidateDependencies="1". This option is used at provisioning/staging time. If it's set to 1, deployment will perform the same dependency validation during staging that we would normally do at registration time, failing and rejecting the provision request if the dependencies aren't present. Available in the latest insider flight of 20H1.
- ExcludeAppFromLayoutModification="1". Sets that the app will be provisioned on all devices and will be able to retain the apps provisioned without pinning them to start layout. Available in 1809.


<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Add, Delete, Exec, Get |
<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-HostedInstall-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Begin -->
#### Device/AppInstallation/{PackageFamilyName}/LastError

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/LastError
```
<!-- Device-AppInstallation-{PackageFamilyName}-LastError-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Description-Begin -->
<!-- Description-Source-DDF -->
Last error relating to the app installation.
<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppInstallation-{PackageFamilyName}-LastError-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-LastError-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastError-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Begin -->
#### Device/AppInstallation/{PackageFamilyName}/LastErrorDesc

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/LastErrorDesc
```
<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Description-Begin -->
<!-- Description-Source-DDF -->
Description of last error relating to the app installation.
<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-LastErrorDesc-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Begin -->
#### Device/AppInstallation/{PackageFamilyName}/ProgressStatus

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/ProgressStatus
```
<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Description-Begin -->
<!-- Description-Source-DDF -->
An integer that indicates the progress of the app installation. For https locations, this indicates the download progress. ProgressStatus isn't available for provisioning and it's only for user-based installations. In provisioning, the value is always 0 (zero).
<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-ProgressStatus-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-Begin -->
#### Device/AppInstallation/{PackageFamilyName}/Status

<!-- Device-AppInstallation-{PackageFamilyName}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-Status-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/Status
```
<!-- Device-AppInstallation-{PackageFamilyName}-Status-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status of app installation. The following values are returned: NOT_INSTALLED (0) - The node was added, but the execution hasn't completed. INSTALLING (1) - Execution has started, but the deployment hasn't completed. If the deployment completes regardless of success, this value is updated. FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription. INSTALLED (3) - Once an install is successful this node is cleaned up, however in the event the clean up action hasn't completed, this state may briefly appear.
<!-- Device-AppInstallation-{PackageFamilyName}-Status-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- Device-AppInstallation-{PackageFamilyName}-Status-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppInstallation-{PackageFamilyName}-Status-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-Status-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-Status-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Begin -->
#### Device/AppInstallation/{PackageFamilyName}/StoreInstall

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Applicability-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/StoreInstall
```
<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-OmaUri-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Command to perform an install of an app and a license from the Microsoft Store.
<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Description-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Editable-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Add, Delete, Exec, Get |
<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-DFProperties-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-Examples-End -->

<!-- Device-AppInstallation-{PackageFamilyName}-StoreInstall-End -->

<!-- Device-AppLicenses-Begin -->
## Device/AppLicenses

<!-- Device-AppLicenses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-Applicability-End -->

<!-- Device-AppLicenses-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses
```
<!-- Device-AppLicenses-OmaUri-End -->

<!-- Device-AppLicenses-Description-Begin -->
<!-- Description-Source-DDF -->
Used to manage licenses for app scenarios.
<!-- Device-AppLicenses-Description-End -->

<!-- Device-AppLicenses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppLicenses-Editable-End -->

<!-- Device-AppLicenses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppLicenses-DFProperties-End -->

<!-- Device-AppLicenses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-Examples-End -->

<!-- Device-AppLicenses-End -->

<!-- Device-AppLicenses-StoreLicenses-Begin -->
### Device/AppLicenses/StoreLicenses

<!-- Device-AppLicenses-StoreLicenses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses
```
<!-- Device-AppLicenses-StoreLicenses-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-Description-Begin -->
<!-- Description-Source-DDF -->
Used to manage licenses for store apps.
<!-- Device-AppLicenses-StoreLicenses-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppLicenses-StoreLicenses-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppLicenses-StoreLicenses-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Begin -->
#### Device/AppLicenses/StoreLicenses/{LicenseID}

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}
```
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Description-Begin -->
<!-- Description-Source-DDF -->
License ID for a store installed app. The license ID is generally the PFN of the app.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is an optional node.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: License ID for a store installed app. The license ID is generally the PFN of the app. |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Begin -->
##### Device/AppLicenses/StoreLicenses/{LicenseID}/AddLicense

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/AddLicense
```
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Description-Begin -->
<!-- Description-Source-DDF -->
Command to add license.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Begin -->
##### Device/AppLicenses/StoreLicenses/{LicenseID}/GetLicenseFromStore

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/GetLicenseFromStore
```
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Description-Begin -->
<!-- Description-Source-DDF -->
Command to get license from the store.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Begin -->
##### Device/AppLicenses/StoreLicenses/{LicenseID}/LicenseCategory

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/LicenseCategory
```
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Description-Begin -->
<!-- Description-Source-DDF -->
Category of license that's used to classify various license sources. Valid value: Unknown - unknown license category. Retail - license sold through retail channels, typically from the Microsoft Store. Enterprise - license sold through the enterprise sales channel. OEM - license issued to an OEM. Developer - developer license, typically installed during the app development or side-loading scenarios.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Begin -->
##### Device/AppLicenses/StoreLicenses/{LicenseID}/LicenseUsage

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/LicenseUsage
```
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates the allowed usage for the license. Valid values: Unknown - usage is unknown. Online - the license is only valid for online usage. This is for applications with concurrence requirements, such as an app used on several computers, but can only be used on one at any given time. Offline - license is valid for use offline. You don't need a connection to the internet to use this license. Enterprise Root - The license is valid for line of business apps.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Begin -->
##### Device/AppLicenses/StoreLicenses/{LicenseID}/RequesterID

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Applicability-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/RequesterID
```
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-OmaUri-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the entity that requested the license, such as the client who acquired the license. For example, all licenses issued by the Store for Business for a particular enterprise client has the same RequesterID.
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Description-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The Microsoft Store for Business and Microsoft Store for Education are retired. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Editable-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-DFProperties-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Examples-End -->

<!-- Device-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-End -->

<!-- Device-AppManagement-Begin -->
## Device/AppManagement

<!-- Device-AppManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-Applicability-End -->

<!-- Device-AppManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement
```
<!-- Device-AppManagement-OmaUri-End -->

<!-- Device-AppManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Used for inventory and app management (post-install).
<!-- Device-AppManagement-Description-End -->

<!-- Device-AppManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-Editable-End -->

<!-- Device-AppManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppManagement-DFProperties-End -->

<!-- Device-AppManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-Examples-End -->

<!-- Device-AppManagement-End -->

<!-- Device-AppManagement-AppInventoryQuery-Begin -->
### Device/AppManagement/AppInventoryQuery

<!-- Device-AppManagement-AppInventoryQuery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppInventoryQuery-Applicability-End -->

<!-- Device-AppManagement-AppInventoryQuery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryQuery
```
<!-- Device-AppManagement-AppInventoryQuery-OmaUri-End -->

<!-- Device-AppManagement-AppInventoryQuery-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the query for app inventory.
<!-- Device-AppManagement-AppInventoryQuery-Description-End -->

<!-- Device-AppManagement-AppInventoryQuery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Query parameters:

- Output - Specifies the parameters for the information returned in AppInventoryResults operation. Multiple value must be separate by |. Valid values are:
  - PackagesName - returns the *PackageFamilyName* and *PackageFullName* of the app. Default if nothing is specified.
    - PackageDetails - returns all inventory attributes of the package. This information includes all information from PackageNames parameter, but doesn't validate RequiresReinstall.
    - RequiredReinstall - Validates the app status of the apps in the inventory query to determine if they require a reinstallation. This attribute may impact system performance depending on the number of apps installed. Requiring reinstall occurs when resource package updates or when the app is in a tampered state.

- Source - specifies the app classification that aligns to the existing inventory nodes. You can use a specific filter or if no filter is specified then all sources will be returned. If no value is specified, all classifications are returned. Valid values are:
  - AppStore - This classification is for apps that were acquired from Microsoft Store. These were apps directly installed from Microsoft Store or enterprise apps from Microsoft Store for Business.
    > [!NOTE]
    > The Microsoft Store for Business and Microsoft Store for Education are retired. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).
  - nonStore - This classification is for apps that weren't acquired from the Microsoft Store.
  - System - Apps that are part of the OS. You can't uninstall these apps. This classification is read-only and can only be inventoried.

- PackageTypeFilter - Specifies one or multiple types of packages you can use to query the user or device. Multiple values must be separated by |. Valid values are:
  - Main - returns the main installed package.
  - Bundle - returns installed bundle packages.
  - Framework - returns installed framework packages.
  - Resource - returns installed resources packages. Resources are either language, scale, or DirectX resources. They're parts of a bundle.
  - XAP - returns XAP package types. This filter is only supported on Windows Mobile.
  - All - returns all package types.

  If no value is specified, the combination of Main, Bundle, and Framework are returned.

- PackageFamilyName - specifies the name of a particular package. If you specify this parameter, it returns the Package Family name if the package contains this value.

  If you don't specify this value, then all packages are returned.

- Publisher - specifies the publisher of a particular package. If you specify this parameter, it returns the publisher if the value exists in the Publisher field.

  If you don't specify this value, then all publishers are returned.


<!-- Device-AppManagement-AppInventoryQuery-Editable-End -->

<!-- Device-AppManagement-AppInventoryQuery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get, Replace |
<!-- Device-AppManagement-AppInventoryQuery-DFProperties-End -->

<!-- Device-AppManagement-AppInventoryQuery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

The following example sets the inventory query for the package names and checks the status for reinstallation for all main packages that are nonStore apps.

```xml
<Replace>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryQuery</LocURI>
      </Target>
      <Meta><Format xmlns="syncml:metinf">xml</Format></Meta>
      <Data><Inventory Output="PackageNames|RequiresReinstall" Source="nonStore" PackageTypeFilter="Main" /></Data>
   </Item>
</Replace>
```
<!-- Device-AppManagement-AppInventoryQuery-Examples-End -->

<!-- Device-AppManagement-AppInventoryQuery-End -->

<!-- Device-AppManagement-AppInventoryResults-Begin -->
### Device/AppManagement/AppInventoryResults

<!-- Device-AppManagement-AppInventoryResults-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppInventoryResults-Applicability-End -->

<!-- Device-AppManagement-AppInventoryResults-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryResults
```
<!-- Device-AppManagement-AppInventoryResults-OmaUri-End -->

<!-- Device-AppManagement-AppInventoryResults-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the results for app inventory that was created after the AppInventoryQuery operation.
<!-- Device-AppManagement-AppInventoryResults-Description-End -->

<!-- Device-AppManagement-AppInventoryResults-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-AppInventoryResults-Editable-End -->

<!-- Device-AppManagement-AppInventoryResults-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get |
<!-- Device-AppManagement-AppInventoryResults-DFProperties-End -->

<!-- Device-AppManagement-AppInventoryResults-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example of AppInventoryResults operation.

```xml
<Get>
   <CmdID>11</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryResults</LocURI>
      </Target>
   </Item>
</Get>
```
<!-- Device-AppManagement-AppInventoryResults-Examples-End -->

<!-- Device-AppManagement-AppInventoryResults-End -->

<!-- Device-AppManagement-AppStore-Begin -->
### Device/AppManagement/AppStore

<!-- Device-AppManagement-AppStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-Applicability-End -->

<!-- Device-AppManagement-AppStore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore
```
<!-- Device-AppManagement-AppStore-OmaUri-End -->

<!-- Device-AppManagement-AppStore-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-AppManagement-AppStore-Description-End -->

<!-- Device-AppManagement-AppStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Used for managing apps from the Microsoft Store.
<!-- Device-AppManagement-AppStore-Editable-End -->

<!-- Device-AppManagement-AppStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-AppManagement-AppStore-DFProperties-End -->

<!-- Device-AppManagement-AppStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-Examples-End -->

<!-- Device-AppManagement-AppStore-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Begin -->
#### Device/AppManagement/AppStore/{PackageFamilyName}

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for uninstalling an app:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Begin -->
##### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Description-Begin -->
<!-- Description-Source-DDF -->
Full name of the package installed.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Architecture

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Architecture
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-Begin -->
<!-- Description-Source-DDF -->
Architecture of installed package. Value type is string.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallDate

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallDate
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Date the app was installed. Value type is string.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallLocation

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallLocation
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Install location of the app on the device. Value type is string.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsBundle

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsBundle
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsFramework

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsFramework
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-Begin -->
<!-- Description-Source-DDF -->
Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsStub

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsStub
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is 1 if the package is a stub package and 0 (zero) for all other cases.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Name

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Name
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the app. Value type is string.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/PackageStatus

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/PackageStatus
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package isn't valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package isn't available for use. It can still be serviced.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Publisher

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Publisher
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher name of the app. Value type is string.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/ResourceID

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/ResourceID
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Users

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Users
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Description-Begin -->
<!-- Description-Source-DDF -->
Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Possible values:

- 0 = Not Installed
- 1 = Staged
- 2 = Installed
- 6 = Paused
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Begin -->
###### Device/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Version

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Version
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the app. Value type is string.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Begin -->
##### Device/AppManagement/AppStore/{PackageFamilyName}/DoNotUpdate

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/DoNotUpdate
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether you want to block a specific app from being updated via auto-updates.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Begin -->
##### Device/AppManagement/AppStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specify whether on a AMD64 device, across an app update, the architecture of the installed app mustn't change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Expected Behavior on an AMD64 machine that has x86 flavor of an app installed (Most restrictive wins).

| Applicability Setting | CSP state      | Result               |
|-----------------------|----------------|----------------------|
| True                  | Not configured | X86 flavor is picked |
| True                  | Enabled        | X86 flavor is picked |
| True                  | Disabled       | X86 flavor is picked |
| False (not set)       | Not configured | X64 flavor is picked |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Begin -->
##### Device/AppManagement/AppStore/{PackageFamilyName}/NonRemovable

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Applicability-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/NonRemovable
```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-OmaUri-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Description-Begin -->
<!-- Description-Source-DDF -->
This setting allows the IT admin to set an app to be nonremovable, or unable to be uninstalled by a user. This is useful in enterprise and education scenarios, where the IT admin might want to ensure that everyone always has certain apps and they won't be removed accidentally. This is also useful when there are multiple users per device, and you want to ensure that one user doesn't remove it for all users.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Description-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
NonRemovable requires admin permission. This setting can only be defined per device, not per user. You can query the setting using AppInventoryQuery or AppInventoryResults.
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Editable-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-DFProperties-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | App isn't in the nonremovable app policy list. |
| 1 | App is included in the nonremovable app policy list. |
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-AllowedValues-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add an app to the nonremovable app policy list

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Add>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
                  <Meta>
                     <Format xmlns="syncml:metinf">int</Format>
                  </Meta>
                  <Data>1</Data>
               </Item>
         </Add>
         <Final/>
         </SyncBody>
   </SyncML>
   ```

- Get the status for a particular app

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Get>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
               </Item>
         </Get>
         <Final/>
        </SyncBody>
    </SyncML>
    ```

- Replace an app in the nonremovable app policy list (Data 0 = app isn't in the app policy list; Data 1 = app is in the app policy list)

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Replace>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
                  <Meta>
                     <Format xmlns="syncml:metinf">int</Format>
                  </Meta>
                  <Data>0</Data>
               </Item>
         </Replace>
         <Final/>
      </SyncBody>
   </SyncML>
   ```
<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-Examples-End -->

<!-- Device-AppManagement-AppStore-{PackageFamilyName}-NonRemovable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-Begin -->
#### Device/AppManagement/AppStore/ReleaseManagement

<!-- Device-AppManagement-AppStore-ReleaseManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.
<!-- Device-AppManagement-AppStore-ReleaseManagement-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> ReleaseManagement settings only apply to updates through the Microsoft Store.
<!-- Device-AppManagement-AppStore-ReleaseManagement-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
<!-- Device-AppManagement-AppStore-ReleaseManagement-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Begin -->
##### Device/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the app or set of apps. If there is only one app, it's the PackageFamilyName. If it's for a set of apps, it's the PackageFamilyName of the main app.
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
| Dynamic Node Naming | UniqueName: If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app. |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Begin -->
###### Device/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the app channel ID.
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Begin -->
###### Device/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Begin -->
###### Device/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user channel ID on the device.
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Begin -->
###### Device/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user release ID on the device.
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Begin -->
###### Device/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId
```
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-End -->

<!-- Device-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-End -->

<!-- Device-AppManagement-LastScanError-Begin -->
### Device/AppManagement/LastScanError

<!-- Device-AppManagement-LastScanError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-LastScanError-Applicability-End -->

<!-- Device-AppManagement-LastScanError-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/LastScanError
```
<!-- Device-AppManagement-LastScanError-OmaUri-End -->

<!-- Device-AppManagement-LastScanError-Description-Begin -->
<!-- Description-Source-DDF -->
Reports the last error code returned by the update scan.
<!-- Device-AppManagement-LastScanError-Description-End -->

<!-- Device-AppManagement-LastScanError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-LastScanError-Editable-End -->

<!-- Device-AppManagement-LastScanError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-LastScanError-DFProperties-End -->

<!-- Device-AppManagement-LastScanError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-LastScanError-Examples-End -->

<!-- Device-AppManagement-LastScanError-End -->

<!-- Device-AppManagement-nonStore-Begin -->
### Device/AppManagement/nonStore

<!-- Device-AppManagement-nonStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-Applicability-End -->

<!-- Device-AppManagement-nonStore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore
```
<!-- Device-AppManagement-nonStore-OmaUri-End -->

<!-- Device-AppManagement-nonStore-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-AppManagement-nonStore-Description-End -->

<!-- Device-AppManagement-nonStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Used to manage enterprise apps or developer apps that weren't acquired from the Microsoft Store.
<!-- Device-AppManagement-nonStore-Editable-End -->

<!-- Device-AppManagement-nonStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-AppManagement-nonStore-DFProperties-End -->

<!-- Device-AppManagement-nonStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-Examples-End -->

<!-- Device-AppManagement-nonStore-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Begin -->
#### Device/AppManagement/nonStore/{PackageFamilyName}

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for uninstalling an app:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Begin -->
##### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Description-Begin -->
<!-- Description-Source-DDF -->
Full name of the package installed.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Architecture

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Architecture
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-Begin -->
<!-- Description-Source-DDF -->
Architecture of installed package. Value type is string.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallDate

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallDate
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Date the app was installed. Value type is string.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallLocation

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallLocation
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Install location of the app on the device. Value type is string.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsBundle

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsBundle
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsFramework

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsFramework
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-Begin -->
<!-- Description-Source-DDF -->
Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsStub

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsStub
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is 1 if the package is a stub package and 0 (zero) for all other cases.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Name

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Name
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the app. Value type is string.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/PackageStatus

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/PackageStatus
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package isn't valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package isn't available for use. It can still be serviced.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Publisher

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Publisher
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher name of the app. Value type is string.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/ResourceID

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/ResourceID
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Users

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Users
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Description-Begin -->
<!-- Description-Source-DDF -->
Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Possible values:

- 0 = Not Installed
- 1 = Staged
- 2 = Installed
- 6 = Paused
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Begin -->
###### Device/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Version

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Version
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the app. Value type is string.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Begin -->
##### Device/AppManagement/nonStore/{PackageFamilyName}/DoNotUpdate

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/DoNotUpdate
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether you want to block a specific app from being updated via auto-updates.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Begin -->
##### Device/AppManagement/nonStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specify whether on a AMD64 device, across an app update, the architecture of the installed app mustn't change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Expected Behavior on an AMD64 machine that has x86 flavor of an app installed (Most restrictive wins).

| Applicability Setting | CSP state      | Result               |
|-----------------------|----------------|----------------------|
| True                  | Not configured | X86 flavor is picked |
| True                  | Enabled        | X86 flavor is picked |
| True                  | Disabled       | X86 flavor is picked |
| False (not set)       | Not configured | X64 flavor is picked |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Begin -->
##### Device/AppManagement/nonStore/{PackageFamilyName}/NonRemovable

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Applicability-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/NonRemovable
```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-OmaUri-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Description-Begin -->
<!-- Description-Source-DDF -->
This setting allows the IT admin to set an app to be nonremovable, or unable to be uninstalled by a user. This is useful in enterprise and education scenarios, where the IT admin might want to ensure that everyone always has certain apps and they won't be removed accidentally. This is also useful when there are multiple users per device, and you want to ensure that one user doesn't remove it for all users.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Description-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
NonRemovable requires admin permission. This setting can only be defined per device, not per user. You can query the setting using AppInventoryQuery or AppInventoryResults.
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Editable-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-DFProperties-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | App isn't in the nonremovable app policy list. |
| 1 | App is included in the nonremovable app policy list. |
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-AllowedValues-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add an app to the nonremovable app policy list

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Add>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
                  <Meta>
                     <Format xmlns="syncml:metinf">int</Format>
                  </Meta>
                  <Data>1</Data>
               </Item>
         </Add>
         <Final/>
         </SyncBody>
   </SyncML>
   ```

- Get the status for a particular app

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Get>
            <CmdID>1</CmdID>
            <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
            </Item>
         </Get>
         <Final/>
      </SyncBody>
   </SyncML>
   ```

- Replace an app in the nonremovable app policy list (Data 0 = app isn't in the app policy list; Data 1 = app is in the app policy list)

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Replace>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
                  <Meta>
                     <Format xmlns="syncml:metinf">int</Format>
                  </Meta>
                  <Data>0</Data>
               </Item>
         </Replace>
         <Final/>
      </SyncBody>
   </SyncML>
   ```
<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-Examples-End -->

<!-- Device-AppManagement-nonStore-{PackageFamilyName}-NonRemovable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-Begin -->
#### Device/AppManagement/nonStore/ReleaseManagement

<!-- Device-AppManagement-nonStore-ReleaseManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.
<!-- Device-AppManagement-nonStore-ReleaseManagement-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
<!-- Device-AppManagement-nonStore-ReleaseManagement-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Begin -->
##### Device/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the app or set of apps. If there is only one app, it's the PackageFamilyName. If it's for a set of apps, it's the PackageFamilyName of the main app.
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
| Dynamic Node Naming | UniqueName: If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app. |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Begin -->
###### Device/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the app channel ID.
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Begin -->
###### Device/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Begin -->
###### Device/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user channel ID on the device.
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Begin -->
###### Device/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user release ID on the device.
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Begin -->
###### Device/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId
```
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-End -->

<!-- Device-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-End -->

<!-- Device-AppManagement-ResetPackage-Begin -->
### Device/AppManagement/ResetPackage

<!-- Device-AppManagement-ResetPackage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-ResetPackage-Applicability-End -->

<!-- Device-AppManagement-ResetPackage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/ResetPackage
```
<!-- Device-AppManagement-ResetPackage-OmaUri-End -->

<!-- Device-AppManagement-ResetPackage-Description-Begin -->
<!-- Description-Source-DDF -->
Used to restore the Windows app to its initial configuration.
<!-- Device-AppManagement-ResetPackage-Description-End -->

<!-- Device-AppManagement-ResetPackage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-ResetPackage-Editable-End -->

<!-- Device-AppManagement-ResetPackage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec, Get |
<!-- Device-AppManagement-ResetPackage-DFProperties-End -->

<!-- Device-AppManagement-ResetPackage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-ResetPackage-Examples-End -->

<!-- Device-AppManagement-ResetPackage-End -->

<!-- Device-AppManagement-System-Begin -->
### Device/AppManagement/System

<!-- Device-AppManagement-System-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-Applicability-End -->

<!-- Device-AppManagement-System-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System
```
<!-- Device-AppManagement-System-OmaUri-End -->

<!-- Device-AppManagement-System-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-AppManagement-System-Description-End -->

<!-- Device-AppManagement-System-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Reports apps installed as part of the operating system.
<!-- Device-AppManagement-System-Editable-End -->

<!-- Device-AppManagement-System-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-AppManagement-System-DFProperties-End -->

<!-- Device-AppManagement-System-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-Examples-End -->

<!-- Device-AppManagement-System-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-Begin -->
#### Device/AppManagement/System/{PackageFamilyName}

<!-- Device-AppManagement-System-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}
```
<!-- Device-AppManagement-System-{PackageFamilyName}-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- Device-AppManagement-System-{PackageFamilyName}-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- Device-AppManagement-System-{PackageFamilyName}-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-AppManagement-System-{PackageFamilyName}-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Begin -->
##### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Description-Begin -->
<!-- Description-Source-DDF -->
Full name of the package installed.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Architecture

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Architecture
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Description-Begin -->
<!-- Description-Source-DDF -->
Architecture of installed package. Value type is string.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallDate

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallDate
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Date the app was installed. Value type is string.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallLocation

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallLocation
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Install location of the app on the device. Value type is string.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsBundle

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsBundle
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsFramework

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsFramework
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-Begin -->
<!-- Description-Source-DDF -->
Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsProvisioned

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsProvisioned
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsStub

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsStub
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is 1 if the package is a stub package and 0 (zero) for all other cases.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Name

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Name
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the app. Value type is string.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/PackageStatus

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/PackageStatus
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package isn't valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package isn't available for use. It can still be serviced.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Publisher

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Publisher
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher name of the app. Value type is string.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/RequiresReinstall

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/RequiresReinstall
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/ResourceID

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/ResourceID
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Users

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Users
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Description-Begin -->
<!-- Description-Source-DDF -->
Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

- 0 = Not Installed
- 1 = Staged
- 2 = Installed
- 6 = Paused
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Version

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Version
```
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the app. Value type is string.
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Begin -->
##### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Description-Begin -->
<!-- Description-Source-DDF -->
AppUpdateSettings nodes to support the auto-update and auto-repair feature for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoRepair

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoRepair
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Description-Begin -->
<!-- Description-Source-DDF -->
AutoRepair node to support auto-repair feature for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoRepair/PackageSource

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoRepair/PackageSource
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Description-Begin -->
<!-- Description-Source-DDF -->
PackageSource node that points the update location for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Allowed Values | Regular Expression: `^(([^;]+(?i)(\.appx|\.eappx|\.appxbundle|\.eappxbundle|\.msix|\.emsix|\.msixbundle|\.emsixbundle)([;]|$)){0,10}|([^;]+(?i)(\.appinstaller)([;]|$)){0,10})$` |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoRepair-PackageSource-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Description-Begin -->
<!-- Description-Source-DDF -->
AutoUpdateSettings nodes to support the auto-updates for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/AutomaticBackgroundTask

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/AutomaticBackgroundTask
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether AutomaticBackgroundTask is enabled/disabled for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| True | AutomaticBackgroundTask is enabled for the package. |
| False (Default) | AutomaticBackgroundTask is disabled for the package. |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-AutomaticBackgroundTask-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/Disable

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/Disable
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the auto-update settings is enabled/disabled for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| True | AutoUpdates settings is disabled for the package. |
| False (Default) | AutoUpdates settings is enabled for the package. |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-Disable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/ForceUpdateFromAnyVersion

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/ForceUpdateFromAnyVersion
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the auto-update setting ForceUpdateFromAnyVersion is enabled/disabled for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| True | ForceUpdateFromAnyVersion is enabled for the package. |
| False (Default) | ForceUpdateFromAnyVersion is disabled for the package. |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ForceUpdateFromAnyVersion-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/HoursBetweenUpdateChecks

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/HoursBetweenUpdateChecks
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies HoursBetweenUpdateChecks for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[8-10000]` |
| Default Value  | 8 |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-HoursBetweenUpdateChecks-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/OnLaunchUpdateCheck

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/OnLaunchUpdateCheck
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether OnLaunchUpdateCheck is enabled/disabled for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| True | OnLaunchUpdateCheck is enabled for the package. |
| False (Default) | OnLaunchUpdateCheck is disabled for the package. |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-OnLaunchUpdateCheck-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/PackageSource

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/PackageSource
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Description-Begin -->
<!-- Description-Source-DDF -->
PackageSource node that points the update location for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Allowed Values | Regular Expression: `^(([^;]+(?i)(\.appinstaller)([;]|$)){1,11})$` |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-PackageSource-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/ShowPrompt

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/ShowPrompt
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the auto-update setting ShowPrompt is enabled/disabled for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| True | ShowPrompt is enabled for the package. |
| False (Default) | ShowPrompt is disabled for the package. |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-ShowPrompt-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Begin -->
###### Device/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/UpdateBlocksActivation

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppUpdateSettings/AutoUpdateSettings/UpdateBlocksActivation
```
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the auto-update setting UpdateBlocksActivation is enabled/disabled for a specific package.
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| True | UpdateBlocksActivation is enabled for the package. |
| False (Default) | UpdateBlocksActivation is disabled for the package. |
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-AppUpdateSettings-AutoUpdateSettings-UpdateBlocksActivation-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Begin -->
##### Device/AppManagement/System/{PackageFamilyName}/DoNotUpdate

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/DoNotUpdate
```
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether you want to block a specific app from being updated via auto-updates.
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-DoNotUpdate-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Begin -->
##### Device/AppManagement/System/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate
```
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specify whether on a AMD64 device, across an app update, the architecture of the installed app mustn't change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Expected Behavior on an AMD64 machine that has x86 flavor of an app installed (Most restrictive wins).

| Applicability Setting | CSP state      | Result               |
|-----------------------|----------------|----------------------|
| True                  | Not configured | X86 flavor is picked |
| True                  | Enabled        | X86 flavor is picked |
| True                  | Disabled       | X86 flavor is picked |
| False (not set)       | Not configured | X64 flavor is picked |
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Begin -->
##### Device/AppManagement/System/{PackageFamilyName}/NonRemovable

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Applicability-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/NonRemovable
```
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-OmaUri-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Description-Begin -->
<!-- Description-Source-DDF -->
This setting allows the IT admin to set an app to be nonremovable, or unable to be uninstalled by a user. This is useful in enterprise and education scenarios, where the IT admin might want to ensure that everyone always has certain apps and they won't be removed accidentally. This is also useful when there are multiple users per device, and you want to ensure that one user doesn't remove it for all users.
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Description-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
NonRemovable requires admin permission. This setting can only be defined per device, not per user. You can query the setting using AppInventoryQuery or AppInventoryResults.
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Editable-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-DFProperties-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | App isn't in the nonremovable app policy list. |
| 1 | App is included in the nonremovable app policy list. |
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-AllowedValues-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add an app to the nonremovable app policy list

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Add>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
                  <Meta>
                     <Format xmlns="syncml:metinf">int</Format>
                  </Meta>
                  <Data>1</Data>
               </Item>
         </Add>
         <Final/>
         </SyncBody>
   </SyncML>
   ```

- Get the status for a particular app

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Get>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
               </Item>
         </Get>
         <Final/>
      </SyncBody>
   </SyncML>
   ```

- Replace an app in the nonremovable app policy list (Data 0 = app isn't in the app policy list; Data 1 = app is in the app policy list)

   ```xml
   <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
         <Replace>
               <CmdID>1</CmdID>
               <Item>
                  <Target>
                     <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/NonRemovable</LocURI>
                  </Target>
                  <Meta>
                     <Format xmlns="syncml:metinf">int</Format>
                  </Meta>
                  <Data>0</Data>
               </Item>
         </Replace>
         <Final/>
      </SyncBody>
   </SyncML>
   ```
<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-Examples-End -->

<!-- Device-AppManagement-System-{PackageFamilyName}-NonRemovable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-Begin -->
#### Device/AppManagement/System/ReleaseManagement

<!-- Device-AppManagement-System-ReleaseManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement
```
<!-- Device-AppManagement-System-ReleaseManagement-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.
<!-- Device-AppManagement-System-ReleaseManagement-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
<!-- Device-AppManagement-System-ReleaseManagement-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Begin -->
##### Device/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}
```
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the app or set of apps. If there is only one app, it's the PackageFamilyName. If it's for a set of apps, it's the PackageFamilyName of the main app.
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
| Dynamic Node Naming | UniqueName: If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app. |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Begin -->
###### Device/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ChannelId

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ChannelId
```
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the app channel ID.
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Begin -->
###### Device/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease
```
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Begin -->
###### Device/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId
```
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user channel ID on the device.
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Begin -->
###### Device/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId
```
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user release ID on the device.
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Begin -->
###### Device/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId
```
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-End -->

<!-- Device-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-End -->

<!-- Device-AppManagement-UpdateScan-Begin -->
### Device/AppManagement/UpdateScan

<!-- Device-AppManagement-UpdateScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-AppManagement-UpdateScan-Applicability-End -->

<!-- Device-AppManagement-UpdateScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/UpdateScan
```
<!-- Device-AppManagement-UpdateScan-OmaUri-End -->

<!-- Device-AppManagement-UpdateScan-Description-Begin -->
<!-- Description-Source-DDF -->
Used to start the Windows Update scan.
<!-- Device-AppManagement-UpdateScan-Description-End -->

<!-- Device-AppManagement-UpdateScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- Device-AppManagement-UpdateScan-Editable-End -->

<!-- Device-AppManagement-UpdateScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-AppManagement-UpdateScan-DFProperties-End -->

<!-- Device-AppManagement-UpdateScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AppManagement-UpdateScan-Examples-End -->

<!-- Device-AppManagement-UpdateScan-End -->

<!-- User-AppInstallation-Begin -->
## User/AppInstallation

<!-- User-AppInstallation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-Applicability-End -->

<!-- User-AppInstallation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation
```
<!-- User-AppInstallation-OmaUri-End -->

<!-- User-AppInstallation-Description-Begin -->
<!-- Description-Source-DDF -->
Used to perform app installation.
<!-- User-AppInstallation-Description-End -->

<!-- User-AppInstallation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppInstallation-Editable-End -->

<!-- User-AppInstallation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppInstallation-DFProperties-End -->

<!-- User-AppInstallation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-Examples-End -->

<!-- User-AppInstallation-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Begin -->
### User/AppInstallation/{PackageFamilyName}

<!-- User-AppInstallation-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}
```
<!-- User-AppInstallation-{PackageFamilyName}-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- User-AppInstallation-{PackageFamilyName}-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- User-AppInstallation-{PackageFamilyName}-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: Package family name (PFN) of the app. |
<!-- User-AppInstallation-{PackageFamilyName}-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for uninstalling an app:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- User-AppInstallation-{PackageFamilyName}-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Begin -->
#### User/AppInstallation/{PackageFamilyName}/HostedInstall

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall
```
<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Command to perform an install of an app package from a hosted location (this can be a local drive, a UNC, or https data source).
<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. The following list shows the supported deployment options:

- ForceApplicationShutdown
- DevelopmentMode
- InstallAllResources
- ForceTargetApplicationShutdown
- ForceUpdateToAnyVersion
- DeferRegistration="1". If the app is in use at the time of installation. This option stages the files for an app update and completes the registration of the app update after the app closes. Available in the latest insider flight of 20H1.
- StageOnly="1". Stages the files for an app installation or update without installing the app. Available in 1803.
- LicenseUri="\\server\license.lic". Deploys an offline license. Available in 1607.
- ValidateDependencies="1". This option is used at provisioning/staging time. If it's set to 1, deployment will perform the same dependency validation during staging that we would normally do at registration time, failing and rejecting the provision request if the dependencies aren't present. Available in the latest insider flight of 20H1.
- ExcludeAppFromLayoutModification="1". Sets that the app will be provisioned on all devices and will be able to retain the apps provisioned without pinning them to start layout. Available in 1809.
<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Add, Delete, Exec, Get |
<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-HostedInstall-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-Begin -->
#### User/AppInstallation/{PackageFamilyName}/LastError

<!-- User-AppInstallation-{PackageFamilyName}-LastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-LastError-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/LastError
```
<!-- User-AppInstallation-{PackageFamilyName}-LastError-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-Description-Begin -->
<!-- Description-Source-DDF -->
Last error relating to the app installation.
<!-- User-AppInstallation-{PackageFamilyName}-LastError-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- User-AppInstallation-{PackageFamilyName}-LastError-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppInstallation-{PackageFamilyName}-LastError-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-LastError-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastError-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Begin -->
#### User/AppInstallation/{PackageFamilyName}/LastErrorDesc

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/LastErrorDesc
```
<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Description-Begin -->
<!-- Description-Source-DDF -->
Description of last error relating to the app installation.
<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-LastErrorDesc-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Begin -->
#### User/AppInstallation/{PackageFamilyName}/ProgressStatus

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/ProgressStatus
```
<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Description-Begin -->
<!-- Description-Source-DDF -->
An integer that indicates the progress of the app installation. For https locations, this indicates the download progress. ProgressStatus isn't available for provisioning and it's only for user-based installations. In provisioning, the value is always 0 (zero).
<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-ProgressStatus-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-Begin -->
#### User/AppInstallation/{PackageFamilyName}/Status

<!-- User-AppInstallation-{PackageFamilyName}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-Status-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/Status
```
<!-- User-AppInstallation-{PackageFamilyName}-Status-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status of app installation. The following values are returned: NOT_INSTALLED (0) - The node was added, but the execution hasn't completed. INSTALLING (1) - Execution has started, but the deployment hasn't completed. If the deployment completes regardless of success, this value is updated. FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription. INSTALLED (3) - Once an install is successful this node is cleaned up, however in the event the clean up action hasn't completed, this state may briefly appear.
<!-- User-AppInstallation-{PackageFamilyName}-Status-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This element isn't present after the app is installed.
<!-- User-AppInstallation-{PackageFamilyName}-Status-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppInstallation-{PackageFamilyName}-Status-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-Status-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-Status-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Begin -->
#### User/AppInstallation/{PackageFamilyName}/StoreInstall

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Applicability-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/StoreInstall
```
<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-OmaUri-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Command to perform an install of an app and a license from the Microsoft Store.
<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Description-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Editable-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Add, Delete, Exec, Get |
<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-DFProperties-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-Examples-End -->

<!-- User-AppInstallation-{PackageFamilyName}-StoreInstall-End -->

<!-- User-AppLicenses-Begin -->
## User/AppLicenses

<!-- User-AppLicenses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-Applicability-End -->

<!-- User-AppLicenses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses
```
<!-- User-AppLicenses-OmaUri-End -->

<!-- User-AppLicenses-Description-Begin -->
<!-- Description-Source-DDF -->
Used to manage licenses for app scenarios.
<!-- User-AppLicenses-Description-End -->

<!-- User-AppLicenses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppLicenses-Editable-End -->

<!-- User-AppLicenses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppLicenses-DFProperties-End -->

<!-- User-AppLicenses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-Examples-End -->

<!-- User-AppLicenses-End -->

<!-- User-AppLicenses-StoreLicenses-Begin -->
### User/AppLicenses/StoreLicenses

<!-- User-AppLicenses-StoreLicenses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses
```
<!-- User-AppLicenses-StoreLicenses-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-Description-Begin -->
<!-- Description-Source-DDF -->
Used to manage licenses for store apps.
<!-- User-AppLicenses-StoreLicenses-Description-End -->

<!-- User-AppLicenses-StoreLicenses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppLicenses-StoreLicenses-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Begin -->
#### User/AppLicenses/StoreLicenses/{LicenseID}

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}
```
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Description-Begin -->
<!-- Description-Source-DDF -->
License ID for a store installed app. The license ID is generally the PFN of the app.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Description-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is an optional node.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: License ID for a store installed app. The license ID is generally the PFN of the app. |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Begin -->
##### User/AppLicenses/StoreLicenses/{LicenseID}/AddLicense

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/AddLicense
```
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Description-Begin -->
<!-- Description-Source-DDF -->
Command to add license.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Description-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-AddLicense-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Begin -->
##### User/AppLicenses/StoreLicenses/{LicenseID}/GetLicenseFromStore

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/GetLicenseFromStore
```
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Description-Begin -->
<!-- Description-Source-DDF -->
Command to get license from the store.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Description-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-GetLicenseFromStore-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Begin -->
##### User/AppLicenses/StoreLicenses/{LicenseID}/LicenseCategory

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/LicenseCategory
```
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Description-Begin -->
<!-- Description-Source-DDF -->
Category of license that's used to classify various license sources. Valid value: Unknown - unknown license category. Retail - license sold through retail channels, typically from the Microsoft Store. Enterprise - license sold through the enterprise sales channel. OEM - license issued to an OEM. Developer - developer license, typically installed during the app development or side-loading scenarios.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Description-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseCategory-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Begin -->
##### User/AppLicenses/StoreLicenses/{LicenseID}/LicenseUsage

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/LicenseUsage
```
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates the allowed usage for the license. Valid values: Unknown - usage is unknown. Online - the license is only valid for online usage. This is for applications with concurrence requirements, such as an app used on several computers, but can only be used on one at any given time. Offline - license is valid for use offline. You don't need a connection to the internet to use this license. Enterprise Root - The license is valid for line of business apps.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Description-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-LicenseUsage-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Begin -->
##### User/AppLicenses/StoreLicenses/{LicenseID}/RequesterID

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Applicability-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/RequesterID
```
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-OmaUri-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the entity that requested the license, such as the client who acquired the license. For example, all licenses issued by the Store for Business for a particular enterprise client has the same RequesterID.
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Description-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The Microsoft Store for Business and Microsoft Store for Education are retired. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Editable-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-DFProperties-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-Examples-End -->

<!-- User-AppLicenses-StoreLicenses-{LicenseID}-RequesterID-End -->

<!-- User-AppManagement-Begin -->
## User/AppManagement

<!-- User-AppManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-Applicability-End -->

<!-- User-AppManagement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement
```
<!-- User-AppManagement-OmaUri-End -->

<!-- User-AppManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Used for inventory and app management (post-install).
<!-- User-AppManagement-Description-End -->

<!-- User-AppManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-Editable-End -->

<!-- User-AppManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppManagement-DFProperties-End -->

<!-- User-AppManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-Examples-End -->

<!-- User-AppManagement-End -->

<!-- User-AppManagement-AppInventoryQuery-Begin -->
### User/AppManagement/AppInventoryQuery

<!-- User-AppManagement-AppInventoryQuery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppInventoryQuery-Applicability-End -->

<!-- User-AppManagement-AppInventoryQuery-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryQuery
```
<!-- User-AppManagement-AppInventoryQuery-OmaUri-End -->

<!-- User-AppManagement-AppInventoryQuery-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the query for app inventory.
<!-- User-AppManagement-AppInventoryQuery-Description-End -->

<!-- User-AppManagement-AppInventoryQuery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Query parameters:

- Output - Specifies the parameters for the information returned in AppInventoryResults operation. Multiple value must be separate by |. Valid values are:
  - PackagesName - returns the *PackageFamilyName* and *PackageFullName* of the app. Default if nothing is specified.
  - PackageDetails - returns all inventory attributes of the package. This information includes all information from PackageNames parameter, but doesn't validate RequiresReinstall.
  - RequiredReinstall - Validates the app status of the apps in the inventory query to determine if they require a reinstallation. This attribute may impact system performance depending on the number of apps installed. Requiring reinstall occurs when resource package updates or when the app is in a tampered state.
- Source - specifies the app classification that aligns to the existing inventory nodes. You can use a specific filter or if no filter is specified then all sources will be returned. If no value is specified, all classifications are returned. Valid values are:
  - AppStore - This classification is for apps that were acquired from Microsoft Store. These were apps directly installed from Microsoft Store or enterprise apps from Microsoft Store for Business.
  - nonStore - This classification is for apps that weren't acquired from the Microsoft Store.
  - System - Apps that are part of the OS. You can't uninstall these apps. This classification is read-only and can only be inventoried.
- PackageTypeFilter - Specifies one or multiple types of packages you can use to query the user or device. Multiple values must be separated by `|`. Valid values are:
  - Main - returns the main installed package.
  - Bundle - returns installed bundle packages.
  - Framework - returns installed framework packages.
  - Resource - returns installed resources packages. Resources are either language, scale, or DirectX resources. They're parts of a bundle.
  - XAP - returns XAP package types. This filter is only supported on Windows Mobile.
  - All - returns all package types.

   If no value is specified, the combination of Main, Bundle, and Framework are returned.

- PackageFamilyName - specifies the name of a particular package. If you specify this parameter, it returns the Package Family name if the package contains this value.

  If you don't specify this value, then all packages are returned.

- Publisher - specifies the publisher of a particular package. If you specify this parameter, it returns the publisher if the value exists in the Publisher field.

  If you don't specify this value, then all publishers are returned.
<!-- User-AppManagement-AppInventoryQuery-Editable-End -->

<!-- User-AppManagement-AppInventoryQuery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get, Replace |
<!-- User-AppManagement-AppInventoryQuery-DFProperties-End -->

<!-- User-AppManagement-AppInventoryQuery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

The following example sets the inventory query for the package names and checks the status for reinstallation for all main packages that are nonStore apps.

```xml
<Replace>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryQuery</LocURI>
      </Target>
      <Meta><Format xmlns="syncml:metinf">xml</Format></Meta>
      <Data><Inventory Output="PackageNames|RequiresReinstall" Source="nonStore" PackageTypeFilter="Main" /></Data>
   </Item>
</Replace>
```
<!-- User-AppManagement-AppInventoryQuery-Examples-End -->

<!-- User-AppManagement-AppInventoryQuery-End -->

<!-- User-AppManagement-AppInventoryResults-Begin -->
### User/AppManagement/AppInventoryResults

<!-- User-AppManagement-AppInventoryResults-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppInventoryResults-Applicability-End -->

<!-- User-AppManagement-AppInventoryResults-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryResults
```
<!-- User-AppManagement-AppInventoryResults-OmaUri-End -->

<!-- User-AppManagement-AppInventoryResults-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the results for app inventory that was created after the AppInventoryQuery operation.
<!-- User-AppManagement-AppInventoryResults-Description-End -->

<!-- User-AppManagement-AppInventoryResults-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-AppInventoryResults-Editable-End -->

<!-- User-AppManagement-AppInventoryResults-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get |
<!-- User-AppManagement-AppInventoryResults-DFProperties-End -->

<!-- User-AppManagement-AppInventoryResults-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example of AppInventoryResults operation.

```xml
<Get>
   <CmdID>11</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryResults</LocURI>
      </Target>
   </Item>
</Get>
```
<!-- User-AppManagement-AppInventoryResults-Examples-End -->

<!-- User-AppManagement-AppInventoryResults-End -->

<!-- User-AppManagement-AppStore-Begin -->
### User/AppManagement/AppStore

<!-- User-AppManagement-AppStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-Applicability-End -->

<!-- User-AppManagement-AppStore-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore
```
<!-- User-AppManagement-AppStore-OmaUri-End -->

<!-- User-AppManagement-AppStore-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-AppManagement-AppStore-Description-End -->

<!-- User-AppManagement-AppStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Used for managing apps from the Microsoft Store.
<!-- User-AppManagement-AppStore-Editable-End -->

<!-- User-AppManagement-AppStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-AppManagement-AppStore-DFProperties-End -->

<!-- User-AppManagement-AppStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-Examples-End -->

<!-- User-AppManagement-AppStore-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-Begin -->
#### User/AppManagement/AppStore/{PackageFamilyName}

<!-- User-AppManagement-AppStore-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for uninstalling an app:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Begin -->
##### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Description-Begin -->
<!-- Description-Source-DDF -->
Full name of the package installed.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Architecture

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Architecture
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-Begin -->
<!-- Description-Source-DDF -->
Architecture of installed package. Value type is string.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Architecture-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallDate

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallDate
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Date the app was installed. Value type is string.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallDate-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallLocation

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/InstallLocation
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Install location of the app on the device. Value type is string.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsBundle

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsBundle
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsBundle-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsFramework

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsFramework
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-Begin -->
<!-- Description-Source-DDF -->
Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsFramework-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsStub

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/IsStub
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is 1 if the package is a stub package and 0 (zero) for all other cases.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-IsStub-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Name

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Name
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the app. Value type is string.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Name-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/PackageStatus

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/PackageStatus
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package isn't valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package isn't available for use. It can still be serviced.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Publisher

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Publisher
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher name of the app. Value type is string.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Publisher-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/ResourceID

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/ResourceID
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-ResourceID-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Users

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Users
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Description-Begin -->
<!-- Description-Source-DDF -->
Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node. Possible values:

- 0 = Not Installed
- 1 = Staged
- 2 = Installed
- 6 = Paused
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Users-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Version

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}/Version
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the app. Value type is string.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-{PackageFullName}-Version-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Begin -->
##### User/AppManagement/AppStore/{PackageFamilyName}/AppSettingPolicy

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/AppSettingPolicy
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for all managed app setting values.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This node is only supported in the user context.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Begin -->
###### User/AppManagement/AppStore/{PackageFamilyName}/AppSettingPolicy/{SettingValue}

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/AppSettingPolicy/{SettingValue}
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Description-Begin -->
<!-- Description-Source-DDF -->
The SettingValue and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed. App. Settings container.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This setting only works for apps that support the feature and it's only supported in the user context.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: SettingValue represents a Key in a Key Value Pair.  Values can be found in LocalSettings in the Managed.App.Settings container. |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- The following example sets the value for the 'Server'

   ```xml
   <!— Configure app settings -->
   <Add>
      <CmdID>0</CmdID>
      <Item>
         <Target>
            <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy/Server</LocURI>
         </Target>
         <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
         </Meta>
         <Data>server1.contoso.com</Data>
      </Item>
   </Add>
   ```

- The following example gets all managed app settings for a specific app.

   ```xml
   <!—- Get app settings -->
   <Get>
      <CmdID>0</CmdID>
      <Item>
         <Target>
            <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy?list=StructData</LocURI>
         </Target>
      </Item>
   </Get>
   ```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Begin -->
##### User/AppManagement/AppStore/{PackageFamilyName}/DoNotUpdate

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/DoNotUpdate
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether you want to block a specific app from being updated via auto-updates.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-DoNotUpdate-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Begin -->
##### User/AppManagement/AppStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate
```
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specify whether on a AMD64 device, across an app update, the architecture of the installed app mustn't change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Expected Behavior on an AMD64 machine that has x86 flavor of an app installed (Most restrictive wins).

|Applicability Setting |CSP state  |Result  |
|---------|---------|---------|
|True |Not configured     |X86 flavor is picked         |
|True |Enabled    |X86 flavor is picked         |
|True |Disabled         |X86 flavor is picked         |
|False (not set) |Not configured         |X64 flavor is picked          |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-End -->

<!-- User-AppManagement-AppStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-Begin -->
#### User/AppManagement/AppStore/ReleaseManagement

<!-- User-AppManagement-AppStore-ReleaseManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement
```
<!-- User-AppManagement-AppStore-ReleaseManagement-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.
<!-- User-AppManagement-AppStore-ReleaseManagement-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> ReleaseManagement settings only apply to updates through the Microsoft Store.
<!-- User-AppManagement-AppStore-ReleaseManagement-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
<!-- User-AppManagement-AppStore-ReleaseManagement-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Begin -->
##### User/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}
```
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the app or set of apps. If there is only one app, it's the PackageFamilyName. If it's for a set of apps, it's the PackageFamilyName of the main app.
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
| Dynamic Node Naming | UniqueName: If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app. |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Begin -->
###### User/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId
```
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the app channel ID.
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Begin -->
###### User/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease
```
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Begin -->
###### User/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId
```
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user channel ID on the device.
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Begin -->
###### User/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId
```
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user release ID on the device.
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Begin -->
###### User/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId
```
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-End -->

<!-- User-AppManagement-AppStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-End -->

<!-- User-AppManagement-LastScanError-Begin -->
### User/AppManagement/LastScanError

<!-- User-AppManagement-LastScanError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-LastScanError-Applicability-End -->

<!-- User-AppManagement-LastScanError-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/LastScanError
```
<!-- User-AppManagement-LastScanError-OmaUri-End -->

<!-- User-AppManagement-LastScanError-Description-Begin -->
<!-- Description-Source-DDF -->
Reports the last error code returned by the update scan.
<!-- User-AppManagement-LastScanError-Description-End -->

<!-- User-AppManagement-LastScanError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-LastScanError-Editable-End -->

<!-- User-AppManagement-LastScanError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-LastScanError-DFProperties-End -->

<!-- User-AppManagement-LastScanError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-LastScanError-Examples-End -->

<!-- User-AppManagement-LastScanError-End -->

<!-- User-AppManagement-nonStore-Begin -->
### User/AppManagement/nonStore

<!-- User-AppManagement-nonStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-Applicability-End -->

<!-- User-AppManagement-nonStore-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore
```
<!-- User-AppManagement-nonStore-OmaUri-End -->

<!-- User-AppManagement-nonStore-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-AppManagement-nonStore-Description-End -->

<!-- User-AppManagement-nonStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Used to manage enterprise apps or developer apps that weren't acquired from the Microsoft Store.
<!-- User-AppManagement-nonStore-Editable-End -->

<!-- User-AppManagement-nonStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-AppManagement-nonStore-DFProperties-End -->

<!-- User-AppManagement-nonStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-Examples-End -->

<!-- User-AppManagement-nonStore-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-Begin -->
#### User/AppManagement/nonStore/{PackageFamilyName}

<!-- User-AppManagement-nonStore-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Begin -->
##### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Description-Begin -->
<!-- Description-Source-DDF -->
Full name of the package installed.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Architecture

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Architecture
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-Begin -->
<!-- Description-Source-DDF -->
Architecture of installed package. Value type is string.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Architecture-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallDate

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallDate
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Date the app was installed. Value type is string.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallDate-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallLocation

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/InstallLocation
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Install location of the app on the device. Value type is string.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-InstallLocation-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsBundle

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsBundle
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsBundle-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsFramework

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsFramework
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-Begin -->
<!-- Description-Source-DDF -->
Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsFramework-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsProvisioned
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsProvisioned-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsStub

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/IsStub
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is 1 if the package is a stub package and 0 (zero) for all other cases.

Value type is int.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-IsStub-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Name

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Name
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the app. Value type is string.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Name-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/PackageStatus

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/PackageStatus
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package isn't valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package isn't available for use. It can still be serviced.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-PackageStatus-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Publisher

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Publisher
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher name of the app. Value type is string.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Publisher-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/RequiresReinstall
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/ResourceID

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/ResourceID
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-ResourceID-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Users

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Users
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Description-Begin -->
<!-- Description-Source-DDF -->
Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Requried.

- Not Installed = 0
- Staged = 1
- Installed = 2
- Paused = 6
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Users-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Version

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/{PackageFullName}/Version
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the app. Value type is string.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-{PackageFullName}-Version-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Begin -->
##### User/AppManagement/nonStore/{PackageFamilyName}/AppSettingPolicy

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/AppSettingPolicy
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for all managed app setting values.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This node is only supported in the user context.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Begin -->
###### User/AppManagement/nonStore/{PackageFamilyName}/AppSettingPolicy/{SettingValue}

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/AppSettingPolicy/{SettingValue}
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Description-Begin -->
<!-- Description-Source-DDF -->
The SettingValue and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed. App. Settings container.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This setting only works for apps that support the feature and it's only supported in the user context.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: SettingValue represents a Key in a Key Value Pair.  Values can be found in LocalSettings in the Managed.App.Settings container. |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
The following example sets the value for the 'Server'

```xml
<!— Configure app settings -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy/Server</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
      </Meta>
      <Data>server1.contoso.com</Data>
   </Item>
</Add>
```

The following example gets all managed app settings for a specific app.

```xml
<!—Get app settings -->
<Get>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Begin -->
##### User/AppManagement/nonStore/{PackageFamilyName}/DoNotUpdate

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/DoNotUpdate
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether you want to block a specific app from being updated via auto-updates.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-AllowedValues-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-DoNotUpdate-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Begin -->
##### User/AppManagement/nonStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate
```
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specify whether on a AMD64 device, across an app update, the architecture of the installed app mustn't change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Expected Behavior on an AMD64 machine that has x86 flavor of an app installed (Most restrictive wins).

| Applicability Setting | CSP state      | Result               |
|-----------------------|----------------|----------------------|
| True                  | Not configured | X86 flavor is picked |
| True                  | Enabled        | X86 flavor is picked |
| True                  | Disabled       | X86 flavor is picked |
| False (not set)       | Not configured | X64 flavor is picked |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-End -->

<!-- User-AppManagement-nonStore-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-Begin -->
#### User/AppManagement/nonStore/ReleaseManagement

<!-- User-AppManagement-nonStore-ReleaseManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement
```
<!-- User-AppManagement-nonStore-ReleaseManagement-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.
<!-- User-AppManagement-nonStore-ReleaseManagement-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
<!-- User-AppManagement-nonStore-ReleaseManagement-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Begin -->
##### User/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}
```
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the app or set of apps. If there is only one app, it's the PackageFamilyName. If it's for a set of apps, it's the PackageFamilyName of the main app.
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
| Dynamic Node Naming | UniqueName: If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app. |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Begin -->
###### User/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ChannelId
```
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the app channel ID.
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ChannelId-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Begin -->
###### User/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease
```
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Begin -->
###### User/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId
```
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user channel ID on the device.
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Begin -->
###### User/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId
```
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user release ID on the device.
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Begin -->
###### User/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId
```
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-End -->

<!-- User-AppManagement-nonStore-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-End -->

<!-- User-AppManagement-RemovePackage-Begin -->
### User/AppManagement/RemovePackage

<!-- User-AppManagement-RemovePackage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-AppManagement-RemovePackage-Applicability-End -->

<!-- User-AppManagement-RemovePackage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/RemovePackage
```
<!-- User-AppManagement-RemovePackage-OmaUri-End -->

<!-- User-AppManagement-RemovePackage-Description-Begin -->
<!-- Description-Source-DDF -->
Used to remove packages.
<!-- User-AppManagement-RemovePackage-Description-End -->

<!-- User-AppManagement-RemovePackage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Parameters:

- Package
  - Name: Specifies the PackageFullName of the particular package to remove.
  - RemoveForAllUsers:
    - 0 (default) - Package will be un-provisioned so that new users don't receive the package. The package will remain installed for current users. This option isn't currently supported.
    - 1 - Package will be removed for all users only if it's a provisioned package.
- User (optional): Specifies the SID of the particular user for whom to remove the package; only the package for the specified user can be removed.
<!-- User-AppManagement-RemovePackage-Editable-End -->

<!-- User-AppManagement-RemovePackage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec, Get |
<!-- User-AppManagement-RemovePackage-DFProperties-End -->

<!-- User-AppManagement-RemovePackage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

The following example removes a package for all users:

````XML
<Exec>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/RemovePackage</LocURI>
      </Target>
      <Meta><Format xmlns="syncml:metinf">xml</Format></Meta>
      <Data>
          <Package Name="{PackageFullName}" RemoveForAllUsers="1" />
      </Data>
   </Item>
</Exec>
````
<!-- User-AppManagement-RemovePackage-Examples-End -->

<!-- User-AppManagement-RemovePackage-End -->

<!-- User-AppManagement-ResetPackage-Begin -->
### User/AppManagement/ResetPackage

<!-- User-AppManagement-ResetPackage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-AppManagement-ResetPackage-Applicability-End -->

<!-- User-AppManagement-ResetPackage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/ResetPackage
```
<!-- User-AppManagement-ResetPackage-OmaUri-End -->

<!-- User-AppManagement-ResetPackage-Description-Begin -->
<!-- Description-Source-DDF -->
Used to restore the Windows app to its initial configuration.
<!-- User-AppManagement-ResetPackage-Description-End -->

<!-- User-AppManagement-ResetPackage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-ResetPackage-Editable-End -->

<!-- User-AppManagement-ResetPackage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec, Get |
<!-- User-AppManagement-ResetPackage-DFProperties-End -->

<!-- User-AppManagement-ResetPackage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-ResetPackage-Examples-End -->

<!-- User-AppManagement-ResetPackage-End -->

<!-- User-AppManagement-System-Begin -->
### User/AppManagement/System

<!-- User-AppManagement-System-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-Applicability-End -->

<!-- User-AppManagement-System-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System
```
<!-- User-AppManagement-System-OmaUri-End -->

<!-- User-AppManagement-System-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-AppManagement-System-Description-End -->

<!-- User-AppManagement-System-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Reports apps installed as part of the operating system.
<!-- User-AppManagement-System-Editable-End -->

<!-- User-AppManagement-System-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-AppManagement-System-DFProperties-End -->

<!-- User-AppManagement-System-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-Examples-End -->

<!-- User-AppManagement-System-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-Begin -->
#### User/AppManagement/System/{PackageFamilyName}

<!-- User-AppManagement-System-{PackageFamilyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}
```
<!-- User-AppManagement-System-{PackageFamilyName}-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.
<!-- User-AppManagement-System-{PackageFamilyName}-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.
<!-- User-AppManagement-System-{PackageFamilyName}-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-AppManagement-System-{PackageFamilyName}-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```
<!-- User-AppManagement-System-{PackageFamilyName}-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Begin -->
##### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Description-Begin -->
<!-- Description-Source-DDF -->
Full name of the package installed.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Architecture

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Architecture
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Description-Begin -->
<!-- Description-Source-DDF -->
Architecture of installed package. Value type is string.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Architecture-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallDate

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallDate
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Date the app was installed. Value type is string.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallDate-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallLocation

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/InstallLocation
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Install location of the app on the device. Value type is string.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-InstallLocation-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsBundle

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsBundle
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsBundle-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsFramework

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsFramework
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-Begin -->
<!-- Description-Source-DDF -->
Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsFramework-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsProvisioned

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsProvisioned
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsProvisioned-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsStub

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/IsStub
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is 1 if the package is a stub package and 0 (zero) for all other cases.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-IsStub-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Name

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Name
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the app. Value type is string.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Name-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/PackageStatus

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/PackageStatus
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package isn't valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package isn't available for use. It can still be serviced.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-PackageStatus-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Publisher

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Publisher
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher name of the app. Value type is string.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Publisher-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/RequiresReinstall

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/RequiresReinstall
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-RequiresReinstall-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/ResourceID

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/ResourceID
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not applicable to XAP files.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-ResourceID-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Users

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Users
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Description-Begin -->
<!-- Description-Source-DDF -->
Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.

- 0 = Not Installed
- 1 = Staged
- 2 = Installed
- 6 = Paused
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Users-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Version

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/{PackageFullName}/Version
```
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the app. Value type is string.
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-{PackageFullName}-Version-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Begin -->
##### User/AppManagement/System/{PackageFamilyName}/AppSettingPolicy

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppSettingPolicy
```
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for all managed app setting values.
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This node is only supported in the user context.
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Begin -->
###### User/AppManagement/System/{PackageFamilyName}/AppSettingPolicy/{SettingValue}

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/AppSettingPolicy/{SettingValue}
```
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Description-Begin -->
<!-- Description-Source-DDF -->
The SettingValue and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed. App. Settings container.
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This setting only works for apps that support the feature and it's only supported in the user context.
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: SettingValue represents a Key in a Key Value Pair.  Values can be found in LocalSettings in the Managed.App.Settings container. |
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- The following example sets the value for the 'Server'

   ```xml
   <!— Configure app settings -->
   <Add>
      <CmdID>0</CmdID>
      <Item>
         <Target>
            <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy/Server</LocURI>
         </Target>
         <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
         </Meta>
         <Data>server1.contoso.com</Data>
      </Item>
   </Add>
   ```

- The following example gets all managed app settings for a specific app.

   ```xml
   <!—Get app settings -->
   <Get>
      <CmdID>0</CmdID>
      <Item>
         <Target>
            <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy?list=StructData</LocURI>
         </Target>
      </Item>
   </Get>
   ```
<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-AppSettingPolicy-{SettingValue}-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Begin -->
##### User/AppManagement/System/{PackageFamilyName}/DoNotUpdate

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/DoNotUpdate
```
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether you want to block a specific app from being updated via auto-updates.
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-AllowedValues-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-DoNotUpdate-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Begin -->
##### User/AppManagement/System/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Applicability-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/{PackageFamilyName}/MaintainProcessorArchitectureOnUpdate
```
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-OmaUri-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specify whether on a AMD64 device, across an app update, the architecture of the installed app mustn't change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Description-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Expected Behavior on an AMD64 machine that has x86 flavor of an app installed (Most restrictive wins).

| Applicability Setting | CSP state      | Result               |
|-----------------------|----------------|----------------------|
| True                  | Not configured | X86 flavor is picked |
| True                  | Enabled        | X86 flavor is picked |
| True                  | Disabled       | X86 flavor is picked |
| False (not set)       | Not configured | X64 flavor is picked |
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Editable-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-DFProperties-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-AllowedValues-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-Examples-End -->

<!-- User-AppManagement-System-{PackageFamilyName}-MaintainProcessorArchitectureOnUpdate-End -->

<!-- User-AppManagement-System-ReleaseManagement-Begin -->
#### User/AppManagement/System/ReleaseManagement

<!-- User-AppManagement-System-ReleaseManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement
```
<!-- User-AppManagement-System-ReleaseManagement-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.
<!-- User-AppManagement-System-ReleaseManagement-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
<!-- User-AppManagement-System-ReleaseManagement-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Begin -->
##### User/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}
```
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifier for the app or set of apps. If there is only one app, it's the PackageFamilyName. If it's for a set of apps, it's the PackageFamilyName of the main app.
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get, Replace |
| Dynamic Node Naming | UniqueName: If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app. |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Begin -->
###### User/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ChannelId

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ChannelId
```
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the app channel ID.
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ChannelId-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Begin -->
###### User/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease
```
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Begin -->
###### User/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ChannelId
```
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user channel ID on the device.
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ChannelId-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Begin -->
###### User/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/EffectiveRelease/ReleaseManagementId
```
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last user release ID on the device.
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-EffectiveRelease-ReleaseManagementId-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Begin -->
###### User/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Applicability-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/System/ReleaseManagement/{ReleaseManagementKey}/ReleaseManagementId
```
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-OmaUri-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-Begin -->
<!-- Description-Source-DDF -->
The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Description-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Editable-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-DFProperties-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-Examples-End -->

<!-- User-AppManagement-System-ReleaseManagement-{ReleaseManagementKey}-ReleaseManagementId-End -->

<!-- User-AppManagement-UpdateScan-Begin -->
### User/AppManagement/UpdateScan

<!-- User-AppManagement-UpdateScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-AppManagement-UpdateScan-Applicability-End -->

<!-- User-AppManagement-UpdateScan-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/UpdateScan
```
<!-- User-AppManagement-UpdateScan-OmaUri-End -->

<!-- User-AppManagement-UpdateScan-Description-Begin -->
<!-- Description-Source-DDF -->
Used to start the Windows Update scan.
<!-- User-AppManagement-UpdateScan-Description-End -->

<!-- User-AppManagement-UpdateScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is a required node.
<!-- User-AppManagement-UpdateScan-Editable-End -->

<!-- User-AppManagement-UpdateScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- User-AppManagement-UpdateScan-DFProperties-End -->

<!-- User-AppManagement-UpdateScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-AppManagement-UpdateScan-Examples-End -->

<!-- User-AppManagement-UpdateScan-End -->

<!-- EnterpriseModernAppManagement-CspMoreInfo-Begin -->

## EnterpriseModernAppManagement XSD

Here is the XSD for the application parameters.

```xml
<?xml version="1.0" encoding="utf-16"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="Data">
        <xs:complexType>
            <xs:sequence>
                <xs:element maxOccurs="1" name="Application">
                    <xs:complexType mixed="true">
                        <xs:sequence minOccurs="0">
                            <xs:element name="Dependencies">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element maxOccurs="unbounded" name="Dependency">
                                            <xs:complexType>
                                                <xs:attribute name="PackageUri" type="xs:string" use="required" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                        <xs:attribute name="DeploymentOptions" type="xs:unsignedByte" use="optional" />
                        <xs:attribute name="PackageUri" type="xs:string" use="required" />
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

## Examples

For examples of how to use this CSP to for reporting apps inventory, installation and removal of apps for users, provisioning apps to devices, and managing app licenses, see [Enterprise app management](../enterprise-app-management.md).

Query the device for a specific app subcategory, such as nonStore apps.

```xml
<Get>
  <CmdID>1</CmdID>
  <Item>
    <Target>
      <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore</LocURI>
    </Target>
  </Item>
</Get>
```

The result contains a list of apps, such as \<Data>App1/App2/App\</Data\>.

Subsequent query for a specific app for its properties.

```xml
<Get>
   <CmdID>1</CmdID>
   <Item>
     <Target>
       <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/App1?list=StructData</LocURI>
     </Target>
   </Item>
</Get>
<Get>
  <CmdID>2</CmdID>
  <Item>
    <Target>
      <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/App2?list=StructData</LocURI>
    </Target>
  </Item>
</Get>
```
<!-- EnterpriseModernAppManagement-CspMoreInfo-End -->

<!-- EnterpriseModernAppManagement-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
