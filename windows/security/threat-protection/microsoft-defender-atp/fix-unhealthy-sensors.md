---
title: Fix unhealthy sensors in Microsoft Defender for Endpoint
description: Fix device sensors that are reporting as misconfigured or inactive so that the service receives data from the device.
keywords: misconfigured, inactive, fix sensor, sensor health,  no sensor data, sensor data, impaired communications, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.date: 11/06/2020
ms.technology: mde
---

# Fix unhealthy sensors in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-fixsensor-abovefoldlink)

Devices that are categorized as misconfigured or inactive can be flagged due to varying causes. This section provides some explanations as to what might have caused a device to be categorized as inactive or misconfigured.

## Inactive devices

An inactive device is not necessarily flagged due to an issue. The following actions taken on a device can cause a device to be categorized as inactive:

### Device is not in use

If the device has not been in use for more than seven days for any reason, it will remain in an ‘Inactive’ status in the portal.

### Device was reinstalled or renamed
A reinstalled or renamed device will generate a new device entity in Microsoft Defender Security Center. The previous device entity will remain with an ‘Inactive’ status in the portal. If you reinstalled a device and deployed the Defender for Endpoint package, search for the new device name to verify that the device is reporting normally.

### Device was offboarded
If the device was offboarded, it will still appear in devices list. After seven days, the device health state should change to inactive.

### Device is not sending signals
If the device is not sending any signals for more than seven days to any of the Microsoft Defender for Endpoint channels for any reason including conditions that fall under misconfigured devices classification, a device can be considered inactive. 

Do you expect a device to be in ‘Active’ status? [Open a support ticket](https://support.microsoft.com/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636206786382823561).

## Misconfigured devices
Misconfigured devices can further be classified to:
- Impaired communications
- No sensor data

### Impaired communications
This status indicates that there's limited communication between the device and the service.

The following suggested actions can help fix issues related to a misconfigured device with impaired communications:

- [Ensure the device has Internet connection](troubleshoot-onboarding.md#troubleshoot-onboarding-issues-on-the-device)</br>
  The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender for Endpoint service.

- [Verify client connectivity to Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-atp-service-urls)</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Microsoft Defender for Endpoint service URLs.

If you took corrective actions and the device status is still misconfigured, [open a support ticket](https://go.microsoft.com/fwlink/?LinkID=761093&clcid=0x409).

### No sensor data
A misconfigured device with status ‘No sensor data’ has communication with the service but can only report partial sensor data.
Follow theses actions to correct known issues related to a misconfigured device with status ‘No sensor data’:

- [Ensure the device has Internet connection](troubleshoot-onboarding.md#troubleshoot-onboarding-issues-on-the-device)</br>
  The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender for Endpoint service.

- [Verify client connectivity to Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-atp-service-urls)</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Microsoft Defender for Endpoint service URLs.

- [Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-the-diagnostics-service-is-enabled)</br>
If the devices aren't reporting correctly, you might need to check that the Windows 10 diagnostic data service is set to automatically start and is running on the endpoint.

- [Ensure that Microsoft Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy)</br>
If your devices are running a third-party antimalware client, the Defender for Endpoint agent needs the Microsoft Defender Antivirus Early Launch Antimalware (ELAM) driver to be enabled.

If you took corrective actions and the device status is still misconfigured, [open a support ticket](https://go.microsoft.com/fwlink/?LinkID=761093&clcid=0x409).

## See also
- [Check sensor health state in Microsoft Defender for Endpoint](check-sensor-status.md)
