---
title: SecureAssessment CSP
description: Learn more about the SecureAssessment CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- SecureAssessment-Begin -->
# SecureAssessment CSP

<!-- SecureAssessment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SecureAssessment-Editable-End -->

<!-- SecureAssessment-Tree-Begin -->
The following list shows the SecureAssessment configuration service provider nodes:

- ./Vendor/MSFT/SecureAssessment
  - [AllowScreenMonitoring](#allowscreenmonitoring)
  - [AllowTextSuggestions](#allowtextsuggestions)
  - [Assessments](#assessments)
  - [LaunchURI](#launchuri)
  - [RequirePrinting](#requireprinting)
  - [TesterAccount](#testeraccount)
<!-- SecureAssessment-Tree-End -->

<!-- Device-AllowScreenMonitoring-Begin -->
## AllowScreenMonitoring

<!-- Device-AllowScreenMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-AllowScreenMonitoring-Applicability-End -->

<!-- Device-AllowScreenMonitoring-OmaUri-Begin -->
```Device
./Vendor/MSFT/SecureAssessment/AllowScreenMonitoring
```
<!-- Device-AllowScreenMonitoring-OmaUri-End -->

<!-- Device-AllowScreenMonitoring-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates if screen monitoring is allowed by the app.
<!-- Device-AllowScreenMonitoring-Description-End -->

<!-- Device-AllowScreenMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AllowScreenMonitoring-Editable-End -->

<!-- Device-AllowScreenMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-AllowScreenMonitoring-DFProperties-End -->

<!-- Device-AllowScreenMonitoring-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Screen monitoring is allowed. |
| 0 (Default) | Screen monitoring isn't allowed. |
<!-- Device-AllowScreenMonitoring-AllowedValues-End -->

<!-- Device-AllowScreenMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AllowScreenMonitoring-Examples-End -->

<!-- Device-AllowScreenMonitoring-End -->

<!-- Device-AllowTextSuggestions-Begin -->
## AllowTextSuggestions

<!-- Device-AllowTextSuggestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-AllowTextSuggestions-Applicability-End -->

<!-- Device-AllowTextSuggestions-OmaUri-Begin -->
```Device
./Vendor/MSFT/SecureAssessment/AllowTextSuggestions
```
<!-- Device-AllowTextSuggestions-OmaUri-End -->

<!-- Device-AllowTextSuggestions-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates if keyboard text suggestions are allowed by the app.
<!-- Device-AllowTextSuggestions-Description-End -->

<!-- Device-AllowTextSuggestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AllowTextSuggestions-Editable-End -->

<!-- Device-AllowTextSuggestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-AllowTextSuggestions-DFProperties-End -->

<!-- Device-AllowTextSuggestions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Keyboard text suggestions are allowed. |
| 0 (Default) | Keyboard text suggestions aren't allowed. |
<!-- Device-AllowTextSuggestions-AllowedValues-End -->

<!-- Device-AllowTextSuggestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AllowTextSuggestions-Examples-End -->

<!-- Device-AllowTextSuggestions-End -->

<!-- Device-Assessments-Begin -->
## Assessments

<!-- Device-Assessments-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621.521] and later |
<!-- Device-Assessments-Applicability-End -->

<!-- Device-Assessments-OmaUri-Begin -->
```Device
./Vendor/MSFT/SecureAssessment/Assessments
```
<!-- Device-Assessments-OmaUri-End -->

<!-- Device-Assessments-Description-Begin -->
<!-- Description-Source-DDF -->
Enables support for multiple assessments and for assessment grouping. The structure is specified by an XML.
<!-- Device-Assessments-Description-End -->

<!-- Device-Assessments-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When configured, users can select from a list of assessments. The node accepts an XML string that represents the list of available assessments.
<!-- Device-Assessments-Editable-End -->

<!-- Device-Assessments-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Assessments-DFProperties-End -->

<!-- Device-Assessments-AllowedValues-Begin -->
**Allowed values**:

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
                    <xs:element type="xs:string" name="TestName" />
                    <xs:element type="xs:string" name="TestUri" />
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
<!-- Device-Assessments-AllowedValues-End -->

<!-- Device-Assessments-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-Assessments-Examples-End -->

<!-- Device-Assessments-End -->

<!-- Device-LaunchURI-Begin -->
## LaunchURI

<!-- Device-LaunchURI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-LaunchURI-Applicability-End -->

<!-- Device-LaunchURI-OmaUri-Begin -->
```Device
./Vendor/MSFT/SecureAssessment/LaunchURI
```
<!-- Device-LaunchURI-OmaUri-End -->

<!-- Device-LaunchURI-Description-Begin -->
<!-- Description-Source-DDF -->
Link to an assessment that's automatically loaded when the Secure Assessment Browser is launched.
<!-- Device-LaunchURI-Description-End -->

<!-- Device-LaunchURI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LaunchURI-Editable-End -->

<!-- Device-LaunchURI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `System.Xml.XmlElement` |
<!-- Device-LaunchURI-DFProperties-End -->

<!-- Device-LaunchURI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LaunchURI-Examples-End -->

<!-- Device-LaunchURI-End -->

<!-- Device-RequirePrinting-Begin -->
## RequirePrinting

<!-- Device-RequirePrinting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-RequirePrinting-Applicability-End -->

<!-- Device-RequirePrinting-OmaUri-Begin -->
```Device
./Vendor/MSFT/SecureAssessment/RequirePrinting
```
<!-- Device-RequirePrinting-OmaUri-End -->

<!-- Device-RequirePrinting-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates if printing is required by the app.
<!-- Device-RequirePrinting-Description-End -->

<!-- Device-RequirePrinting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-RequirePrinting-Editable-End -->

<!-- Device-RequirePrinting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
<!-- Device-RequirePrinting-DFProperties-End -->

<!-- Device-RequirePrinting-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Printing is allowed. |
| 0 | Printing isn't allowed. |
<!-- Device-RequirePrinting-AllowedValues-End -->

<!-- Device-RequirePrinting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RequirePrinting-Examples-End -->

<!-- Device-RequirePrinting-End -->

<!-- Device-TesterAccount-Begin -->
## TesterAccount

<!-- Device-TesterAccount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-TesterAccount-Applicability-End -->

<!-- Device-TesterAccount-OmaUri-Begin -->
```Device
./Vendor/MSFT/SecureAssessment/TesterAccount
```
<!-- Device-TesterAccount-OmaUri-End -->

<!-- Device-TesterAccount-Description-Begin -->
<!-- Description-Source-DDF -->
The user name of the test taking account. To specify a domain account, use domain\user. To specify a Microsoft Entra account, use username@tenant.com. To specify a local account, use the username.
<!-- Device-TesterAccount-Description-End -->

<!-- Device-TesterAccount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TesterAccount-Editable-End -->

<!-- Device-TesterAccount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-TesterAccount-DFProperties-End -->

<!-- Device-TesterAccount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TesterAccount-Examples-End -->

<!-- Device-TesterAccount-End -->

<!-- SecureAssessment-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SecureAssessment-CspMoreInfo-End -->

<!-- SecureAssessment-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
