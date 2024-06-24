---
title: ClientCertificateInstall DDF file
description: View the XML file containing the device description framework (DDF) for the ClientCertificateInstall configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# ClientCertificateInstall DDF file

The following XML file contains the device description framework (DDF) for the ClientCertificateInstall configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>ClientCertificateInstall</NodeName>
    <Path>./User/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>PFXCertInstall</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Required for PFX certificate installation. The parent node grouping the PFX cert related settings.</Description>
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
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Required for PFX certificate installation. A unique ID to differentiate different certificate install requests. 
Format is node. 
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
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AtomicRequired />
        </DFProperties>
        <Node>
          <NodeName>KeyLocation</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for PFX certificate installation. Indicates the KeyStorage provider to target the private key installation to. </Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Install to TPM if present, fail if not present.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Install to TPM if present. If not present, fallback to software.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>3</MSFT:Value>
                <MSFT:ValueDescription>Install to software.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>4</MSFT:Value>
                <MSFT:ValueDescription>Install to Windows Hello for Business (formerly known as Microsoft Passport for Work) whose name is specified</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
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
Specifies the NGC container name (if NGC KSP is chosen for above node). If this node is not specified when NGC KSP is chosen, enrollment will fail.</Description>
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
          <NodeName>PFXCertBlob</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required. 
CRYPT_DATA_BLOB structure that contains a PFX packet with the exported and encrypted certificates and keys. Add on this node will trigger the addition to the PFX certificate. This requires that all the other nodes under UniqueID that are parameters for PFX installation (Container Name, KeyLocation, CertPassword, fKeyExportable) are present before this is called. This will also set the Status node to the current Status of the operation.
If Add is called on this node and a blob already exists, it will fail. If Replace is called on this node, the certificates will be overwritten.
If Add is called on this node for a new PFX, the certificate will be added. If Replace is called on this node when it does not exist, this will fail.
In other words, using Replace or Add will result in the effect of either overwriting the old certificate or adding a new certificate
CRYPT_DATA_BLOB on MSDN can be found at http://msdn.microsoft.com/en-us/library/windows/desktop/aa381414(v=vs.85).aspx
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
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
            <Description>Password that protects the PFX blob. This is required if the PFX is password protected.</Description>
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
2 - Password is encrypted by a Custom Certificate by the MDM server. When this value is used here, also specify the custom store name in the PFXCertPasswordEncryptionStore node.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Password is not encrypted.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Password is encrypted with the MDM certificate.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Password is encrypted with custom certificate.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
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
            <Description>Optional. Used to specify if the private key installed is exportable (can be exported later).</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>False</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>True</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="KeyLocationDependency">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/KeyLocation</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="Range">
                    <MSFT:Value>[3]</MSFT:Value>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Thumbprint</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the thumbprint of the PFX certificate installed.</Description>
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
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the error code of the PFX installation from the GetLastError command called after the PfxImportCertStore.</Description>
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
          <NodeName>PFXCertPasswordEncryptionStore</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional. 
When a value of "2" is contained iin PFXCertPasswordEncryptionType, specify the store name where the certificate for decrypting the PFXCertPassword is stored. </Description>
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
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="EncryptionTypeDependency">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/PFXCertPasswordEncryptionType</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="Range">
                    <MSFT:Value>[2]</MSFT:Value>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
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
        <Description>Node for SCEP. An alert is sent after the SCEP certificate is installed.</Description>
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
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Required for SCEP certificate installation. A unique ID to differentiate different certificate install requests. 
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
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AtomicRequired />
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
            <Description>Required for SCEP certificate enrollment. Parent node to group SCEP cert install related request. NOTE: though the children nodes under Install support Replace commands, once the Exec command is sent to the device, the device will take the values which are set when the Exec command is accepted. The server should not expect the node value change after Exec command is accepted will impact the current undergoing enrollment. The server should check the Status node value and make sure the device is not at unknown stage before changing children node values.</Description>
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
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Required for SCEP certificate enrollment. Specify the cert enrollment server. The server could specify multiple server URLs separated by semicolon. </Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required for SCEP certificate enrollment. B64 encoded SCEP enrollment challenge. Challenge will be deleted shortly after the Exec command is accepted.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required. Specify extended key usages. Subjected to SCEP server configuration. The list of OIDs are separated by plus “+”. Sample format: OID1+OID2+OID3.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required for enrollment. Specify the key usage bits (0x80, 0x20, 0xA0, etc.) for the certificate in decimal format. The value should at least have second (0x20) or forth (0x80) or both bits set. If the value doesn’t have those bits set, configuration will fail.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AttestPrivateKey</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
              </AccessType>
              <Description>Defines the attest SCEP private key behavior 0 - normal, 1 - best effort, 2 - on error, fail the installation</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
                <MSFT:CspVersion>9.9</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription> Do not attest private key</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription> Attest key, but in case attestation failed, best effort approach - CSR is sent to the server </MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription> Attest key, but in case attestation failed, fail fast (i.e release the key and not issue a CSR to the server) </MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Required. Specify the subject name. The SubjectName value is quoted if it contains leading or trailing white space or one of the following characters: (“,” “=” “+” “;” ).</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
