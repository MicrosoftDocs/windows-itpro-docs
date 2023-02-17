---
title: RemoteLock DDF file
description: View the XML file containing the device description framework (DDF) for the RemoteLock configuration service provider.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 02/17/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

# RemoteLock DDF file

The following XML file contains the device description framework (DDF) for the RemoteLock configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>RemoteLock</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <DFFormat>
        <node />
      </DFFormat>
      <Occurrence>
        <One />
      </Occurrence>
      <Scope>
        <Permanent />
      </Scope>
      <DFType>
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBF;0xCA;0xCB;0xCD;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Lock</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>Required. The setting accepts requests to lock the device screen. The device screen will lock immediately if a PIN has been set. If no PIN is set, the lock request is ignored and the OMA DM (405) Forbidden error is returned over the management channel. All OMA DM errors are listed here in the protocol specification</Description>
        <DFFormat>
          <null />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>LockAndResetPIN</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description> This setting can be used to lock and reset the PIN on the device. It is used in conjunction with the NewPINValue node. After the Exec operation is called successfully on this node, the previous PIN will no longer work and cannot be recovered.</Description>
        <DFFormat>
          <null />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>LockAndRecoverPIN</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>This setting performs a similar function to the LockAndResetPIN node. With LockAndResetPIN any Windows Hello keys associated with the PIN gets deleted, but with LockAndRecoverPIN those keys are saved. After the Exec operation is called successfully on this setting, the new PIN can be retrieved from the NewPINValue setting. The previous PIN will no longer work. Executing this node requires a ticket from the Microsoft credential reset service. Additionally, the execution of this setting is only supported when the EnablePinRecovery policy is set on the client.</Description>
        <DFFormat>
          <null />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.0</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>NewPINValue</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This setting contains the PIN after Exec has been called on /RemoteLock/LockAndResetPIN or /RemoteLock/LockAndRecoverPin. If LockAndResetPIN or LockAndResetPIN has never been called, the value will be null. If Get is called on this node after a successful Exec call on /RemoteLock/LockAndResetPIN or /RemoteLock/LockAndRecoverPin, then the new PIN will be provided. If another Get command is called on this node, the value will be null. If you need to reset the PIN again, then another LockAndResetPIN Exec can be communicated to the device to generate a new PIN. The PIN value will conform to the minimum PIN complexity requirements of the merged policies that are set on the device. If no PIN policy has been set on the device, the generated PIN will conform to the default policy of the device. A Get operation on this node must follow an Exec operation on the /RemoteLock/LockAndResetPIN or /RemoteLock/LockAndRecoverPin node in the proper order and in the same SyncML message. The Sequence tag can be used to guarantee the order in which commands are processed.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[RemoteLock configuration service provider reference](remotelock-csp.md)
