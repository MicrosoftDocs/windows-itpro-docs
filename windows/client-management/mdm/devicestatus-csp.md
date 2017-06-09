---
title: DeviceStatus CSP
description: The DeviceStatus configuration service provider is used by the enterprise to keep track of device inventory and query the state of compliance of these devices with their enterprise policies.
ms.assetid: 039B2010-9290-4A6E-B77B-B2469B482360
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# DeviceStatus CSP


The DeviceStatus configuration service provider is used by the enterprise to keep track of device inventory and query the state of compliance of these devices with their enterprise policies.

The following image shows the DeviceStatus configuration service provider in tree format.

![devicestatus csp](images/provisioning-csp-devicestatus.png)

<a href="" id="devicestatus"></a>**DeviceStatus**  
The root node for the DeviceStatus configuration service provider.

<a href="" id="devicestatus-securebootstate"></a>**DeviceStatus/SecureBootState**  
Indicates whether secure boot is enabled. The value is one of the following:

-   0 - Not supported
-   1 - Enabled
-   2 - Disabled

Supported operation is Get.

<a href="" id="devicestatus-cellularidentities"></a>**DeviceStatus/CellularIdentities**  
Required. Node for queries on the SIM cards.

> **Note**  Multiple SIMs are supported.

 

<a href="" id="devicestatus-cellularidentities-imei"></a>**DeviceStatus/CellularIdentities/****_IMEI_**  
The unique International Mobile Station Equipment Identity (IMEI) number of the mobile device. An IMEI is present for each SIM card on the device.

<a href="" id="devicestatus-cellularidentities-imei-imsi"></a>**DeviceStatus/CellularIdentities/*IMEI*/IMSI**  
The International Mobile Subscriber Identity (IMSI) associated with the IMEI number.

Supported operation is Get.

<a href="" id="devicestatus-cellularidentities-imei-iccid"></a>**DeviceStatus/CellularIdentities/*IMEI*/ICCID**  
The Integrated Circuit Card ID (ICCID) of the SIM card associated with the specific IMEI number.

Supported operation is Get.

<a href="" id="devicestatus-cellularidentities-imei-phonenumber"></a>**DeviceStatus/CellularIdentities/*IMEI*/PhoneNumber**  
Phone number associated with the specific IMEI number.

Supported operation is Get.

<a href="" id="devicestatus-cellularidentities-imei-commercializationoperator"></a>**DeviceStatus/CellularIdentities/*IMEI*/CommercializationOperator**  
The mobile service provider or mobile operator associated with the specific IMEI number.

Supported operation is Get.

<a href="" id="devicestatus-cellularidentities-imei-roamingstatus"></a>**DeviceStatus/CellularIdentities/*IMEI*/RoamingStatus**  
Indicates whether the SIM card associated with the specific IMEI number is roaming.

Supported operation is Get.

<a href="" id="devicestatus-cellularidentities-imei-roamingcompliance"></a>**DeviceStatus/CellularIdentities/*IMEI*/RoamingCompliance**  
Boolean value that indicates compliance with the enforced enterprise roaming policy.

Supported operation is Get.

<a href="" id="devicestatus-networkidentifiers"></a>**DeviceStatus/NetworkIdentifiers**  
Node for queries on network and device properties.

<a href="" id="devicestatus-networkidentifiers-macaddress"></a>**DeviceStatus/NetworkIdentifiers/****_MacAddress_**  
MAC address of the wireless network card. A MAC address is present for each network card on the device.

<a href="" id="devicestatus-networkidentifiers-macaddress-ipaddressv4"></a>**DeviceStatus/NetworkIdentifiers/*MacAddress*/IPAddressV4**  
IPv4 address of the network card associated with the MAC address.

Supported operation is Get.

<a href="" id="devicestatus-networkidentifiers-macaddress-ipaddressv6"></a>**DeviceStatus/NetworkIdentifiers/*MacAddress*/IPAddressV6**  
IPv6 address of the network card associated with the MAC address.

Supported operation is Get.

<a href="" id="devicestatus-networkidentifiers-macaddress-isconnected"></a>**DeviceStatus/NetworkIdentifiers/*MacAddress*/IsConnected**  
Boolean value that indicates whether the network card associated with the MAC address has an active network connection.

Supported operation is Get.

<a href="" id="devicestatus-networkidentifiers-macaddress-type"></a>**DeviceStatus/NetworkIdentifiers/*MacAddress*/Type**  
Type of network connection. The value is one of the following:

-   2 - WLAN (or other Wireless interface)
-   1 - LAN (or other Wired interface)
-   0 - Unknown

Supported operation is Get.

<a href="" id="devicestatus-compliance"></a>**DeviceStatus/Compliance**  
Node for the compliance query.

<a href="" id="devicestatus-compliance-encryptioncompliance"></a>**DeviceStatus/Compliance/EncryptionCompliance**  
Boolean value that indicates compliance with the enterprise encryption policy. The value is one of the following:

