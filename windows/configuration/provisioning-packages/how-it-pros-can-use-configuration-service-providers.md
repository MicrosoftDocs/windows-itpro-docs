---
title: Configuration service providers for IT pros (Windows 10/11)
description: Describes how IT pros and system administrators can use configuration service providers (CSPs) to configure devices.
ms.reviewer: gkomatsu
manager: aaroncz
ms.prod: windows-client
author: lizgt2000
ms.author: lizlong
ms.topic: article
ms.localizationpriority: medium
ms.technology: itpro-configure
---

# Configuration service providers for IT pros

**Applies to**

- Windows 10
- Windows 11

This article explains how IT pros and system administrators can take advantage of many settings available through configuration service providers (CSPs) to configure devices running Windows client in their organizations. CSPs expose device configuration settings in Windows client. The CSPs are used by mobile device management (MDM) service providers and are documented in the [Hardware Dev Center](/windows/client-management/mdm/configuration-service-provider-reference).

## What is a CSP?

In the client operating system, a CSP is the interface between configuration settings that are specified in a provisioning document and configuration settings that are on the device. CSPs are similar to Group Policy client-side extensions in that they provide an interface to read, set, modify, or delete configuration settings for a given feature. Typically, these settings map to registry keys, files, or permissions. Some of these settings are configurable, and some are read-only.

On the Windows client platform, the management approach for desktop uses CSPs to configure and manage all devices running Windows client.

Each CSP provides access to specific settings. For example, the [Wi-Fi CSP](/windows/client-management/mdm/wifi-csp) contains the settings to create a Wi-Fi profile.

CSPs are behind many of the management tasks and policies for Windows client, both in Microsoft Intune and in non-Microsoft MDM service providers. For example, in Intune, the policy to allow search suggestions in the Microsoft Edge address bar uses **Browser/AllowSearchSuggestionsinAddressBar** in the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider).

:::image type="content" source="../images/policytocsp.png" alt-text="How intune maps to CSP":::

CSPs receive configuration policies in the XML-based Synchronization Markup Language (SyncML) format, pushed from an MDM-compliant management server, such as Microsoft Intune. Traditional enterprise management systems, such as Microsoft Configuration Manager, can also target CSPs, by using a client-side Windows Management Instrumentation (WMI)-to-CSP Bridge.

### Synchronization Markup Language (SyncML)

The Open Mobile Alliance Device Management (OMA-DM) protocol uses the XML-based SyncML for data exchange between compliant servers and clients. SyncML offers an open standard to use as an alternative to vendor-specific management solutions (such as WMI). The value for enterprises adopting industry standard management protocols is that it allows the management of a broader set of vendor devices using a single platform (such as Microsoft Intune). Device policies, including VPN connection profiles, are delivered to client devices formatted as in SyncML. The target CSP reads this information and applies the necessary configurations.

### The WMI-to-CSP Bridge

The WMI-to-CSP Bridge is a component allowing configuration of Windows client CSPs using scripts and traditional enterprise management software, such as Configuration Manager using WMI. The bridge is responsible for reading WMI commands and through a component called the common device configurator pass them to a CSP for application on the device.

[Learn how to use the WMI Bridge Provider with PowerShell.](/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider)

## Why should you learn about CSPs?

Generally, enterprises rely on Group Policy or MDM to configure and manage devices. For devices running Windows, MDM services use CSPs to configure your devices.

In addition, you may have unmanaged devices, or a large number of devices that you want to configure before enrolling them in management. You may also want to apply custom settings that aren't available through your MDM service. The [CSP documentation](#bkmk-csp-doc) can help you understand the settings that can be configured or queried. You can also learn about all of the available configuration settings.

### CSPs in Windows Configuration Designer

You can use Windows Configuration Designer to create [provisioning packages](./provisioning-packages.md) to apply settings to devices during the out-of-box-experience (OOBE), and after the devices are set up. You can also use provisioning packages to configure a device's connectivity and enroll the device in MDM. Many of the runtime settings in Windows Configuration Designer are based on CSPs.

Many settings in Windows Configuration Designer will display documentation for that setting in the center pane, and will include a reference to the CSP if the setting uses one, as shown in the following image.

:::image type="content" source="../images/cspinicd.png" alt-text="In Windows Configuration Designer, how help content appears in ICD.":::

[Provisioning packages in Windows client](provisioning-packages.md) explains how to use the Windows Configuration Designer tool to create a runtime provisioning package.

### CSPs in MDM

Most, if not all, CSPs are surfaced through your MDM service. If you see a CSP that provides a capability that you want to make use of and cannot find that capability in your MDM service, contact your MDM provider for assistance. It might be named differently than you expected. You can see the CSPs supported by MDM in the [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference).

