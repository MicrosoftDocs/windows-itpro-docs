---
title: ClientCertificateInstall DDF file
description: ClientCertificateInstall DDF file
ms.assetid: 7F65D045-A750-4CDE-A1CE-7D152AA060CA
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/05/2017
---

# ClientCertificateInstall DDF file


This topic shows the OMA DM device description framework (DDF) for the **ClientCertificateInstall** configuration service provider. DDF files are used only with OMA DM provisioning XML.

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
        <NodeName>ClientCertificateInstall</NodeName>
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
            <DFType>
                <MIME>com.microsoft/1.1/MDM/ClientCertificateInstall</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>PFXCertInstall</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Required for PFX certificate installation. The parent node grouping the PFX cert related settings. Supported operation is Get. </Description>
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
                <NodeName></NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Delete />
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>Required for PFX certificate installation. A unique ID to differentiate different certificate install requests. 
Format is node. 
Supported operations are Get, Add, Delete 
Calling Delete on the this node, should delete the certificates and the keys that were installed by the corresponding PFX blob.
</Description>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>KeyLocation</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Required for PFX certificate installation. Indicates the KeyStorage provider to target the private key installation to. Supported operations are Get, Add
 Datatype will be int
1- Install to TPM, fail if not present
2 – Install to TPM if present, if not present fallback to Software
3 – Install to software
4 – Install to NGC container whose name is specified
</Description>
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
                    <NodeName>ContainerName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Optional. 
Specifies the NGC container name (if NGC KSP is chosen for above node). If this node is not specified when NGC KSP is chosen, enrollment will fail.
Format is chr
Supported operations are Get, Add, Delete and Replace
</Description>
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
                    <NodeName>PFXCertBlob</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Required. 
CRYPT_DATA_BLOB structure that contains a PFX packet with the exported and encrypted certificates and keys. Add on this node will trigger the addition to the PFX certificate. This requires that all the other nodes under UniqueID that are parameters for PFX installation (Container Name, KeyLocation, CertPassword, fKeyExportable) are present before this is called. This will also set the Status node to the current Status of the operation.
Format is Binary64
Supported operations are Get, Add, Replace
If Add is called on this node and a blob already exists, it will fail. If Replace is called on this node, the certificates will be overwritten.
If Add is called on this node for a new PFX, the certificate will be added. If Replace is called on this node when it does not exist, this will fail.
In other words, using Replace or Add will result in the effect of either overwriting the old certificate or adding a new certificate
CRYPT_DATA_BLOB on MSDN can be found at http://msdn.microsoft.com/library/windows/desktop/aa381414(v=vs.85).aspx
</Description>
                        <DFFormat>
                            <bin />
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
                    <NodeName>PFXCertPassword</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>
Required if PFX is password protected.
Password that protects the PFX blob. 
Format is  chr. Supported operations are Add, Get
</Description>
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
                    <NodeName>PFXCertPasswordEncryptionType</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <DefaultValue>0</DefaultValue>
                        <Description>Optional. Used to specify if the PFX certificate password is encrypted with a certificate.
If the value is 
0 - Password is not encrypted
1- Password is encrypted using the MDM certificate by the MDM server
2 - Password is encrypted by a Custom Certificate by the MDM server. When this value is used here, also specify the custom store name in the PFXCertPasswordEncryptionStore node.
The datatype for this node is int.
Supported operations are Add, Replace
</Description>
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
                    <NodeName>PFXKeyExportable</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <DefaultValue>true</DefaultValue>
                        <Description>Optional. Used to specify if the private key installed is exportable (can be exported later). The datatype for this node is bool.
Supported operations are Add, Get
</Description>
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
                    <NodeName>Thumbprint</NodeName>
                    <DFProperties>
                        <AccessType>     
                            <Get />
                        </AccessType>
                        <Description>Returns the thumbprint of the PFX certificate installed. Format is string.Supported operations are Get.
                        </Description>
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
                    <NodeName>Status</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
                        <Description>Returns the error code of the PFX installation from the GetLastError command called after the PfxImportCertStore. Datatype is int.
