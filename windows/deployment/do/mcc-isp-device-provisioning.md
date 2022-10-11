---
title: Device provisioning
manager: dougeby
description: How device provisioning works for Microsoft Connected Cache
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: amyzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Device provisioning

Once the user executes the provisioning script, resources are created behind the scenes resulting in the successful cache node installation. 
The device provisioning script takes the input of different IDs outlined below to create an IoT Central and an IoT Edge device. even though Microsoft Connected Cache scenario isn't related to IoT, IoT Central and IoT Edge are installed for management and communication operation purposes. 

### Components installed during provisioning

#### IoT Central

IoT Central is the main hub that handles all messaging and requests from IoT Edge devices. To learn more about the interaction between IoT Edge and IoT Central, review the [IoT Central](/azure/iot-central/core/concepts-iot-edge) documentation.

#### IoT Edge

IoT Edge performs several functions important to manage MCC on your edge device:

1. Installs and updates MCC on your edge device.
1. Maintains Azure IoT Edge security standards on your edge device.
1. Ensures that MCC is always running.
1. Reports MCC health and usage to the cloud for remote monitoring.

### Components of the device provisioning script

There are five IDs that the device provisioning script takes as input in order to successfully provision and install your cache server. The provisioning script will automatically include these keys, with no input necessary from the user.

| ID | Description |
| -- | --- |
| Customer ID | The Azure subscription ID that the cache node is created in. |
| Cache node ID | The unique alphanumeric ID of the cache node being provisioned. |
| Customer Key | |
| Cache node name | The name of the cache node. |
| Tenant ID | The unique ID associated with the Azure account. |

