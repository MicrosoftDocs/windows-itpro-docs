---
title: Defender DDF file
description: Learn how the OMA DM device description framework (DDF) for the Defender configuration service provider is used.
ms.assetid: 39B9E6CF-4857-4199-B3C3-EC740A439F65
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 07/23/2021
---

# Defender DDF file

This topic shows the OMA DM device description framework (DDF) for the **Defender** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>Defender</NodeName>
        <Path>./Vendor/MSFT</Path>
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
            <MIME>com.microsoft/1.3/MDM/Defender</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Detections</NodeName>
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
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>ThreatId</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>URL</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Severity</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Category</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>CurrentStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ExecutionStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InitialDetectionTime</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>LastThreatStatusChangeTime</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>NumberOfDetections</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>Health</NodeName>
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
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>ProductStatus</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ComputerState</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DefenderEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RtpEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>NisEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>QuickScanOverdue</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>FullScanOverdue</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SignatureOutOfDate</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RebootRequired</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>FullScanRequired</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EngineVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SignatureVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DefenderVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>QuickScanTime</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>FullScanTime</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>QuickScanSigVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>FullScanSigVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>TamperProtectionEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsVirtualMachine</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Configuration</NodeName>
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
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>TamperProtection</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnableFileHashComputation</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SupportLogLocation</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
        <NodeName>DisableGradualRelease</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Enable this policy to disable gradual rollout of Defender updates.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
          <Applicability>
            <OsBuildVersion>99.9.99999</OsBuildVersion>
            <CspVersion>1.3</CspVersion>
          </Applicability>
          <AllowedValues ValueType="ENUM">
            <Enum>
              <Value>1</Value>
              <ValueDescription>Gradual release is disabled</ValueDescription>
            </Enum>
            <Enum>
              <Value>0</Value>
              <ValueDescription>Gradual release is enabled</ValueDescription>
            </Enum>
          </AllowedValues>
        </DFProperties>
      </Node>
           <Node>
        <NodeName>DefinitionUpdatesChannel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Enable this policy to specify when devices receive daily Microsoft Defender definition updates during the daily gradual rollout.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
          <Applicability>
            <OsBuildVersion>99.9.99999</OsBuildVersion>
            <CspVersion>1.3</CspVersion>
          </Applicability>
          <AllowedValues ValueType="ENUM">
            <Enum>
              <Value>0</Value>
              <ValueDescription>Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices.</ValueDescription>
            </Enum>
            <Enum>
              <Value>4</Value>
              <ValueDescription>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</ValueDescription>
            </Enum>
            <Enum>
              <Value>5</Value>
              <ValueDescription>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</ValueDescription>
            </Enum>
          </AllowedValues>
        </DFProperties>
      </Node>
          <Node>
        <NodeName>EngineUpdatesChannel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Enable this policy to specify when devices receive Microsoft Defender engine updates during the monthly gradual rollout.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
          <Applicability>
            <OsBuildVersion>99.9.99999</OsBuildVersion>
            <CspVersion>1.3</CspVersion>
          </Applicability>
          <AllowedValues ValueType="ENUM">
            <Enum>
              <Value>0</Value>
              <ValueDescription>Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices.</ValueDescription>
            </Enum>
            <Enum>
              <Value>2</Value>
              <ValueDescription>Beta Channel: Devices set to this channel will be the first to receive new updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in (manual) test environments only and a limited number of devices.</ValueDescription>
            </Enum>
            <Enum>
              <Value>3</Value>
              <ValueDescription>Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments.</ValueDescription>
            </Enum>
            <Enum>
              <Value>4</Value>
              <ValueDescription>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</ValueDescription>
            </Enum>
            <Enum>
              <Value>5</Value>
              <ValueDescription>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</ValueDescription>
            </Enum>
          </AllowedValues>
        </DFProperties>
      </Node>
          <Node>
        <NodeName>PlatformUpdatesChannel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Enable this policy to specify when devices receive Microsoft Defender platform updates during the monthly gradual rollout.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
          <Applicability>
            <OsBuildVersion>99.9.99999</OsBuildVersion>
            <CspVersion>1.3</CspVersion>
          </Applicability>
          <AllowedValues ValueType="ENUM">
            <Enum>
              <Value>0</Value>
              <ValueDescription>Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices.</ValueDescription>
            </Enum>
            <Enum>
              <Value>2</Value>
              <ValueDescription>Beta Channel: Devices set to this channel will be the first to receive new updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in (manual) test environments only and a limited number of devices.</ValueDescription>
            </Enum>
            <Enum>
              <Value>3</Value>
              <ValueDescription>Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments.</ValueDescription>
            </Enum>
            <Enum>
              <Value>4</Value>
              <ValueDescription>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</ValueDescription>
            </Enum>
            <Enum>
              <Value>5</Value>
              <ValueDescription>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</ValueDescription>
            </Enum>
          </AllowedValues>
        </DFProperties>
      </Node>
        </Node>
        <Node>
          <NodeName>Scan</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
              <Get />
            </AccessType>
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
          <NodeName>UpdateSignature</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
              <Get />
            </AccessType>
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
          <NodeName>OfflineScan</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
              <Get />
            </AccessType>
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
      </Node>
</MgmtTree>
```

## Related topics


[Defender configuration service provider](defender-csp.md)