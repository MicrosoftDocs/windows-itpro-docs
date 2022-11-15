---
title: AppLocker XSD
description: View the XSD for the AppLocker CSP. The AppLocker CSP XSD provides an example of how the schema is organized.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# AppLocker XSD

Here's the XSD for the AppLocker CSP.

```xml
<?xml version="1.0"?>

<xs:schema attributeFormDefault="unqualified"

           elementFormDefault="qualified"

           xmlns:xs="http://www.w3.org/2001/XMLSchema"

           version="1.0">



  <!-- -->

  <!-- AppLockerPolicy-Type -->

  <!-- -->

  <xs:element name="AppLockerPolicy"

              type="PolicyType">

    <xs:unique name="UniqueRuleCollectionTypeConstraint">

      <xs:selector xpath="RuleCollection"/>

      <xs:field xpath="@Type"/>

    </xs:unique>

    <xs:unique name="UniqueRuleIdConstraint">

      <xs:selector xpath="RuleCollection/*"/>

      <xs:field xpath="@Id"/>

    </xs:unique>

  </xs:element>



  <!-- -->

  <!-- Policy-Type -->

  <!-- -->

  <xs:complexType name="PolicyType">

    <xs:sequence>

      <xs:element name="RuleCollection"

                  type="RuleCollectionType"

                  minOccurs="0"

                  maxOccurs="unbounded">

      </xs:element>

      <xs:element name="PolicyExtensions"

                  type="PolicyExtensionsType"

                  minOccurs="0"

                  maxOccurs="1">

      </xs:element>

    </xs:sequence>

    <xs:attribute name="Version"

                  type="PolicyVersionType"

                  use="required"/>

  </xs:complexType>



  <!-- -->

  <!-- PolicyVersion-Type -->

  <!-- -->

  <xs:simpleType name="PolicyVersionType">

    <xs:restriction base="xs:decimal">

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- RuleCollection-Type -->

  <!-- -->

  <xs:complexType name="RuleCollectionType">

    <xs:sequence>

      <xs:choice minOccurs="0"

                 maxOccurs="unbounded">

        <xs:element name="FilePublisherRule"

                    type="FilePublisherRuleType"

                    minOccurs="0"

                    maxOccurs="unbounded">

        </xs:element>

        <xs:element name="FilePathRule"

                    type="FilePathRuleType"

                    minOccurs="0"

                    maxOccurs="unbounded">

        </xs:element>

        <xs:element name="FileHashRule"

                    type="FileHashRuleType"

                    minOccurs="0"

                    maxOccurs="unbounded">

        </xs:element>

      </xs:choice>

      <xs:element name="RuleCollectionExtensions"

                  type="RuleCollectionExtensionsType"

                  minOccurs="0"

                  maxOccurs="1">

      </xs:element>

    </xs:sequence>

    <xs:attribute name="Type"

                  type="xs:string"

                  use="required"/>

    <xs:attribute name="EnforcementMode"

                  type="EnforcementModeType"

                  use="optional"/>

  </xs:complexType>



  <!-- -->

  <!-- PolicyExtensions-Type -->

  <!-- -->

  <xs:complexType name="PolicyExtensionsType">

    <xs:sequence>

      <xs:element name="ThresholdExtensions"

                  type="ThresholdPolicyExtensionsType"

                  minOccurs="1"

                  maxOccurs="1" />

      <xs:any processContents="lax"

              minOccurs="0"

              maxOccurs="unbounded" />

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- RuleCollectionExtensions-Type -->

  <!-- -->

  <xs:complexType name="RuleCollectionExtensionsType">

    <xs:sequence>

      <xs:element name="ThresholdExtensions"

                  type="ThresholdCollectionExtensionsType"

                  minOccurs="1"

                  maxOccurs="1">

        <!-- -->

        <!-- Because of the way schema validation works, ThresholdExtensions

             must be present if RuleCollectionExtensions is present. Otherwise

             it could be ambiguous whether a ThresholdExtensions element

             matched the explicit element, or the xs:any element. As new

             extensions are invented in subsequent releases, they can follow

             the same model. -->

        <!-- -->

      </xs:element>

      <xs:any processContents="lax"

              minOccurs="0"

              maxOccurs="unbounded" />

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- EnforcementMode-Type -->

  <!-- -->

  <xs:simpleType name="EnforcementModeType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="NotConfigured"/>

      <xs:enumeration value="Enabled"/>

      <xs:enumeration value="AuditOnly"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- FilePublisherRule-Type -->

  <!-- -->

  <xs:complexType name="FilePublisherRuleType">

    <xs:all>

      <xs:element name="Conditions"

                  type="FilePublisherRuleConditionsType"

                  minOccurs="1"

                  maxOccurs="1" />

      <xs:element name="Exceptions"

                  type="FilePublisherRuleExceptionsType"

                  minOccurs="0"

                  maxOccurs="1" />

    </xs:all>

    <xs:attributeGroup ref="RuleAttributes"/>

  </xs:complexType>



  <!-- -->

  <!-- FilePathRule-Type -->

  <!-- -->

  <xs:complexType name="FilePathRuleType">

    <xs:all>

      <xs:element name="Conditions"

                  type="FilePathRuleConditionsType"

                  minOccurs="1"

                  maxOccurs="1" />

      <xs:element name="Exceptions"

                  type="FilePathRuleExceptionsType"

                  minOccurs="0"

                  maxOccurs="1" />

    </xs:all>

    <xs:attributeGroup ref="RuleAttributes"/>

  </xs:complexType>



  <!-- -->

  <!-- FileHashRule-Type -->

  <!-- -->

  <xs:complexType name="FileHashRuleType">

    <xs:all>

      <xs:element name="Conditions"

                  type="FileHashRuleConditionsType"

                  minOccurs="1"

                  maxOccurs="1" />

    </xs:all>

    <xs:attributeGroup ref="RuleAttributes"/>

  </xs:complexType>



  <!-- -->

  <!-- FilePublisherRuleConditions-Type -->

  <!-- -->

  <xs:complexType name="FilePublisherRuleConditionsType">

    <xs:sequence>

      <xs:element name="FilePublisherCondition"

                  type="FilePublisherConditionType"

                  minOccurs="1"

                  maxOccurs="1"/>

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- FilePublisherRuleExceptions-Type -->

  <!-- -->

  <xs:complexType name="FilePublisherRuleExceptionsType">

    <xs:sequence>

      <xs:choice minOccurs="0"

                 maxOccurs="unbounded">

        <xs:element name="FilePublisherCondition"

                    type="FilePublisherConditionType"

                    minOccurs="0"

                    maxOccurs="unbounded"/>

        <xs:element name="FilePathCondition"

                    type="FilePathConditionType"

                    minOccurs="0"

                    maxOccurs="unbounded"/>

        <xs:element name="FileHashCondition"

                    type="FileHashConditionType"

                    minOccurs="0"

                    maxOccurs="unbounded"/>

      </xs:choice>

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- FilePathRuleConditions-Type -->

  <!-- -->

  <xs:complexType name="FilePathRuleConditionsType">

    <xs:sequence>

      <xs:element name="FilePathCondition"

                  type="FilePathConditionType"

                  minOccurs="1"

                  maxOccurs="1"/>

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- FilePathRuleExceptions-Type -->

  <!-- -->

  <xs:complexType name="FilePathRuleExceptionsType">

    <xs:sequence>

      <xs:choice minOccurs="0"

                 maxOccurs="unbounded">

        <xs:element name="FilePathCondition"

                    type="FilePathConditionType"

                    minOccurs="0"

                    maxOccurs="unbounded"/>

        <xs:element name="FilePublisherCondition"

                    type="FilePublisherConditionType"

                    minOccurs="0"

                    maxOccurs="unbounded"/>

        <xs:element name="FileHashCondition"

                    type="FileHashConditionType"

                    minOccurs="0"

                    maxOccurs="unbounded"/>

      </xs:choice>

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- FileHashRuleConditions-Type -->

  <!-- -->

  <xs:complexType name="FileHashRuleConditionsType">

    <xs:sequence>

      <xs:element name="FileHashCondition"

                  type="FileHashConditionType"

                  minOccurs="1"

                  maxOccurs="1"/>

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- Rule-Attributes -->

  <!-- -->

  <xs:attributeGroup name="RuleAttributes">

    <xs:attribute name="Id"

                  type="GuidType"

                  use="required"/>

    <xs:attribute name="Name"

                  type="RuleNameType"

                  use="required"/>

    <xs:attribute name="Description"

                  type="RuleDescriptionType"

                  use="required"/>

    <xs:attribute name="UserOrGroupSid"

                  type="SidType"

                  use="required"/>

    <xs:attribute name="Action"

                  type="RuleActionType"

                  use="required"/>

  </xs:attributeGroup>



  <!-- -->

  <!-- RuleName-Type -->

  <!-- -->

  <xs:simpleType name="RuleNameType">

    <xs:restriction base="xs:string">

      <xs:minLength value="1"/>

      <xs:maxLength value="1024"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- RuleDescription-Type -->

  <!-- -->

  <xs:simpleType name="RuleDescriptionType">

    <xs:restriction base="xs:string">

      <xs:minLength value="0"/>

      <xs:maxLength value="1024"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- RuleAction-Type -->

  <!-- -->

  <xs:simpleType name="RuleActionType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="Allow"/>

      <xs:enumeration value="Deny"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- FilePublisherCondition-Type -->

  <!-- -->

  <xs:complexType name="FilePublisherConditionType">

    <xs:all>

      <xs:element name="BinaryVersionRange"

                  type="FileVersionRangeType"

                  minOccurs="1"

                  maxOccurs="1" />

    </xs:all>

    <xs:attribute name="PublisherName"

                  type="PublisherNameType"

                  use="required"/>

    <xs:attribute name="ProductName"

                  type="ProductNameType"

                  use="required"/>

    <xs:attribute name="BinaryName"

                  type="BinaryNameType"

                  use="required"/>

  </xs:complexType>



  <!-- -->

  <!-- PublisherName-Type -->

  <!-- -->

  <xs:simpleType name="PublisherNameType">

    <xs:restriction base="xs:string">

      <xs:minLength value="1"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- ProductName-Type -->

  <!-- -->

  <xs:simpleType name="ProductNameType">

    <xs:restriction base="xs:string">

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- BinaryName-Type -->

  <!-- -->

  <xs:simpleType name="BinaryNameType">

    <xs:restriction base="xs:string">

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- FileVersionRange-Type -->

  <!-- -->

  <xs:complexType name="FileVersionRangeType">

    <xs:attribute name="LowSection"

                  type="FileVersionType"

                  use="required"/>

    <xs:attribute name="HighSection"

                  type="FileVersionType"

                  use="required"/>

  </xs:complexType>



  <!-- -->

  <!-- FileVersion-Type -->

  <!-- -->

  <xs:simpleType name="FileVersionType">

    <xs:union memberTypes="SpecificFileVersionType AnyFileVersionType"/>

  </xs:simpleType>



  <!-- -->

  <!-- SpecificFileVersion-Type -->

  <!-- -->

  <xs:simpleType name="SpecificFileVersionType">

    <xs:restriction base="xs:string">

      <xs:pattern value="([0-9]{1,5}.){3}[0-9]{1,5}"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- AnyFileVersion-Type -->

  <!-- -->

  <xs:simpleType name="AnyFileVersionType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="*"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- FilePathCondition-Type -->

  <!-- -->

  <xs:complexType name="FilePathConditionType">

    <xs:attribute name="Path"

                  type="FilePathType"

                  use="required"/>

  </xs:complexType>



  <!-- -->

  <!-- FilePath-Type -->

  <!-- -->

  <xs:simpleType name="FilePathType">

    <xs:restriction base="xs:string">

      <xs:minLength value="1"/>

      <xs:maxLength value="32767"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- FileHashCondition-Type -->

  <!-- -->

  <xs:complexType name="FileHashConditionType">

    <xs:sequence>

      <xs:element name="FileHash"

                  type="FileHashType"

                  minOccurs="1"

                  maxOccurs="unbounded"/>

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- FileHash-Type -->

  <!-- -->

  <xs:complexType name="FileHashType">

    <xs:attribute name="Type"

                  type="HashType"

                  use="required"/>

    <xs:attribute name="Data"

                  type="HashDataType"

                  use="required"/>

    <xs:attribute name="SourceFileName"

                  type="xs:string"

                  use="optional"/>

    <xs:attribute name="SourceFileLength"

                  type="xs:integer"

                  use="optional"/>

  </xs:complexType>



  <!-- -->

  <!-- Hash-Type -->

  <!-- -->

  <xs:simpleType name="HashType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="SHA256"/>

      <xs:enumeration value="SHA256Flat"/>

      <xs:enumeration value="SHA1"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- HashData-Type -->

  <!-- -->

  <xs:simpleType name="HashDataType">

    <xs:union memberTypes="SHA256HashDataType SHA256FlatHashDataType SHA1HashDataType"/>

  </xs:simpleType>



  <xs:simpleType name="SHA256HashDataType">

    <xs:restriction base="xs:string">

      <xs:pattern value="0x([0-9A-Fa-f]{64})"/>

    </xs:restriction>

  </xs:simpleType>



  <xs:simpleType name="SHA256FlatHashDataType">

    <xs:restriction base="xs:string">

      <xs:pattern value="0x([0-9A-Fa-f]{64})"/>

    </xs:restriction>

  </xs:simpleType>



  <xs:simpleType name="SHA1HashDataType">

    <xs:restriction base="xs:string">

      <xs:pattern value="0x([0-9A-Fa-f]{40})"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- ServicesEnforcementMode-Type -->

  <!-- -->

  <xs:simpleType name="ServicesEnforcementModeType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="NotConfigured"/>

      <xs:enumeration value="Enabled"/>

      <xs:enumeration value="ServicesOnly"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- Services-Type -->

  <!-- -->

  <xs:complexType name="ServicesType">

    <xs:attribute name="EnforcementMode"

                  type="ServicesEnforcementModeType"

                  use="required"/>

  </xs:complexType>



  <!-- -->

  <!-- ThresholdCollectionExtensions-Type -->

  <!-- -->

  <xs:complexType name="ThresholdCollectionExtensionsType">

    <xs:sequence>

      <xs:element name="Services"

                  type="ServicesType"

                  minOccurs="0"

                  maxOccurs="1" />

    </xs:sequence>

  </xs:complexType>



  <!-- -->

  <!-- ThresholdPolicyExtensions-Type -->

  <!-- -->

  <xs:complexType name="ThresholdPolicyExtensionsType">

    <xs:sequence>

      <xs:element name="Plugins"

                  type="PluginsType"

                  minOccurs="0"

                  maxOccurs="1" />

    </xs:sequence>

  </xs:complexType>



  <xs:complexType name="PluginsType">

    <xs:sequence>

      <xs:element name="Plugin"

                  type="PluginType"

                  minOccurs="0"

                  maxOccurs="unbounded" />

    </xs:sequence>

  </xs:complexType>



  <xs:complexType name="PluginType">

    <xs:sequence>

      <xs:element name="ExecutionCategories"

                  type="ExecutionCategoriesType"

                  minOccurs="1"

                  maxOccurs="1" />

    </xs:sequence>

    <xs:attribute name="Name" type="xs:string" />

    <xs:attribute name="Id" type="GuidType" />

   </xs:complexType>



  <xs:complexType name="ExecutionCategoriesType">

    <xs:sequence>

      <xs:element name="ExecutionCategory"

                  type="ExecutionCategoryType"

                  minOccurs="1"

                  maxOccurs="unbounded" />

    </xs:sequence>

  </xs:complexType>



  <xs:complexType name="ExecutionCategoryType">

    <xs:sequence>

      <xs:element name="Policies"

                  type="PluginPoliciesType"

                  minOccurs="0"

                  maxOccurs="1" />

    </xs:sequence>

    <xs:attribute name="Id"

                  type="GuidType" />

    <xs:attribute name="AppidTypes"

                  type="AttributeListType"

                  use="optional" />

  </xs:complexType>



  <xs:simpleType name="AttributeListType">

    <xs:list itemType="AttributeEnumType" />

  </xs:simpleType>



  <xs:simpleType name="AttributeEnumType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="Hash" />

      <xs:enumeration value="Path" />

      <xs:enumeration value="Publisher" />

    </xs:restriction>

  </xs:simpleType>



  <xs:complexType name="PluginPoliciesType">

    <xs:sequence>

      <xs:element name="Policy"

                  type="PluginPolicyType"

                  minOccurs="0"

                  maxOccurs="unbounded" />

    </xs:sequence>

  </xs:complexType>



  <xs:complexType name="PluginPolicyType">

    <xs:attribute name="Id"

                  type="GuidType" />

  </xs:complexType>



  <!-- -->

  <!-- Generic Types... -->

  <!-- -->



  <!-- -->

  <!-- Boolean-Type -->

  <!-- -->

  <xs:simpleType name="BooleanType">

    <xs:restriction base="xs:string">

      <xs:enumeration value="True"/>

      <xs:enumeration value="False"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- Guid-Type -->

  <!-- -->

  <xs:simpleType name="GuidType">

    <xs:restriction base="xs:string">

      <xs:pattern value="[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}"/>

    </xs:restriction>

  </xs:simpleType>



  <!-- -->

  <!-- Sid-Type -->

  <!-- -->

  <xs:simpleType name="SidType">

    <xs:restriction base="xs:string">

      <xs:minLength value="7"/>

      <xs:pattern value="S-1(-[0-9a-fA-F]+)+"/>

    </xs:restriction>

  </xs:simpleType>



</xs:schema>
```

 

 






