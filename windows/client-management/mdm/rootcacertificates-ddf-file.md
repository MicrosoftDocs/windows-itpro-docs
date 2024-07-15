---
title: RootCATrustedCertificates DDF file
description: View the XML file containing the device description framework (DDF) for the RootCATrustedCertificates configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# RootCATrustedCertificates DDF file

The following XML file contains the device description framework (DDF) for the RootCATrustedCertificates configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>RootCATrustedCertificates</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the RootCATrustedCertificates configuration service provider.</Description>
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
      <NodeName>CA</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for CA certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
      <NodeName>OemEsim</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for OEM eSIM certificates.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.2</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>TrustedPublisher</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for trusted publisher certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>TrustedPeople</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for trusted people certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>UntrustedCertificates</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for certificates that are not trusted. IT admin can use this node to immediately flag certificates that have been compromised and no longer usable.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>RootCATrustedCertificates</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the RootCATrustedCertificates configuration service provider.</Description>
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
      <NodeName>Root</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Defines the certificate store that contains root, or self-signed certificates, in this case, the computer store.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
        </DFProperties>
        <Node>
          <NodeName>EncodedCertificate</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>CA</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for CA certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
      <NodeName>OemEsim</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for OEM eSIM certificates.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.2</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedBy</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>TrustedPublisher</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for trusted publisher certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>TrustedPeople</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for trusted people certificates.</Description>
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
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedBy</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>UntrustedCertificates</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for certificates that are not trusted. IT admin can use this node to immediately flag certificates that have been compromised and no longer usable.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
          </AccessType>
          <Description>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. </MSFT:UniqueName>
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
            <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
              <DDFName />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
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
            <Description>Returns the name of the certificate issuer.  This is equivalent to the Issuer member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IssuedTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the certificate subject. This is equivalent to the Subject member in the CERT_INFO data structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidFrom</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ValidTo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TemplateName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the certificate template name. Supported operation is Get.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[RootCATrustedCertificates configuration service provider reference](rootcacertificates-csp.md)
