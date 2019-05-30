---
title: Win32CompatibilityAppraiser DDF file
description: XML file containing the device description framework
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 07/19/2018
---

# Win32CompatibilityAppraiser DDF file 

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic shows the OMA DM device description framework (DDF) for the **Win32CompatibilityAppraiser** configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is for Windows 10, version 1809.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>Win32CompatibilityAppraiser</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The root node for the Win32CompatibilityAppraiser configuration service provider.</Description>
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
            <MIME>com.microsoft/1.0/MDM/Win32CompatibilityAppraiser</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>CompatibilityAppraiser</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This represents the state of the Compatibility Appraiser.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFTitle>CompatibilityAppraiser</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>AppraiserConfigurationDiagnosis</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>This represents various settings that affect whether the Compatibility Appraiser can collect and upload compatibility data. </Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>AppraiserConfigurationDiagnosis</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>CommercialId</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The unique identifier specifying what organization owns this device.  This helps correlate telemetry after it has been uploaded.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>CommercialId</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>CommercialIdSetAndValid</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>A boolean value representing whether the CommercialId is set to a valid value.  Valid values are strings in the form of GUIDs, with no surrounding braces.</Description>
                <DFFormat>
                  <bool />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>CommercialIdSetAndValid</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllTargetOsVersionsRequested</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>A boolean value representing whether the flag to request that the Compatibility Appraiser check compatibility with all possible Windows 10 versions has been set.  By default, versions 1507 and 1511, and any version equal to or less than the current version, are not checked.</Description>
                <DFFormat>
                  <bool />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>AllTargetOsVersionsRequested</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>OsSkuIsValidForAppraiser</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>A boolean value indicating whether the current Windows SKU is able to run the Compatibility Appraiser.</Description>
                <DFFormat>
                  <bool />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>OsSkuIsValidForAppraiser</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AppraiserCodeAndDataVersionsAboveMinimum</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>An integer value representing whether the installed versions of the Compatibility Appraiser code and data meet the minimum requirement to provide useful data.  The values are: 0 == "Neither the code nor data is of a sufficient version", 1 == "The code version is insufficient but the data version is sufficient", 2 == "The code version is sufficient but the data version is insufficient", and 3 == "Both the code and data are of a sufficient version".</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>AppraiserCodeVersionAboveMinimum</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RebootPending</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>A boolean value representing whether a reboot is pending on this computer.  A newly-installed version of the Compatibility Appraiser may require a reboot before useful data is able to be sent.</Description>
                <DFFormat>
                  <bool />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>RebootPending</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>AppraiserRunResultReport</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>This provides an XML representation of the last run of Appraiser and the last runs of Appraiser of certain types or configurations.</Description>
              <DFFormat>
                <xml />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>AppraiserRunResultReport</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>UniversalTelemetryClient</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This represents the state of the Universal Telemetry Client, or DiagTrack service.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFTitle>UniversalTelemetryClient</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>UtcConfigurationDiagnosis</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>This represents various settings that affect whether the Universal Telemetry Client can upload data and how much data it can upload.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>UtcConfigurationDiagnosis</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>TelemetryOptIn</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>An integer value representing what level of telemetry will be uploaded.  The values are: 0 == "Security data will be sent", 1 == "Basic telemetry will be sent", 2 == "Enhanced telemetry will be sent", and 3 == "Full telemetry will be sent".</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>TelemetryOptIn</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>CommercialDataOptIn</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>An integer value representing whether the CommercialDataOptIn setting is allowing any data to upload.  The values are: 0 == "Setting is disabled", 1 == "Setting is enabled", and 2 == "Setting is not applicable to this version of Windows".</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>CommercialDataOptIn</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DiagTrackServiceRunning</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>A boolean value representing whether the DiagTrack service is running.  This service must be running in order to upload UTC data.</Description>
                <DFFormat>
                  <bool />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>DiagTrackServiceRunning</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>MsaServiceEnabled</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>A boolean value representing whether the MSA service is enabled.  This service must be enabled for UTC data to be indexed with Global Device IDs.</Description>
                <DFFormat>
                  <bool />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>MsaServiceEnabled</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InternetExplorerTelemetryOptIn</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>An integer value representing what websites Internet Explorer will collect telemetry data for.    The values are: 0 == "Telemetry collection is disabled", 1 == "Telemetry collection is enabled for websites in the local intranet, trusted websites, and machine local zones", 2 == "Telemetry collection is enabled for internet websites and restricted website zones", 3 == "Telemetry collection is enabled for all websites", and 0x7FFFFFFF == "Telemetry collection is not configured".</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>InternetExplorerTelemetryOptIn</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>UtcConnectionReport</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>This provides an XML representation of the UTC connections during the most recent summary period.</Description>
              <DFFormat>
                <xml />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>UtcConnectionReport</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>WindowsErrorReporting</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This represents the state of the Windows Error Reporting service.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFTitle>WindowsErrorReporting</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>WerConfigurationDiagnosis</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>This represents various settings that affect whether the Windows Error Reporting service can upload data and how much data it can upload.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>WerConfigurationDiagnosis</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>WerTelemetryOptIn</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>An integer value indicating the amount of WER data that will be uploaded.  The values are: 0 == "Data will not send due to UTC opt-in", 1 == "Data will not send due to WER opt-in", 2 == "Basic WER data will send but not the complete set of data", and 3 == "The complete set of WER data will send".</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>WerTelemetryOptIn</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>MostRestrictiveSetting</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>An integer value representing which setting category (system telemetry, WER basic policies, WER advanced policies, and WER consent policies) is causing the overall WerTelemetryOptIn value to be restricted.  The values are: 0 == "System telemetry settings are restricting uploads", 1 == "WER basic policies are restricting uploads", 2 == "WER advanced policies are restricting uploads", 3 == "WER consent policies are restricting uploads", and 4 == "There are no restrictive settings".</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>MostRestrictiveSetting</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>WerConnectionReport</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>This provides an XML representation of the most recent WER connections of various types.</Description>
              <DFFormat>
                <xml />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>WerConnectionReport</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
