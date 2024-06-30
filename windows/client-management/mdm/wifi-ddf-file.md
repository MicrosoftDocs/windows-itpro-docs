---
title: WiFi DDF file
description: View the XML file containing the device description framework (DDF) for the WiFi configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# WiFi DDF file

The following XML file contains the device description framework (DDF) for the WiFi configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>WiFi</NodeName>
    <Path>./User/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Profile</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Identifies the Wi-Fi network configuration. Each Wi-Fi network configuration is represented by a profile object. This network profile includes all the information required for the device to connect to that network – for example, the SSID, authentication and encryption methods and passphrase in case of WEP or WPA2 networks.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The Profile name of the Wi-Fi network. This is added when WlanXml node is added and deleted when WlanXml is deleted.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>SSID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>WlanXml</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>
              XML describing the network configuration and follows Windows WLAN_profile schema.
              Link to schema: http://msdn.microsoft.com/en-us/library/windows/desktop/ms707341(v=vs.85).aspx
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Proxy</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional node. The format is url:port. Configuration of the network proxy (if any).</Description>
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
              <MIME />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProxyPacUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional node. URL to the PAC file location.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProxyWPAD</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional node. The presence of the field enables WPAD for proxy lookup.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable WPAD for proxy lookup.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable WPAD for proxy lookop.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>WiFiCost</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1</DefaultValue>
            <Description>Optional node. If the policy is active selecting one of the values from the following list will set the cost of WLAN connection for the Wi-Fi profile. (1:Unrestricted - unlimited connection, 2: Fixed - capacity constraints  up to a certain data limit, 3: Variable - costed on per byte basic) Default behaviour: Unrestricted</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Unrestricted - unlimited connection.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Fixed - capacity constraints up to a certain data limit.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>3</MSFT:Value>
                <MSFT:ValueDescription>Variable - paid on per byte basic.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProfileSource</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>Allows for defining which administrative entity is setting this Wi-Fi profile. This can currently be set to either 0=Enterprise or 1=Mobile Operator.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Enterprise</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Mobile Operator</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>WiFi</NodeName>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Profile</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Identifies the Wi-Fi network configuration. Each Wi-Fi network configuration is represented by a profile object. This network profile includes all the information required for the device to connect to that network – for example, the SSID, authentication and encryption methods and passphrase in case of WEP or WPA2 networks.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The Profile name of the Wi-Fi network. This is added when WlanXml node is added and deleted when WlanXml is deleted.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>SSID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>WlanXml</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>
              XML describing the network configuration and follows Windows WLAN_profile schema.
              Link to schema: http://msdn.microsoft.com/en-us/library/windows/desktop/ms707341(v=vs.85).aspx
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Proxy</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional node. The format is url:port. Configuration of the network proxy (if any).</Description>
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
              <MIME />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProxyPacUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional node. URL to the PAC file location.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProxyWPAD</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional node. The presence of the field enables WPAD for proxy lookup.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable WPAD for proxy lookup.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable WPAD for proxy lookop.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>WiFiCost</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1</DefaultValue>
            <Description>Optional node. If the policy is active selecting one of the values from the following list will set the cost of WLAN connection for the Wi-Fi profile. (1:Unrestricted - unlimited connection, 2: Fixed - capacity constraints  up to a certain data limit, 3: Variable - costed on per byte basic) Default behaviour: Unrestricted</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Unrestricted - unlimited connection.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Fixed - capacity constraints up to a certain data limit.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>3</MSFT:Value>
                <MSFT:ValueDescription>Variable - paid on per byte basic.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProfileSource</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>Allows for defining which administrative entity is setting this Wi-Fi profile. This can currently be set to either 0=Enterprise or 1=Mobile Operator.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Enterprise</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Mobile Operator</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[WiFi configuration service provider reference](wifi-csp.md)
