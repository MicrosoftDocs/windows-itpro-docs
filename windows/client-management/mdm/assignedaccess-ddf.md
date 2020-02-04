---
title: AssignedAccess DDF
description: AssignedAccess DDF
ms.assetid: 224FADDB-0EFD-4E5A-AE20-1BD4ABE24306
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 02/22/2018
---

# AssignedAccess DDF


This topic shows the OMA DM device description framework (DDF) for the **AssignedAccess** configuration service provider. DDF files are used only with OMA DM provisioning XML.

You can download the DDF files from the links below:

- [Download all the DDF files for Windows 10, version 1703](https://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](https://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)

The XML below is for Windows 10, version 1803.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [
    <?oma-dm-ddf-ver supported-versions="1.2"?>
]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>AssignedAccess</NodeName>
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
                <MIME>com.microsoft/2.0/MDM/AssignedAccess</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>KioskModeApp</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Add />
                    <Delete />
                    <Replace />
                </AccessType>
                <Description>This node can accept and return json string which comprises of account name, and AUMID for Kiosk mode app.

Example: {"User":"domain\\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}.

When configuring kiosk mode app, account name will be used to find the target user. Account name includes domain name and user name. Domain name can be optional if user name is unique across the system. For a local account, domain name should be machine name. When "Get" is executed on this node, domain name is always returned in the output.

This node supports Add, Delete, Replace and Get methods. When there's no configuration, "Get" and "Delete" methods fail. When there's already a configuration for kiosk mode app, "Add" method fails. The data pattern for "Add" and "Replace" is the same.</Description>
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
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Configuration</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Add />
                    <Delete />
                    <Replace />
                </AccessType>
                <Description>This node accepts an AssignedAccessConfiguration xml as input. Please check out samples and required xsd on MSDN.</Description>
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
                <Description>This read only node contains kiosk health event xml</Description>
                <DFFormat>
                    <chr />
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
            <NodeName>ShellLauncher</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Add />
                    <Delete />
                    <Replace />
                </AccessType>
                <Description>This node accepts a ShellLauncherConfiguration xml as input. Please check out samples and required xsd on MSDN.</Description>
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
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>StatusConfiguration</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Add />
                    <Delete />
                    <Replace />
                </AccessType>
                <Description>This node accepts a StatusConfiguration xml as input. Please check out samples and required xsd on MSDN.</Description>
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
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[AssignedAccess configuration service provider](assignedaccess-csp.md)

 

 






