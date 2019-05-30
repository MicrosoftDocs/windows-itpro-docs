---
title: How provisioning works in Windows 10 (Windows 10)
description: A provisioning package (.ppkg) is a container for a collection of configuration settings. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# How provisioning works in Windows 10


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Provisioning packages in Windows 10 provide IT administrators with a simplified way to apply configuration settings to Windows 10 devices. Windows Configuration Designer is a tool that makes it easy to create a provisioning package. Windows Configuration Designer can be installed from the [Windows Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit) or through the Microsoft Store.

## Provisioning packages

A provisioning package contains specific configurations/settings and assets that can be provided through a removable media or simply downloaded to the device.

To enable adding multiple sets of settings or configurations, the configuration data used by the provisioning engine is built out of multiple configuration sources that consist of separate provisioning packages. Each provisioning package contains the provisioning data from a different source.

A provisioning package (.ppkg) is a container for a collection of configuration settings. The package has the following format: 

- Package metadata – The metadata contains basic information about the package such as package name, description, version, ranking, and so on. 

- XML descriptors – Each descriptor defines a customization asset or configuration setting included in the package. 

- Asset payloads – The payloads of a customization asset or a configuration setting associated with an app or data asset. 

You can  use provisioning packages for runtime device provisioning by accessing the package on a removable media attached to the device, through near field communication (NFC), or by downloading from a remote source location. 

## Precedence for provisioning packages

When multiple provisioning packages are available for device provisioning, the combination of package owner type and package rank level defined in the package manifest is used to resolve setting conflicts. The pre-defined package owner types are listed below in the order of lowest to highest owner type precedence:

1. Microsoft 

2. Silicon Vendor 

3. OEM 

4. System Integrator 

5. Mobile Operator 

6. IT Admin 

The valid value range of package rank level is 0 to 99. 

When setting conflicts are encountered, the final values provisioned on the device are determined by the owner type precedence and the rank level of the packages containing the settings. For packages with the same owner type, the package rank level determines the package from which the setting values get provisioned on the device. 

## Windows provisioning XML

Windows provisioning XML is the framework that allows Microsoft and OEM components to declare end-user configurable settings and the on-device infrastructure for applying the settings with minimal work by the component owner. 

Settings for each component can be declared within that component's package manifest file. These declarations are turned into settings schema that are used by Windows Configuration Designer to expose the potential settings to users to create customizations in the image or in provisioning packages. Windows Configuration Designer translates the user configuration, which is declared through Windows provisioning answer file(s), into the on-device provisioning format.

When the provisioning engine selects a configuration, the Windows provisioning XML is contained within the selected provisioning data and is passed through the configuration manager and then to the [Windows provisioning CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/provisioning-csp). The Windows provisioning CSP then takes and applies the provisioning to the proper location for the actual component to use. 

## Provisioning engine

The provisioning engine is the core component for managing provisioning and configuration at runtime in a device running Windows 10. 

The provisioning engine provides the following functionality:

- Provisioning configuration at any time when the device is running including first boot and setup or OOBE. It is also extensible to other points during the run-time of the device.
- Reading and combining settings from multiple sources of configuration that may be added to an image by Microsoft, the OEM, or system integrator, or added by IT/education administrators or users to the device at run-time. Configuration sources may be built into the image or from provisioning packages added to the device.
- Responding to triggers or events and initiating a provisioning stage.
- Authenticating the provisioning packages.
- Selecting a set of configuration based on the stage and a set of keys—such as the SIM, MCC/MNC, IMSI range, and so on—that map to a specific configuration then passing this configuration to the configuration management infrastructure to be applied.
- Working with OOBE and the control panel UI to allow user selection of configuration when a specific match cannot be determined.

## Configuration manager

The configuration manager provides the unified way of managing Windows 10 devices. Configuration is mainly done through the Open Mobile Alliance (OMA) Device Management (DM) and Client Provisioning (CP) protocols. The configuration manager handles and parses these protocol requests from different channels and passes them down to [Configuration Service Providers (CSPs)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/configuration-service-provider-reference) to perform the specific management requests and settings. 

The provisioning engine relies on configuration manager for all of the actual processing and application of a chosen configuration. The provisioning engine determines the stage of provisioning and, based on a set of keys, determines the set of configuration to send to the configuration manager. The configuration manager in turn parses and calls into the CSPs for the setting to be applied. 

Underneath the configuration manager are the CSPs. Each section of configuration translates to a particular CSP to handle interpreting into an action on the device. Each CSP translates the instructions in the configuration and calls into the appropriate APIs and components to perform the requested provisioning actions. 

## Policy and resource manager

The policy, resource, and context manager components manage the enrollment and unenrollment of devices into enterprise environments. The enrollment process into an enterprise is essentially the provisioning of configuration and device management policies that the enterprise wants to enforce on the device. This is usually done through the explicit signing up of the device to an enterprise's device management server over a network connection. This provides the user with the ability to access the enterprise's resources through the device and the enterprise with a means to manage and control access and manage and control the device itself. 

The key differences between enterprise enrollment and the configuration performed by the provisioning engine are: 
- Enrollment enforces a limited and controlled set of policies on the device that the user may not have full control over. The provisioning engine exposes a larger set of settings that configure more aspects of the device and are generally user adjustable.
- The policy manager manages policy settings from multiple entities and performs a selection of the setting based on priority of the entities. The provisioning engine applies the settings and does not offer a means of prioritizing settings from different sources. The more specific provisioning is the last one applied and the one that is used.
- Individual policy settings applied from different enrollment entities are stored so they can be removed later during unenrollment. This enables the user to remove enterprise policy and return the device to a state without the enterprise restrictions and any sensitive data. The provisioning engine does not maintain individual provisioning settings or a means to roll back all applied settings.

