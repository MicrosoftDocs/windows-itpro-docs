---
title: NFC-based device provisioning (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# NFC-based device provisioning


**Applies to**

-   Windows 10 Mobile


Near field communication (NFC) enables Windows 10 Mobile Enterprise and Windows 10 Mobile devices to communicate with an NFC tag or another NFC-enabled transmitting device. Enterprises that do bulk provisioning can use NFC-based device provisioning to provide a provisioning package to the device that's being provisioned. NFC provisioning is simple and convenient and it can easily store an entire provisioning package. 

The NFC provisioning option enables the administrator to provide a provisioning package during initial device setup (the out-of-box experience or OOBE phase). Administrators can use the NFC provisioning option to transfer provisioning information to persistent storage by tapping an unprovisioned mobile device to an NFC tag or NFC-enabled device. To use NFC for pre-provisioning a device, you must either prepare your own NFC tags by storing your provisioning package to a tag as described in this section, or build the infrastructure needed to transmit a provisioning package between an NFC-enabled device and a mobile device during OOBE.

## Provisioning OOBE UI

All Windows 10 Mobile Enterprise and Windows 10 Mobile images have the NFC provisioning capability incorporated into the operating system. On devices that support NFC and are running Windows 10 Mobile Enterprise or Windows 10 Mobile, NFC-based device provisioning provides an additional mechanism to provision the device during OOBE.

On all Windows devices, device provisioning during OOBE can be triggered by 5 fast taps on the Windows hardware key, which shows the **Provision this device** screen. In the **Provision this device** screen, select **NFC** for NFC-based provisioning. 

![Example of Provision this device screen](../images/nfc.png)

If there is an error during NFC provisioning, the device will show a message if any of the following errors occur:

- **NFC initialization error** - This can be caused by any error that occurs before data transfer has started. For example, if the NFC driver isn't enabled or there's an error communicating with the proximity API.
- **Interrupted download or incomplete package transfer** - This error can happen if the peer device is out of range or the transfer is aborted. This error can be caused whenever the device being provisioned fails to receive the provisioning package in time.
- **Incorrect package format** - This error can be caused by any protocol error that the operating system encounters during the data transfer between the devices.
- **NFC is disabled by policy** - Enterprises can use policies to disallow any NFC usage on the managed device. In this case, NFC functionality is not enabled.

## NFC tag

You can use an NFC tag for minimal provisioning and use an NFC-enabled device tag for larger provisioning packages.

The protocol used for NFC-based device provisioning is similar to the one used for NFC provisioning on Windows Embedded 8.1 Handheld, which supported both single-chunk and multi-chunk transfer when the total transfer didn't fit in one NDEP message size. In Windows 10, the provisioning stack contains the following changes:

- **Protocol namespace** - The protocol namespace has changed from Windows.WEH.PreStageProv.Chunk to Windows.ProvPlugins.Chunk.
- **Tag data type** - The tag data type has changed from UTF-8 into binary raw data.


>[!NOTE]
>The NFC tag doesn't go in the secondary device. You can transfer the NFC tag by using a provisioning package from device-to-device using the NFC radio or by re-reading the provisioning package from an NFC tag.

### NFC tag components

NFC tags are suitable for very light applications where minimal provisioning is required. The size of NFC tags that contain provisioning packages is typically 4 KB to 10 KB. 

To write to an NFC tag, you will need to use an NFC Writer tool, or you can use the [ProximityDevice class API](https://msdn.microsoft.com/library/windows/apps/windows.networking.proximity.proximitydevice.aspx) to write your own custom tool to transfer your provisioning package file to your NFC tag. The tool must publish a binary message (write) a Chunk data type to your NFC tag.

The following table describes the information that is required when writing to an NFC tag.

| Required field | Description |
| --- | --- |
| **Type** | Windows.ProvPlugins.Chunk<br></br>The receiving device uses this information to understand information in the Data field. |
| **Data** | Tag data with small header in raw binary format that contains a chunk of the provisioning package to be transferred. |
 


### NFC provisioning helper

The NFC provisioning helper device must split the provisioning package raw content into multiple parts and publish these in order. Each part should follow the following format:

<table><tr><td>**Version**</br>(1 byte)</td><td>**Leading**<br>(1 byte)</td><td>**Order**</br>(1 byte)</td><td>**Total**</br>(1 byte)</td><td>**Chunk payload**</br>(N bytes)</td></tr></table>
 
For each part:
- **Version** should always be 0x00.
- **Leading byte** should always be 0xFF.
- **Order** represents which message chunk (out of the whole message) the part belongs to. The Order begins with zero (0). 
- **Total** represents the total number of chunks to be transferred for the whole message.
- **Chunk payload** represents each of the split parts.

The NFC provisioning helper device must publish the record in a type of Windows.ProvPlugins.Chunk.

**Code example**

The following example shows how to write to an NFC tag. This example assumes that the tag is already in range of the writing device.

```
        private async void WriteProvPkgToTag(IStorageFile provPkgFile)
        {
            var buffer = await FileIO.ReadBufferAsync(provPkgFile);
            if (null == buffer)
            {
                return;
            }

            var proximityDevice = Windows.Networking.Proximity.ProximityDevice.GetDefault();
            if (null == proximityDevice)
            {
                return;
            }

            var dataWriter = new DataWriter();
            var header = new NfcProvHeader();

            header.version = NFC_PROV_MESSAGE_CURRENT_VERSION;  // Currently the supported version is 0x00.
            header.leading = NFC_PROV_MESSAGE_LEADING_BYTE;     // The leading byte should be always 0xFF.
            header.index = 0; // Assume we only have 1 chunk.
            header.total = 1; // Assume we only have 1 chunk.

            // Write the header first and then the raw data of the provisioning package.
            dataWriter.WriteBytes(GetBytes(header));
            dataWriter.WriteBuffer(buffer);

            var chunkPubId = proximityDevice.PublishBinaryMessage(
                            "Windows:WriteTag.ProvPlugins.Chunk",
                            dataWriter.DetachBuffer());
        }
```


### NFC-enabled device tag components

Provisioning from an NFC-enabled source device allows for larger provisioning packages than can be transferred using an NFC tag. When provisioning from an NFC-enabled device, we recommend that the total file size not exceed 120 KB. Be aware that the larger the NFC file is, the longer it will take to transfer the provisioning file. Depending on your NFC hardware, the transfer time for a 120 KB file will vary between 2.5 seconds and 10 seconds.

To provision from an NFC-enabled source device, use [ProximityDevice class API](https://msdn.microsoft.com/library/windows/apps/windows.networking.proximity.proximitydevice.aspx) to write your own custom tool that transfers your provisioning package in chunks to your target mobile device. The tool must publish binary messages (transmit) a Header message, followed by one or more Chunk messages. The Header specifies the total amount of data that will be transferred to the target device; the Chunks must contain binary raw data formatted provisioning data, as shown in the NFC tag components section.

For detailed information and code samples on how to implement an NFC-enabled device tag, see **ConvertToNfcMessageAsync** in [this GitHub NfcProvisioner Universal Windows app example](https://github.com/Microsoft/Windows-universal-samples/blob/master/Samples/NfcProvisioner/cs/Scenario1.xaml.cs). The sample app shows you how to host the provisioning package on a master device so that you can transfer it to the receiving device.

 





## Related topics

- [Use Windows Configuration Designer to configure Windows 10 Mobile devices](provisioning-configure-mobile.md)

- [Barcode provisioning and the package splitter tool](provisioning-package-splitter.md)
 

 





