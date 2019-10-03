---
title: ApplicationRestrictions XSD
description: Here's the XSD for the ApplicationManagement/ApplicationRestrictions policy.
ms.assetid: A5AA2B59-3736-473E-8F70-A90FD61EE426
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/26/2017
---

# ApplicationRestrictions XSD


Here's the XSD for the ApplicationManagement/ApplicationRestrictions policy.

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="AppPolicy_xsd"
           attributeFormDefault="unqualified"
           elementFormDefault="qualified"
           xmlns:xs="http://www.w3.org/2001/XMLSchema"
           targetNamespace="http://schemas.microsoft.com/phone/2013/policy"
           xmlns="http://schemas.microsoft.com/phone/2013/policy"
           xmlns:m="http://schemas.microsoft.com/phone/2013/policy"
           >

  <!-- Non-empty string must have a non-whitespace character at the beginning and end -->
  <xs:simpleType name="ST_NonEmptyString">
    <xs:restriction base="xs:string">
      <xs:minLength value="1"/>
      <xs:maxLength value="32767"/>
      <xs:pattern value="[^\s]|([^\s].*[^\s])"/>
    </xs:restriction>
  </xs:simpleType>

  <xs:simpleType name="ST_Publisher">
    <xs:restriction base="xs:string">
      <xs:maxLength value="256"/>
    </xs:restriction>
  </xs:simpleType>

  <xs:simpleType name="CT_LowerCaseGuid">
    <xs:annotation>
      <xs:documentation>GUID must use lowercase letters</xs:documentation>
    </xs:annotation>
    <xs:restriction base="ST_NonEmptyString">
      <xs:pattern value="\{[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\}"/>
    </xs:restriction>
  </xs:simpleType>

  <xs:complexType name="CT_Application">
    <xs:attribute name="ProductId" type="CT_LowerCaseGuid" />
  </xs:complexType>

  <xs:complexType name="CT_ApplicationWithPublisher">
    <xs:attribute name="ProductId" type="CT_LowerCaseGuid" />
    <xs:attribute name="PublisherName" type="ST_Publisher" use="optional" />
  </xs:complexType>

  <xs:complexType name="CT_AllowedPublisher">
    <xs:sequence>
      <xs:element name="DenyApp" type="CT_Application" minOccurs="0" maxOccurs="unbounded" />
    </xs:sequence>
    <xs:attribute name="PublisherName" type="ST_Publisher" use="required" />
  </xs:complexType>

  <xs:complexType name="CT_DeniedPublisher">
    <xs:sequence>
      <xs:element name="AllowApp" type="CT_Application" minOccurs="0" maxOccurs="unbounded" />
    </xs:sequence>
    <xs:attribute name="PublisherName" type="ST_Publisher" use="required" />
  </xs:complexType>

  <xs:element name="Deny">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="App" type="CT_Application" minOccurs="0" maxOccurs="unbounded" />
        <xs:element name="Publisher" type="CT_DeniedPublisher" minOccurs="0" maxOccurs="unbounded" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>

  <xs:element name="Allow">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="App" type="CT_ApplicationWithPublisher" minOccurs="0" maxOccurs="unbounded" />
        <xs:element name="Publisher" type="CT_AllowedPublisher" minOccurs="0" maxOccurs="unbounded" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>

  <xs:element name="AppPolicy">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="1">
        <xs:element ref="Deny" />
        <xs:element ref="Allow" />
      </xs:choice>
      <xs:attribute name="Version" use="required" type="xs:unsignedLong" />
    </xs:complexType>

    <!-- Uniqueness Checks -->
    <xs:unique name="NoDuplicateProductIDs">
      <xs:selector xpath=".//*"/>
      <xs:field xpath="@ProductId"/>
    </xs:unique>

    <!-- Uniqueness Checks -->
    <xs:unique name="NoDuplicatePublisherNames">
      <xs:selector xpath=".//*"/>
      <xs:field xpath="@PublisherName"/>
    </xs:unique>
  </xs:element>

</xs:schema>
```

 

 






