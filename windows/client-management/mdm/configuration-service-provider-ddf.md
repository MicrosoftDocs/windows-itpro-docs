---
title: Configuration service provider DDF files
description: Learn more about the OMA DM device description framework (DDF) for various configuration service providers
ms.date: 09/18/2020
ms.collection:
  - highpri
  - tier2
---

# Configuration service provider DDF files

This article lists the OMA DM device description framework (DDF) files for various configuration service providers. DDF files are used only with OMA DM provisioning XML.

As of December 2022, DDF XML schema was updated to include additional information such as OS build applicability. DDF v2 XML files for Windows 10 and Windows 11 are combined, and provided in a single download:

- [DDF v2 Files, September 2024](https://download.microsoft.com/download/a/a/a/aaadc008-67d4-4dcd-b864-70c479baf7d6/DDFv2September24.zip)

## DDF v2 schema

DDF v2 XML schema definition is listed below along with the schema definition for the referenced `MSFT` namespace.

- Schema definition for DDF v2:

    ```xml
    <?xml version="1.0" encoding="Windows-1252"?>
    <xs:schema xmlns="http://tempuri.org/DM_DDF-V1_2" elementFormDefault="qualified" targetNamespace="http://tempuri.org/DM_DDF-V1_2"
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
      <xs:import schemaLocation="DDFv2Msft.xsd" namespace="http://schemas.microsoft.com/MobileDevice/DM" />
      <xs:element name="MgmtTree">
        <xs:annotation>
          <xs:documentation>Starting point for DDF</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element ref="VerDTD" />
            <xs:element minOccurs="1" ref="MSFT:Diagnostics" />
            <xs:element minOccurs="1" maxOccurs="unbounded" ref="Node" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="VerDTD" type="xs:string" />
      <xs:element name="Node">
        <xs:annotation>
          <xs:documentation>Main Recurring XML tag describing nodes of the CSP</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element ref="NodeName" />
            <xs:element minOccurs="0" maxOccurs="1" ref="Path" />
            <xs:element minOccurs="1" maxOccurs="1" ref="DFProperties" />
            <xs:choice>
              <xs:element minOccurs="0" maxOccurs="unbounded" ref="Node" />
            </xs:choice>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="NodeName" type="xs:anyURI" />
      <xs:element name="Path" type="xs:anyURI" />
      <xs:element name="MIME" type="xs:string" />
      <xs:element name="DDFName" type="xs:string" />
      <xs:element name="DFProperties">
        <xs:complexType>
          <xs:sequence>
            <xs:element ref="AccessType" />
            <xs:element minOccurs="0" maxOccurs="1" ref="DefaultValue" />
            <xs:element minOccurs="0" maxOccurs="1" ref="Description" />
            <xs:element ref="DFFormat" />
            <xs:element minOccurs="0" maxOccurs="1" ref="Occurrence" />
            <xs:element minOccurs="0" maxOccurs="1" ref="Scope" />
            <xs:element minOccurs="0" maxOccurs="1" ref="DFTitle" />
            <xs:element ref="DFType" />
            <xs:element minOccurs="0" maxOccurs="1" ref="CaseSense" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:Applicability" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:DynamicNodeNaming" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:AllowedValues" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:ReplaceBehavior" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:RebootBehavior" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:GpMapping" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:CommonErrorResults" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:Deprecated" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:DependencyBehavior" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:ConflictResolution" />
            <xs:element minOccurs="0" maxOccurs="1" ref="MSFT:AtomicRequired" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="AccessType">
        <xs:complexType>
          <xs:sequence>
            <xs:element minOccurs="0" maxOccurs="1" name="Add" />
            <xs:element minOccurs="0" maxOccurs="1" name="Copy" />
            <xs:element minOccurs="0" maxOccurs="1" name="Delete" />
            <xs:element minOccurs="0" maxOccurs="1" name="Exec" />
            <xs:element minOccurs="0" maxOccurs="1" name="Get" />
            <xs:element minOccurs="0" maxOccurs="1" name="Replace" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="DefaultValue" type="xs:string" />
      <xs:element name="Description" type="xs:string" />
      <xs:element name="DFFormat">
        <xs:complexType>
          <xs:choice>
            <xs:element name="b64" />
            <xs:element name="bin" />
            <xs:element name="bool" />
            <xs:element name="chr" />
            <xs:element name="int" />
            <xs:element name="node" />
            <xs:element name="null" />
            <xs:element name="xml" />
            <xs:element name="date" />
            <xs:element name="time" />
            <xs:element name="float" />
          </xs:choice>
        </xs:complexType>
      </xs:element>
      <xs:element name="Occurrence">
        <xs:complexType>
          <xs:choice>
            <xs:element name="One" />
            <xs:element name="ZeroOrOne" />
            <xs:element name="ZeroOrMore" />
            <xs:element name="OneOrMore" />
            <xs:element name="ZeroOrN" type="xs:integer" />
            <xs:element name="OneOrN" type="xs:integer" />
          </xs:choice>
        </xs:complexType>
      </xs:element>
      <xs:element name="Scope">
        <xs:complexType>
          <xs:choice>
            <xs:element name="Permanent" />
            <xs:element name="Dynamic" />
          </xs:choice>
        </xs:complexType>
      </xs:element>
      <xs:element name="DFTitle" type="xs:string" />
      <xs:element name="DFType">
        <xs:complexType>
          <xs:choice>
            <xs:element minOccurs="1" maxOccurs="unbounded" ref="MIME" />
            <xs:element ref="DDFName" />
          </xs:choice>
        </xs:complexType>
      </xs:element>
      <xs:element name="CaseSense">
        <xs:complexType>
          <xs:choice>
            <xs:element name="CS" />
            <xs:element name="CIS" />
          </xs:choice>
        </xs:complexType>
      </xs:element>
    </xs:schema>
    ```

- Schema definition for the `MSFT` namespace:

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <xs:schema elementFormDefault="qualified" xmlns="http://schemas.microsoft.com/MobileDevice/DM" targetNamespace="http://schemas.microsoft.com/MobileDevice/DM" xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xs:element name="Diagnostics" type="xs:string">
        <xs:annotation>
          <xs:documentation>This node contains an XML blob that can be used as an argument to the DiagnosticsLogCSP to pull diagnostics for a feature.</xs:documentation>
        </xs:annotation>
      </xs:element>
      <xs:element name="Deprecated">
        <xs:annotation>
          <xs:documentation>This node marks that a feature is deprecated.  If included, OsBuildDeprecated gives the OS Build version that the node is no longer recommended to be set.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:attribute name="OsBuildDeprecated" type="xs:string" />
        </xs:complexType>
      </xs:element>
      <xs:element name="DynamicNodeNaming">
        <xs:annotation>
          <xs:documentation>This node contains information on how to dynamically name the node such that the name is valid.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:choice>
            <xs:element name="ServerGeneratedUniqueIdentifier">
              <xs:annotation>
                <xs:documentation>This indicates that the server should generate a unique identifier for the node.</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="ClientInventory">
              <xs:annotation>
                <xs:documentation>This indicates that the client will generate the name of the node based on the device state (such as inventorying apps).</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="UniqueName" type="xs:string">
              <xs:annotation>
                <xs:documentation>This indicates that the server should name the node, and the value listed gives a regex to define what is allowed.</xs:documentation>
              </xs:annotation>
            </xs:element>
          </xs:choice>
        </xs:complexType>
      </xs:element>
      <xs:element name="ConflictResolution" default="NoMerge">
        <xs:simpleType>
          <xs:annotation>
            <xs:documentation>The type of the conflict resolution.</xs:documentation>
          </xs:annotation>
          <xs:restriction base="xs:string">
            <xs:enumeration value="NoMerge">
              <xs:annotation>
                <xs:documentation>No policy merge.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="LowestValueMostSecure">
              <xs:annotation>
                <xs:documentation>The lowest value is the most secure policy value.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="HighestValueMostSecure">
              <xs:annotation>
                <xs:documentation>The highest value is the most secure policy value.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="LastWrite">
              <xs:annotation>
                <xs:documentation>The last written value is current value</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="LowestValueMostSecureZeroHasNoLimits">
              <xs:annotation>
                <xs:documentation>The lowest value is the most secure policy value unless the value is zero.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="HighestValueMostSecureZeroHasNoLimits">
              <xs:annotation>
                <xs:documentation>The highest value is the most secure policy value unless the value is zero.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element name="Applicability">
        <xs:annotation>
          <xs:documentation>These tags indicate what are required on the device for the node to be applicable to configured.  These tags can be inherited by children nodes.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element minOccurs="0" maxOccurs="1" name="OsBuildVersion" type="xs:string">
              <xs:annotation>
                <xs:documentation>This tag describes the first build that a feature is released to.  If the feature was backported, multiple OS versions will be listed, such that the OS build version without a minor number is the first "major release."</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" maxOccurs="1" name="CspVersion" type="xs:decimal">
              <xs:annotation>
                <xs:documentation>This tag describes the lowest CSP Version that the node was released to.</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" maxOccurs="1" name="EditionAllowList" type="xs:string">
              <xs:annotation>
                <xs:documentation>This tag describes the list of Edition IDs that the features is allowed on.  0x88* refers to Windows Holographic for Business.</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element minOccurs="0" maxOccurs="1" name="RequiresAzureAd">
              <xs:annotation>
                <xs:documentation>This tag indicates that the node requires the device to be Azure Active Directory Joined to be applicable.</xs:documentation>
              </xs:annotation>
            </xs:element>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="AllowedValues">
        <xs:annotation>
          <xs:documentation>These tags describe what values are allowed to be set for this particular node.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:group ref="AllowedValuesGroup" />
          <xs:attributeGroup ref="AllowedValuesAttributeGroup" />
        </xs:complexType>
      </xs:element>
      <xs:attributeGroup name="AllowedValuesAttributeGroup">
        <xs:attribute name="ValueType" use="required">
          <xs:annotation>
            <xs:documentation>This attribute describes what kind of Allowed Values tag this is.</xs:documentation>
          </xs:annotation>
          <xs:simpleType>
            <xs:restriction base="xs:string">
              <xs:enumeration value="XSD">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the Value tag contains an XSD for the node.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="RegEx">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the Value tag contains a RegEx for the node.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="ADMX">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the node can be described by an external ADMX file.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="JSON">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the node can be described by a JSON schema.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="ENUM">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the allowed values are an enumeration.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="Flag">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the allowed values can be combined into a bitwise flag.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="Range">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the allowed values are a numerical range.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="SDDL">
                <xs:annotation>
                  <xs:documentation>This attribute indicates that the allowed values are a string in the SDDL format.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
              <xs:enumeration value="None">
                <xs:annotation>
                  <xs:documentation>This attribute indicates there is no data-driven way to define the allowed values of the node.  This potentially means that all string values are valid values.</xs:documentation>
                </xs:annotation>
              </xs:enumeration>
            </xs:restriction>
          </xs:simpleType>
        </xs:attribute>
      </xs:attributeGroup>
      <xs:group name="AllowedValuesGroup">
        <xs:sequence>
          <xs:group minOccurs="0" maxOccurs="1" ref="AllowedValueGroupedNodes" />
          <xs:element minOccurs="0" maxOccurs="1" name="List">
            <xs:annotation>
              <xs:documentation>This tag indicates that the node input can contain multiple, delimited values.</xs:documentation>
            </xs:annotation>
            <xs:complexType>
              <xs:attribute name="Delimiter" type="xs:string" use="required">
                <xs:annotation>
                  <xs:documentation>This attribute details the delimeter used for the list of values.</xs:documentation>
                </xs:annotation>
              </xs:attribute>
            </xs:complexType>
          </xs:element>
        </xs:sequence>
      </xs:group>
      <xs:group name="ValueAndDescriptionGroup">
        <xs:sequence>
          <xs:element name="Value" type="xs:string">
            <xs:annotation>
              <xs:documentation>This tag indicates an allowed value.</xs:documentation>
            </xs:annotation>
          </xs:element>
          <xs:element minOccurs="0" maxOccurs="1" name="ValueDescription" type="xs:string">
            <xs:annotation>
              <xs:documentation>This tag gives further description to an allowed value, such as for an enumeration.</xs:documentation>
            </xs:annotation>
          </xs:element>
        </xs:sequence>
      </xs:group>
      <xs:group name="AllowedValueGroupedNodes">
        <xs:choice>
          <xs:element ref="Enum" maxOccurs="unbounded" />
          <xs:group ref="ValueAndDescriptionGroup" />
          <xs:element ref="AdmxBacked" />
        </xs:choice>
      </xs:group>
      <xs:element name="Enum">
        <xs:annotation>
          <xs:documentation>This tag gives details for one particular enumeration of the allowed values.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:group ref="ValueAndDescriptionGroup" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="AdmxBacked">
        <xs:annotation>
          <xs:documentation>This tag indicates the relevent details for the corresponding ADMX policy for this node.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:attribute name="Area" type="xs:string" use="required">
            <xs:annotation>
              <xs:documentation>This attribute gives the area path of the ADMX policy.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
          <xs:attribute name="Name" type="xs:string" use="required">
            <xs:annotation>
              <xs:documentation>This attribute gives the name of the ADMX policy.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
          <xs:attribute name="File" type="xs:string" use="required">
            <xs:annotation>
              <xs:documentation>This attribute gives the filename for the ADMX policy.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
        </xs:complexType>
      </xs:element>
      <xs:element name="ReplaceBehavior" default="Replace">
        <xs:annotation>
          <xs:documentation>This tag details the replace behavior of the node.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="Append">
              <xs:annotation>
                <xs:documentation>When performing a replace operation on this node, the value is appending to the existing node data.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="Replace">
              <xs:annotation>
                <xs:documentation>When performing a replace operation on this node, the existing node data is removed before new data is added.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element name="RebootBehavior" default="None">
        <xs:annotation>
          <xs:documentation>This tag describes the reboot behavior of the node.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="None">
              <xs:annotation>
                <xs:documentation>No reboot is required for this node.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="Automatic">
              <xs:annotation>
                <xs:documentation>This node will automatically perform a reboot to take effect.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="ServerInitiated">
              <xs:annotation>
                <xs:documentation>This node needs a reboot initiated from an external source to take effect.</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element name="GpMapping">
        <xs:annotation>
          <xs:documentation>This tag details the information necessary to map this node to an existing group policy.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:attribute name="GpEnglishName" type="xs:string" use="required">
            <xs:annotation>
              <xs:documentation>This attribute details the English name of the GP.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
          <xs:attribute name="GpAreaPath" type="xs:string" use="required">
            <xs:annotation>
              <xs:documentation>This attribute details the area path of the GP.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
          <xs:attribute name="GpElement" type="xs:string">
            <xs:annotation>
              <xs:documentation>This attribute details a particular element of a GP that the CSP node maps to.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
        </xs:complexType>
      </xs:element>
      <xs:element name="CommonErrorResults">
        <xs:annotation>
          <xs:documentation>This tag lists out common error HRESULTS reported by the CSP and English text to associate with them.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element name="CommonErrorOne" type="xs:string" />
            <xs:element name="CommonErrorTwo" type="xs:string" />
            <xs:element name="CommonErrorThree" type="xs:string" />
            <xs:element name="CommonErrorFour" type="xs:string" />
            <xs:element name="CommonErrorFive" type="xs:string" />
            <xs:element name="CommonErrorSix" type="xs:string" />
            <xs:element name="CommonErrorSeven" type="xs:string" />
            <xs:element name="CommonErrorEight" type="xs:string" />
            <xs:element name="CommonErrorNine" type="xs:string" />
            <xs:element name="CommonErrorTen" type="xs:string" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="AtomicRequired">
        <xs:annotation>
          <xs:documentation>This tag indicates that this node and all children nodes should be enclosed by an Atomic tag when being sent to the client.</xs:documentation>
        </xs:annotation>
      </xs:element>
      <xs:element name="DependencyBehavior">
        <xs:annotation>
          <xs:documentation>These tags detail potential dependencies that the current CSP node has on other nodes in the same CSP.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element ref="DependencyGroup" maxOccurs="unbounded" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="Dependency">
        <xs:annotation>
          <xs:documentation>This tag describes a dependency that the current CSP node has on another nodes in the same CSP.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element name="DependencyUri" type="xs:anyURI">
              <xs:annotation>
                <xs:documentation>The URI that the current CSP node has a dependency on.</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element ref="DependencyAllowedValue" />
          </xs:sequence>
          <xs:attribute name="Type" use="required">
            <xs:annotation>
              <xs:documentation>This tag details the kind of dependency.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:string">
                <xs:enumeration value="DependsOn">
                  <xs:annotation>
                    <xs:documentation>The current node depends on the dependency holding a certain value.</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="Not">
                  <xs:annotation>
                    <xs:documentation>The current node depends on the dependency not holding a certain value.</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:complexType>
      </xs:element>
      <xs:element name="DependencyGroup">
        <xs:annotation>
          <xs:documentation>This tag details one specific dependency.  A node might have multiple different dependencies.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element minOccurs="0" maxOccurs="1" ref="DependencyChangedAllowedValues" />
            <xs:element ref="Dependency" maxOccurs="unbounded" />
          </xs:sequence>
          <xs:attribute name="FriendlyId" type="xs:string" use="required">
            <xs:annotation>
              <xs:documentation>This attribute gives a friendly ID to the dependency, to differentiate it from other dependencies.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
        </xs:complexType>
      </xs:element>
      <xs:element name="DependencyAllowedValue">
        <xs:annotation>
          <xs:documentation>This tag details the values that the dependency must be set to for the dependency to be satisfied.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:group ref="AllowedValuesGroup" />
          <xs:attributeGroup ref="AllowedValuesAttributeGroup" />
        </xs:complexType>
      </xs:element>
      <xs:element name="DependencyChangedAllowedValues">
        <xs:annotation>
          <xs:documentation>This tag details a change to the current node's allowed values if the dependency is satisfied.</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:group ref="AllowedValuesGroup" />
          <xs:attributeGroup ref="AllowedValuesAttributeGroup" />
        </xs:complexType>
      </xs:element>
    </xs:schema>
    ```

## Older DDF files

You can download the older DDF files for various CSPs from the links below:
- [Download all the DDF files for Windows 10 and 11 May 2024](https://download.microsoft.com/download/f/6/1/f61445f7-1d38-45f7-bc8c-609b86e4aabc/DDFv2May24.zip)
- [Download all the DDF files for Windows 10 and 11 September 2023](https://download.microsoft.com/download/0/e/c/0ec027e5-8971-49a2-9230-ec9352bc3ead/DDFv2September2023.zip)
- [Download all the DDF files for Windows 10 and 11 December 2022](https://download.microsoft.com/download/7/4/c/74c6daca-983e-4f16-964a-eef65b553a37/DDFv2December2022.zip)
- [Download all the DDF files for Windows 10, version 2004](https://download.microsoft.com/download/4/0/f/40f9ec45-3bea-442c-8afd-21edc1e057d8/Windows10_2004_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1903](https://download.microsoft.com/download/6/F/0/6F019079-6EB0-41B5-88E8-D1CE77DBA27B/Windows10_1903_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1809](https://download.microsoft.com/download/6/A/7/6A735141-5CFA-4C1B-94F4-B292407AF662/Windows10_1809_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1803](https://download.microsoft.com/download/6/2/7/6276FE19-E3FD-4254-9C16-3C31CAA2DE50/Windows10_1803_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1709](https://download.microsoft.com/download/9/7/C/97C6CF99-F75C-475E-AF18-845F8CECCFA4/Windows10_1709_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1703](https://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](https://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)

You can download the older Policy area DDF files by clicking the following links:

- [View the Policy DDF file for Windows 10, version 20H2](https://download.microsoft.com/download/4/0/f/40f9ec45-3bea-442c-8afd-21edc1e057d8/PolicyDDF_all_20H2.xml)
- [View the Policy DDF file for Windows 10, version 2004](https://download.microsoft.com/download/4/0/f/40f9ec45-3bea-442c-8afd-21edc1e057d8/PolicyDDF_all_2004.xml)
- [View the Policy DDF file for Windows 10, version 1903](https://download.microsoft.com/download/0/C/D/0CD61812-8B9C-4846-AC4A-1545BFD201EE/PolicyDDF_all_1903.xml)
- [View the Policy DDF file for Windows 10, version 1809](https://download.microsoft.com/download/7/3/5/735B8537-82F4-4CD1-B059-93984F9FAAC5/Policy_DDF_all_1809.xml)
- [View the Policy DDF file for Windows 10, version 1803](https://download.microsoft.com/download/4/9/6/496534EE-8F0C-4F12-B084-A8502DA22430/PolicyDDF_all.xml)
- [View the Policy DDF file for Windows 10, version 1803 release C](https://download.microsoft.com/download/4/9/6/496534EE-8F0C-4F12-B084-A8502DA22430/PolicyDDF_all_1809C_release.xml)
- [View the Policy DDF file for Windows 10, version 1709](https://download.microsoft.com/download/8/C/4/8C43C116-62CB-470B-9B69-76A3E2BC32A8/PolicyDDF_all.xml)
- [View the Policy DDF file for Windows 10, version 1703](https://download.microsoft.com/download/7/2/C/72C36C37-20F9-41BF-8E23-721F6FFC253E/PolicyDDF_all.xml)
- [View the Policy DDF file for Windows 10, version 1607](https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607.xml)
- [View the Policy DDF file for Windows 10, version 1607 release 8C](https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml)
