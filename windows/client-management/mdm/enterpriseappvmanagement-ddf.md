---
title: EnterpriseAppVManagement DDF file
description: EnterpriseAppVManagement DDF file
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
ms.reviewer: 
manager: dansimp
---

# EnterpriseAppVManagement DDF file

This topic shows the OMA DM device description framework (DDF) for the **EnterpriseAppVManagement** configuration service provider.  

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
        <NodeName>EnterpriseAppVManagement</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Used for inventory and App-V management.</Description>
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
          <NodeName>AppVPackageManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Used to query App-V package information (post-publish).</Description>
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
              <Description>Used to query package information. Value is always 'HostedInstall'.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <OneOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>EnterpriseID</DFTitle>
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
                <Description>Package ID of the published App-V package.</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <ZeroOrMore />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>PackageFamilyName</DFTitle>
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
                  <Description>Version ID of the published App-V package.</Description>
                  <DFFormat>
                    <node />
                  </DFFormat>
                  <Occurrence>
                    <ZeroOrMore />
                  </Occurrence>
                  <Scope>
                    <Dynamic />
                  </Scope>
                  <DFTitle>PackageFullName</DFTitle>
                  <DFType>
                    <DDFName></DDFName>
                  </DFType>
                </DFProperties>
                <Node>
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Name specified in the published AppV package.</Description>
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
                  <NodeName>Version</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Version specified in the published AppV package.</Description>
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
                  <NodeName>Publisher</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Publisher specified in the published AppV package's asset information.</Description>
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
                  <NodeName>InstallLocation</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Local package path specified in the published AppV package's asset information.</Description>
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
                  <NodeName>InstallDate</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Date the app was installed, as specified in the published AppV package's asset information.</Description>
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
                  <NodeName>Users</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Registered users for app, as specified in the published AppV package's asset information.</Description>
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
                  <NodeName>AppVPackageId</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Package ID of the published App-V package.</Description>
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
                  <NodeName>AppVVersionId</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Version ID of the published App-V package.</Description>
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
                  <NodeName>AppVPackageUri</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                    </AccessType>
                    <Description>Package URI of the published App-V package.</Description>
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
        </Node>
        <Node>
          <NodeName>AppVPublishing</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Used to monitor publishing operations on App-V.</Description>
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
            <NodeName>LastSync</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Used to monitor publishing status of last Sync operation.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>LastError</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Error code and error description of last Sync operation.</Description>
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
              <NodeName>LastErrorDescription</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Last Sync error status. One of the following values may be returned:
SYNC_ERR_NONE (0) - No errors during publish.
SYNC_ERR_UNPUBLISH_GROUPS (1) - Unpublish groups failed during publish.
SYNC_ERR_PUBLISH_NONGROUP_PACKAGES (2) - Publish no-group packages failed during publish.
SYNC_ERR_PUBLISH_GROUP_PACKAGES (3) - Publish group packages failed during publish.
SYNC_ERR_UNPUBLISH_PACKAGES (4) - Unpublish packages failed during publish.
SYNC_ERR_NEW_POLICY_WRITE (5) - New policy write failed during publish.
SYNC_ERR_MULTIPLE_DURING_PUBLISH (6) - Multiple non-fatal errors occured during publish.
                </Description>
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
              <NodeName>SyncStatusDescription</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Latest Sync in-progress stage. One of the following values may be returned:
SYNC_PROGRESS_IDLE (0) - App-V publishing is idle.
SYNC_PROGRESS_UNPUBLISH_GROUPS (1) - App-V connection groups publish in progress.
SYNC_PROGRESS_PUBLISH_NONGROUP_PACKAGES (2) - App-V packages (non connection group) publish in progress.
SYNC_PROGRESS_PUBLISH_GROUP_PACKAGES (3) - App-V packages (connection group) publish in progress.
SYNC_PROGRESS_UNPUBLISH_PACKAGES (4) - App-V packages unpublish in progress.
                </Description>
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
              <NodeName>SyncProgress</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Latest Sync state. One of the following values may be returned:
SYNC_STATUS_IDLE (0) - App-V Sync is idle.
SYNC_STATUS_PUBLISH_STARTED (1) - App-V Sync is initializing.
SYNC_STATUS_PUBLISH_IN_PROGRESS (2) - App-V Sync is in progress.
SYNC_STATUS_PUBLISH_COMPLETED (3) - App-V Sync is complete.
SYNC_STATUS_PUBLISH_REBOOT_REQUIRED (4) - App-V Sync requires device reboot.
                </Description>
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
          <Node>
            <NodeName>Sync</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Used to perform App-V synchronization.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>PublishXML</NodeName>
              <DFProperties>
                <AccessType>
                  <Delete />
                  <Get />
                  <Exec />
                </AccessType>
                <Description>Used to execute the App-V synchronization using the Publishing protocol.</Description>
                <DFFormat>
                  <xml />
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
        <Node>
          <NodeName>AppVDynamicPolicy</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Used to set App-V Policy Configuration documents for publishing packages.</Description>
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
              </AccessType>
              <Description>ID for App-V Policy Configuration document for publishing packages (referenced in the Publishing protocol document.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>ConfigurationId</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Policy</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>XML for App-V Policy Configuration documents for publishing packages.</Description>
                <DFFormat>
                  <xml />
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
