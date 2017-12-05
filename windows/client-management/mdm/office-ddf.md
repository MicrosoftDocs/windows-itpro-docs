---
title: Office DDF
description: This topic shows the OMA DM device description framework (DDF) for the Office configuration service provider. DDF files are used only with OMA DM provisioning XML.
ms.assetid:
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 12/05/2017
---

# Office DDF


This topic shows the OMA DM device description framework (DDF) for the **Office** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is for Windows 10, version 1709.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>Office</NodeName>
        <Path>./User/Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Root of the Office CSP.</Description>
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
            <MIME>com.microsoft/1.3/MDM/Office</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Installation</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Installation options for the Office CSP.</Description>
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
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A unique identifier which represents the instalation instance id.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>id</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Install</NodeName>
              <DFProperties>
                <AccessType>
                  <Exec />
                  <Get />
                </AccessType>
                <Description>The install action will install Office given the configuration in the data.  The string data is the xml configuration to use in order to install Office.</Description>
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
              <NodeName>Status</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The installation status of the CSP.</Description>
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
          </Node>
          <Node>
            <NodeName>CurrentStatus</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The current Office 365 installation status on the machine</Description>
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
      <Node>
        <NodeName>Office</NodeName>
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
            <MIME>com.microsoft/1.3/MDM/Office</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Installation</NodeName>
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
            <NodeName>id</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>A unique identifier which represents the instalation instance id.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>id</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Install</NodeName>
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
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Status</NodeName>
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
          <Node>
            <NodeName>CurrentStatus</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The current Office 365 installation status on the machine</Description>
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

 

 






