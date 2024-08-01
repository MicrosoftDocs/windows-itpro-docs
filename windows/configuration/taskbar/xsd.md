---
title: Taskbar XML Schema Definition (XSD)
description: Taskbar XSD reference article.
ms.topic: reference
ms.date: 02/15/2024
---

# Taskbar XML Schema Definition (XSD)

This reference article contains the Taskbar XML schema definition (XSD).

## TaskbarLayout

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
            xmlns:local="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
            targetNamespace="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
            elementFormDefault="qualified">

    <xsd:complexType name="ct_PinnedUWA">
        <xsd:attribute name="AppUserModelID" type="xsd:string" />
    </xsd:complexType>

    <xsd:complexType name="ct_PinnedDesktopApp">
        <xsd:attribute name="DesktopApplicationID" type="xsd:string" />
        <xsd:attribute name="DesktopApplicationLinkPath" type="xsd:string" />
    </xsd:complexType>

    <xsd:complexType name="ct_TaskbarPinList">
        <xsd:sequence>
            <xsd:choice minOccurs="0" maxOccurs="unbounded">
                <xsd:element name="UWA" type="local:ct_PinnedUWA" />
                <xsd:element name="DesktopApp" type="local:ct_PinnedDesktopApp" />
                <xsd:element name="SecondaryTile" type="local:ct_TaskbarSecondaryTile" />
            </xsd:choice>
        </xsd:sequence>
        <xsd:attribute name="Region" type="xsd:string" use="optional" />
    </xsd:complexType>

    <xsd:simpleType name="st_TaskbarPinListPlacement">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Append" />
            <xsd:enumeration value="Replace" />
        </xsd:restriction>
    </xsd:simpleType>

    <xsd:attributeGroup name="ag_SelectionAttributes">
        <xsd:attribute name="SKU" type="xsd:string" use="optional"/>
        <xsd:attribute name="Region" type="xsd:string" use="optional"/>
    </xsd:attributeGroup>

    <xsd:complexType name="ct_TaskbarLayout">
        <xsd:sequence>
            <xsd:element name="TaskbarPinList" type="local:ct_TaskbarPinList" minOccurs="1" maxOccurs="1" />
        </xsd:sequence>
        <xsd:attributeGroup ref="local:ag_SelectionAttributes"/>
    </xsd:complexType>

</xsd:schema>
```
