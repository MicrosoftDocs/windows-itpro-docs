---
title: SecureAssessment DDF file
description: View the XML file containing the device description framework (DDF) for the SecureAssessment configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# SecureAssessment DDF file

The following XML file contains the device description framework (DDF) for the SecureAssessment configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>SecureAssessment</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Settings related to the configuration of the Secure Assessment Browser.</Description>
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
        <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>LaunchURI</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Link to an assessment that's automatically loaded when the Secure Assessment Browser is launched.</Description>
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
        <MSFT:AllowedValues ValueType="RegEx">
          <MSFT:Value><![CDATA[/^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$/]]></MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>TesterAccount</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>The user name of the test taking account.  To specify a domain account, use domain\user. To specify an AAD account, use username@tenant.com. To specify a local account, use the username.</Description>
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
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>AllowScreenMonitoring</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Indicates if screen monitoring is allowed by the app.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Screen monitoring is allowed</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Screen monitoring is not allowed</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RequirePrinting</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>1</DefaultValue>
        <Description>Indicates if printing is required by the app.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Printing is allowed</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Printing is not allowed</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>AllowTextSuggestions</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Indicates if keyboard text suggestions are allowed by the app.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Keyboard text suggestions are allowed</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Keyboard text suggestions are not allowed</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Assessments</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Enables support for multiple assessments and for assessment grouping. The structure is specified by an XML.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621.521</MSFT:OsBuildVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="XSD">
          <MSFT:Value><![CDATA[
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="AssessmentsRoot">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="Assessments">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Assessment" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="TestName"/>
                    <xs:element type="xs:string" name="TestUri"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>]]></MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[SecureAssessment configuration service provider reference](secureassessment-csp.md)
