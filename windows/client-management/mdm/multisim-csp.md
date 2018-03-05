---
title: MultiSIM CSP
description: MultiSIM CSP allows the enterprise to manage devices with dual SIM single active configuration.
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 02/27/2018
---

# MultiSIM CSP 

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The MultiSIM configuration service provider (CSP) is used by the enterprise to manage devices with dual SIM single active configuration. An enterprise can set policies on whether that user can switch between SIM slots, specify which slot is the default, and whether the slot is embedded. This CSP was added in Windows 10, version 1803.


The following diagram shows the MultiSIM configuration service provider in tree format.

![MultiSIM CSP diagram](images/provisioning-csp-multisim.png) 

<a href="" id="multisim"></a>**./Device/Vendor/MSFT/MultiSIM**  
Root node.

<a href="" id="tbd"></a>**_ModemID_**  
Node representing a Mobile Broadband Modem. The node name is the modem ID. Modem ID is a GUID without curly braces, with exception of "Embedded" which represents the embedded modem.

<a href="" id="modemid"></a>**_ModemID_/Identifier**  
Modem ID.

<a href="" id="tbd"></a>**_ModemID_/IsEmbedded**  
Indicates whether this modem is embedded or external.

<a href="" id="tbd"></a>**_ModemID_/Slots**  
Represents all SIM slots in the Modem.

<a href="" id="tbd"></a>**_ModemID_/Slots/_SlotID_**  
Node representing a SIM Slot. The node name is the Slot ID. SIM Slot ID format is "0", "1", etc., with exception of "Embedded" which represents the embedded Slot.

<a href="" id="tbd"></a>**_ModemID_/Slots/_SlotID_/Identifier**  
Slot ID.

<a href="" id="tbd"></a>**_ModemID_/Slots/_SlotID_/IsEmbedded**  
Indicates whether this Slot is embedded or a physical SIM slot.

<a href="" id="tbd"></a>**_ModemID_/Slots/_SlotID_/IsSelected**  
Indicates whether this Slot is selected or not.

<a href="" id="tbd"></a>**_ModemID_/Slots/_SlotID_/State**  
Slot state (Unknown = 0, OffEmpty = 1, Off = 2, Empty = 3, NotReady = 4, Active = 5, Error = 6, ActiveEsim = 7, ActiveEsimNoProfile = 8)

<a href="" id="tbd"></a>**_ModemID_/Policies**  
Policies associated with the Modem.

<a href="" id="tbd"></a>**_ModemID_/Policies/SlotSelectionEnabled**  
Determines whether the user is allowed to change slots in the Cellular settings UI. Default is true.