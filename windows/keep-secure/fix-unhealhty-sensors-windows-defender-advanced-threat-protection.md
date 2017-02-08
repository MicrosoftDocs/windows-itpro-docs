---
title: Fix unhealthy sensors in Windows Defender ATP
description: Fix machine sensors that are reporting as misconfigured or inactive.
keywords: misconfigured, inactive, fix sensor, sensor health,  no sensor data, sensor data, impaired communication, communication
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Fix unhealthy sensors

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Machines that are categorized as misconfigured or inactive can have varying causes of being flagged. This section provides some explanations as to what might have caused a machine to be categorized as inactive or misconfigured.

## Inactive machines

An inactive machine is not necessarily due to an issue. The following actions taken on a machine can cause a machine to be categorized as inactive:

**Machine was reinstalled or renamed**</br>
A reinstalled or renamed machine will generate a new machine entity in Windows Defender ATP portal. The previous machine entity will remain in the portal with a status ‘Inactive’. If you reinstalled a machine and deployed the Windows Defender ATP package, search for the new machine name to verify that the machine is reporting normally.


**Machine is not in use**</br>
If the machine has not been in use for more than 7 days for any reason, it will remain in the portal in status ‘Inactive’

**Machine was offboarded**</br>
If the machine was offboarded it will still appear in machines view. After 7 days, the machine health status should change to inactive.

Do you expect a machine to be in ‘Active’ status? [Open a CSS ticket](https://support.microsoft.com/en-us/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636206786382823561).

## Misconfigured machines
Misconfigured machines can further be classified to:
  - Impaired communication
  - No sensor data

### Impaired communication
This status indicates that there's limited communication between the machine and the service.

The following suggested actions can help fix issues related to a misconfigured machine with impaired communication:

- [Ensure the endpoint has Internet connection](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-the-endpoint-has-an-internet-connection)
  The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Windows Defender ATP service.

- Verify client connectivity to Windows Defender ATP service URLs</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Windows Defender ATP service URLs.

If you took corrective actions and the machine status is still misconfigured, [open a CSS ticket](https://support.microsoft.com/en-us/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636206786382823561).

### No sensor data
A misconfigured machine with status ‘No sensor data’ has communication with the service but can only report partial sensor data.
Follow theses actions to correct known issues related to a misconfigured machine with status ‘Impaired communication’:

- [Ensure the endpoint has Internet connection](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-the-endpoint-has-an-internet-connection)
  The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Windows Defender ATP service.

- Verify client connectivity to Windows Defender ATP service URLs</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Windows Defender ATP service URLs.

- [Ensure the telemetry and diagnostics service is enabled](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-the-telemetry-and-diagnostics-service-is-enabled)
If the endpoints aren't reporting correctly, you might need to check that the Windows 10 telemetry and diagnostics service is set to automatically start and is running on the endpoint.

- [Ensure that Windows Defender is not disabled by policy](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-that-windows-defender-is-not-disabled-by-a-policy)
If your endpoints are running a third-party antimalware client, the Windows Defender ATP agent needs the Windows Defender Early Launch Antimalware (ELAM) driver to be enabled.

If you took corrective actions and the machine status is still misconfigured, [open a CSS ticket](https://support.microsoft.com/en-us/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636206786382823561).
