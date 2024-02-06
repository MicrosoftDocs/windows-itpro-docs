---
title: RemoteWipe DDF file
description: View the XML file containing the device description framework (DDF) for the RemoteWipe configuration service provider.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

# RemoteWipe DDF file

The following XML file contains the device description framework (DDF) for the RemoteWipe configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>RemoteWipe</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for remote wipe function.</Description>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>doWipe</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will perform a remote wipe on the device. The return status code shows whether the device accepted the Exec command.  When used with OMA Client Provisioning, a dummy value of "1" should be included for this element.</Description>
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
        <MSFT:Applicability>
          <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;</MSFT:EditionAllowList>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>doWipePersistProvisionedData</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will back up provisioning data to a persistent location and perform a remote wipe on the device. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command. When used with OMA Client Provisioning, a dummy value of "1" should be included for this element. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command.</Description>
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
    <Node>
      <NodeName>doWipeProtected</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will perform a remote wipe on the device and fully clean the internal drive. In some device configurations, this command may leave the device unable to boot. The return status code shows whether the device accepted the Exec command. The doWipeProtected is functionally similar to doWipe. But unlike doWipe, which can be easily circumvented by simply power cycling the device, doWipeProtected will keep trying to reset the device until it’s done.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>doWipePersistUserData</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will perform a remote reset on the device and persist user accounts and data. The return status code shows whether the device accepted the Exec command.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>doWipeCloud</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will perform a cloud-based remote wipe on the device. The return status code shows whether the device accepted the Exec command.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>doWipeCloudPersistUserData</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will perform a cloud-based remote reset on the device and persist user accounts and data. The return status code shows whether the device accepted the Exec command.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>doWipeCloudPersistProvisionedData</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Exec on this node will back up provisioning data to a persistent location and perform a cloud-based remote wipe on the device. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>AutomaticRedeployment</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the Autopilot Reset operation.</Description>
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
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>doAutomaticRedeployment</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
          </AccessType>
          <Description>Exec on this node triggers Autopilot Reset operation. This works like PC Reset, similar to other existing nodes in this RemoteWipe CSP, except that it keeps the device enrolled in Azure AD and MDM, keeps Wi-Fi profiles, and a few other settings like region, language, keyboard.</Description>
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
      <Node>
        <NodeName>LastError</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Error value, if any, associated with Automatic Redeployment operation (typically an HRESULT).</Description>
          <DFFormat>
            <int />
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
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Status value indicating current state of an Automatic Redeployment operation. 0: Never run (not started). The default state. 1: Complete. 10: Reset has been scheduled. 20: Reset is scheduled and waiting for a reboot. 30: Failed during CSP Execute ("Exec" in SyncML). 40: Failed: power requirements not met. 50: Failed: reset internals failed during reset attempt.</Description>
          <DFFormat>
            <int />
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
  </Node>
</MgmtTree>
```

## Related articles

[RemoteWipe configuration service provider reference](remotewipe-csp.md)
