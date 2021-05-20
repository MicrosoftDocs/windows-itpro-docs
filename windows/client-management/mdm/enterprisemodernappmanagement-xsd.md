---
title: EnterpriseModernAppManagement XSD
description: In this article, view the EnterpriseModernAppManagement XSD example so you can set application parameters.
ms.assetid: D393D094-25E5-4E66-A60F-B59CC312BF57
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# EnterpriseModernAppManagement XSD


Here is the XSD for the application parameters.

```xml
<?xml version="1.0" encoding="utf-16"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="https://www.w3.org/2001/XMLSchema">
    <xs:element name="Data">
        <xs:complexType>
            <xs:sequence>
                <xs:element maxOccurs="1" name="Application">
                    <xs:complexType mixed="true">
                        <xs:sequence minOccurs="0">
                            <xs:element name="Dependencies">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element maxOccurs="unbounded" name="Dependency">
                                            <xs:complexType>
                                                <xs:attribute name="PackageUri" type="xs:string" use="required" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                        <xs:attribute name="DeploymentOptions" type="xs:unsignedByte" use="optional" />
                        <xs:attribute name="PackageUri" type="xs:string" use="required" />
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

 

 






