---
title: Frequently Asked Security Questions
description: security questions frequently asked about the hololens
ms.assetid: bd55ecd1-697a-4b09-8274-48d1499fcb0b
author: pawinfie
ms.author: pawinfie
ms.date: 02/19/2020
keywords: hololens, Windows Mixed Reality, security
ms.prod: hololens
ms.sitesec: library
ms.topic: article
audience: ITPro
ms.localizationpriority: high
ms.custom: 
- CI 111456
- CSSTroubleshooting
manager: bradke
appliesto:
- HoloLens 1 (1st gen)
- HoloLens 2
---

# Frequently asked questions about HoloLens security

## HoloLens (1st gen) Security Questions

1. **What type of wireless is used?**
    1. 802.11ac and Bluetooth 4.1 LE
1. **What type of architecture is incorporated?  For example: point to point, mesh or something else?**
    1. Wi-Fi can be used in infrastructure mode to communicate with other wireless access points.
    1. Bluetooth can be used to talk peer to peer between multiple HoloLens if the customers application supports it or to other Bluetooth devices.
1. **What is FCC ID?**
    1. C3K1688
1. **What frequency range and channels does the device operate on and is it configurable?**
    1. Wi-Fi: The frequency range is not user configurable and depends on the country of use. In the US Wi-Fi uses both 2.4 GHz (1-11) channels and 5 GHz (36-64, 100-165) channels.
    1. Bluetooth: Bluetooth uses the standard 2.4-2.48 GHz range.
1. **Can the device allow or block specific frequencies?**
    1. This is not controllable by the user/device
