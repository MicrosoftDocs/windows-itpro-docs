---
title: Structure of OMA DM provisioning files
description: Learn about the structure of OMA DM provisioning files, for example how each message is composed of a header, specified by the SyncHdr element, and a message body.
ms.topic: conceptual
ms.date: 07/08/2024
---

# Structure of OMA DM provisioning files

OMA DM commands are transmitted between the server and the client device in messages. A message can contain one or more commands. For a list of commands supported, see the table in [OMA DM protocol support](oma-dm-protocol-support.md).

A DM message is an XML document. The structure and content of the document is defined in the OMA DM Representation Protocol (OMA-SyncML-DevInfo-DTD-V1\_1\_2-20030505-D.dtd) available from the [OMA website](https://go.microsoft.com/fwlink/p/?LinkId=526900).

Each message is composed of a header, specified by the SyncHdr element, and a message body, specified by the SyncBody element.

The following table shows the OMA DM versions that are supported.

| Version              | Format                                       |
|----------------------|----------------------------------------------|
| OMA DM version 1.1.2 | `<SyncML xmlns='SYNCML:SYNCML1.1'></SyncML>` |
| OMA DM version 1.2   | `<SyncML xmlns='SYNCML:SYNCML1.2'></SyncML>` |

## File format

The following example shows the general structure of the XML document sent by the server using OMA DM version 1.2.1 for demonstration purposes only. The initial XML packages exchanged between client and server could contain more XML tags. For a detailed description and samples for those packages, see the [OMA Device Management Protocol 1.2.1](https://www.openmobilealliance.org/release/DM/V1_2_1-20080617-A/OMA-TS-DM_Protocol-V1_2_1-20080617-A.pdf) specification.

```xml
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncHdr>
      <VerDTD>1.2</VerDTD>
      <VerProto>DM/1.2</VerProto>
      <SessionID>1</SessionID>
      <MsgID>1</MsgID>
      <Target>
         <LocURI>{unique device ID}</LocURI>
      </Target>
      <Source>
         <LocURI>https://www.contoso.com/mgmt-server</LocURI>
      </Source>
   </SyncHdr>
   <SyncBody>
      <!-- query a device OS system version -->
      <Get>
         <CmdID>2</CmdID>
         <Item>
            <Target>
               <LocURI>./DevDetail/SwV</LocURI>
            </Target>
         </Item>
      </Get>
      <!-- Update device policy -->

      <Final />
   </SyncBody>
</SyncML>
```

## SyncHdr element

SyncHdr includes the following information:

- Document Type Definition (DTD) and protocol version numbers

- Session and message identifiers. Each message in the same DM session must have a different MsgID.

- Message source and destination Uniform Resource Identifiers (URIs)

- Credentials for authentication

This information is used to by the client device to properly manage the DM session.

**Code example**

The following example shows the header component of a DM message. In this case, OMA DM version 1.2 is used as an example only.

> [!NOTE]
> The `<LocURI>` node value for the `<Source>` element in the SyncHdr of the device-generated DM package should be the same as the value of ./DevInfo/DevID. For more information about DevID, see [DevInfo configuration service provider](mdm/devinfo-csp.md).

```xml
<SyncHdr>
   <VerDTD>1.2</VerDTD>
   <VerProto>DM/1.2</VerProto>
   <SessionID>1</SessionID>
   <MsgID>1</MsgID>
   <Target>
      <LocURI>{unique device ID}</LocURI>
   </Target>
   <Source>
      <LocURI>https://www.contoso.com/mgmt-server</LocURI>
   </Source>
</SyncHdr>
```

## SyncBody element

SyncBody contains one or more DM commands. The SyncBody can contain multiple DM commands; each command must have a different CmdID value.

**Code example**

The following example shows the body component of a DM message. In this example, SyncBody contains only one command, Get. This command is indicated by the `<Final />` tag that occurs immediately after the terminating tag for the Get command.

```xml
<SyncBody>
   <!-- query device OS software version -->
   <Get>
      <CmdID>2</CmdID>
      <Item>
         <Target>
            <LocURI>./DevDetail/SwV</LocURI>
         </Target>
      </Item>
   </Get>
   <Final />
</SyncBody>
```

When SyncML for OMA DM provisioning is being used, a LocURI in SyncBody can have a "." as a valid segment name only in the first segment. However, a "." isn't a valid segment name for the other segments. For example, the following LocURI isn't valid because the segment name of the seventh segment is a ".".

```xml
<LocURI>./Vendor/MSFT/Registry/HKLM/Security/./Test</LocURI>
```

## Update device settings example

The Replace command is used to update a device setting.

The following example illustrates how to use the Replace command to update a device setting.

```xml
<SyncHdr>
   <VerDTD>1.2</VerDTD>
   <VerProto>DM/1.2</VerProto>
   <SessionID>1</SessionID>
   <MsgID>1</MsgID>
   <Target>
      <LocURI>{unique device ID}</LocURI>
   </Target>
   <Source>
      <LocURI>https://www.contoso.com/mgmt-server</LocURI>
   </Source>
</SyncHdr>
<SyncBody>
   <!-- update device setting -->
   <Replace>
      <CmdID>2</CmdID>
      <Item>
         <Target>
            <LocURI>./Vendor/MSFT/PolicyManager/My/DeviceLock/MinDevicePasswordLength</LocURI>
         </Target>
         <Meta>
            <Type xmlns="syncml:metinf">text/plain</Type>
            <Format xmlns="syncml:metinf">int</Format>
         </Meta>
         <Data>6</Data>
      </Item>
   </Replace>
   <Final />
</SyncBody>
```
