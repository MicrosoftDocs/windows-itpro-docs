---
title: CustomDeviceUI DDF
description: Learn about the OMA DM device description framework (DDF) for the CustomDeviceUI configuration service provider.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/05/2017
---

# CustomDeviceUI DDF

This topic shows the OMA DM device description framework (DDF) for the **CustomDeviceUI** configuration service provider. DDF files are used only with OMA DM provisioning XML.

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
        <NodeName>CustomDeviceUI</NodeName>
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
                <MIME>com.microsoft/1.0/MDM/CustomDeviceUI</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>StartupAppID</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <Description>AppID string value is the default appid/AUMID to launch during boot up </Description>
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
            <NodeName>BackgroundTasksToLaunch</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>List of package names of background tasks that needs to be launched on boot.</Description>
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
                <DFTitle>Background Tasks to Launch</DFTitle>
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
                    <Description>Package Full Name of the App that needs be launched in the background. This can contain no entry points, a single or multiple entry points</Description>
                    <DFFormat>
                        <chr />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrMore />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <CaseSense>
                        <CIS />
                    </CaseSense>
                    <DFTitle>BackgroundTaskPackageName</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[CustomDeviceUI configuration service provider](customdeviceui-csp.md)

 

 