SCEP enrolled cert doesn’t support TPM PIN protection. </Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Private key protected by TPM.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Private key protected by phone TPM if the device supports TPM. All Windows Phone 8.1 devices support TPM and will treat value 2 as 1.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>3</MSFT:Value>
                  <MSFT:ValueDescription>(Default) Private key saved in software KSP.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>Private key protected by Windows Hello for Business (formerly known as Microsoft Passport for Work). If this option is specified, the ContainerName must be specified, otherwise enrollment will fail.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
The min value is 1. </Description>
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
                <MSFT:Value>[0-4294967295]</MSFT:Value>
              </MSFT:AllowedValues>
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
              <Description>Optional. Special to SCEP. Specify device retry times when the SCEP sever sends pending status. Format is int. Default value is 3. Max value: the value cannot be larger than 30. If it is larger than 30, the device will use 30.
The min value is 0 which means no retry. </Description>
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
                <MSFT:Value>[0-30]</MSFT:Value>
              </MSFT:AllowedValues>
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
              <Description>Optional. OID of certificate template name. Note that this name is typically ignored by the SCEP server, therefore the MDM server typically doesn’t need to provide it.</Description>
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
            <NodeName>KeyLength</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Required for enrollment. Specify private key length (RSA). 
Valid value: 1024, 2048, 4096. For NGC, only 2048 is the supported keylength.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>1024</MSFT:Value>
                  <MSFT:ValueDescription>1024</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2048</MSFT:Value>
                  <MSFT:ValueDescription>2048</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4096</MSFT:Value>
                  <MSFT:ValueDescription>4096</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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

For NGC, only SHA256 is supported as the supported algorithm</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required. Specify root CA thumbprint. It is a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. When client authenticates SCEP server, it checks CA cert from SCEP server whether match with this cert. If not match, fail the authentication. </Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Optional. Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Refer name type definition in MSDN. Each pair is separated by semicolon. E.g. multiple SAN are presented in the format of [nameformat1]+[actual name1];[name format 2]+[actual name2]. </Description>
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
MDM server expected certificate validation period (ValidPeriodUnits + ValidPerio) the SCEP server as part of certificate enrollment request. It is the server’s decision on how to use this valid period to create the certificate.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>Days</MSFT:Value>
                  <MSFT:ValueDescription>Days</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Months</MSFT:Value>
                  <MSFT:ValueDescription>Months</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Years</MSFT:Value>
                  <MSFT:ValueDescription>Years</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
