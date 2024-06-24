---
title: AppLocker DDF file
description: View the XML file containing the device description framework (DDF) for the AppLocker configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# AppLocker DDF file

The following XML file contains the device description framework (DDF) for the AppLocker configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>AppLocker</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node for the AppLocker configuration service provider</Description>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>ApplicationLaunchRestrictions</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Defines restrictions for applications.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
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
          <Description>Grouping nodes are dynamic nodes, and there may be any number of them for a given enrollment (or a given context). The actual identifiers are selected by the management endpoint, whose job it is to determine what their purpose is, and to not conflict with other identifiers that they define. Different enrollments and contexts may use the same Authority identifier, even if many such identifiers are active at the same time.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Grouping</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
        <Node>
          <NodeName>EXE</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for launching executable applications.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>NonInteractiveProcessEnforcement</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Insert Description Here</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>MSI</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for executing Windows Installer files.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Script</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for running scripts.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>StoreApps</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for running apps from the Microsoft Store.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>DLL</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for processing DLL files.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>NonInteractiveProcessEnforcement</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Insert Description Here</Description>
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
        </Node>
        <Node>
          <NodeName>CodeIntegrity</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Insert Description Here</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.  This will need to be Base64 encoded.</Description>
              <DFFormat>
                <b64 />
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>EnterpriseDataProtection</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Captures the list of apps that are allowed to handle enterprise data. Should be used in conjunction with the settings in ./Device/Vendor/MSFT/EnterpriseDataProtection in EnterpriseDataProtection CSP.</Description>
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
          <Description>Grouping nodes are dynamic nodes, and there may be any number of them for a given enrollment (or a given context). The actual identifiers are selected by the management endpoint, whose job it is to determine what their purpose is, and to not conflict with other identifiers that they define. Different enrollments and contexts may use the same Authority identifier, even if many such identifiers are active at the same time.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Grouping</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
        <Node>
          <NodeName>EXE</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for launching executable applications.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>StoreApps</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Defines restrictions for running apps from the Microsoft Store.</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>LaunchControl</NodeName>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Insert Description Here</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Grouping</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
        <Node>
          <NodeName>EXE</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Insert Description Here</Description>
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
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Policy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
        </Node>
        <Node>
          <NodeName>StoreApps</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Insert Description Here</Description>
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
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Policy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>FamilySafety</NodeName>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Insert Description Here</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Grouping</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
        <Node>
          <NodeName>EXE</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Insert Description Here</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>StoreApps</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Insert Description Here</Description>
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
              <DDFName />
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
              <Description>Policy nodes define the policy for launching executables, Windows Installer files, scripts, store apps, and DLL files. The contents of a given Policy node is precisely the XML format for a RuleCollection node in the corresponding AppLocker XML policy.</Description>
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
              <MSFT:AllowedValues ValueType="XSD">
                <MSFT:Value><![CDATA[<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  <!-- --> <!-- AppLockerPolicy-Type --> <!-- --> <xs:element name="AppLockerPolicy" type="PolicyType"> <xs:unique name="UniqueRuleCollectionTypeConstraint"> <xs:selector xpath="RuleCollection"/> <xs:field xpath="@Type"/> </xs:unique> <xs:unique name="UniqueRuleIdConstraint"> <xs:selector xpath="RuleCollection/*"/> <xs:field xpath="@Id"/> </xs:unique> </xs:element>  <!-- --> <!-- Policy-Type --> <!-- --> <xs:complexType name="PolicyType"> <xs:sequence> <xs:element name="RuleCollection" type="RuleCollectionType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="PolicyExtensions" type="PolicyExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Version" type="PolicyVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- PolicyVersion-Type --> <!-- --> <xs:simpleType name="PolicyVersionType"> <xs:restriction base="xs:decimal"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleCollection-Type --> <!-- --> <xs:complexType name="RuleCollectionType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherRule" type="FilePublisherRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FilePathRule" type="FilePathRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> <xs:element name="FileHashRule" type="FileHashRuleType" minOccurs="0" maxOccurs="unbounded"> </xs:element> </xs:choice> <xs:element name="RuleCollectionExtensions" type="RuleCollectionExtensionsType" minOccurs="0" maxOccurs="1"> </xs:element> </xs:sequence> <xs:attribute name="Type" type="xs:string" use="required"/> <xs:attribute name="EnforcementMode" type="EnforcementModeType" use="optional"/> </xs:complexType>  <!-- --> <!-- PolicyExtensions-Type --> <!-- --> <xs:complexType name="PolicyExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdPolicyExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- RuleCollectionExtensions-Type --> <!-- --> <xs:complexType name="RuleCollectionExtensionsType"> <xs:sequence> <xs:element name="ThresholdExtensions" type="ThresholdCollectionExtensionsType" minOccurs="1" maxOccurs="1"> <!-- --> <!-- Because of the way schema validation works, ThresholdExtensions must be present if RuleCollectionExtensions is present. Otherwise it could be ambiguous whether a ThresholdExtensions element matched the explicit element, or the xs:any element. As new extensions are invented in subsequent releases, they can follow the same model. --> <!-- --> </xs:element> <xs:element name="RedstoneExtensions" type="RedstoneCollectionExtensionsType" minOccurs="1" maxOccurs="1" /> <xs:any processContents="lax" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- EnforcementMode-Type --> <!-- --> <xs:simpleType name="EnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="AuditOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherRule-Type --> <!-- --> <xs:complexType name="FilePublisherRuleType"> <xs:all> <xs:element name="Conditions" type="FilePublisherRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePublisherRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePathRule-Type --> <!-- --> <xs:complexType name="FilePathRuleType"> <xs:all> <xs:element name="Conditions" type="FilePathRuleConditionsType" minOccurs="1" maxOccurs="1" /> <xs:element name="Exceptions" type="FilePathRuleExceptionsType" minOccurs="0" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FileHashRule-Type --> <!-- --> <xs:complexType name="FileHashRuleType"> <xs:all> <xs:element name="Conditions" type="FileHashRuleConditionsType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attributeGroup ref="RuleAttributes"/> </xs:complexType>  <!-- --> <!-- FilePublisherRuleConditions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleConditionsType"> <xs:sequence> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePublisherRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePublisherRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleConditions-Type --> <!-- --> <xs:complexType name="FilePathRuleConditionsType"> <xs:sequence> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FilePathRuleExceptions-Type --> <!-- --> <xs:complexType name="FilePathRuleExceptionsType"> <xs:sequence> <xs:choice minOccurs="0" maxOccurs="unbounded"> <xs:element name="FilePathCondition" type="FilePathConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FilePublisherCondition" type="FilePublisherConditionType" minOccurs="0" maxOccurs="unbounded"/> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="0" maxOccurs="unbounded"/> </xs:choice> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHashRuleConditions-Type --> <!-- --> <xs:complexType name="FileHashRuleConditionsType"> <xs:sequence> <xs:element name="FileHashCondition" type="FileHashConditionType" minOccurs="1" maxOccurs="1"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- Rule-Attributes --> <!-- --> <xs:attributeGroup name="RuleAttributes"> <xs:attribute name="Id" type="GuidType" use="required"/> <xs:attribute name="Name" type="RuleNameType" use="required"/> <xs:attribute name="Description" type="RuleDescriptionType" use="required"/> <xs:attribute name="UserOrGroupSid" type="SidType" use="required"/> <xs:attribute name="Action" type="RuleActionType" use="required"/> </xs:attributeGroup>  <!-- --> <!-- RuleName-Type --> <!-- --> <xs:simpleType name="RuleNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleDescription-Type --> <!-- --> <xs:simpleType name="RuleDescriptionType"> <xs:restriction base="xs:string"> <xs:minLength value="0"/> <xs:maxLength value="1024"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- RuleAction-Type --> <!-- --> <xs:simpleType name="RuleActionType"> <xs:restriction base="xs:string"> <xs:enumeration value="Allow"/> <xs:enumeration value="Deny"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePublisherCondition-Type --> <!-- --> <xs:complexType name="FilePublisherConditionType"> <xs:all> <xs:element name="BinaryVersionRange" type="FileVersionRangeType" minOccurs="1" maxOccurs="1" /> </xs:all> <xs:attribute name="PublisherName" type="PublisherNameType" use="required"/> <xs:attribute name="ProductName" type="ProductNameType" use="required"/> <xs:attribute name="BinaryName" type="BinaryNameType" use="required"/> </xs:complexType>  <!-- --> <!-- PublisherName-Type --> <!-- --> <xs:simpleType name="PublisherNameType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ProductName-Type --> <!-- --> <xs:simpleType name="ProductNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- BinaryName-Type --> <!-- --> <xs:simpleType name="BinaryNameType"> <xs:restriction base="xs:string"> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileVersionRange-Type --> <!-- --> <xs:complexType name="FileVersionRangeType"> <xs:attribute name="LowSection" type="FileVersionType" use="required"/> <xs:attribute name="HighSection" type="FileVersionType" use="required"/> </xs:complexType>  <!-- --> <!-- FileVersion-Type --> <!-- --> <xs:simpleType name="FileVersionType"> <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/> </xs:simpleType>  <!-- --> <!-- SpecificFileVersion-Type --> <!-- --> <xs:simpleType name="SpecificFileVersionType"> <xs:restriction base="xs:string"> <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- AnyFileVersion-Type --> <!-- --> <xs:simpleType name="AnyFileVersionType"> <xs:restriction base="xs:string"> <xs:enumeration value="*"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FilePathCondition-Type --> <!-- --> <xs:complexType name="FilePathConditionType"> <xs:attribute name="Path" type="FilePathType" use="required"/> </xs:complexType>  <!-- --> <!-- FilePath-Type --> <!-- --> <xs:simpleType name="FilePathType"> <xs:restriction base="xs:string"> <xs:minLength value="1"/> <xs:maxLength value="32767"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- FileHashCondition-Type --> <!-- --> <xs:complexType name="FileHashConditionType"> <xs:sequence> <xs:element name="FileHash" type="FileHashType" minOccurs="1" maxOccurs="unbounded"/> </xs:sequence> </xs:complexType>  <!-- --> <!-- FileHash-Type --> <!-- --> <xs:complexType name="FileHashType"> <xs:attribute name="Type" type="HashType" use="required"/> <xs:attribute name="Data" type="HashDataType" use="required"/> <xs:attribute name="SourceFileName" type="xs:string" use="optional"/> <xs:attribute name="SourceFileLength" type="xs:integer" use="optional"/> </xs:complexType>  <!-- --> <!-- Hash-Type --> <!-- --> <xs:simpleType name="HashType"> <xs:restriction base="xs:string"> <xs:enumeration value="SHA256"/> <xs:enumeration value="SHA256Flat"/> <xs:enumeration value="SHA1"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- HashData-Type --> <!-- --> <xs:simpleType name="HashDataType"> <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/> </xs:simpleType>  <xs:simpleType name="SHA256HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA256FlatHashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{64})"/> </xs:restriction> </xs:simpleType>  <xs:simpleType name="SHA1HashDataType"> <xs:restriction base="xs:string"> <xs:pattern value="0x([0-9A-Fa-f]{40})"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- ServicesEnforcementMode-Type --> <!-- --> <xs:simpleType name="ServicesEnforcementModeType"> <xs:restriction base="xs:string"> <xs:enumeration value="NotConfigured"/> <xs:enumeration value="Enabled"/> <xs:enumeration value="ServicesOnly"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Services-Type --> <!-- --> <xs:complexType name="ServicesType"> <xs:attribute name="EnforcementMode" type="ServicesEnforcementModeType" use="required"/> </xs:complexType>  <!-- --> <!-- ThresholdCollectionExtensions-Type --> <!-- --> <xs:complexType name="ThresholdCollectionExtensionsType"> <xs:sequence> <xs:element name="Services" type="ServicesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- AllowSystemApps-Type --> <!-- --> <xs:simpleType name="AllowSystemAppsType"> <xs:restriction base="xs:string"> <xs:enumeration value="Enabled" /> <xs:enumeration value="NotEnabled" /> </xs:restriction> </xs:simpleType>  <!-- --> <!-- SystemApps-Type --> <!-- --> <xs:complexType name="SystemAppsType"> <xs:attribute name="Allow" type="AllowSystemAppsType" use="required"/> </xs:complexType>  <!-- --> <!-- OriginDataRevocation-Type --> <!-- --> <xs:complexType name="OriginDataRevocationType"> <xs:attribute name="CurrentOriginDataId" type="xs:unsignedInt" use="required"/> <xs:attribute name="TrustedOriginDataId" type="xs:unsignedInt" use="required"/> </xs:complexType>  <!-- --> <!-- RedstoneCollectionExtensions-Type --> <!-- --> <xs:complexType name="RedstoneCollectionExtensionsType"> <xs:sequence> <xs:element name="SystemApps" type="SystemAppsType" minOccurs="0" maxOccurs="1" /> <xs:element name="OriginDataRevocation" type="OriginDataRevocationType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <!-- --> <!-- ThresholdPolicyExtensions-Type --> <!-- --> <xs:complexType name="ThresholdPolicyExtensionsType"> <xs:sequence> <xs:element name="Plugins" type="PluginsType" minOccurs="0" maxOccurs="1" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginsType"> <xs:sequence> <xs:element name="Plugin" type="PluginType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginType"> <xs:sequence> <xs:element name="ExecutionCategories" type="ExecutionCategoriesType" minOccurs="1" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Name" type="xs:string" /> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <xs:complexType name="ExecutionCategoriesType"> <xs:sequence> <xs:element name="ExecutionCategory" type="ExecutionCategoryType" minOccurs="1" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="ExecutionCategoryType"> <xs:sequence> <xs:element name="Policies" type="PluginPoliciesType" minOccurs="0" maxOccurs="1" /> </xs:sequence> <xs:attribute name="Id" type="GuidType" /> <xs:attribute name="AppidTypes" type="AttributeListType" use="optional" /> </xs:complexType>  <xs:simpleType name="AttributeListType"> <xs:list itemType="AttributeEnumType" /> </xs:simpleType>  <xs:simpleType name="AttributeEnumType"> <xs:restriction base="xs:string"> <xs:enumeration value="Hash" /> <xs:enumeration value="Path" /> <xs:enumeration value="Publisher" /> </xs:restriction> </xs:simpleType>  <xs:complexType name="PluginPoliciesType"> <xs:sequence> <xs:element name="Policy" type="PluginPolicyType" minOccurs="0" maxOccurs="unbounded" /> </xs:sequence> </xs:complexType>  <xs:complexType name="PluginPolicyType"> <xs:attribute name="Id" type="GuidType" /> </xs:complexType>  <!-- --> <!-- Generic Types... --> <!-- -->  <!-- --> <!-- Boolean-Type --> <!-- --> <xs:simpleType name="BooleanType"> <xs:restriction base="xs:string"> <xs:enumeration value="True"/> <xs:enumeration value="False"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Guid-Type --> <!-- --> <xs:simpleType name="GuidType"> <xs:restriction base="xs:string"> <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/> </xs:restriction> </xs:simpleType>  <!-- --> <!-- Sid-Type --> <!-- --> <xs:simpleType name="SidType"> <xs:restriction base="xs:string"> <xs:minLength value="7"/> <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/> </xs:restriction> </xs:simpleType>  </xs:schema> ]]></MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnforcementMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The EnforcementMode node for Windows Information Protection (formerly known as Enterprise Data Protection) does not affect the behavior of EnterpriseDataProtection. The EDPEnforcementLevel from Policy CSP should be used to enable and disable Windows Information Protection (formerly known as Enterprise Data Protection).</Description>
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
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[AppLocker configuration service provider reference](applocker-csp.md)