1. **What is the power level for both transmit and receive? Is it adjustable? What is the range of operation?**
    1. Our emissions testing standards can be found [here](https://fccid.io/C3K1688). Range of operation is highly dependent on the access point and environment - but is roughly equivalent to other high-quality phones, tablets, or PCs.
1. **What is the duty cycle/lifetime for normal operation?**
    1. 2-3hrs of active use and up to 2 weeks of standby time
    1. Battery lifetime is unavailable.
1. **What is transmit and receive behavior when a tool is not in range?**
    1. HoloLens transmit/receive follows the standard Wi-Fi/Bluetooth pattern. At the edge of its range, you'll probably notice input getting choppy until it fully disconnects, but after you get back in range it should quickly reconnect.
1. **What is deployment density per square foot?**
    1. This is dependent on your network infrastructure.
1. **Can device use the infrastructure as a client?**
    1. Yes
1. **What protocol is used?**
    1. HoloLens does not use any proprietary protocols
1. **OS update frequency – What is the frequency of OS updates for the HL?  Is there a set schedule?  Does Microsoft release security patches as needed, etc.**
    1. Microsoft does provide OS updates to HoloLens exactly the same way it is done for Windows 10. There are normally two major updates per year, one in spring, one in fall. As HoloLens is a Windows device, the update concept is the same as with any other Windows device. Microsoft releases Security patches as needed and follows the same concept as done on any other Windows device.
1. **OS hardening – What options are there to harden the OS?  Can we remove or shutdown unnecessary apps or services?**
    1. HoloLens behaves like a smartphone. It is comparable to other modern Windows devices. HoloLens can be managed by either Microsoft Intune or other Modern Device Management Solutions, like MobileIron, Airwatch, or Soti. There are Policies you can set in these Management Systems to put Security policies on the device and in order to harden the device. There is also the option in deleting any unnecessary applications if wanted.
1. **How will software applications be managed and updated? What control do we have to define what apps are loaded and app update process for apps that are living in the Microsoft store?**
    1. HoloLens gets software applications only through the Windows store. Only Appx Application Packages can be installed, which are developed for the Use of HoloLens. You can see this in the Microsoft Store with a little logo next to the application which shows the HoloLens device. Any control that you have over the management of Store applications also applies to HoloLens. You can use the concept of the official store or the store for business. Apps can either be side-loaded (manual process to load an app on a Windows device) or can be managed through an MDM so that apps are automatically pulled from the store when needed.
1. **What is the frequency of updates to apps in the store for HoloLens?**
    1. As we follow the same concept of the Microsoft Store and pull apps from there, the update cycle is determined by the developer of the Application. All management options that you have to control the update mechanism in the store apply to HoloLens as well.
1. **Is there a secure boot capability for the HoloLens?**
    1. Yes
1. **Is there an ability to disable or disconnect peripheral support from the device?**
    1. Yes
1. **Is there an ability to control or disable the use of ports on the device?**
    1. The HoloLens only contains 2 ports (one for headphones and one for charging or connecting to PCs). There is not ability to disable the port due to functionality and recovery reasons.
1. **Antivirus, end point detection, IPS, app control allow list – Any ability to run antivirus, end point detection, IPS, app control allow list, etc.**
    1. Windows Holographic for Business (commercial suite) does support Windows Defender Smart Screen. If an antivirus company were to create and publish their app to the Universal Windows Platform, it could be downloaded on HoloLens. At present, no companies have done this for HoloLens.
    1. Allowing apps is possible by using the Microsoft Enterprise Store, where you can choose only what specific apps can be downloaded. Also, through MDM you can lock what specific apps can be run or even seen on the device.
1. **Can we quarantine the device from prod network until we update the device if it has been offline for an extended period of time?  Ex. Device has been sitting in a drawer not powered up for a period (6 months) and has not received any updates, patches, etc.  When it tries to come on the network can we flag it and say you must update on another network prior to being complaint to join the network.**
    1. This is something that can be managed on the infrastructure level by either an MDM or an on-prem server. The device can be flagged as not compliant if it does not meet a specified Update version.
1. **Does Microsoft include any back doors or access to services that allows Microsoft to connect to the device for screen sharing or remote support at will?**
    1. No
1. **When a PKI cert is being generated for trusted communication, we want the cert to be generated on the device so that we know it's only on that device, unique to that device, and can't be exported or used to impersonate the device. Is this true on HoloLens? If not is there a potential mitigation?**
    1. CSR for SCEP is generated on the device itself. Intune and the on premise SCEP connector help secure the requests themselves by adding and verifying a challenge string that's sent to the client.
    1. Since HoloLens (1st Gen and 2nd Gen) have a TPM module, these certs would be stored in the TPM module, and are unable to be extracted. Additionally, even if it could be extracted, the challenge strings couldn't be verified on a different device, rendering the certs/key unusable on different devices.

## HoloLens 2nd Gen Security Questions

1. **What type of wireless is used?**
    1. 802.11ac and Bluetooth 5.0
1. **What type of architecture is incorporated?  For example: point to point, mesh or something else?**
    1. Wi-Fi can be used in infrastructure mode to communicate with other wireless access points.
    1. Bluetooth can be used to talk peer to peer between multiple HoloLens if the customers application supports it or to other Bluetooth devices.
1. **What is FCC ID?**
    1. C3K1855
1. **What frequency range and channels does the device operate on and is it configurable?**
    1. Wi-Fi: The frequency range is not user configurable and depends on the country of use. In the US Wi-Fi uses both 2.4 GHz (1-11) channels and 5 GHz (36-64, 100-165) channels.
1. **Can the device allow or block specific frequencies?**
    1. This is not controllable by the user/device
1. **What is the power level for both transmit and receive? Is it adjustable? What is the range of operation?**
    1. Wireless power levels depend on the channel of operation. Devices are calibrated to perform at the highest power levels allowed based on the region's regulatory rules.
1. **What is the duty cycle/lifetime for normal operation?**
    1. *Currently unavailable.*
1. **What is transmit and receive behavior when a tool is not in range?**
    1. HoloLens transmit/receive follows the standard Wi-Fi/Bluetooth pattern. At the edge of its range, you'll probably notice input getting choppy until it fully disconnects, but after you get back in range it should quickly reconnect.
1. **What is deployment density per square foot?**
    1. This is dependent on your network infrastructure.
1. **Can device use the infrastructure as a client?**
    1. Yes
1. **What protocol is used?**
    1. HoloLens does not use any proprietary protocols
1. **OS update frequency – What is the frequency of OS updates for the HL?  Is there a set schedule?  Does Microsoft release security patches as needed, etc.**
    1. Microsoft does provide OS updates to HoloLens exactly the same way it is done for Windows 10. There are normally two major updates per year, one in spring, one in fall. As HoloLens is a Windows device, the update concept is the same as with any other Windows device. Microsoft releases Security patches as needed and follows the same concept as done on any other Windows device.
1. **OS hardening – What options are there to harden the OS?  Can we remove or shutdown unnecessary apps or services?**
    1. HoloLens behaves like a smartphone. It is comparable to other modern Windows devices. HoloLens can be managed by either Microsoft Intune or other Modern Device Management Solutions, like MobileIron, Airwatch, or Soti. There are Policies you can set in these Management Systems to put Security policies on the device and in order to harden the device. There is also the option in deleting any unnecessary applications if wanted.
1. **How will software applications be managed and updated? What control do we have to define what apps are loaded and app update process for apps that are living in the Microsoft store?**
    1. HoloLens gets software applications only through the Windows store. Only Appx Application Packages can be installed, which are developed for the Use of HoloLens. You can see this in the Microsoft Store with a little logo next to the application which shows the HoloLens device. Any control that you have over the management of Store applications also applies to HoloLens. You can use the concept of the official store or the store for business. Apps can either be side-loaded (manual process to load an app on a Windows device) or can be managed through an MDM so that apps are automatically pulled from the store when needed.
1. **What is the frequency of updates to apps in the store for HoloLens?**
    1. As we follow the same concept of the Microsoft Store and pull apps from there, the update cycle is determined by the developer of the Application. All management options that you have to control the update mechanism in the store apply to HoloLens as well.
1. **Is there a secure boot capability for the HoloLens?**
    1. Yes
1. **Is there an ability to disable or disconnect peripheral support from the device?**
    1. Yes
1. **Is there an ability to control or disable the use of ports on the device?**
    1. The HoloLens only contains 2 ports (one for headphones and one for charging or connecting to PCs). There is not ability to disable the port due to functionality and recovery reasons.
1. **Antivirus, end point detection, IPS, app control allow – Any ability to run antivirus, end point detection, IPS, app control allow, etc.**
    1. HoloLens 2nd Gen supports Windows Defender Smart Screen. If an antivirus company were to create and publish their app to the Universal Windows Platform, it could be downloaded on HoloLens. At present, no companies have done this for HoloLens.
    1. Allowing apps is possible by using the Microsoft Enterprise Store, where you can choose only what specific apps can be downloaded. Also, through MDM you can lock what specific apps can be run or even seen on the device.
1. **Can we quarantine the device from prod network until we update the device if it has been offline for an extended period of time?  Ex. Device has been sitting in a drawer not powered up for a period (6 months) and has not received any updates, patches, etc.  When it tries to come on the network can we flag it and say you must update on another network prior to being complaint to join the network.**
    1. This is something that can be managed on the infrastructure level by either an MDM or an on-prem server. The device can be flagged as not compliant if it does not meet a specified Update version.
1. **Does Microsoft include any back doors or access to services that allows Microsoft to connect to the device for screen sharing or remote support at will?**
    1. No
1. **When a PKI cert is being generated for trusted communication, we want the cert to be generated on the device so that we know it's only on that device, unique to that device, and can't be exported or used to impersonate the device. Is this true on HoloLens? If not is there a potential mitigation?**
    1. CSR for SCEP is generated on the device itself. Intune and the on premise SCEP connector help secure the requests themselves by adding and verifying a challenge string that's sent to the client.
    1. Since HoloLens (1st Gen and 2nd Gen) have a TPM module, these certs would be stored in the TPM module, and are unable to be extracted. Additionally, even if it could be extracted, the challenge strings couldn't be verified on a different device, rendering the certs/key unusable on different devices.
