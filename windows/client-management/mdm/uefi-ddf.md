---
title: UEFI DDF file
description: UEFI DDF file
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 10/02/2018
ms.reviewer: 
manager: dansimp
---

# UEFI DDF file


This topic shows the OMA DM device description framework (DDF) for the **Uefi** configuration service provider. 

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
        <NodeName>Uefi</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>UEFI Firmware Configuration Service Provider.</Description>
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
            <MIME>com.microsoft/1.0/MDM/Uefi</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>DeviceIdentifier</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Retrieves XML from UEFI which contains the device identifier.</Description>
            <DFFormat>
              <xml />
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
          <NodeName>Identity</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Identity certificate operations.</Description>
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
            <NodeName>Current</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves XML from UEFI which describes the current UEFI identity certificate information.</Description>
              <DFFormat>
                <xml />
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
            <NodeName>Apply</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <Description>Apply an identity information package to UEFI. Input is the signed package in base64 encoded format.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
          <Node>
            <NodeName>Result</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves the binary result package of the previous Identity/Apply operation.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
        </Node>
        <Node>
          <NodeName>Permissions</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Settings permission operations.</Description>
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
            <NodeName>Current</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves XML from UEFI which describes the current UEFI settings permissions.</Description>
              <DFFormat>
                <xml />
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
            <NodeName>Apply</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <Description>Apply a permissions information package to UEFI. Input is the signed package in base64 encoded format.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
          <Node>
            <NodeName>Result</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves the binary result package of the previous Permissions/Apply operation.  This binary package contains XML describing the action taken for each individual permission.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
        </Node>
        <Node>
          <NodeName>Settings</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Device settings operations.</Description>
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
            <NodeName>Current</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves XML from UEFI which describes the current UEFI settings.</Description>
              <DFFormat>
                <xml />
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
            <NodeName>Apply</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <Description>Apply a settings information package to UEFI. Input is the signed package in base64 encoded format.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
          <Node>
            <NodeName>Result</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves the binary result package of the previous Settings/Apply operation. This binary package contains XML describing the action taken for each individual setting.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
        </Node>
        <Node>
          <NodeName>Identity2</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Identity certificate operations. Alternate endpoint for sending a second identity package without an OS restart.</Description>
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
            <NodeName>Apply</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <Description>Apply an identity information package to UEFI. Input is the signed package in base64 encoded format. Alternate location for sending two identity packages in the same session.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
          <Node>
            <NodeName>Result</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves the binary result package of the previous Identity2/Apply operation.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
        </Node>
        <Node>
          <NodeName>Permissions2</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Settings permission operations. Alternate endpoint for sending a second permission package without an OS restart.</Description>
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
            <NodeName>Apply</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <Description>Apply a permissions information package to UEFI. Input is the signed package in base64 encoded format.  Alternate location for sending two permissions information packages in the same session.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
          <Node>
            <NodeName>Result</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves the binary result package from the previous Permissions2/Apply operation.  This binary package contains XML describing the action taken for each individual permission.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
        </Node>
        <Node>
          <NodeName>Settings2</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Device settings operations. Alternate endpoint for sending a second settings package without an OS restart.</Description>
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
            <NodeName>Apply</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <Description>Apply a settings information package to UEFI. Input is the signed package in base64 encoded format. Alternate location for sending two settings information packages in the same session.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
          <Node>
            <NodeName>Result</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves the binary result package of previous Settings2/Apply operation. This binary package contains XML describing the action taken for each individual setting.</Description>
              <DFFormat>
                <b64 />
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
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
