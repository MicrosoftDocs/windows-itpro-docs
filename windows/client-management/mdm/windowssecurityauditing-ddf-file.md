---
title: WindowsSecurityAuditing DDF file
description: This topic shows the OMA DM device description framework (DDF) for the WindowsSecurityAuditing configuration service provider. This CSP was added in Windows 10, version 1511.
ms.assetid: B1F9A5FA-185B-48C6-A7F4-0F0F23B971F0
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# WindowsSecurityAuditing DDF file


This topic shows the OMA DM device description framework (DDF) for the WindowsSecurityAuditing configuration service provider. This CSP was added in Windows 10, version 1511.  

You can download the DDF files from the links below:

- [Download all the DDF files for Windows 10, version 1703](http://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](http://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>WindowsSecurityAuditing</NodeName>
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
                <MIME>com.microsoft/1.0/MDM/WindowsSecurityAuditing</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>ConfigurationSettings</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>This branch handles all the audit configuration settings for the device. This node should not be used for a get/set but is simply a grouping interior node for all configuration functionality.</Description>
                <DFFormat>
                    <node />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Configuration Settings</DFTitle>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>EnableSecurityAuditing</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Replace />
                    </AccessType>
                    <DefaultValue>false</DefaultValue>
                    <Description>Specifies whether to enable or disable auditing for the device. If the value is true, a default set of audit events will be captured to a log file for upload. If the value is false, auditing will be disabled and events will no longer be logged. </Description>
                    <DFFormat>
                        <bool />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFTitle>Enable Security Auditing</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
        </Node>
    </Node>
</MgmtTree>
```

 

 






