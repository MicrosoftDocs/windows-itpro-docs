---
title: LanguagePackManagement DDF file
description: View the XML file containing the device description framework (DDF) for the LanguagePackManagement configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# LanguagePackManagement DDF file

The following XML file contains the device description framework (DDF) for the LanguagePackManagement configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>LanguagePackManagement</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Add />
        <Delete />
        <Get />
      </AccessType>
      <Description>CSP for managing language packs and language settings.</Description>
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
        <MSFT:OsBuildVersion>99.9.9999</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>InstalledLanguages</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Languages currently installed on the device.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Language tag of an installed language on the device. Delete to uninstall.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <OneOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Language ID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ClientInventory />
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>Providers</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Numeric representation of how a language is installed. 1 - The system language pack is installed; 2 - The Local Experience Pack is installed; 3 - Both are installed.</Description>
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
        <Node>
          <NodeName>LanguageFeatures</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Numeric representation of the language features installed. Basic Typing - 1 (0x1), Fonts - 2 (0x2), Handwriting - 4 (0x4), Speech - 8 (0x8), TextToSpeech - 16 (0x10), OCR - 32 (0x20), LocaleData - 64 (0x40), SupplementFonts - 128 (0x80).</Description>
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
      <NodeName>Install</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Language to be installed or being installed.</Description>
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
          </AccessType>
          <Description>Language tag of the language to be installed or being installed.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Language ID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Language tag of the language to be installed or being installed.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Status of the language queued for install. 0 – not started; 1 – in progress; 2 – succeeded; 3 – failed; 4 – partially succeeded.</Description>
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
        <Node>
          <NodeName>ErrorCode</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Error code of queued language installation. 0 if there is no error.</Description>
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
        <Node>
          <NodeName>CopyToDeviceInternationalSettings</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>Copies the language to the international settings (i.e., locale, input layout, speech recognizer, preferred UI language) of the device immediately after installation if the value is true. Default value is false.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Don't copy the language to the international settings immediately after installation.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Copy the language to the international settings immediately after installation.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLanguageFeatureInstallations</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>Enables installations of all available language features when the value is true. Default value is true.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Install all available language features.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Install only the required language features.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>StartInstallation</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
            </AccessType>
            <Description>Execution node to queue a language for installation on the device.</Description>
            <DFFormat>
              <null />
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
      <NodeName>LanguageSettings</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Language settings of the device.</Description>
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
        <NodeName>SystemPreferredUILanguages</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>System Preferred UI Language of the device.</Description>
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
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[LanguagePackManagement configuration service provider reference](language-pack-management-csp.md)