-   0 - not encrypted
-   1 - encrypted

Supported operation is Get.

<a href="" id="devicestatus-tpm"></a>**DeviceStatus/TPM**  
Added in , version 1607. Node for the TPM query.

Supported operation is Get.

<a href="" id="devicestatus-tpm-specificationversion"></a>**DeviceStatus/TPM/SpecificationVersion**  
Added in , version 1607. String that specifies the specification version.

Supported operation is Get.

<a href="" id="devicestatus-os"></a>**DeviceStatus/OS**  
Added in , version 1607. Node for the OS query.

Supported operation is Get.

<a href="" id="devicestatus-os-edition"></a>**DeviceStatus/OS/Edition**  
Added in , version 1607. String that specifies the OS edition.

Supported operation is Get.

<a href="" id="devicestatus-antivirus"></a>**DeviceStatus/Antivirus**  
Added in , version 1607. Node for the antivirus query.

Supported operation is Get.

<a href="" id="devicestatus-antivirus-signaturestatus"></a>**DeviceStatus/Antivirus/SignatureStatus**  
Added in , version 1607. Integer that specifies the status of the antivirus signature.

Valid values:

-   0 - The security software reports that it is not the most recent version.
-   1 (default) - The security software reports that it is the most recent version.
-   2 – Not applicable. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.)

Supported operation is Get.

<a href="" id="devicestatus-antivirus-status"></a>**DeviceStatus/Antivirus/Status**  
Added in , version 1607. Integer that specifies the status of the antivirus.

Valid values:

-   0 – Antivirus is on and monitoring
-   1 – Antivirus is disabled
-   2 – Antivirus is not monitoring the device/PC or some options have been turned off
-   3 (default) – Antivirus is temporarily not completely monitoring the device/PC
-   4 – Antivirus not applicable for this device. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.)

Supported operation is Get.

<a href="" id="devicestatus-antispyware"></a>**DeviceStatus/Antispyware**  
Added in , version 1607. Node for the antispyware query.

Supported operation is Get.

<a href="" id="devicestatus-antispyware-signaturestatus"></a>**DeviceStatus/Antispyware/SignatureStatus**  
Added in , version 1607. Integer that specifies the status of the antispyware signature.

Supported operation is Get.

<a href="" id="devicestatus-antispyware-status"></a>**DeviceStatus/Antispyware/Status**  
Added in , version 1607. Integer that specifies the status of the antispyware.

Supported operation is Get.

<a href="" id="devicestatus-firewall"></a>**DeviceStatus/Firewall**  
Added in , version 1607. Node for the firewall query.

Supported operation is Get.

<a href="" id="devicestatus-firewall-status"></a>**DeviceStatus/Firewall/Status**  
Added in , version 1607. Integer that specifies the status of the firewall.

Valid values:

-   0 – Firewall is on and monitoring
-   1 – Firewall has been disabled
-   2 – Firewall is not monitoring all networks or some rules have been turned off
-   3 (default) – Firewall is temporarily not monitoring all networks
-   4 – Not applicable. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.)

Supported operation is Get.

<a href="" id="devicestatus-uac"></a>**DeviceStatus/UAC**  
Added in , version 1607. Node for the UAC query.

Supported operation is Get.

<a href="" id="devicestatus-uac-status"></a>**DeviceStatus/UAC/Status**  
Added in , version 1607. Integer that specifies the status of the UAC.

Supported operation is Get.

<a href="" id="devicestatus-battery"></a>**DeviceStatus/Battery**  
Added in , version 1607. Node for the battery query.

Supported operation is Get.

<a href="" id="devicestatus-battery-status"></a>**DeviceStatus/Battery/Status**  
Added in , version 1607. Integer that specifies the status of the battery

Supported operation is Get.

<a href="" id="devicestatus-battery-estimatedchargeremaining"></a>**DeviceStatus/Battery/EstimatedChargeRemaining**  
Added in , version 1607. Integer that specifies the estimated battery charge remaining. This is the value returned in **BatteryLifeTime** in [SYSTEM\_POWER\_STATUS structure](https://msdn.microsoft.com/library/windows/desktop/aa373232.aspx).

The value is the number of seconds of battery life remaining when the device is not connected to an AC power source. When it is connected to a power source, the value is -1. When the estimation is unknown, the value is -1.

Supported operation is Get.

<a href="" id="devicestatus-battery-estimatedruntime"></a>**DeviceStatus/Battery/EstimatedRuntime**  
Added in , version 1607. Integer that specifies the estimated runtime of the battery. This is the value returned in **BatteryLifeTime** in [SYSTEM\_POWER\_STATUS structure](https://msdn.microsoft.com/library/windows/desktop/aa373232.aspx).

The value is the number of seconds of battery life remaining when the device is not connected to an AC power source. When it is connected to a power source, the value is -1. When the estimation is unknown, the value is -1.

Supported operation is Get.

 

 