Specifies the NGC container name (if NGC KSP is chosen for above node). If this node is not specified when NGC KSP is chosen, enrollment will fail.</Description>
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
            <NodeName>CustomTextToShowInPrompt</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. Specifies the custom text to show on the NGC PIN prompt during certificate enrollment. The admin can choose to provide more contextual information for why the user needs to enter the PIN and what the certificate will be used for through this.</Description>
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
            <NodeName>Enroll</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Required. Trigger the device to start the cert enrollment. The device will not notify MDM server after cert enrollment is done. The MDM server could later query the device to find out whether new cert is added. </Description>
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
          <Node>
            <NodeName>AADKeyIdentifierList</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
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
        <Node>
          <NodeName>CertThumbprint</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Optional. Specify the current cert’s thumbprint if certificate enrollment succeeds. It is a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value.</Description>
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
            <Description>Required. Specify the latest status for the certificate due to enroll request.
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
            <Description>Optional. The integer value that indicates the HRESULT of the last enrollment error code. </Description>
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
          <NodeName>RespondentServerUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Required. Returns the URL of the SCEP server that responded to the enrollment request.</Description>
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
    <NodeName>ClientCertificateInstall</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>PFXCertInstall</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Required for PFX certificate installation. The parent node grouping the PFX cert related settings.</Description>
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
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Required for PFX certificate installation. A unique ID to differentiate different certificate install requests. 
Format is node. 
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
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AtomicRequired />
        </DFProperties>
        <Node>
          <NodeName>KeyLocation</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for PFX certificate installation. Indicates the KeyStorage provider to target the private key installation to. </Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Install to TPM if present, fail if not present.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Install to TPM if present. If not present, fallback to software.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>3</MSFT:Value>
                <MSFT:ValueDescription>Install to software.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>4</MSFT:Value>
                <MSFT:ValueDescription>Install to Windows Hello for Business (formerly known as Microsoft Passport for Work) whose name is specified</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
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
Specifies the NGC container name (if NGC KSP is chosen for above node). If this node is not specified when NGC KSP is chosen, enrollment will fail.</Description>
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
          <NodeName>PFXCertBlob</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required. 
CRYPT_DATA_BLOB structure that contains a PFX packet with the exported and encrypted certificates and keys. Add on this node will trigger the addition to the PFX certificate. This requires that all the other nodes under UniqueID that are parameters for PFX installation (Container Name, KeyLocation, CertPassword, fKeyExportable) are present before this is called. This will also set the Status node to the current Status of the operation.
If Add is called on this node and a blob already exists, it will fail. If Replace is called on this node, the certificates will be overwritten.
If Add is called on this node for a new PFX, the certificate will be added. If Replace is called on this node when it does not exist, this will fail.
In other words, using Replace or Add will result in the effect of either overwriting the old certificate or adding a new certificate
CRYPT_DATA_BLOB on MSDN can be found at http://msdn.microsoft.com/en-us/library/windows/desktop/aa381414(v=vs.85).aspx
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
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
            <Description>Password that protects the PFX blob. This is required if the PFX is password protected.</Description>
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
2 - Password is encrypted by a Custom Certificate by the MDM server. When this value is used here, also specify the custom store name in the PFXCertPasswordEncryptionStore node.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Password is not encrypted.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Password is encrypted with the MDM certificate.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Password is encrypted with custom certificate.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
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
            <Description>Optional. Used to specify if the private key installed is exportable (can be exported later).</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>False</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>True</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="KeyLocationDependency">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/KeyLocation</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="Range">
                    <MSFT:Value>[3]</MSFT:Value>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Thumbprint</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the thumbprint of the PFX certificate installed.</Description>
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
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the error code of the PFX installation from the GetLastError command called after the PfxImportCertStore.</Description>
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
          <NodeName>PFXCertPasswordEncryptionStore</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional. 
When a value of "2" is contained iin PFXCertPasswordEncryptionType, specify the store name where the certificate for decrypting the PFXCertPassword is stored. </Description>
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
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="EncryptionTypeDependency">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/PFXCertPasswordEncryptionType</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="Range">
                    <MSFT:Value>[2]</MSFT:Value>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
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
        <Description>Node for SCEP. An alert is sent after the SCEP certificate is installed.</Description>
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
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Required for SCEP certificate installation. A unique ID to differentiate different certificate install requests. 
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
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AtomicRequired />
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
            <Description>Required for SCEP certificate enrollment. Parent node to group SCEP cert install related request. NOTE: though the children nodes under Install support Replace commands, once the Exec command is sent to the device, the device will take the values which are set when the Exec command is accepted. The server should not expect the node value change after Exec command is accepted will impact the current undergoing enrollment. The server should check the Status node value and make sure the device is not at unknown stage before changing children node values.</Description>
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
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Required for SCEP certificate enrollment. Specify the cert enrollment server. The server could specify multiple server URLs separated by semicolon. </Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required for SCEP certificate enrollment. B64 encoded SCEP enrollment challenge. Challenge will be deleted shortly after the Exec command is accepted.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required. Specify extended key usages. Subjected to SCEP server configuration. The list of OIDs are separated by plus “+”. Sample format: OID1+OID2+OID3.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required for enrollment. Specify the key usage bits (0x80, 0x20, 0xA0, etc.) for the certificate in decimal format. The value should at least have second (0x20) or forth (0x80) or both bits set. If the value doesn’t have those bits set, configuration will fail.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AttestPrivateKey</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
              </AccessType>
              <Description>Defines the attest SCEP private key behavior 0 - normal, 1 - best effort, 2 - on error, fail the installation</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
                <MSFT:CspVersion>9.9</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required. Specify the subject name. The SubjectName value is quoted if it contains leading or trailing white space or one of the following characters: (“,” “=” “+” “;” ).</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
