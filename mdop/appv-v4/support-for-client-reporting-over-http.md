---
title: Support for Client Reporting over HTTP
description: Support for Client Reporting over HTTP
author: dansimp
ms.assetid: 4a26ac80-1fb5-4c05-83de-4d06793f7bf2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Support for Client Reporting over HTTP


Version 4.6 of the App-V client now supports the use of HTTP communication when sending client reporting data to the publishing server. This feature supports scenarios where a customer has implemented a custom HTTP(S) publishing server that is configured to collect and process client data.

For more information on HTTP publishing servers, see <https://go.microsoft.com/fwlink/?LinkId=157426>

## Client Reporting over HTTP


The client starts collecting data when it receives a “REPORTING=”TRUE””attribute in the publishing refresh response XML from the publishing server. When this attribute is received, the client sends any accumulated data to the publishing server that sent the publishing refresh. The details of this process are as follows:

-   The client sends an HTTP GET request to the publishing server for a publishing refresh. The header of this message contains an “AppV-Op:Refresh” custom header that the custom HTTP(S) publishing server uses to identify the message type.

-   The publishing server then sends the publishing refresh response XML that contains a “REPORTING=”TRUE”” value.

-   The client then sends an HTTP POST request to the publishing server along with the reporting data that has been gathered since the previous refresh. The header of this message contains an “AppV-Op:Report” custom header that the custom HTTP(S) publishing server uses to identify the message type.

The following schema gives specific details of the package and the application data that is sent to the server.

``` syntax
<?xml version="1.0"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">

    <xs:element name="CLIENT_DATA">
        <xs:complexType>
            <xs:all>
                <xs:element ref="PKG_LIST" minOccurs="1" maxOccurs="1"/>
                <xs:element ref="APP_RECORDS" minOccurs="1" maxOccurs="1"/>
            </xs:all>
            <!-- no regex for Ver because we want to allow tags like "Beta" -->
            <xs:attribute name="Ver" type="xs:normalizedString" use="required"/>
            <xs:attribute name="Host" type="xs:token" use="required"/>
            <xs:attribute name="CacheSize" type="xs:nonNegativeInteger" use="required"/>
            <xs:attribute name="CacheUsed" type="xs:nonNegativeInteger" use="required"/>
        </xs:complexType>
    </xs:element>

    <xs:element name="PKG_LIST">
        <xs:complexType>
            <xs:choice>
                <xs:element ref="PKG_DATA" minOccurs="0" maxOccurs="unbounded"/>
            </xs:choice>
        </xs:complexType>
    </xs:element>

    <xs:element name="PKG_DATA">
        <xs:complexType>
            <xs:attribute name="Name" type="xs:normalizedString" use="required"/>
            <xs:attribute name="Guid" type="xs:token" use="required"/>
            <xs:attribute name="Ver" type="xs:normalizedString" use="required"/>
            <xs:attribute name="VerGuid" type="xs:token" use="required"/>
            <xs:attribute name="Source" type="xs:normalizedString" use="required"/>
            <xs:attribute name="PctCached" use="required">
                <xs:simpleType>
                    <xs:restriction base="xs:nonNegativeInteger">
                        <xs:minInclusive value="0"/>
                        <xs:maxInclusive value="100"/>
                    </xs:restriction>
                </xs:simpleType>
            </xs:attribute>
        </xs:complexType>
    </xs:element>

    <xs:element name="APP_RECORDS">
         <xs:complexType>
            <xs:choice>
                <xs:element ref="APP_RECORD" minOccurs="0" maxOccurs="unbounded"/>
            </xs:choice>
        </xs:complexType>
   </xs:element>

    <xs:element name="APP_RECORD">
            <xs:attribute name="Name" type="xs:normalizedString" use="required"/>
            <xs:attribute name="Ver" type="xs:normalizedString" use="required"/>
            <xs:attribute name="Server" type="xs:normalizedString" use="required"/>
            <xs:attribute name="User" type="xs:normalizedString" use="required"/>
            <xs:attribute name="Launched" type="xs:dateTime" use="required"/>
            <xs:attribute name="Shutdown" type="xs:dateTime" use="optional"/>
    </xs:element>

</xs:schema>
```

 

 





