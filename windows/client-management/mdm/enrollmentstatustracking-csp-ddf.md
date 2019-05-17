---
title: EnrollmentStatusTracking CSP
description: EnrollmentStatusTracking CSP
ms.author: v-madhi@microsoft.com
ms.topic: article
ms.prod: w10
ms.technology: windows
author: ManikaDhiman
ms.date: 05/17/2019
---

# EnrollmentStatusTracking DDF


This topic shows the OMA DM device description framework (DDF) for the **EnrollmentStatusTracking** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

### EnrollmentStatusTracking CSP

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>EnrollmentStatusTracking</NodeName>
        <Path>./User/Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>These settings are used to communicate what policies the Enrollment Status Page (ESP) should block on.  Using these settings, policy providers register themselves and the set of policies that need to be tracked. The ESP will include the counts of these policy sets in the status message to the user, and blocks progress on that page until all policies are provisioned. The policy provider is expected to drive the status updates by updating the appropriate node values, which will then be reflected in the ESP status message.</Description>
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
            <MIME>com.microsoft/1.0/MDM/EnrollmentStatusTracking</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Setup</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>These settings are read by the Enrollment Status Page (ESP) during the Account Setup phase.  Policy providers use these nodes to communicate progress state back to the ESP, which is then displayed to the user through progress message updates.</Description>
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
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Apps</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Policy providers use these settings to communicate to the ESP which app installations it should block on and provide progress in the status message to the user.</Description>
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
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>PolicyProviders</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>These settings are read by the Enrollment Status Page (ESP) during the Device Setup phase.  Policy providers use these nodes to communicate progress state back to the ESP, which is then displayed to the user through progress message updates.</Description>
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
                    <Replace />
                  </AccessType>
                  <Description>This node represents an app policy provider for the Enrollment Status Page (ESP). Existence of this node indicates to the ESP that it should not show the tracking status message until the TrackingPoliciesCreated node has been set to true.</Description>
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
                  <DFTitle>ProviderName</DFTitle>
                  <DFType>
                    <DDFName></DDFName>
                  </DFType>
                </DFProperties>
                <Node>
                  <NodeName>TrackingPoliciesCreated</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                      <Add />
                      <Delete />
                    </AccessType>
                    <Description>Indicates when the provider has created the required policies for the ESP to use for tracking app installation progress.  The policy provider itself is expected to set the value of this node, not the MDM server.</Description>
                    <DFFormat>
                      <bool />
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
            </Node>
            <Node>
              <NodeName>Tracking</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node represents an app policy provider for the Enrollment Status Page (ESP). Existence of this node indicates to the ESP that it should not show the tracking status message until the TrackingPoliciesCreated node has been set to true.</Description>
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
                    <Replace />
                  </AccessType>
                  <Description>The name of the provider responsible for installing these apps and providing status back to the Enrollment Status Page.</Description>
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
                  <DFTitle>ProviderName</DFTitle>
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
                      <Replace />
                    </AccessType>
                    <Description>A unique name for the app whose progress should be tracked in the ESP.  The app name can be arbitrary as it is not used directly by the ESP, so the value can be defined however the policy provider chooses.</Description>
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
                    <DFTitle>AppName</DFTitle>
                    <DFType>
                      <DDFName></DDFName>
                    </DFType>
                  </DFProperties>
                  <Node>
                    <NodeName>TrackingUri</NodeName>
                    <DFProperties>
                      <AccessType>
                        <Get />
                        <Add />
                        <Delete />
                        <Replace />
                      </AccessType>
                      <Description>An optional URI to another CSP for tracking the apps installation.   If this value is not set, installation status is derived from the InstallationState node.</Description>
                      <DFFormat>
                        <chr />
                      </DFFormat>
                      <Occurrence>
                        <ZeroOrOne />
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
                    <NodeName>InstallationState</NodeName>
                    <DFProperties>
                      <AccessType>
                        <Get />
                        <Replace />
                        <Add />
                        <Delete />
                      </AccessType>
                      <Description>The installation state for the app.  This node should be updated by the policy providers (not the MDM server) so the ESP can track the installation progress and update the status message. Expected values: 1 = NotInstalled, 2 = InProgress, 3 = Completed, 4 = Error</Description>
                      <DFFormat>
                        <int />
                      </DFFormat>
                      <Occurrence>
                        <ZeroOrOne />
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
                    <NodeName>RebootRequired</NodeName>
                    <DFProperties>
                      <AccessType>
                        <Get />
                        <Replace />
                        <Add />
                        <Delete />
                      </AccessType>
                      <Description>An optional node indicating if the app installation requires the ESP to issue a reboot.  This node should be set by the policy provider installing the app (not the MDM server). Expected values: 1 = NotRequired, 2 = SoftReboot, 3 = HardReboot.  If this node is not set, the ESP will not reboot the device for this app install.</Description>
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
            <NodeName>HasProvisioningCompleted</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This node is set by the Enrollment Status Page (ESP) when it completes.  Providers are able to query this node to determine if the ESP is showing, allowing them to bifurcate their logic accordingly.  For instance, when an app install requires a reboot, the policy provider should let the ESP issue the reboot by setting RebootRequired value for that app if and only if the ESP is running, otherwise, the policy provider is responsible for issuing a reboot themselves.</Description>
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
        </Node>
      </Node>
      <Node>
        <NodeName>EnrollmentStatusTracking</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>These settings are used to communicate what policies the Enrollment Status Page (ESP) should block on.  Using these settings, policy providers register themselves and the set of policies that need to be tracked. The ESP will include the counts of these policy sets in the status message to the user, and blocks progress on that page until all policies are provisioned. The policy provider is expected to drive the status updates by updating the appropriate node values, which will then be reflected in the ESP status message.</Description>
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
            <MIME>com.microsoft/1.0/MDM/EnrollmentStatusTracking</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>DevicePreparation</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>These settings are read by the Enrollment Status Page (ESP) during the the Device Preparation phase.  These setting are used to orchestrate any setup activities prior to provisioning the device in the Device Setup phase of the ESP.</Description>
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
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>PolicyProviders</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>These nodes indicate to the Enrollment Status Page (ESP) that it should wait in the Device Preparation phase until all PolicyProviders are installed or marked as not required.</Description>
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
                  <Replace />
                </AccessType>
                <Description>This node represents a policy provider for the Enrollment Status Page (ESP).  The node should be given a unique name for the policy provider.  Registration of a policy provider indicates to the Enrollment Status Page that it should block in the Device Preparation phase until the provider sets its InstallationState node to 1 (not required) or 2 (complete).  Once all registered policy providers have been marked as completed (or not required), the Enrollment Status Page will progress to the Device Setup phase.</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <ZeroOrMore />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>ProviderName</DFTitle>
                <DFType>
                  <DDFName></DDFName>
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>InstallationState</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                    <Add />
                    <Delete />
                  </AccessType>
                  <Description>This node communicates the policy provider installation state back to the Enrollment Status Page. Expected values: 1 = NotInstalled, 2 = NotRequired, 3= Completed, 4 = Error. </Description>
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
                  <DFType>
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>LastError</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                    <Add />
                    <Delete />
                  </AccessType>
                  <Description>If a policy provider fails to install, it can optionally set an HRESULT error code that the Enrollment Status Page can display in an error message to the user. This node will only be read by the Enrollment Status Page when the provider's InstallationState node is set to 3 (Error).  This node is only intended to be set by the policy provider itself, not the MDM server. </Description>
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
                <NodeName>Timeout</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                    <Add />
                    <Delete />
                  </AccessType>
                  <Description>An optional timeout (in minutes) for provider installation to complete before the Enrollment Status Page shows an error. Provider installation is considered complete when the InstallationState node is set to 2 (NotRequired) or 3 (Complete).  If no timeout value is supplied the ESP will choose a default timeout value of 15 minutes.</Description>
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
                  <DFType>
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>TrackedResourceTypes</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
                    <Replace />
                  </AccessType>
                  <Description>This node's children registers which resource types the policy provider supports for provisioning. Only registered providers for a particular resource type will have their policies incorporated with Enrollment Status Page tracking message. </Description>
                  <DFFormat>
                    <node />
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
                    <DDFName></DDFName>
                  </DFType>
                </DFProperties>
                <Node>
                  <NodeName>Apps</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Add />
                      <Delete />
                      <Replace />
                    </AccessType>
                    <DefaultValue>false</DefaultValue>
                    <Description>This node registers the policy provider for App provisioning. </Description>
                    <DFFormat>
                      <bool />
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
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>Setup</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>These settings are read by the Enrollment Status Page (ESP) during the Device Setup phase.  Policy providers use these nodes to communicate progress state back to the ESP, which is then displayed to the user through progress message updates.</Description>
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
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Apps</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>These settings are used to communicate what policies the Enrollment Status Page (ESP) should block on.  Using these settings, policy providers register themselves and the set of policies that need to be tracked. The ESP will include the counts of these policy sets in the status message to the user, and blocks progress on that page until all policies are provisioned. The policy provider is expected to drive the status updates by updating the appropriate node values, which will then be reflected in the ESP status message.</Description>
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
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>PolicyProviders</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>App policy providers for this CSP. These are the policy providers the ESP should wait on before showing the tracking message with status to the user. </Description>
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
                    <Replace />
                  </AccessType>
                  <Description>This node represents an app policy provider for the Enrollment Status Page (ESP). Existence of this node indicates to the ESP that it should not show the tracking status message until the TrackingPoliciesCreated node has been set to true.</Description>
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
                  <DFTitle>ProviderName</DFTitle>
                  <DFType>
                    <DDFName></DDFName>
                  </DFType>
                </DFProperties>
                <Node>
                  <NodeName>TrackingPoliciesCreated</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                      <Add />
                      <Delete />
                    </AccessType>
                    <Description>Indicates when the provider has created the required policies for the ESP to use for tracking app installation progress. The policy provider itself is expected to set the value of this node, not the MDM server.</Description>
                    <DFFormat>
                      <bool />
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
            </Node>
            <Node>
              <NodeName>Tracking</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>These are the set of apps that are being tracked by the Enrollment Status Page.</Description>
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
                    <Replace />
                  </AccessType>
                  <Description>The name of the provider responsible for installing these apps and providing status back to the Enrollment Status Page.</Description>
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
                  <DFTitle>ProviderName</DFTitle>
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
                      <Replace />
                    </AccessType>
                    <Description>A unique name for the app whose progress should be tracked in the ESP.  The app name can be arbitrary as it is not used directly by the ESP, so the value can be defined however the policy provider chooses.</Description>
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
                    <DFTitle>AppName</DFTitle>
                    <DFType>
                      <DDFName></DDFName>
                    </DFType>
                  </DFProperties>
                  <Node>
                    <NodeName>TrackingUri</NodeName>
                    <DFProperties>
                      <AccessType>
                        <Get />
                        <Add />
                        <Delete />
                        <Replace />
                      </AccessType>
                      <Description>An optional URI to another CSP for tracking the apps installation.   If this value is not set, installation status is derived from the InstallationState node.</Description>
                      <DFFormat>
                        <chr />
                      </DFFormat>
                      <Occurrence>
                        <ZeroOrOne />
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
                    <NodeName>InstallationState</NodeName>
                    <DFProperties>
                      <AccessType>
                        <Get />
                        <Replace />
                        <Add />
                        <Delete />
                      </AccessType>
                      <Description>The installation state for the app.  This node should be updated by the policy providers (not the MDM server) so the ESP can track the installation progress and update the status message. Expected values: 1 = NotInstalled, 2 = InProgress, 3 = Completed, 4 = Error</Description>
                      <DFFormat>
                        <int />
                      </DFFormat>
                      <Occurrence>
                        <ZeroOrOne />
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
                    <NodeName>RebootRequired</NodeName>
                    <DFProperties>
                      <AccessType>
                        <Get />
                        <Replace />
                        <Add />
                        <Delete />
                      </AccessType>
                      <Description>An optional node indicating if the app installation requires the ESP to issue a reboot.  This node should be set by the policy provider installing the app (not the MDM server). Expected values: 1 = NotRequired, 2 = SoftReboot, 3 = HardReboot.  If this node is not set, the ESP will not reboot the device for this app install.</Description>
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
            <NodeName>HasProvisioningCompleted</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This node is set by the Enrollment Status Page (ESP) when it completes.  Providers are able to query this node to determine if the ESP is showing, allowing them to bifurcate their logic accordingly.  For instance, when an app install requires a reboot, the policy provider should let the ESP issue the reboot by setting RebootRequired value for that app if and only if the ESP is running, otherwise, the policy provider is responsible for issuing a reboot themselves.</Description>
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
        </Node>
      </Node>
</MgmtTree>

```