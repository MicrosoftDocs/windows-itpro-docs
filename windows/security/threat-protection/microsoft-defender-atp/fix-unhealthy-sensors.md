---
title: Fix unhealthy sensors in Microsoft Defender ATP
description: Fix machine sensors that are reporting as misconfigured or inactive so that the service receives data from the machine.
keywords: misconfigured, inactive, fix sensor, sensor health,  no sensor data, sensor data, impaired communications, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 10/23/2017
---

# Fix unhealthy sensors in Microsoft Defender ATP

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-fixsensor-abovefoldlink)

Machines that are categorized as misconfigured or inactive can be flagged due to varying causes. This section provides some explanations as to what might have caused a machine to be categorized as inactive or misconfigured.

## Inactive machines

An inactive machine is not necessarily flagged due to an issue. The following actions taken on a machine can cause a machine to be categorized as inactive:

**Machine is not in use**</br>
If the machine has not been in use for more than 7 days for any reason, it will remain in an ‘Inactive’ status in the portal.

**Machine was reinstalled or renamed**</br>
A reinstalled or renamed machine will generate a new machine entity in Microsoft Defender Security Center. The previous machine entity will remain with an ‘Inactive’ status in the portal. If you reinstalled a machine and deployed the Microsoft Defender ATP package, search for the new machine name to verify that the machine is reporting normally.

**Machine was offboarded**</br>
If the machine was offboarded it will still appear in machines list. After 7 days, the machine health state should change to inactive.


**Machine is not sending signals**
If the machine is not sending any signals for more than 7 days to any of the Microsoft Defender ATP channels for any reason including conditions that fall under misconfigured machines classification, a machine can be considered inactive. 


Do you expect a machine to be in ‘Active’ status? [Open a support ticket](https://support.microsoft.com/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636206786382823561).

## Misconfigured machines
Misconfigured machines can further be classified to:
- Impaired communications
- No sensor data

### Impaired communications
This status indicates that there's limited communication between the machine and the service.

The following suggested actions can help fix issues related to a misconfigured machine with impaired communications:

- [Ensure the machine has Internet connection](troubleshoot-onboarding.md#troubleshoot-onboarding-issues-on-the-machine)</br>
  The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender ATP service.

- [Verify client connectivity to Microsoft Defender ATP service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-atp-service-urls)</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Microsoft Defender ATP service URLs.

If you took corrective actions and the machine status is still misconfigured, [open a support ticket](https://go.microsoft.com/fwlink/?LinkID=761093&clcid=0x409).

### No sensor data
A misconfigured machine with status ‘No sensor data’ has communication with the service but can only report partial sensor data.
Follow theses actions to correct known issues related to a misconfigured machine with status ‘No sensor data’:

- [Ensure the machine has Internet connection](troubleshoot-onboarding.md#troubleshoot-onboarding-issues-on-the-machine)</br>
  The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender ATP service.

- [Verify client connectivity to Microsoft Defender ATP service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-atp-service-urls)</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Microsoft Defender ATP service URLs.

- [Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-the-diagnostics-service-is-enabled)</br>
If the machines aren't reporting correctly, you might need to check that the Windows 10 diagnostic data service is set to automatically start and is running on the endpoint.

- [Ensure that Windows Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy)</br>
If your machines are running a third-party antimalware client, the Microsoft Defender ATP agent needs the Windows Defender Antivirus Early Launch Antimalware (ELAM) driver to be enabled.

If you took corrective actions and the machine status is still misconfigured, [open a support ticket](https://go.microsoft.com/fwlink/?LinkID=761093&clcid=0x409).

## Related topic
- [Check sensor health state in Microsoft Defender ATP](check-sensor-status.md)
