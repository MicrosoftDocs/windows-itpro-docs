---
title: CleanPC DDF
description: This topic shows the OMA DM device description framework (DDF) for the CleanPC configuration service provider. DDF files are used only with OMA DM provisioning XML.
ms.assetid: A2182898-1577-4675-BAE5-2A3A9C2AAC9B
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# CleanPC DDF

This topic shows the OMA DM device description framework (DDF) for the **CleanPC** configuration service provider. DDF files are used only with OMA DM provisioning XML.

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
        <NodeName>CleanPC</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
            <AccessType>
                <Get />
            </AccessType>
            <Description>Allow removal of user installed and pre-installed applications, with option to persist user data</Description>
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
                <MIME>com.microsoft/1.0/MDM/CleanPC</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>CleanPCWithoutRetainingUserData</NodeName>
            <DFProperties>
                <AccessType>                    
                    <Exec />
                </AccessType>
                <Description>CleanPC operation without any retention of User data</Description>
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
            <NodeName>CleanPCRetainingUserData</NodeName>
            <DFProperties>
                <AccessType>
                    <Exec />
                </AccessType>
                <Description>CleanPC operation with retention of User data</Description>
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
</MgmtTree>
```

 

 