Support operations are Get
</Description>
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
                    <NodeName>PFXCertPasswordEncryptionStore</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Optional. 
When a value of "2" is contained iin PFXCertPasswordEncryptionType, specify the store name where the certificate for decrypting the PFXCertPassword is stored. 
Datatype is string,
Support operation are Add, Get and Replace.
</Description>
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
            </Node>
        </Node>
        <Node>
            <NodeName>SCEP</NodeName>
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
                <NodeName></NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Delete />
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>Required for SCEP certificate installation. A unique ID to differentiate different certificate install requests. 
Format is node. 
Supported operations are Get, Add, Delete 
Calling Delete on the this node, should delete the corresponding SCEP certificate</Description>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>Install</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Required for SCEP certificate enrollment. Parent node to group SCEP cert install related request. Format is node. Supported operation is Add, Delete.

NOTE: though the children nodes under Install support Replace commands, once the Exec command is sent to the device, the device will take the values which are set when the Exec command is accepted. The server should not expect the node value change after Exec command is accepted will impact the current undergoing enrollment. The server should check the Status node value and make sure the device is not at unknown stage before changing children node values.</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required for SCEP certificate enrollment. Specify the cert enrollment server. The server could specify multiple server URLs separated by semicolon. 
Format is string. 
Supported operations are Get, Add, Delete, Replace.</Description>
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
                        <NodeName>Challenge</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required for SCEP certificate enrollment. B64 encoded SCEP enrollment challenge. Format is chr. Supported operations are Get, Add, Replace, Delete. Challenge will be deleted shortly after the Exec command is accepted.</Description>
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
                        <NodeName>EKUMapping</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required. Specify extended key usages. Subjected to SCEP server configuration. The list of OIDs are separated by plus “+”. Sample format: OID1+OID2+OID3.

Format is chr. 

Supported operations are Get, Add, Delete, Replace.</Description>
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
                        <NodeName>KeyUsage</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required for enrollment. Specify the key usage bits (0x80, 0x20, 0xA0, etc.) for the certificate in decimal format. The value should at least have second (0x20) or forth (0x80) or both bits set. If the value doesn’t have those bits set, configuration will fail.

Format is int. 

Supported operations are Get, Add, Delete, Replace.</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required. Specify the subject name. Format is chr. Supported operations are Get, Add, Delete, Replace.</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>3</DefaultValue>
                            <Description>Optional. Specify where to keep the private key. Note that even it is protected by TPM, it is not guarded with TPM PIN. 
SCEP enrolled cert doesn’t support TPM PIN protection. 
Supported values: 
1 – private key protected by TPM, 

2 – private key protected by phone TPM if the device supports TPM. 
All Windows Phone 8.1 devices support TPM and will treat value 2 as 1 

3 (default) – private key saved in software KSP 

4 – private key protected by NGC. If this option is specified, container name should be specifed, if not enrollment will fail


Format is int. 

Supported operations are Get, Add, Delete, Replace 
</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>5</DefaultValue>
                            <Description>Optional. When the SCEP server sends pending status, specify device retry waiting time in minutes. 

Default value is: 5
The min value is 1. 

Format is int. 

Supported operations are Get, Add, Delete noreplace</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>3</DefaultValue>
                            <Description>Optional. Special to SCEP. Specify device retry times when the SCEP server sends pending status. Format is int. Default value is 3. Max value: the value cannot be larger than 30. If it is larger than 30, the device will use 30.
The min value is 0 which means no retry. Supported operations are Get, Add, Delete, Replace.</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Optional. OID of certificate template name. Note that this name is typically ignored by the SCEP server, therefore the MDM server typically doesn’t need to provide it. Format is chr. Supported operations are Get, Add, Delete.noreplace</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required for enrollment. Specify private key length (RSA). Format is int. 

Valid value: 1024, 2048, 4096. For NGC, only 2048 is the supported keylength.

Supported operations are Get, Add, Delete, Replace.</Description>
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
                        <NodeName>HashAlgorithm</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required for enrollment. Hash algorithm family (SHA-1, SHA-2, SHA-3) specified by MDM server. If multiple hash algorithm families are specified, they must be separated via +. 

