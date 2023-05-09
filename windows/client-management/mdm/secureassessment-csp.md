---
title: SecureAssessment CSP
description: Learn how the SecureAssessment configuration service provider (CSP) is used to provide configuration information for the secure assessment browser.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# SecureAssessment CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The SecureAssessment configuration service provider is used to provide configuration information for the secure assessment browser.

The following example shows the SecureAssessment configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.
```
./Vendor/MSFT
SecureAssessment
----LaunchURI
----TesterAccount
----AllowScreenMonitoring
----RequirePrinting
----AllowTextSuggestions
----Assessments
```
<a href="" id="--vendor-msft-secureassessment"></a>**./Vendor/MSFT/SecureAssessment**
The root node for the SecureAssessment configuration service provider.

The supported operation is Get.

<a href="" id="launchuri"></a>**LaunchURI**
URI link to an assessment that's automatically loaded when the secure assessment browser is launched.

The supported operations are Add, Delete, Get, and Replace.

<a href="" id="testeraccount"></a>**TesterAccount**
The user name of the test taking account.

- To specify a domain account, use domain\\user.
- To specify an Azure Active Directory account, use username@tenant.com.
- To specify a local account, use the username.

The supported operations are Add, Delete, Get, and Replace.

<a href="" id="allowscreenmonitoring"></a>**AllowScreenMonitoring**
Added in Windows 10, version 1703. Boolean value that indicates whether screen capture is allowed by the app.

Supported operations are Get and Replace.

<a href="" id="requireprinting"></a>**RequirePrinting**
Added in Windows 10, version 1703. Boolean value that indicates whether printing is allowed by the app.

Supported operations are Get and Replace.

<a href="" id="AllowTextSuggestions"></a>**AllowTextSuggestions**
Added in Windows 10, version 1703. Boolean value that indicates whether keyboard text suggestions are allowed by the app.

Supported operations are Get and Replace.

<a href="" id="Assessments"></a>**Assessments**
Added in Windows 11, version 22H2. Enables support for multiple assessments. When configured, users can select from a list of assessments. The node accepts an XML string that represents the list of available assessments.

Supported operations are Add, Delete, Get and Replace.

XML schema

```xml
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
</xs:schema>
```

Example:
```xml
<?xml version="1.0" encoding="utf-16"?>
<AssessmentsRoot xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <Assessments>
        <Assessment>
            <TestName>English exam</TestName>
            <TestUri>https://contoso.com/english</TestUri>
        </Assessment>
        <Assessment>
            <TestName>Math exam</TestName>
            <TestUri>https://contoso.com/math</TestUri>
        </Assessment>
        <Assessment>
            <TestName>Geography exam</TestName>
            <TestUri>https://contoso.com/geography</TestUri>
        </Assessment>
    </Assessments>
</AssessmentsRoot>
```

## Related topics

[Set up Take a Test](/education/windows/take-a-test-multiple-pcs)

[Configuration service provider reference](index.yml)



