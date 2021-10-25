---
title: HealthAttestation DDF
description: Learn about the OMA DM device description framework (DDF) for the HealthAttestation configuration service provider.
ms.assetid: D20AC78D-D2D4-434B-B9FD-294BCD9D1DDE
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: dansimp
ms.date: 12/05/2017
---

# HealthAttestation DDF


This topic shows the OMA DM device description framework (DDF) for the **HealthAttestation** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

```xml
<?xml version='1.0' encoding='utf-8' standalone='yes'?>
<identity
  xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  owner="Microsoft"
  namespace="Windows-DeviceManagement-CspDefinition"
  name="HealthAttestation">
  <cspDefinition>
    <MgmtTree>
      <VerDTD>1.2</VerDTD>
      <BinaryPath>$(runtime.windows)\system32\hascsp.dll</BinaryPath>
      <Diagnostics></Diagnostics>
      <ComClsid>{9DCCCE22-C057-424E-B8D1-67935988B174}</ComClsid>
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
            <MIME>com.microsoft/1.4/MDM/HealthAttestation</MIME>
          </DFType>
          <Applicability>
            <OsBuildVersion>10.0.10586</OsBuildVersion>
            <CspVersion>1.0</CspVersion>
          </Applicability>
          <ExposedTo>
            <Wmi />
            <Mdm />
          </ExposedTo>
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
              <MIME>text/plain</MIME>
            </DFType>
            <OneTimeExecution />
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
              <MIME>text/plain</MIME>
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
              <MIME>text/plain</MIME>
            </DFType>
            <AllowedValues ValueType="ENUM">
              <Enum>
                <Value>false</Value>
                <ValueDescription>False</ValueDescription>
              </Enum>
              <Enum>
                <Value>true</Value>
                <ValueDescription>True</ValueDescription>
              </Enum>
            </AllowedValues>
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
              <MIME>text/plain</MIME>
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
              <MIME>text/plain</MIME>
            </DFType>
            <AllowedValues ValueType="None">
            </AllowedValues>
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
              <MIME>text/plain</MIME>
            </DFType>
            <AllowedValues ValueType="None">
            </AllowedValues>
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
              <MIME>text/plain</MIME>
            </DFType>
            <AllowedValues ValueType="None">
            </AllowedValues>
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
              <MIME>text/plain</MIME>
            </DFType>
            <Applicability>
              <OsBuildVersion>10.0.14393</OsBuildVersion>
              <CspVersion>1.1</CspVersion>
            </Applicability>
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
              <MIME>text/plain</MIME>
            </DFType>
            <Applicability>
              <OsBuildVersion>10.0.16299</OsBuildVersion>
              <CspVersion>1.3</CspVersion>
            </Applicability>
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
              <MIME>text/plain</MIME>
            </DFType>
            <Applicability>
              <OsBuildVersion>10.0.16299</OsBuildVersion>
              <CspVersion>1.3</CspVersion>
            </Applicability>
            <AllowedValues ValueType="None">
            </AllowedValues>
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
              <MIME>text/plain</MIME>
            </DFType>
            <Applicability>
              <OsBuildVersion>10.0.16299</OsBuildVersion>
              <CspVersion>1.3</CspVersion>
            </Applicability>
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
              <MIME>text/plain</MIME>
            </DFType>
            <Applicability>
              <OsBuildVersion>99.9.99999</OsBuildVersion>
              <CspVersion>1.4</CspVersion>
            </Applicability>
            <AsynchronousTracking ResourceSuccessURI="AttestStatus" />
            <OneTimeExecution />
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
              <DDFName></DDFName>
            </DFType>
            <Applicability>
              <OsBuildVersion>99.9.99999</OsBuildVersion>
              <CspVersion>1.4</CspVersion>
            </Applicability>
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
              <MIME>text/plain</MIME>
            </DFType>
            <Applicability>
              <OsBuildVersion>99.9.99999</OsBuildVersion>
              <CspVersion>1.4</CspVersion>
            </Applicability>
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
              <DDFName></DDFName>
            </DFType>
            <Applicability>
              <OsBuildVersion>99.9.99999</OsBuildVersion>
              <CspVersion>1.4</CspVersion>
            </Applicability>
          </DFProperties>
        </Node>
      </Node>
    </MgmtTree>
  </cspDefinition>
</identity>


```

## Related topics


[HealthAttestation configuration service provider](healthattestation-csp.md)

 

 






