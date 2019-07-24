---
title: DeveloperSetup DDF file
description: This topic shows the OMA DM device description framework (DDF) for the DeveloperSetup configuration service provider. This CSP was added in Windows 10, version 1703.
ms.assetid: 
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# DeveloperSetup DDF file

This topic shows the OMA DM device description framework (DDF) for the DeveloperSetup configuration service provider. This CSP was added in Windows 10, version 1703.

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
        <NodeName>DeveloperSetup</NodeName>
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
            <DDFName>com.microsoft/1.0/MDM/DeveloperSetup</DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>EnableDeveloperMode</NodeName>
          <DFProperties>
            <AccessType>
              <Replace />
            </AccessType>
            <DefaultValue>False</DefaultValue>
            <Description>Enables developer mode on the device</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>EnableDeveloperMode</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DevicePortal</NodeName>
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
            <NodeName>Authentication</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Specifies characteristics of the authentication mechanism used for the Windows Device Portal.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Authentication</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Mode</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <Description>Describes the mode of authentication used when making requests to the Device Portal.</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFTitle>Mode</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>BasicAuth</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Describes credentials used for basic authentication</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFTitle>BasicAuth</DFTitle>
                <DFType>
                  <DDFName></DDFName>
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>Username</NodeName>
                <DFProperties>
                  <AccessType>
                    <Replace />
                  </AccessType>
                  <Description>Describes the username to use when performing basic authentication with the Windows Device Portal</Description>
                  <DFFormat>
                    <chr />
                  </DFFormat>
                  <Occurrence>
                    <One />
                  </Occurrence>
                  <Scope>
                    <Dynamic />
                  </Scope>
                  <CaseSense>
                    <CIS />
                  </CaseSense>
                  <DFTitle>Username</DFTitle>
                  <DFType>
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>Password</NodeName>
                <DFProperties>
                  <AccessType>
                    <Replace />
                  </AccessType>
                  <Description>Describes the password to use when authenticating requests against the Windows Device Portal</Description>
                  <DFFormat>
                    <chr />
                  </DFFormat>
                  <Occurrence>
                    <One />
                  </Occurrence>
                  <Scope>
                    <Dynamic />
                  </Scope>
                  <CaseSense>
                    <CIS />
                  </CaseSense>
                  <DFTitle>Password</DFTitle>
                  <DFType>
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
          <Node>
            <NodeName>Connection</NodeName>
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
              <DFTitle>Connection</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>HttpPort</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <Description>Configures the HTTP port for incoming connections to the Device Portal Service.</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>HttpPort</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>HttpsPort</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <Description>Configures the HTTPS port for incoming connections to the Device Portal Service.</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Permanent />
                </Scope>
                <DFTitle>HttpsPort</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```

 

 






