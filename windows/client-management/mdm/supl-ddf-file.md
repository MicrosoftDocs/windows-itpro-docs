---
title: SUPL DDF file
description: This topic shows the OMA DM device description framework (DDF) for the SUPL configuration service provider.
ms.assetid: 514B7854-80DC-4ED9-9805-F5276BF38034
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 07/20/2018
---

# SUPL DDF file

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic shows the OMA DM device description framework (DDF) for the **SUPL** configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is for Windows 10, version 1809.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>SUPL</NodeName>
        <Path>./Vendor/MSFT/</Path>
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
            <MIME>com.microsoft/1.2/MDM/SUPL</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>SUPL1</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Required for SUPL. Defines the account for the SUPL Enabled Terminal (SET) node. Only one SUPL account is supported at a given time.</Description>
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
            <NodeName>AppID</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Required. The AppID for SUPL is automatically set to "ap0004". This is a read-only value.</Description>
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
          </Node>
          <Node>
            <NodeName>Addr</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. Specifies the address of the Home SUPL Location Platform (H-SLP) server for non-proxy mode. The value is a server address specified as a fully qualified domain name, and the port specified as an integer, with the format server: port.</Description>
              <DFFormat>
                <chr />
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
            <NodeName>Ext</NodeName>
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
              <NodeName>Microsoft</NodeName>
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
                <NodeName>Version</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>1</DefaultValue>
                  <Description>Optional. Determines the major version of the SUPL protocol to use. For SUPL 1.0.0, set this value to 1. For SUPL 2.0.0, set this value to 2. The default is 1. Refer to FullVersion to define the minor version and the service indicator.</Description>
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
                <NodeName>FullVersion</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>1.0.0</DefaultValue>
                  <Description>Optional. Determines the full version (X.Y.Z where X, Y and Z are major version, minor version, service indicator, respectively) of the SUPL protocol to use. The default is 1.0.0. If FullVersion is defined, Version field is ignored</Description>
                  <DFFormat>
                    <chr />
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
                <NodeName>MCCMNCPairs</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>Required. List all of the MCC and MNC pairs owned by the mobile operator. This list is used to verify that the UICC matches the network and SUPL can be used. When the UICC and network do not match, the phone uses the default location service and does not use SUPL.</Description>
                  <DFFormat>
                    <chr />
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
                <NodeName>HighAccPositioningMethod</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>0</DefaultValue>
                  <Description>Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The default is 0. The default method in Windows Phones provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator's network or location services. For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.</Description>
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
                <NodeName>LocMasterSwitchDependencyNII</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>1</DefaultValue>
                  <Description>This setting is deprecated in Windows 10. Optional. Boolean. Specifies whether the location toggle on the location screen in Settings is also used to manage SUPL network-initiated (NI) requests for location. If the value is set to 0, the NI behavior is independent from the current location toggle setting. If the value is set to 1, the NI behavior follows the current location toggle setting. The default value is 1. Note that most clients do not support this behavior. This value manages the settings for both SUPL and v2 UPL. If a phone is configured for both SUPL and V2 UPL and these values differ, the SUPL setting will always be used.</Description>
                  <DFFormat>
                    <bool />
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
                <NodeName>NIDefaultTimeout </NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>30</DefaultValue>
                  <Description>Optional. Time in seconds that the network-initiated location request is displayed to the user, while awaiting a response and before doing the default action. The default is 30 seconds. A value between 20 and 60 seconds is recommended.</Description>
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
                <NodeName>ServerAccessInterval</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>60</DefaultValue>
                  <Description>Optional. Integer. Defines the minimum interval of time in seconds between mobile originated requests sent to the server to prevent overloading the mobile operator's network. The default value is 60.</Description>
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
                <NodeName>RootCertificate</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Required. Specifies the root certificate for the H-SLP server. Windows Phone does not support a non-secure mode. If this node is not included, the configuration service provider will fail but may not return a specific error.</Description>
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
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>Specifies the name of the H-SLP root certificate as a string, in the format name.cer.</Description>
                    <DFFormat>
                      <chr />
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
                  <NodeName>Data</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>The base 64 encoded blob of the H-SLP root certificate.</Description>
                    <DFFormat>
                      <b64 />
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
                </Node>
              </Node>
              <Node>
                <NodeName>RootCertificate2</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Specifies the root certificate for the H-SLP server.</Description>
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
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>Specifies the name of the H-SLP root certificate as a string, in the format name.cer.</Description>
                    <DFFormat>
                      <chr />
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
                  <NodeName>Data</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>The base 64 encoded blob of the H-SLP root certificate.</Description>
                    <DFFormat>
                      <b64 />
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
                </Node>
              </Node>
              <Node>
                <NodeName>RootCertificate3</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Specifies the root certificate for the H-SLP server.</Description>
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
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>Specifies the name of the H-SLP root certificate as a string, in the format name.cer.</Description>
                    <DFFormat>
                      <chr />
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
                  <NodeName>Data</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>The base 64 encoded blob of the H-SLP root certificate.</Description>
                    <DFFormat>
                      <b64 />
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
                </Node>
              </Node>
              <Node>
                <NodeName>RootCertificate4</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Specifies the root certificate for the H-SLP server.</Description>
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
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>Specifies the name of the H-SLP root certificate as a string, in the format name.cer.</Description>
                    <DFFormat>
                      <chr />
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
                  <NodeName>Data</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>The base 64 encoded blob of the H-SLP root certificate.</Description>
                    <DFFormat>
                      <b64 />
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
                </Node>
              </Node>
              <Node>
                <NodeName>RootCertificate5</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Specifies the root certificate for the H-SLP server.</Description>
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
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>Specifies the name of the H-SLP root certificate as a string, in the format name.cer.</Description>
                    <DFFormat>
                      <chr />
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
                  <NodeName>Data</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>The base 64 encoded blob of the H-SLP root certificate.</Description>
                    <DFFormat>
                      <b64 />
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
                </Node>
              </Node>
              <Node>
                <NodeName>RootCertificate6</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Specifies the root certificate for the H-SLP server.</Description>
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
                  <NodeName>Name</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>Specifies the name of the H-SLP root certificate as a string, in the format name.cer.</Description>
                    <DFFormat>
                      <chr />
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
                  <NodeName>Data</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>The base 64 encoded blob of the H-SLP root certificate.</Description>
                    <DFFormat>
                      <b64 />
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
                </Node>
              </Node>
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>V2UPL1 </NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Required for V2 UPL for CDMA. Specifies the account settings for user plane location and IS-801 for CDMA. Only one account is supported at a given time.</Description>
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
            <NodeName>MPC</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. The address of the mobile positioning center (MPC), in the format ipAddress: portNumber. For non-trusted mode of operation, this parameter is mandatory and the PDE parameter must be empty.</Description>
              <DFFormat>
                <chr />
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
            <NodeName>PDE</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. The address of the Position Determination Entity (PDE), in the format ipAddress: portNumber. For non-trusted mode of operation, this parameter must be empty.</Description>
              <DFFormat>
                <chr />
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
            <NodeName>PositioningMethod_MR</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The default is 0. The default method in Windows Phones provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator's network or location services. The Mobile Station Assisted and AFLT positioning methods must only be configured for test purposes. For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.</Description>
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
            <NodeName>LocMasterSwitchDependencyNII</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Optional. Boolean. Specifies whether the location toggle on the location screen in Settings is also used to manage network-initiated requests for location. If the value is set to 0, the NI behavior is independent from the current location toggle setting. If the value is set to 1, the NI behavior follows the current location toggle setting. For CDMA phones, this value must be set to 1. The default value is 1.</Description>
              <DFFormat>
                <bool />
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
            <NodeName>ApplicationTypeIndicator_MR</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Required. This value must always be set to 00000011.</Description>
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
          </Node>
          <Node>
            <NodeName>NIDefaultTimeout </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>30</DefaultValue>
              <Description>Optional. Time in seconds that the network-initiated location request is displayed to the user, while awaiting a response and before doing the default action. The default is 30 seconds. A value between 20 and 60 seconds is recommended.</Description>
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
            <NodeName>ServerAccessInterval</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>60</DefaultValue>
              <Description>Optional. Integer. Defines the minimum interval of time in seconds between mobile originated requests sent to the server to prevent overloading the mobile operator's network. The default value is 60.</Description>
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
      </Node>
</MgmtTree>
```