When a CSP is available but is not explicitly included in your MDM solution, you may be able to make use of the CSP by using OMA-URI settings. In Intune, for example, you can use [custom policy settings](/mem/intune/configuration/custom-settings-configure) to deploy settings. Intune documents [a partial list of settings](/mem/intune/configuration/custom-settings-windows-10) that you can enter in the **OMA-URI Settings** section of a custom policy, if your MDM service provides that extension. You'll notice that the list doesn't explain the meanings of the allowed and default values, so use the [CSP reference documentation](/windows/client-management/mdm/configuration-service-provider-reference) to locate that information.

### CSPs in Lockdown XML

## <a href="" id="bkmk-csp-doc"></a>How do you use the CSP documentation?

All CSPs are documented in the [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference).

The [CSP reference](/windows/client-management/mdm/configuration-service-provider-reference) tells you which CSPs are supported on each edition of Windows, and links to the documentation for each individual CSP.

:::image type="content" source="../images/csptable.png" alt-text="The CSP reference shows the supported Windows editions":::

The documentation for each CSP follows the same structure. After an introduction that explains the purpose of the CSP, a diagram shows the parts of the CSP in tree format.

The full path to a specific configuration setting is represented by its Open Mobile Alliance - Uniform Resource Identifier (OMA-URI). The URI is relative to the devices’ root node (MSFT, for example). Features supported by a particular CSP can be set by addressing the complete OMA-URI path.

The following example shows the diagram for the [AssignedAccess CSP](/windows/client-management/mdm/assignedaccess-csp). The diagram maps to the XML for that CSP. Notice the different shapes in the diagram: rounded elements are nodes, and rectangular elements are settings or policies for which a value must be supplied.

:::image type="content" source="../images/provisioning-csp-assignedaccess.png" alt-text="The CSP reference shows the assigned access CSP tree.":::

The element in the tree diagram after the root node tells you the name of the CSP. Knowing this structure, you would recognize in XML the parts of the URI path for that CSP and, if you saw it in XML, you would know which CSP reference to look up. For example, in the following OMS-URI path for the kiosk mode app settings, you can see that it uses the [AssignedAccess CSP](/windows/client-management/mdm/assignedaccess-csp).

```XML
./Vendor/MSFT/AssignedAccess/KioskModeApp
```

When an element in the diagram uses _italic_ font, it indicates a placeholder for specific information, such as the tenant ID in the following example.

:::image type="content" source="../images/csp-placeholder.png" alt-text="The placeholder in the CSP tree":::

After the diagram, the documentation describes each element. For each policy or setting, the valid values are listed.

For example, in the [AssignedAccess CSP](/windows/client-management/mdm/assignedaccess-csp), the setting is **KioskModeApp**. The documentation tells you that the value for **KioskModeApp** is a JSON string that contains the user account name and Application User Model ID (AUMID) of the Kiosk mode app.

The documentation for most CSPs will also include an XML example.

## CSP examples

CSPs provide access to many settings useful to enterprises. This section introduces the CSPs that an enterprise might find useful.

-   [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider)

    The Policy CSP enables the enterprise to configure policies on Windows client. Some of these policy settings can also be applied using Group Policy, and the CSP documentation lists the equivalent Group Policy settings.

    Some of the settings available in the Policy CSP include the following:

    -   **Accounts**, such as whether a non-Microsoft account can be added to the device.
    -   **Application management**, such as whether only Microsoft Store apps are allowed.
    -   **Bluetooth**, such as the services allowed to use it.
    -   **Browser**, such as restricting InPrivate browsing.
    -   **Connectivity**, such as whether the device can be connected to a computer by USB.
    -   **Defender** (for desktop only), such as day and time to scan.
    -   **Device lock**, such as the type of PIN or password required to unlock the device.
    -   **Experience**, such as allowing Cortana.
    -   **Security**, such as whether provisioning packages are allowed.
    -   **Settings**, such as enabling the user to change VPN settings.
    -   **Start**, such as applying a standard Start layout.
    -   **System**, such as allowing the user to reset the device.
    -   **Text input**, such as allowing the device to send anonymized user text input data samples to Microsoft.
    -   **Update**, such as whether the device can use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store.
    -   **WiFi**, such as whether Internet sharing is enabled.

Here is a list of CSPs supported on Windows 10 Enterprise:

