---
title: CertificateStore DDF file
description: View the XML file containing the device description framework (DDF) for the CertificateStore configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# CertificateStore DDF file

The following XML file contains the device description framework (DDF) for the CertificateStore configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>CertificateStore</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Add />
        <Delete />
        <Get />
      </AccessType>
      <Description>This object is used to add or delete a security certificate to the device's certificate store.</Description>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>ROOT</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This store holds only root (self-signed) certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>CertHash</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>The SHA1 hash for the certificate.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>EncodedCertificate</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>The base64 Encoded X.509 certificate.</Description>
            <DFFormat>
              <b64 />
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
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedBy</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name.</Description>
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
        <NodeName>System</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This store holds the System portion of the root store.</Description>
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
              <Delete />
              <Get />
            </AccessType>
            <Description>The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>CertHash</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>The SHA1 hash for the certificate. </MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>EncodedCertificate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>The base64 Encoded X.509 certificate.</Description>
              <DFFormat>
                <b64 />
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IssuedBy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>IssuedTo</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>ValidFrom</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>ValidTo</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>TemplateName</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the certificate template name.</Description>
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
      <NodeName>MY</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This store keeps all end-user personal certificates.</Description>
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
        <NodeName>User</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This store holds the User portion of the MY store.</Description>
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
              <Delete />
              <Get />
            </AccessType>
            <Description>The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>CertHash</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>The SHA1 hash for the certificate. </MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>EncodedCertificate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>The base64 Encoded X.509 certificate. Note that though during MDM enrollment, enrollment server could use WAP XML format to add public part of MDM client cert via EncodedCertificate node, properly enroll a client certificate including private needs a cert enroll protocol handle it  or user installs it manually. In WP, the server cannot purely rely on CertificateStore CSP to install a client certificate including private key.</Description>
              <DFFormat>
                <b64 />
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IssuedBy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>IssuedTo</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>ValidFrom</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>ValidTo</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>TemplateName</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the certificate template name.</Description>
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
      <Node>
        <NodeName>SCEP</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This store holds the SCEP portion of the MY store and handle operations related to SCEP certificate enrollment.</Description>
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
          <MSFT:Deprecated OsBuildDeprecated="10.0.22000" />
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>The UniqueID for the SCEP enrollment request. Each client certificate should have different unique ID.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>UniqueID</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Install</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The group to represent the install request</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>ServerURL</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify the cert enrollment server.</Description>
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
              <NodeName>Challenge</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Enroll requester authentication shared secret.</Description>
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
              <NodeName>EKUMapping</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify extended key usages. The list of OIDs are separated by plus “+”.</Description>
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
              <NodeName>KeyUsage</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify the key usage bits (0x80, 0x20, 0xA0) for the cert.</Description>
                <DFFormat>
                  <int />
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
            <Node>
              <NodeName>SubjectName</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify the subject name.</Description>
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
            <Node>
              <NodeName>KeyProtection</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify where to keep the private key.</Description>
                <DFFormat>
                  <int />
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
              <NodeName>RetryDelay</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>When the SCEP server sends pending status, specify device retry waiting time in minutes.</Description>
                <DFFormat>
                  <int />
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
              <NodeName>RetryCount</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>When the SCEP sends pending status, specify device retry times.</Description>
                <DFFormat>
                  <int />
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
              <NodeName>TemplateName</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Certificate Template Name OID (As in AD used by PKI infrastructure.</Description>
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
              <NodeName>KeyLength</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify private key length (RSA).</Description>
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
              <NodeName>HashAlgrithm</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Client create Cert enroll request, get supported hash OIalgorithm from SCEP server  and  match it with one specified in this parameter.</Description>
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
            <Node>
              <NodeName>CAThumbPrint</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify root CA thumbprint.</Description>
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
            <Node>
              <NodeName>SubjectAlternativeNames</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Each pair is separated by semi-comma.</Description>
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
              <NodeName>ValidPeriod</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specify the period of time that cert is valid. The valid period specified by MDM will overwrite the valid period specified in cert template.</Description>
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
              <NodeName>ValidPeriodUnit</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                </AccessType>
                <Description>Specify valid period unit type.</Description>
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
              <NodeName>Enroll</NodeName>
              <DFProperties>
                <AccessType>
                  <Exec />
                </AccessType>
                <Description>Start the cert enrollment.</Description>
                <DFFormat>
                  <null />
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
            <NodeName>CertThumbPrint</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Specify the current cert’s thumbprint.</Description>
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
            <NodeName>Status</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Specify the latest status for the certificate due to enroll request.</Description>
              <DFFormat>
                <int />
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
          <Node>
            <NodeName>ErrorCode</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Specify the last hresult in case enroll action failed.</Description>
              <DFFormat>
                <int />
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
      <Node>
        <NodeName>WSTEP</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The parent node that hosts  client certificate that is enrolled via WSTEP, e.g. the certificate that is enrolled during MDM enrollment.</Description>
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
          <NodeName>CertThumprint</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The thumb print of enrolled MDM client certificate.</Description>
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
        <Node>
          <NodeName>Renew</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The parent node to group renewal related settings.</Description>
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
            <MSFT:AtomicRequired />
          </DFProperties>
          <Node>
            <NodeName>RenewPeriod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>42</DefaultValue>
              <Description>Specify the number of days prior to the enrollment cert expiration to prompt the user to renew.</Description>
              <DFFormat>
                <int />
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-1000]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ServerURL</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. Specifies the cert renewal server URL which is the discovery server.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RetryInterval</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>7</DefaultValue>
              <Description><![CDATA[Optional. This parameter specifies retry interval when previous renew failed (in days). It applies to both manual cert renewal and ROBO cert renewal. Retry schedule will stop at cert expiration date. For ROBO renewal failure, the client retries the renewal periodically until the device reaches the certificate expiration date. This parameter specifies the waiting period for ROBO renewal retries. For manual retry failure, there are no built-in retries. The user can retry later. At the next scheduled certificate renewal retry period, the device prompts the credential dialog again. The default value is 7 and the valid values are 1 – 1000 AND =< RenewalPeriod, otherwise it will result in errors. Value type is an integer.]]></Description>
              <DFFormat>
                <int />
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-1000]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ROBOSupport</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Optional. Notify the client whether enrollment server supports ROBO auto certificate renew. NOTE: This flag is only needed to the device which is MDM enrolled via On-premise authentication method. For MDM enrolled with federated authentication, ROBO is the only supported renewal method. If the server sets this node value to be false or delete this node for federated enrolled device, the configuration will fail with OMA DM error code 405.</Description>
              <DFFormat>
                <bool />
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Status</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Show the latest action status for this certificate. Supported values are one of the following: 0 – Not started. 1 – Renewal in progress. 2 – Renewal succeeded. 3 – Renewal failed.</Description>
              <DFFormat>
                <int />
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
          <Node>
            <NodeName>ErrorCode</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>If certificate renew fails, this node provide the last hresult code during renew process.</Description>
              <DFFormat>
                <int />
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
          <Node>
            <NodeName>LastRenewalAttemptTime</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Time of last attempted renew</Description>
              <DFFormat>
                <time />
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RenewNow</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Initiate a renew now</Description>
              <DFFormat>
                <null />
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RetryAfterExpiryInterval</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>How long after the enrollment cert has expiried to keep trying to renew</Description>
              <DFFormat>
                <time />
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>CA</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This cryptographic store contains intermediary certification authorities.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>CertHash</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>The SHA1 hash for the certificate. </MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>EncodedCertificate</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>The base64 Encoded X.509 certificate</Description>
            <DFFormat>
              <b64 />
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
        <Node>
          <NodeName>IssuedBy</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name.</Description>
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
        <NodeName>System</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This store holds the System portion of the CA store.</Description>
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
              <Delete />
              <Get />
            </AccessType>
            <Description>The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>CertHash</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>The SHA1 hash for the certificate. </MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>EncodedCertificate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>The base64 Encoded X.509 certificate.</Description>
              <DFFormat>
                <b64 />
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
          <Node>
            <NodeName>IssuedBy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>IssuedTo</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>ValidFrom</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>ValidTo</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.</Description>
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
          <Node>
            <NodeName>TemplateName</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the certificate template name.</Description>
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
  </Node>
</MgmtTree>
```

## Related articles

[CertificateStore configuration service provider reference](certificatestore-csp.md)
