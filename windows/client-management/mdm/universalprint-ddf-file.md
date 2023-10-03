---
title: UniversalPrint DDF file
description: UniversalPrint DDF file
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/02/2022
ms.reviewer: jimwu
manager: aaroncz
---

# UniversalPrint DDF file

This article shows the OMA DM device description framework (DDF) for the **UniversalPrint** configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-ddf.md).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
          <NodeName>PrinterProvisioning</NodeName>
          <Path>./User/Vendor/MSFT</Path>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Printer Provisioning</Description>
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
              <MIME>com.microsoft/1.0/MDM/PrinterProvisioning</MIME>
            </DFType>
          </DFProperties>
        <Node>
          <NodeName>UPPrinterInstalls</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This setting will take the action on the specified user account to install or uninstall the specified printer. Install action is selected by default.</Description>
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
                <Get />
                <Add />
                <Delete />
              </AccessType>
              <Description>Identifies the Universal Print printer, by its Share ID, you wish to install on the targeted user account. The printer's Share ID can be found in the printer's properties via the Universal Print portal. Note: the targeted user account must have access rights to both the printer and to the Universal Print service.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <OneOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>PrinterSharedID</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
              <DynamicNodeNaming>
                <UniqueName>PrinterSharedID from the Universal Print system, which is used to discover and install Univeral Print printer</UniqueName>
              </DynamicNodeNaming>
              <TrackedResource />
              <AsynchronousTracking  ResourceInProgressValues="2,8"  ResourceFailureValues="4,32" ResourceSuccessURI="UPPrinterInstalls/@#ResourcePlaceholder@/status" ResourceSuccessValues="1" />
            </DFProperties>
            <Node>
              <NodeName>CloudDeviceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
                <Description>Identifies the Universal Print printer, by its Printer ID, you wish to install on the targeted user account. The printer's Printer ID can be found in the printer's properties via the Universal Print portal. Note: the targeted user account must have access rights to both the printer and to the Universal Print service.</Description>
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
              <NodeName>Install</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Exec />
                </AccessType>
                <Description>Support async execute. Install Universal Print printer.</Description>
                <DFFormat>
                  <null />
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
                <Description>1 finished installation successfully, 2 installation in progress after receiving execute cmd,  4 installation failed, 8 installation initial status, 32 unknown (not used).</Description>
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
              <NodeName>ErrorCode</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>HRESULT of the last installation returned code.</Description>
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
              <NodeName>PrinterSharedName</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
                <Description>Identifies the Universal Print printer, by its Share Name, you wish to install on the targeted user account. The printer's Share Name can be found in the printer's properties via the Universal Print portal. Note: the targeted user account must have access rights to both the printer and to the Universal Print service.</Description>
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
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
