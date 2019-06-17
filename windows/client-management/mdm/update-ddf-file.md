---
title: Update DDF file
description: Update DDF file
ms.assetid: E236E468-88F3-402A-BA7A-834ED38DD388
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 02/23/2018
---

# Update DDF file

This topic shows the OMA DM device description framework (DDF) for the **Update** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is for Windows 10, version 1803.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <Node>
    <NodeName>Update</NodeName>
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
        <MIME>com.microsoft/1.1/MDM/Update</MIME>
      </DFType>
    </DFProperties>
    <Node>
      <NodeName>ApprovedUpdates</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
        </AccessType>
        <Description>Approve of specific updates to be installed on a device and accept the EULA associated with the update on behalf of the end-user</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>Approved Updates</DFTitle>
        <DFType>
          <DDFName></DDFName>
        </DFType>
      </DFProperties>
      <Node>
        <NodeName></NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>UpdateID field of the UpdateIdentity  is used to display relevant update metadata to IT and approved updates to be installed on the device</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Approved Update Guid</DFTitle>
          <DFType>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>ApprovedTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>The time updates get approved</Description>
            <DFFormat>
              <time />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>The time update get approved</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>FailedUpdates</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Approved updates that failed to install on a device</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>Failed Updates</DFTitle>
        <DFType>
          <DDFName></DDFName>
        </DFType>
      </DFProperties>
      <Node>
        <NodeName></NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>UpdateID field of the UpdateIdentity GUID that represent an update that failed to install</Description>
          <DFFormat>
            <node />
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
          <DFTitle>Failed Update Guid</DFTitle>
          <DFType>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>HResult</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>Update failure error code</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>HResult</DFTitle>
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
            <Description>Update failure status</Description>
            <DFFormat>
              <int />
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
            <DFTitle>Failed update status</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>RevisionNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The revision number of the update</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Update's revision number</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>InstalledUpdates</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Updates that are installed on the device</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>Installed Updates</DFTitle>
        <DFType>
          <DDFName></DDFName>
        </DFType>
      </DFProperties>
      <Node>
        <NodeName></NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>UpdateIDs that represent the updates installed on a device</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Installed Update Guid</DFTitle>
          <DFType>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>RevisionNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The revision number of the update</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Update's revision number</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>InstallableUpdates</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Updates that are applicable and not yet installed on the device</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>Installable Updates</DFTitle>
        <DFType>
          <DDFName></DDFName>
        </DFType>
      </DFProperties>
      <Node>
        <NodeName></NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>UpdateIDs that represent the updates applicable and not installed on a device</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Installable Update Guid</DFTitle>
          <DFType>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Type</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>
              The UpdateClassification value of the update
              Values:
              0 = None
              1 = Security
              2 = Critical
            </Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Type of update</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>RevisionNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The revision number of the update</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Update's revision number</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>PendingRebootUpdates</NodeName>
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
        <NodeName></NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Devices in the pending reboot state</Description>
          <DFFormat>
            <node />
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
          <DFTitle>Pending Reboot Update Guid</DFTitle>
          <DFType>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>InstalledTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The time the update installed.</Description>
            <DFFormat>
              <time />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>InstalledTime</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>RevisionNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The revision number of the update</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Update's revision number</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>LastSuccessfulScanTime</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Last success scan time.</Description>
        <DFFormat>
          <time />
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
        <DFTitle>LastSuccessfulScanTime</DFTitle>
        <DFType>
          <MIME>text/plain</MIME>
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>DeferUpgrade</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Defer upgrades till the next upgrade period (at least a few months). </Description>
        <DFFormat>
          <bool />
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
      <NodeName>Rollback</NodeName>
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
        <NodeName>QualityUpdate</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
          </AccessType>
          <Description>
            Roll back Latest Quality Update, if the machine meets the following conditions:
            Condition 1: Device must be WUfB Connected
            Condition 2: Device must be in a Paused State
            Condition 3: Device must have the Latest Quality Update installed on the device (Current State)
            If the conditions are not true, the device will not Roll Back the Latest Quality Update.
          </Description>
          <DFFormat>
            <null />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFTitle>QualityUpdate</DFTitle>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>FeatureUpdate</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
          </AccessType>
          <Description>
            Roll Back Latest Feature Update, if the machine meets the following conditions:
            Condition 1: Device must be WUfB Connnected
            Condition 2: Device must be in Paused State
            Condition 3: Device must have the Latest Feature Update Installed on the device (Current State)
            Condition 4: Machine should be within the uninstall period
            If the conditions are not true, the device will not Roll Back the Latest Feature Update.
          </Description>
          <DFFormat>
            <null />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFTitle>FeatureUpdate</DFTitle>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>QualityUpdateStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the result of last RollBack QualityUpdate opearation. </Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFTitle>QualityUpdateStatus</DFTitle>
          <DFType>
            <MIME>text/plain</MIME>
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>FeatureUpdateStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the result of last RollBack FeatureUpdate opearation.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFTitle>FeatureUpdateStatus</DFTitle>
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


[Update CSP](update-csp.md)

 

 






