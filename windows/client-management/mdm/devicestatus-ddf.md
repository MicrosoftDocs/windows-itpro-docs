---
title: DeviceStatus DDF file
description: View the XML file containing the device description framework (DDF) for the DeviceStatus configuration service provider.
ms.date: 08/07/2024
---

<!-- Auto-Generated CSP Document -->

# DeviceStatus DDF file

The following XML file contains the device description framework (DDF) for the DeviceStatus configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>DeviceStatus</NodeName>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>SecureBootState</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Indicates whether secure boot is enabled. The value is one of the following: 0 - Not supported, 1 - Enabled, 2 - Disabled</Description>
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
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CellularIdentities</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for queries on the SIM cards.</Description>
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
            <Get />
          </AccessType>
          <Description>The unique International Mobile Station Equipment Identity (IMEI) number of the mobile device. An IMEI is present for each SIM card on the device.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>IMEI</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ClientInventory />
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>IMSI</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The International Mobile Subscriber Identity (IMSI) associated with the IMEI number.</Description>
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
          <NodeName>ICCID</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The Integrated Circuit Card ID (ICCID) of the SIM card associated with the specific IMEI number.</Description>
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
          <NodeName>PhoneNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Phone number associated with the specific IMEI number.</Description>
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
          <NodeName>CommercializationOperator</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The mobile service provider or mobile operator associated with the specific IMEI number.</Description>
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
          <NodeName>RoamingStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Indicates whether the SIM card associated with the specific IMEI number is roaming.</Description>
            <DFFormat>
              <bool />
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
          <NodeName>RoamingCompliance</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Boolean value that indicates compliance with the enforced enterprise roaming policy.</Description>
            <DFFormat>
              <bool />
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
      </Node>
    </Node>
    <Node>
      <NodeName>NetworkIdentifiers</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for queries on network and device properties.</Description>
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
            <Get />
          </AccessType>
          <Description>MAC address of the wireless network card. A MAC address is present for each network card on the device.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>MacAddress</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ClientInventory />
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>IPAddressV4</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>IPv4 address of the network card associated with the MAC address.</Description>
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
          <NodeName>IPAddressV6</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>IPv6 address of the network card associated with the MAC address.</Description>
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
          <NodeName>IsConnected</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Boolean value that indicates whether the network card associated with the MAC address has an active network connection.</Description>
            <DFFormat>
              <bool />
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
          <NodeName>Type</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Type of network connection. The value is one of the following: 2 - WLAN (or other Wireless interface), 1 - LAN (or other Wired interface), 0 - Unknown</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>Compliance</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the compliance query.</Description>
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
        <NodeName>EncryptionCompliance</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Boolean value that indicates compliance with the enterprise encryption policy for OS (system) drives. The value is one of the following: 0 - not encrypted, 1 - encrypted</Description>
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
          <MSFT:Applicability>
            <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;</MSFT:EditionAllowList>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>TPM</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the TPM query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>SpecificationVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>Not available</DefaultValue>
          <Description>String that specifies the specification version.</Description>
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
        <NodeName>ManufacturerId</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>Not available</DefaultValue>
          <Description>String that specifies the TPM manufacturer ID as a number.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000, 10.0.19041.1387, 10.0.19042.1387, 10.0.19043.1387, 10.0.19044.1387</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ManufacturerIdTxt</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>Not available</DefaultValue>
          <Description>String that specifies the TPM manufacturer ID as text.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000, 10.0.19041.1387, 10.0.19042.1387, 10.0.19043.1387, 10.0.19044.1387</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ManufacturerVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>Not available</DefaultValue>
          <Description>String that specifies the manufacturer version.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000, 10.0.19041.1387, 10.0.19042.1387, 10.0.19043.1387, 10.0.19044.1387</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>OS</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the OS query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>Edition</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>Not available</DefaultValue>
          <Description>String that specifies the OS edition.</Description>
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
        <NodeName>Mode</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>Not available</DefaultValue>
          <Description>Read only node that specifies the device mode. Valid values: 0 - the device is in standard configuration, 1 - the device is in S mode configuration</Description>
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
            <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.4</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Antivirus</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the antivirus query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>SignatureStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Integer that specifies the status of the antivirus signature. Valid values: 0 - The security software reports that it is not the most recent version. 1 (default) - The security software reports that it is the most recent version. 2 – Not applicable. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.) If more than one antivirus provider is active, this node returns: 1 – If every active antivirus provider has a valid signature status. 0 – If any of the active antivirus providers has an invalid signature status.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>3</DefaultValue>
          <Description>Integer that specifies the status of the antivirus. Valid values: 0 – Antivirus is on and monitoring, 1 – Antivirus is disabled, 2 – Antivirus is not monitoring the device/PC or some options have been turned off, 3 (default) – Antivirus is temporarily not completely monitoring the device/PC,  4 – Antivirus not applicable for this device. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.)</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Antispyware</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the antispyware query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>SignatureStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Integer that specifies the status of the antispyware signature. Valid values: 0 - The security software reports that it is not the most recent version. 1 - The security software reports that it is the most recent version. 2 - Not applicable. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.) If more than one antispyware provider is active, this node returns: 1 – If every active antispyware provider has a valid signature status. 0 – If any of the active antispyware providers has an invalid signature status.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>3</DefaultValue>
          <Description>Integer that specifies the status of the antispyware. Valid values: 0 - The status of the security provider category is good and does not need user attention. 1 - The status of the security provider category is not monitored by Windows Security Center (WSC). 2 - The status of the security provider category is poor and the computer may be at risk. 3 - The security provider category is in snooze state. Snooze indicates that WSC is not actively protecting the computer.</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Firewall</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the firewall query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>3</DefaultValue>
          <Description>Integer that specifies the status of the firewall. Valid values: 0 – Firewall is on and monitoring, 1 – Firewall has been disabled, 2 – Firewall is not monitoring all networks or some rules have been turned off, 3 (default) – Firewall is temporarily not monitoring all networks, 4 – Not applicable. This is returned for devices like the phone that do not have an antivirus (where the API doesn’t exist.)</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>UAC</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the UAC query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Integer that specifies the status of the UAC.</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Battery</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the battery query.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Integer that specifies the status of the battery</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EstimatedChargeRemaining</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description> Integer that specifies the estimated battery charge remaining. This is the value returned in BatteryLifeTime in SYSTEM_POWER_STATUS structure. The value is the number of seconds of battery life remaining when the device is not connected to an AC power source. When it is connected to a power source, the value is -1. When the estimation is unknown, the value is -1.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EstimatedRuntime</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description> Integer that specifies the estimated runtime of the battery. This is the value returned in BatteryLifeTime in SYSTEM_POWER_STATUS structure. The value is the number of seconds of battery life remaining when the device is not connected to an AC power source. When it is connected to a power source, the value is -1. When the estimation is unknown, the value is -1.</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>DomainName</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the fully qualified domain name of the device(if any).</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>DomainName</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>DeviceGuard</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for Device Guard query.</Description>
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
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>VirtualizationBasedSecurityHwReq</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Virtualization-based security hardware requirement status. The value is a 256 value bitmask. 0x0: System meets hardware configuration requirements, 0x1: SecureBoot required, 0x2: DMA Protection required, 0x4: HyperV not supported for Guest VM, 0x8: HyperV feature is not available</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>VirtualizationBasedSecurityStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Virtualization-based security status. Value is one of the following: 0 - Running, 1 - Reboot required, 2 - 64 bit architecture required, 3 - not licensed, 4 - not configured, 5 - System doesn't meet hardware requirements, 42 – Other. Event logs in Microsoft-Windows-DeviceGuard have more details</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>LsaCfgCredGuardStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Local System Authority (LSA) credential guard status. 0 - Running, 1 - Reboot required, 2 - Not licensed for Credential Guard, 3 - Not configured, 4 - VBS not running</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>HypervisorEnforcedCodeIntegrityStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Hypervisor Enforced Code Integrity (HVCI) status. 0 - Running, 1 - Reboot required, 2 - Not configured, 3 - VBS not running</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SystemGuardStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>System Guard status. 0 - Running, 1 - Reboot required, 2 - Not configured, 3 - System doesn't meet hardware requirements</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>DMA</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for DMA query.</Description>
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
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.5</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>BootDMAProtectionStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Boot DMA Protection status. 1 - Enabled, 2 - Disabled</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>CertAttestation</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for Certificate Attestation</Description>
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
          <MSFT:OsBuildVersion>10.0.22621, 10.0.22000.1165</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.5</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>MDMClientCertAttestation</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>MDM Certificate attestation information.  This will return an XML blob containing the relevent attestation fields.</Description>
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
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DeviceStatus configuration service provider reference](devicestatus-csp.md)
