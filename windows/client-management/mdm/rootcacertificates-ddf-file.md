---
title: RootCATrustedCertificates DDF file
description: RootCATrustedCertificates DDF file
ms.assetid: 06D8787B-D3E1-4D4B-8A21-8045A8F85C1C
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# RootCATrustedCertificates DDF file


This topic shows the OMA DM device description framework (DDF) for the **RootCACertificates** configuration service provider. DDF files are used only with OMA DM provisioning XML.

You can download the DDF files from the links below:

- [Download all the DDF files for Windows 10, version 1703](http://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](http://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>RootCATrustedCertificates</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
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
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Root</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
                <Delete />
                <Get />
                <Add />
                <Replace />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>CertHash</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EncodedCertificate</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Replace />
                  <Get />
                </AccessType>
                <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
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
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
                <Delete />
                <Get />
                <Add />
                <Replace />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>CertHash</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EncodedCertificate</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Replace />
                  <Get />
                </AccessType>
                <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
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
                  <MIME>text/plain</MIME>
                </DFType>
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
                  <MIME>text/plain</MIME>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ValidFrom</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the starting date of the certificate's validity. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ValidTo</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the expiration date of the certificate. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>TemplateName</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the certificate template name. </Description>
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
                  <MIME>text/plain</MIME>
                </DFType>
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
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
                <Delete />
                <Get />
                <Add />
                <Replace />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>CertHash</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EncodedCertificate</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Replace />
                  <Get />
                </AccessType>
                <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ValidFrom</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the starting date of the certificate's validity. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ValidTo</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the expiration date of the certificate. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>TemplateName</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the certificate template name. </Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
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
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
                <Delete />
                <Get />
                <Add />
                <Replace />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>CertHash</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EncodedCertificate</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Replace />
                  <Get />
                </AccessType>
                <Description>Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
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
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ValidFrom</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the starting date of the certificate's validity. This is equivalent to the NotBefore member in the CERT_INFO structure.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ValidTo</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the expiration date of the certificate. This is equivalent to the NotAfter member in the CERT_INFO structure</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>TemplateName</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the certificate template name. </Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```

 

 