SCEP enrolled cert doesn’t support TPM PIN protection. </Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Private key protected by TPM.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Private key protected by phone TPM if the device supports TPM. All Windows Phone 8.1 devices support TPM and will treat value 2 as 1.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>3</MSFT:Value>
                  <MSFT:ValueDescription>(Default) Private key saved in software KSP.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>Private key protected by Windows Hello for Business (formerly known as Microsoft Passport for Work). If this option is specified, the ContainerName must be specified, otherwise enrollment will fail.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
The min value is 1. </Description>
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
                <MSFT:Value>[0-4294967295]</MSFT:Value>
              </MSFT:AllowedValues>
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
              <Description>Optional. Special to SCEP. Specify device retry times when the SCEP sever sends pending status. Format is int. Default value is 3. Max value: the value cannot be larger than 30. If it is larger than 30, the device will use 30.
The min value is 0 which means no retry. </Description>
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
                <MSFT:Value>[0-30]</MSFT:Value>
              </MSFT:AllowedValues>
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
              <Description>Optional. OID of certificate template name. Note that this name is typically ignored by the SCEP server, therefore the MDM server typically doesn’t need to provide it.</Description>
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
            <NodeName>KeyLength</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Required for enrollment. Specify private key length (RSA). 
Valid value: 1024, 2048, 4096. For NGC, only 2048 is the supported keylength.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>1024</MSFT:Value>
                  <MSFT:ValueDescription>1024</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2048</MSFT:Value>
                  <MSFT:ValueDescription>2048</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4096</MSFT:Value>
                  <MSFT:ValueDescription>4096</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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

For NGC, only SHA256 is supported as the supported algorithm</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Required. Specify root CA thumbprint. It is a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. When client authenticates SCEP server, it checks CA cert from SCEP server whether match with this cert. If not match, fail the authentication. </Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <Description>Optional. Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Refer name type definition in MSDN. Each pair is separated by semicolon. E.g. multiple SAN are presented in the format of [nameformat1]+[actual name1];[name format 2]+[actual name2]. </Description>
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
MDM server expected certificate validation period (ValidPeriodUnits + ValidPerio) the SCEP server as part of certificate enrollment request. It is the server’s decision on how to use this valid period to create the certificate.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>Days</MSFT:Value>
                  <MSFT:ValueDescription>Days</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Months</MSFT:Value>
                  <MSFT:ValueDescription>Months</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Years</MSFT:Value>
                  <MSFT:ValueDescription>Years</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
Specifies the NGC container name (if NGC KSP is chosen for above node). If this node is not specified when NGC KSP is chosen, enrollment will fail.</Description>
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
            <NodeName>CustomTextToShowInPrompt</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. Specifies the custom text to show on the NGC PIN prompt during certificate enrollment. The admin can choose to provide more contextual information for why the user needs to enter the PIN and what the certificate will be used for through this.</Description>
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
            <NodeName>Enroll</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Required. Trigger the device to start the cert enrollment. The device will not notify MDM server after cert enrollment is done. The MDM server could later query the device to find out whether new cert is added. </Description>
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
          <Node>
            <NodeName>AADKeyIdentifierList</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
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
        <Node>
          <NodeName>CertThumbprint</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Optional. Specify the current cert’s thumbprint if certificate enrollment succeeds. It is a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value.</Description>
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
            <Description>Required. Specify the latest status for the certificate due to enroll request.
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
            <Description>Optional. The integer value that indicates the HRESULT of the last enrollment error code. </Description>
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
          <NodeName>RespondentServerUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Required. Returns the URL of the SCEP server that responded to the enrollment request.</Description>
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
</MgmtTree>
```

## Related articles

[ClientCertificateInstall configuration service provider reference](clientcertificateinstall-csp.md)
