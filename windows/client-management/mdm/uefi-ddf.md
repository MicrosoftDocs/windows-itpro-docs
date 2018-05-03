---
title: UEFI DDF file
description: UEFI DDF file
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 02/01/2018
---

# UEFI DDF file


This topic shows the OMA DM device description framework (DDF) for the **Uefi** configuration service provider. 

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP. 

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
          <NodeName>UefiDeviceIdentifier</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Retrieves XML from UEFI which describes the device identifier.</Description>
            <DFFormat>
              <xml />
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
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IdentityInfo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Provisioned signers</Description>
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
              <Description>Retrieves XML from UEFI which describes the current UEFI identity information</Description>
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
            <NodeName>ApplyResult</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves XML describing the results of previous ApplyIdentityInfo operation.</Description>
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
        </Node>
        <Node>
          <NodeName>AuthInfo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Permission Information</Description>
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
              <Description>Retrieves XML from UEFI which describes the current UEFI permission/authentication information.</Description>
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
              <Description>Apply a permission/authentication information package to UEFI. Input is the signed package in base64 encoded format.</Description>
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
            <NodeName>ApplyResult</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves XML describing the results of previous ApplyAuthInfo operation.</Description>
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
        </Node>
        <Node>
          <NodeName>Config</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Device Configuration</Description>
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
              <Description>Retrieves XML from UEFI which describes the current UEFI configuration.</Description>
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
              <Description>Apply a configuration package to UEFI. Input is the signed package in base64 encoded format.</Description>
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
            <NodeName>ApplyResult</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Retrieves XML describing the results of previous ApplyConfig operation.</Description>
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
        </Node>
      </Node>
</MgmtTree>
```