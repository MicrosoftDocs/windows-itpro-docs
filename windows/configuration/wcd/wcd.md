---
title: Windows Configuration Designer provisioning settings (Windows 10)
description: This section describes the settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.topic: article
ms.date: 07/19/2018
---

# Windows Configuration Designer provisioning settings (reference)

This section describes the settings that you can configure in [provisioning packages](../provisioning-packages/provisioning-packages.md) for Windows 10 using Windows Configuration Designer. 

## Edition that each group of settings applies to

| Setting group | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
[AccountManagement](wcd-accountmanagement.md) |  |  |  | X |  |
| [Accounts](wcd-accounts.md) | X | X | X | X | X |
| [ADMXIngestion](wcd-admxingestion.md) | X | | | | |
| [AssignedAccess](wcd-assignedaccess.md) | X |  | | X | |
| [AutomaticTime](wcd-automatictime.md) | | X | | | |
| [Browser](wcd-browser.md) | X | X | X |  |  |
| [CallAndMessagingEnhancement](wcd-callandmessagingenhancement.md) | | X | | | |
| [Calling](wcd-calling.md) | | X | | | |
| [CellCore](wcd-cellcore.md) | X | X | | | |
| [Cellular](wcd-cellular.md) | X |  |  |  |  |
| [Certificates](wcd-certificates.md) | X | X | X | X | X |
| [CleanPC](wcd-cleanpc.md) | X |  |  |  |  |
| [Connections](wcd-connections.md) | X | X | X |  |  |
| [ConnectivityProfiles](wcd-connectivityprofiles.md) | X | X | X | X |  |
| [CountryAndRegion](wcd-countryandregion.md) | X | X | X |  |  |
| [DesktopBackgroundAndColors](wcd-desktopbackgroundandcolors.md) | X |  |  |  |  |
| [DeveloperSetup](wcd-developersetup.md) |  |  |  | X |  |
| [DeviceFormFactor](wcd-deviceformfactor.md) |  X | X | X |  |  |
| [DeviceInfo](wcd-deviceinfo.md) | | X | | | |
| [DeviceManagement](wcd-devicemanagement.md) |  X | X | X | X |  |
| [DeviceUpdateCenter](wcd-deviceupdatecenter.md) | X |  |  |  |  |
| [DMClient](wcd-dmclient.md) | X | X | X |  | X |
| [EditionUpgrade](wcd-editionupgrade.md) | X | X |  | X |  |
| [EmbeddedLockdownProfiles](wcd-embeddedlockdownprofiles.md) |  | X |  |  |  |
| [FirewallConfiguration](wcd-firewallconfiguration.md) |  |  |  |  | X |
| [FirstExperience](wcd-firstexperience.md) |  |  |  | X |  |
| [Folders](wcd-folders.md) |X | X | X |  |  |
| [InitialSetup](wcd-initialsetup.md) |  | X |  |  |  |
| [InternetExplorer](wcd-internetexplorer.md) |  | X |  |  |  |
| [KioskBrowser](wcd-kioskbrowser.md) |  |  |  |  | X |
| [Licensing](wcd-licensing.md) | X |  |  |  |  |
| [Location](wcd-location.md) |  |  |  |  | X |
| [Maps](wcd-maps.md) |X | X | X |  |  |
| [Messaging](wcd-messaging.md) |  | X |  |  |  |
| [ModemConfigurations](wcd-modemconfigurations.md) |  | X |  |  |  |
| [Multivariant](wcd-multivariant.md) |  | X |  |  |  |
| [NetworkProxy](wcd-networkproxy.md) |  |  | X |  |  |
| [NetworkQOSPolicy](wcd-networkqospolicy.md) |  |  | X |  |  |
| [NFC](wcd-nfc.md) |  | X |  |  |  |
| [OOBE](wcd-oobe.md) | X | X |  |  |  |
| [OtherAssets](wcd-otherassets.md) |  | X |  |  |  |
| [Personalization](wcd-personalization.md) | X |  |  |  |  |
| [Policies](wcd-policies.md) | X | X | X | X | X |
| [Privacy](wcd-folders.md) |X | X | X |  | X |
| [ProvisioningCommands](wcd-provisioningcommands.md) | X |  |  |  |  |
| [RcsPresence](wcd-rcspresence.md) |  | X |  |  |  |
| [SharedPC](wcd-sharedpc.md) | X |  |  |  |  |
| [Shell](wcd-shell.md) |  | X |  |  |  |
| [SMISettings](wcd-smisettings.md) | X |  |  |  |  |
| [Start](wcd-start.md) | X | X |  |  |  |
| [StartupApp](wcd-startupapp.md) |  |  |  |  | X |
| [StartupBackgroundTasks](wcd-startupbackgroundtasks.md) |  |  |  |  | X |
| [StorageD3InModernStandby](wcd-storaged3inmodernstandby.md) |X | X | X |  | X |
| [SurfaceHubManagement](wcd-surfacehubmanagement.md) |  |  |  X  |  |  |
| [TabletMode](wcd-tabletmode.md) |X | X | X |  |  |
| [TakeATest](wcd-takeatest.md) | X |  |  |  |  |
| [TextInput](wcd-textinput.md) |  | X |  |  |  |
| [Theme](wcd-theme.md) |  | X |  |  |  |
| [Time](wcd-time.md) | X |  |  |  |  |
| [UnifiedWriteFilter](wcd-unifiedwritefilter.md) | X |  |  |  | X |
| [UniversalAppInstall](wcd-universalappinstall.md) | X | X | X |  | X |
| [UniversalAppUninstall](wcd-universalappuninstall.md) | X | X | X |  | X |
| [UsbErrorsOEMOverride](wcd-usberrorsoemoverride.md) | X | X | X |  |  |
| [WeakCharger](wcd-weakcharger.md) |X | X | X |  |  |
| [WindowsHelloForBusiness](wcd-windowshelloforbusiness.md) | X |  |  |  |  |
| [WindowsTeamSettings](wcd-windowsteamsettings.md) |  |  | X |  |  |
| [Workplace](wcd-workplace.md) |X | X | X |  | X |


