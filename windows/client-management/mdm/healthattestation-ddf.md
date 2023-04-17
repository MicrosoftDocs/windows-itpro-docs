---
title: HealthAttestation DDF file
description: View the XML file containing the device description framework (DDF) for the HealthAttestation configuration service provider.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 02/27/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

# HealthAttestation DDF file

The following XML file contains the device description framework (DDF) for the HealthAttestation configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>HealthAttestation</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the device HealthAttestation configuration service provider.</Description>
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
      <NodeName>VerifyHealth</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Notifies the device to prepare a device health verification request.</Description>
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
      <NodeName>Status</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Provides the current status of the device health request.  For the complete list of status see https://docs.microsoft.com/en-us/windows/client-management/mdm/healthattestation-csp#device-healthattestation-csp-status-and-error-codes</Description>
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
      <NodeName>ForceRetrieve</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>False</DefaultValue>
        <Description>Instructs the client to initiate a new request to DHA-Service, and get a new DHA-EncBlob (a summary of the boot state that is issued by DHA-Service). This option should only be used if the MDM server enforces a certificate freshness policy, which needs to force a device to get a fresh encrypted blob from DHA-Service.</Description>
        <DFFormat>
          <bool />
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
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>False</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>True</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Certificate</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Instructs the DHA-CSP to forward DHA-Data to the MDM server.</Description>
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
      <NodeName>Nonce</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>\0</DefaultValue>
        <Description>Enables MDMs to protect the device health attestation communications from man-in-the-middle type (MITM) attacks with a crypt-protected random value that is generated by the MDM Server. The nonce is in hex format, with a minimum size of 8 bytes, and a maximum size of 32 bytes.</Description>
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
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CorrelationID</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Identifies a unique device health attestation session. CorrelationId is used to correlate DHA-Service logs with the MDM server events and Client event logs for debug and troubleshooting.</Description>
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
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>HASEndpoint</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>has.spserv.microsoft.com.</DefaultValue>
        <Description>Identifies the fully qualified domain name (FQDN) of the DHA-Service that is assigned to perform attestation. If an FQDN is not assigned, DHA-Cloud (Microsoft owned and operated cloud service) will be used as the default attestation service.</Description>
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
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>TpmReadyStatus</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description> Returns a bitmask of information describing the state of TPM. It indicates whether the TPM of the device is in a ready and trusted state.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CurrentProtocolVersion</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Provides the current protocol version that the client is using to communicate with the Health Attestation Service.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>PreferredMaxProtocolVersion</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>3</DefaultValue>
        <Description>Provides the maximum preferred protocol version that the client is configured to communicate over. If this is higher than the protocol versions supported by the client it will use the highest protocol version available to it.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>MaxSupportedProtocolVersion</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the maximum protocol version that this client can support.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>TriggerAttestation</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Notifies the device to trigger an attestation session asynchronously.</Description>
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
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>GetAttestReport</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Retrieve attestation session report if exists.</Description>
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
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>AttestStatus</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>AttestStatus maintains the success or failure status code for the last attestation session.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>GetServiceCorrelationIDs</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Retrieve service correlation IDs if exist.</Description>
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
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[HealthAttestation configuration service provider reference](healthattestation-csp.md)