In Windows 10, the application of policy and enrollment through provisioning is required to support cases where an enterprise or educational institution does not have a DM server for full device management. The provisioning engine supports provisioning enrollment and policy through its configuration and integrates with the existing policy and resource manager components directly or through the configuration manager. 

## Triggers and stages

Triggers are events during the lifetime of the system that start a provisioning stage. Some examples of triggers are: boot, OOBE, SIM change, user added, administrator added, user login, device update, and various manual triggers (such as deployment over USB or launched from an email attachment or USB flash drive).

When a trigger occurs, provisioning is initiated for a particular provisioning stage. The stages are grouped into sets based on the scope of the settings:
- **Static**: First stage run for provisioning to apply configuration settings to the system to set up OOBE or apply device-wide settings that cannot be done when the image is being created.
- **System**: Run during OOBE and configure system-wide settings.
- **UICC**: UICC stages run for each new UICC in a device to handle configuration and branding based on the identity of the UICC or SIM card. This enables the runtime configuration scenarios where an OEM can maintain one image that can be configured for multiple operators.
- **Update**: Runs after an update to apply potential updated settings changes.
- **User**: runs during a user account first run to configure per-user settings.









## Device provisioning during OOBE

The provisioning engine always applies provisioning packages persisted in the `C:\Recovery\Customizations` folder on the OS partition. When the provisioning engine applies provisioning packages in the `%ProgramData%\Microsoft\Provisioning` folder, certain runtime setting applications, such as the setting to install and configure Windows apps, may be extended past the OOBE pass and continually be processed in the background when the device gets to the desktop. Settings for configuring policies and certain crucial system configurations are always be completed before the first point at which they must take effect. 

Device users can apply a provisioning package from a remote source when the device first boots to OOBE. The device provisioning during OOBE is only triggered after the language, locale, time zone, and other settings on the first OOBE UI page are configured.  When device provisioning is triggered, the provisioning UI is displayed in the OOBE page. The provisioning UI allows users to select a provisioning package acquired from a remote source, such as through NFC or a removable media. 

The following table shows how device provisioning can be initiated when a user first boots to OOBE.


| Package delivery | Initiation method | Supported device |
| --- | --- | --- |
| Removable media - USB drive or SD card</br> (Packages must be placed at media root) | 5 fast taps on the Windows key to launch the provisioning UI |All Windows devices |
| From an administrator device through machine-to-machine NFC or NFC tag</br>(The administrator device must run an app that can transfer the package over NFC) | 5 fast taps on the Windows key to launch the provisioning UI | Windows 10 Mobile devices and IoT Core devices |
 
The provisioning engine always copies the acquired provisioning packages to the `%ProgramData%\Microsoft\Provisioning` folder before processing them during OOBE. The provisioning engine always applies provisioning packages embedded in the installed Windows image during Windows Setup OOBE pass regardless of whether the package is signed and trusted. When the provisioning engine applies an encrypted provisioning package on an end-user device during OOBE, users must first provide a valid password to decrypt the package. The provisioning engine also checks whether a provisioning package is signed and trusted; if it's not, the user must provide consent before the package is applied to the device. 

When the provisioning engine applies provisioning packages during OOBE, it applies only the runtime settings from the package to the device. Runtime settings can be system-wide configuration settings, including security policy, Windows app install/uninstall, network configuration, bootstrapping MDM enrollment, provisioning of file assets, account and domain configuration, Windows edition upgrade, and more. The provisioning engine also checks for the configuration settings on the device, such as region/locale or SIM card, and applies the multivariant settings with matching condition(s). 

## Device provisioning at runtime

At device runtime, stand-alone provisioning packages can be applied by user initiation. The following table shows when provisioning at device runtime can be initiated.

| Package delivery | Initiation method | Supported device |
| --- | --- | --- |
| Removable media - USB drive or SD card</br>(Packages must be placed at media root) | **Settings** > **Accounts** > **Access work or school** > **Add or remove a provisioning package** | All Windows devices |
| Downloaded from a network connection and copied to a local folder | Double-click the package file | Windows 10 for desktop editions devices |
| From an administrator device connected to the target device through USB tethering | Drag and drop the package file onto the target device | Windows 10 Mobile devices and IoT Core devices |

When applying provisioning packages from a removable media attached to the device, the Settings UI allows viewing contents of a package before selecting the package for provisioning. To minimize the risk of the device being spammed by applying provisioning packages from unknown sources, a provisioning package can be signed and encrypted. Partners can also set policies to limit the application of provisioning packages at device runtime. Applying provisioning packages at device runtime requires administrator privilege. If the package is not signed or trusted, a user must provide consent before the package is applied to the device. If the package is encrypted, a valid password is needed to decrypt the package before it can be applied to the device.

When applying multiple provisioning packages to a device, the provisioning engine resolves settings with conflicting configuration values from different packages by evaluating the package ranking using the combination of package owner type and package rank level defined in the package metadata. A configuration setting applied from a provisioning package with the highest package ranking will be the final value applied to the device.

After a stand-alone provisioning package is applied to the device, the package is persisted in the `%ProgramData%\Microsoft\Provisioning` folder on the device. Provisioning packages can be removed by an administrator by using the **Add or remove a provisioning package** available under **Settings** > **Accounts** > **Access work or school**. 


## Learn more

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)


## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)




 

 





