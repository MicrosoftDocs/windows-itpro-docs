---
title: SharedPC DDF file
description: SharedPC DDF file
ms.assetid: 70234197-07D4-478E-97BB-F6C651C0B970
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 12/05/2017
---

# SharedPC DDF file


This topic shows the OMA DM device description framework (DDF) for the **SharedPC** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the DDF for Windows 10, version 1703.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>SharedPC</NodeName>
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
                <MIME>com.microsoft/1.1/MDM/SharedPC</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>EnableSharedPCMode</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>false</DefaultValue>
                <Description>Setting this node to "true" triggers the action to configure a device to Shared PC mode.</Description>
                <DFFormat>
                    <bool />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Enable shared PC mode</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>SetEduPolicies</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>false</DefaultValue>
                <Description>Set a list of EDU policies. This node is independent of EnableSharedPCMode.</Description>
                <DFFormat>
                    <bool />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Set EDU policies</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>SetPowerPolicies</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>Specify that the power policies should be set when configuring SharedPC mode. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <bool />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Set power policies</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>MaintenanceStartTime</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>Daily start time of maintenance hour. Given in minutes from midnight. Default is 0 (12am). This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Maintenance start time</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>SignInOnResume</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>Require signing in on waking up from sleep. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <bool />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Sign-in on resume</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>SleepTimeout</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>300</DefaultValue>
                <Description>The amount of time before the PC sleeps, giving in seconds. 0 means the PC never sleeps. Default is 5 minutes. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Sleep timeout</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>EnableAccountManager</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>Enable the account manager for shared PC mode.</Description>
                <DFFormat>
                    <bool />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Enable account manager</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>AccountModel</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>Configures which type of accounts are allowed to use the PC. Allowed values: 0 (only guest), 1 (domain-joined only), 2 (domain-joined and guest).</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Account model</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>DeletionPolicy</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>1</DefaultValue>
                <Description>Configures when accounts will be deleted. Allowed values: 0 (delete immediately), 1 (delete at disk space threshold).</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Account deletion policy</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>DiskLevelDeletion</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>25</DefaultValue>
                <Description>Accounts will start being deleted when available disk space falls below this threshold, given as percent of total disk capacity. Accounts that have been inactive the longest will be deleted first.</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Disk space threshold for account deletion</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>DiskLevelCaching</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>50</DefaultValue>
                <Description>Stop deleting accounts when available disk space reaches this threshold, given as percent of total disk capacity.</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Disk space threshold for account caching</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>RestrictLocalStorage</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>Restricts the user from using local storage. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <bool />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Restrict local storage</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>KioskModeAUMID</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <Description>Specifies the AUMID of the app to use with assigned access. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <chr />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Kiosk mode AUMID</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>KioskModeUserTileDisplayText</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <Description>Specifies the display text for the account shown on the sign-in screen which launches the app specified by KioskModeAUMID. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <chr />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Kiosk mode user tile display text</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>InactiveThreshold</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>30</DefaultValue>
                <Description>Accounts will start being deleted when they have not been logged on during the specified period, given as number of days.</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Account inactive threshold</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>MaxPageFileSizeMB</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>1024</DefaultValue>
                <Description>Maximum size of the paging file in MB. Applies only to systems with less than 32 GB storage and at least 3 GB of RAM. This node is optional. If used, it needs to be set before the action on "EnableSharedPCMode" node is taken.</Description>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <DFTitle>Maximum PageFile size</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[SharedPC configuration service provider](sharedpc-csp.md)

 

 






