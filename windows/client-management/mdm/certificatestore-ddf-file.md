---
title: CertificateStore DDF file
description: This topic shows the OMA DM device description framework (DDF) for the CertificateStore configuration service provider. DDF files are used only with OMA DM provisioning XML.
ms.assetid: D9A12D4E-3122-45C3-AD12-CC4FFAEC08B8
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 12/05/2017
---

# CertificateStore DDF file


This topic shows the OMA DM device description framework (DDF) for the **CertificateStore** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>CertificateStore</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
            <AccessType>
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
                <DDFName></DDFName>
            </DFType>
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
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>*</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Delete />
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
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>*</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                            <Delete />
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
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
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
                    <DDFName></DDFName>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>*</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                            <Delete />
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
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>*</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Delete />
                        </AccessType>
                        <Description>The UniqueID for the SCEP enrollment request. Each client certificate should have different unique ID.</Description>
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
                            <DDFName></DDFName>
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
                                <DDFName></DDFName>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                <MIME>text/plain</MIME>
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
                                <MIME>text/plain</MIME>
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
                                <MIME>text/plain</MIME>
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
                        <DDFName></DDFName>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>Renew</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Under this node are the renew properties.</Description>
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
                            <NodeName>RenewPeriod</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Get />
                                    <Replace />
                                    <Delete />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>ServerURL</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Get />
                                    <Replace />
                                    <Delete />
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>RetryInterval</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Get />
                                    <Replace />
                                    <Delete />
                                </AccessType>
                                <Description>Optional. This parameter specifies retry interval when previous renew failed (in days). It applies to both manual cert renewal and ROBO cert renewal. Retry schedule will stop at cert expiration date.</Description>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>ROBOSupport</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Get />
                                    <Replace />
                                    <Delete />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>Status</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
                                <Description>Show the latest action status for this certificate.</Description>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>RetryAfterExpiryInterval</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                    <Set />
                                </AccessType>
                                <Description>How long after the enrollment cert has expiried to keep trying to renew</Description>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
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
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>*</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Delete />
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
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>*</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                            <Delete />
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
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
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
        </Node>
    </Node>
</MgmtTree>
```

 

 





