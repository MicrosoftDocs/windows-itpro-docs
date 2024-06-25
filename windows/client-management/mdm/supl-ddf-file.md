---
title: SUPL DDF file
description: View the XML file containing the device description framework (DDF) for the SUPL configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# SUPL DDF file

The following XML file contains the device description framework (DDF) for the SUPL configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>SUPL</NodeName>
    <Path>./Vendor/MSFT/</Path>
    <DFProperties>
      <AccessType>
        <Add />
        <Delete />
        <Get />
      </AccessType>
      <Description>Defines the account for the SUPL Enabled Terminal (SET) node. Only one SUPL account is supported at a given time.</Description>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10240</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
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
          <DDFName />
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
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Ext</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Insert Description Here</Description>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Microsoft</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Insert Description Here</Description>
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
              <DDFName />
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
              <Description>Optional. Determines the major version of the SUPL protocol to use. For SUPL 1.0.0, set this value to 1. For SUPL 2.0.0, set this value to 2. The default is 1. Refer to FullVersion to define minor verison and service indicator</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-2]</MSFT:Value>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^(\d+\.)?(\d+\.)?(\*|\d+)$</MSFT:Value>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The default is 0. The default method in Windows provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator's network or location services. For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>None: The device uses the default positioning method. In this default mode, the GNSS obtains assistance (time injection, coarse position injection and ephemeris data) from the Microsoft Positioning Service.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Mobile Station Assisted: The device contacts the H-SLP server to obtain a position. The H-SLP does the calculation of the position and returns it to the device.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Mobile Station Based: The device obtains location-aiding data (almanac, ephemeris data, time and coarse initial position of the device) from the H-SLP server, and the device uses this information to help GPS obtain a fix. All position calculations are done in the device.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>3</MSFT:Value>
                  <MSFT:ValueDescription>Mobile Station Standalone: The device obtains assistance as required from the Microsoft location services.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>OTDOA</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>5</MSFT:Value>
                  <MSFT:ValueDescription>AFLT</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocMasterSwitchDependencyNII</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>The NI behavior is independent from the current location toggle setting.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>The NI behavior follows the current location toggle setting.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RootCertificate</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Required. Specifies the root certificate for the H-SLP server. Windows does not support a non-secure mode. If this node is not included, the configuration service provider will fail but may not return a specific error.</Description>
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
                <DDFName />
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                <DDFName />
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                <DDFName />
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
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
          <DDFName />
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
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
          <Description>Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The default is 0. The default method in Windows provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator's network or location services. The Mobile Station Assisted and AFLT positioning methods must only be configured for test purposes. For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>None: The device uses the default positioning method. In this default mode, the GNSS obtains assistance (time injection, coarse position injection, and ephemeris data) from the Microsoft Positioning Service.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Mobile Station Assisted: The device contacts the H-SLP server to obtain a position. The H-SLP does the calculation of the position and returns it to the device.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Mobile Station Based: The device obtains location-aiding data (almanac, ephemeris data, time and coarse initial position of the device) from the H-SLP server, and the device uses this information to help GPS obtain a fix. All position calculations are done in the device.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Mobile Station Standalone: The device obtains assistance as required from the Microsoft location services.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>AFLT</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>LocMasterSwitchDependencyNII</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>The NI behavior is independent from the current location toggle setting.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>The NI behavior follows the current location toggle setting.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
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
            <DDFName />
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[SUPL configuration service provider reference](supl-csp.md)
