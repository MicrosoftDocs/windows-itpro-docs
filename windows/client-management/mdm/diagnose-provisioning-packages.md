---
title: Diagnose Provisioning Packages
description: Diagnose general failures in provisioning.
ms.reviewer: 
manager: aaroncz
ms.author: lizlong 
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: lizgt2000
ms.date: 01/18/2023
ms.collection: highpri
---

# Diagnose Provisioning Packages
<!-- 

change this per ahmed 
ask vinay anchor tag 

-->
## Unable to apply Power Settings
When applying certain provisioning packages containing power settings ([Configure power settings | Microsoft Learn](/windows-hardware/customize/power-settings/configure-power-settings?view=windows-11)) they require elevated permissions which are not applied when applying PPKGs after the initial setup as seen [Apply a provisioning package (Windows 10/11) - Configure Windows | Microsoft Learn](/windows/configuration/provisioning-packages/provisioning-apply-package#after-initial-setup). An error of STATUS_PRIVILEGE_NOT_HELD (HRESULT=0xc0000061) is given when applying these packages with the incorrect security context.

Simply placing the PPKG into %WINDIR%/Provisioning/Packages and rebooting the machine will apply the packages with the correct security context (NT Authority\SYSTEM - [LocalSystem Account - Win32 apps | Microsoft Learn](/windows/win32/services/localsystem-account)) as stated in the note in [Configure power settings | Microsoft Learn](/windows-hardware/customize/power-settings/configure-power-settings?view=windows-11)

## Unable to perform Bulk Enrollment in Azure AD
Provisioning packages allow enrollment into Azure AD as seen in [(Bulk join a Windows device to Azure AD and Microsoft Endpoint Manager using a provisioning package - Microsoft Community Hub)](https://techcommunity.microsoft.com/t5/intune-customer-success/bulk-join-a-windows-device-to-azure-ad-and-microsoft-endpoint/ba-p/2381400). A few issues can occur:


<!--

TODO: @Harrison Chotzen 

-->

## Unable to apply a multivariant provisioning package
If creating a multivariant package [(Create a provisioning package with multivariant settings (Windows 10/11) - Configure Windows | Microsoft Learn)](/windows/configuration/provisioning-packages/provisioning-multivariant). It may be difficult to diagnose why a certain target did not get applied. There may be conditions improperly authored which, when applied to the target device may not be evaluated as expected.

<!-- 

fix below
I think that now that the information is combined there is overlap and confusion 

-->
Tooling has been included to surface these conditions in the event a certain target did not get applied.

## Diagnosing general failures in provisioning
To help diagnose common problems, you can run the mdmdiagnosticstool and capture multivariant condition values, see [Diagnose MDM failures in Windows 10 - Windows Client Management | Microsoft Learn.](/windows/client-management/diagnose-mdm-failures-in-windows-10)

## Diagnosing multivariant problems
When applying multivariant packages it may be difficult to see why a target was not applied. The MdmDiagnosticsTool [(Diagnose MDM failures in Windows 10 - Windows Client Management | Microsoft Learn)](/windows/client-management/diagnose-mdm-failures-in-windows-10) includes the multivariant condition values on the target system. 
<!-- 

this also needs to be fixed

-->
(Zinc semester addition - Deliverable 41742231: [Hydra] [Tooling] Add MultiVariant handler values to MdmdiagnosticsTool diagnostics) which can be helpful when diagnosing why the PPKG was not applied in the target system.

The MDMDiagReport.xml will contain the Multivariant Conditions in the report. Using powershell, we can get the values like so:
([XML](Get-Content MDMDiagReport.xml)).SelectNodes('//Multivariant') | Select -ExpandProperty Condition