-   [ActiveSync CSP](/windows/client-management/mdm/activesync-csp)
-   [Application CSP](/windows/client-management/mdm/application-csp)
-   [AppLocker CSP](/windows/client-management/mdm/applocker-csp)
-   [AssignedAccess CSP](/windows/client-management/mdm/assignedaccess-csp)
-   [Bootstrap CSP](/windows/client-management/mdm/bootstrap-csp)
-   [BrowserFavorite CSP](/windows/client-management/mdm/browserfavorite-csp)
-   [CellularSettings CSP](/windows/client-management/mdm/cellularsettings-csp)
-   [CertificateStore CSP](/windows/client-management/mdm/certificatestore-csp)
-   [ClientCertificateInstall CSP](/windows/client-management/mdm/clientcertificateinstall-csp)
-   [CM\_CellularEntries CSP](/windows/client-management/mdm/cm-cellularentries-csp)
-   [CM\_ProxyEntries CSP](/windows/client-management/mdm/cm-proxyentries-csp)
-   [CMPolicy CSP](/windows/client-management/mdm/cmpolicy-csp)
-   [Defender CSP](/windows/client-management/mdm/defender-csp)
-   [DevDetail CSP](/windows/client-management/mdm/devdetail-csp)
-   [DeviceInstanceService CSP](/windows/client-management/mdm/deviceinstanceservice-csp)
-   [DeviceLock CSP](/windows/client-management/mdm/devicelock-csp)
-   [DeviceStatus CSP](/windows/client-management/mdm/devicestatus-csp)
-   [DevInfo CSP](/windows/client-management/mdm/devinfo-csp)
-   [DiagnosticLog CSP](/windows/client-management/mdm/diagnosticlog-csp)
-   [DMAcc CSP](/windows/client-management/mdm/dmacc-csp)
-   [DMClient CSP](/windows/client-management/mdm/dmclient-csp)
-   [Email2 CSP](/windows/client-management/mdm/email2-csp)
-   [EnterpriseAPN CSP](/windows/client-management/mdm/enterpriseapn-csp)
-   [EnterpriseAssignedAccess CSP](/windows/client-management/mdm/enterpriseassignedaccess-csp)
-   [EnterpriseDesktopAppManagement CSP](/windows/client-management/mdm/enterprisedesktopappmanagement-csp)
-   [EnterpriseExt CSP](/windows/client-management/mdm/enterpriseext-csp)
-   [EnterpriseModernAppManagement CSP](/windows/client-management/mdm/enterprisemodernappmanagement-csp)
-   [FileSystem CSP](/windows/client-management/mdm/filesystem-csp)
-   [HealthAttestation CSP](/windows/client-management/mdm/healthattestation-csp)
-   [HotSpot CSP](/windows/client-management/mdm/hotspot-csp)
-   [Maps CSP](/windows/client-management/mdm/maps-csp)
-   [NAP CSP](/windows/client-management/mdm/filesystem-csp)
-   [NAPDEF CSP](/windows/client-management/mdm/napdef-csp)
-   [NodeCache CSP](https://go.microsoft.com/fwlink/p/?LinkId=723265)
-   [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp)
-   [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider)
-   [PolicyManager CSP](https://go.microsoft.com/fwlink/p/?LinkId=723418)
-   [Provisioning CSP](/windows/client-management/mdm/provisioning-csp)
-   [Proxy CSP](https://go.microsoft.com/fwlink/p/?LinkId=723372)
-   [PXLOGICAL CSP](/windows/client-management/mdm/pxlogical-csp)
-   [Registry CSP](/windows/client-management/mdm/registry-csp)
-   [RemoteFind CSP](/windows/client-management/mdm/remotefind-csp)
-   [RemoteWipe CSP](/windows/client-management/mdm/remotewipe-csp)
-   [Reporting CSP](/windows/client-management/mdm/reporting-csp)
-   [RootCATrustedCertificates CSP](/windows/client-management/mdm/rootcacertificates-csp)
-   [SecurityPolicy CSP](/windows/client-management/mdm/securitypolicy-csp)
-   [Storage CSP](/windows/client-management/mdm/storage-csp)
-   [SUPL CSP](/windows/client-management/mdm/supl-csp)
-   [UnifiedWriteFilter CSP](/windows/client-management/mdm/unifiedwritefilter-csp)
-   [Update CSP](/windows/client-management/mdm/update-csp)
-   [VPN CSP](/windows/client-management/mdm/vpn-csp)
-   [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp)
-   [Wi-Fi CSP](/windows/client-management/mdm/wifi-csp)
-   [WindowsLicensing CSP](/windows/client-management/mdm/windowslicensing-csp)
-   [WindowsSecurityAuditing CSP](/windows/client-management/mdm/windowssecurityauditing-csp)