For NGC, only SHA256 is supported as the supported algorithm

Format is chr. 
Supported operations are Get, Add, Delete, Replace.</Description>
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
                        <NodeName>CAThumbprint</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Required. Specify root CA thumbprint. It is a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. When client authenticates SCEP server, it checks CA cert from SCEP server whether match with this cert. If not match, fail the authentication. 
Format is chr. 
Supported operations are Get, Add, Delete, Replace.</Description>
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
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Optional. Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Refer name type definition in MSDN. Each pair is separated by semicolon. E.g. multiple SAN are presented in the format of [nameformat1]+[actual name1];[name format 2]+[actual name2]. 

Format is chr. 

Supported operations are Get, Add, Delete, Replace.</Description>
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
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>Days</DefaultValue>
                            <Description>Optional. Specify the units for valid period. Valid values are: Days(Default), Months, Years. 
Format is chr. 
Supported operations are Get, Add, Delete, Replace.

NOTE: The device only sends the MDM server expected certificate validation period (ValidPeriodUnits + ValidPerio) the SCEP server as part of certificate enrollment request. It is the server’s decision on how to use this valid period to create the certificate.</Description>
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
                        <NodeName>ValidPeriodUnits</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>0</DefaultValue>
                            <Description>Optional. Specify desired number of units used in validity period. Subjected to SCEP server configuration. Default is 0. The units are defined in ValidPeriod node. Note the valid period specified by MDM will overwrite the valid period specified in cert template. For example, if ValidPeriod is days and ValidPeriodUnits is 30, it means the total valid duration is 30 days. 

Format is int. 

Supported operations are Get, Add, Delete, Replace.

NOTE: The device only sends the MDM server expected certificate validation period (ValidPeriodUnits + ValidPerio) the SCEP server as part of certificate enrollment request. It is the server’s decision on how to use this valid period to create the certificate.</Description>
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
                        <NodeName>ContainerName</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Optional. 
Specifies the NGC container name (if NGC KSP is chosen for above node). If this node is not specified when NGC KSP is chosen, enrollment will fail.

Format is chr

Supported operations are Get, Add, Delete and Replace</Description>
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
                        <NodeName>CustomTextToShowInPrompt</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Optional. Specifies the custom text to show on the NGC PIN prompt during certificate enrollment. The admin can choose to provide more contextual information for why the user needs to enter the PIN and what the certificate will be used for through this.

Format is chr

Supported operations are Get, Add, Delete and Replace</Description>
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
                            <Description>Required. Trigger the device to start the cert enrollment. The device will not notify MDM server after cert enrollment is done. The MDM server could later query the device to find out whether new cert is added. 

Format is null, e.g. this node doesn’t contain a value. 

Supported operation is Exec.</Description>
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
                <NodeName>AADKeyIdentifierList</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
                    <Replace />
                  </AccessType>
                  <Description>Optional. Specify the AAD Key Identifier List as a semicolon separated values. On Enroll, the values in this list are validated against the AAD Key present on the device. If no match is found, enrollment will fail.</Description>
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
                </Node>
                <Node>
                    <NodeName>CertThumbprint</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
                        <Description>Optional. Specify the current cert’s thumbprint if certificate enrollment succeeds. It is a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. Format is chr. Supported operation is Get.</Description>
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
                        <Description>Required. Specify the latest status for the certificate due to enroll request.

Format is chr. 

Supported operation is Get. 

Valid values are:
1 – finished successfully
2 – pending (the device hasn’t finished the action but has received the SCEP server pending response)
32 – unknown
16 - action failed</Description>
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
                        <Description>Optional. The integer value that indicates the HRESULT of the last enrollment error code. 
Supported operation is Get.</Description>
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
                    <NodeName>RespondentServerUrl</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
                        <Description>Required. Returns the URL of the SCEP server that responded to the enrollment request.

Format is String

Supported operation is Get</Description>
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
</MgmtTree>
```

## Related topics


[ClientCertificateInstall configuration service provider](clientcertificateinstall-csp.md)

 

 






