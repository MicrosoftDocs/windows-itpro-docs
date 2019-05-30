---
title: AccountManagement DDF file
description: Used to configure settings in the Account Manager service
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 03/23/2018
---

# AccountManagement DDF file 


This topic shows the OMA DM device description framework (DDF) for the **AccountManagement** configuration service provider.

The XML below is for Windows 10, version 1803.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>AccountManagement</NodeName>
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
            <MIME>com.microsoft/1.0/MDM/AccountManagement</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>UserProfileManagement</NodeName>
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
            <NodeName>EnableProfileManager</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Enable profile lifetime mangement for shared or communal device scenarios.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Enable profile manager</DFTitle>
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
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Configures when profiles will be deleted. Allowed values: 0 (delete immediately upon device returning to a state with no currently active users); 1 (delete at storage capacity threshold); 2 (delete at both storage capacity threshold and profile inactivity threshold).</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Profile deletion policy</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>StorageCapacityStartDeletion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DefaultValue>25</DefaultValue>
              <Description>Start deleting profiles when available storage capacity falls below this threshold, given as percent of total storage available for profiles. Profiles that have been inactive the longest will be deleted first.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Storage capacity threshold to start profile deletion</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>StorageCapacityStopDeletion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DefaultValue>50</DefaultValue>
              <Description>Stop deleting profiles when available storage capacity is brought up to this threshold, given as percent of total storage available for profiles.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Storage capacity threshold to stop profile deletion</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ProfileInactivityThreshold</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DefaultValue>30</DefaultValue>
              <Description>Start deleting profiles when they have not been logged on during the specified period, given as number of days.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Profile inactive threshold</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
