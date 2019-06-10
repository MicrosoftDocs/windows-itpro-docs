---
title: EnterpriseDesktopAppManagement XSD
description: This topic contains the XSD schema file for the EnterpriseDesktopAppManagement configuration service provider’s DownloadInstall parameter.
ms.assetid: 60980257-4F48-4A68-8E8E-1EF0A3F090E2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# EnterpriseDesktopAppManagement XSD


This topic contains the XSD schema file for the EnterpriseDesktopAppManagement configuration service provider’s DownloadInstall parameter.

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Data">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="MsiInstallJob">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Product">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Download">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="ContentURLList">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element maxOccurs="unbounded" name="ContentURL" type="xs:string" />
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element name="Validation">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="FileHash" type="xs:string" />
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element name="Enforcement">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="CommandLine" type="xs:string" />
                          <xs:element name="TimeOut" type="xs:unsignedByte" />
                          <xs:element name="RetryCount" type="xs:unsignedByte" />
                          <xs:element name="RetryInterval" type="xs:unsignedByte" />
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                  <xs:attribute name="Version" type="xs:string" use="required" />
                </xs:complexType>
              </xs:element>
            </xs:sequence>
            <xs:attribute name="id" type="xs:string" use="required" />
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

The following table describes the various elements and attributes of the XSD file:

 

| Name           | Description                                                                                                                                                                        |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| MsiInstallJob  | Root element                                                                                                                                                                       |
| id             | The application identifier for the application being installed.                                                                                                                    |
| Product        | Child element of MsiInstallJob                                                                                                                                                     |
| Version        | String representation of the application version                                                                                                                                   |
| Download       | Child element of Product. Container for download configuration information.                                                                                                        |
| ContentURLList | Child element of Download. Contains list of one or more content download URL locators in the form of ContentURL elements.                                                          |
| ContentURL     | Location that content should be downloaded from. Must be a property formatted URL that points to the MSI file.                                                                     |
| Validation     | Contains information used to validate content authenticity.                                                                                                                        |
| FileHash       | SHA256 hash value of file content.                                                                                                                                                 |
| Enforcement    | Installation properties to be used when installing this MSI                                                                                                                        |
| CommandLine    | Command-line options to be used when calling MSIEXEC.exe                                                                                                                           |
| Timeout        | Amount of time in minutes that the installation process can run before the installer considers the installation may have failed and no longer monitors the installation operation. |
| RetryCount     | Number of times the download and installation operation will be retried before the installation will be marked as failed.                                                          |
| RetryInterval  | Amount of time in minutes between retry operations.                                                                                                                                |

 

 

 






