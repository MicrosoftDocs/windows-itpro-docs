---
title: AD DS schema extensions to support TPM backup (Windows 10)
description: This topic provides more details about this change and provides template schema extensions that you can incorporate into your organization.
MSHAttr: PreferredLib /library
ms.assetid: beb7097c-e674-4eab-b8e2-6f67c85d1f3f
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# AD DS schema extensions to support TPM backup


**Applies to**

-   Windows 10

This topic provides more details about this change and provides template schema extensions that you can incorporate into your organization.

## Why a schema extension is needed


The TPM owner authorization value is now stored in a separate object which is linked to the Computer object. This value was stored as a property in the Computer object itself for the default Windows Server 2008 R2 schemas. Windows Server 2012 domain controllers have the default schema to backup TPM owner authorization information in the separate object. If you are not upgrading your domain controller to Windows Server 2012 you need to extend the schema to support this change. If Active Directory backup of the TPM owner authorization value is enabled in a Windows Server 2008 R2 environment without extending the schema, the TPM provisioning will fail and the TPM will remain in a Not Ready state for computers running Windows 8. The following are the two schema extensions that you can use to bring your Windows Server 2008 R2 domain to parity with Windows Server 2012:

### <a href="" id="tpmschemaextension-ldf-"></a>TpmSchemaExtension.ldf

This schema extension brings parity with the Windows Server 2012 schema and is required if you want to store the TPM owner authorization value for a computer running Windows 8 in a Windows Server 2008 R2 AD DS domain. With this extension the TPM owner authorization information will be stored in a separate TPM object linked to the corresponding computer object.

``` syntax
#===============================================================================
#
# Active Directory Domain Services schema extension for 
# BitLocker Drive Encryption and Trusted Platform Module (TPM) recovery
#
# This file contains attributes and class objects that enable Windows Server
# 2008 and Windows Server 2008 R2 domain controllers to store TPM recovery
# information in a new, TPM-specific location.
#
# Change History: 
#   07/2010 - Created
#
# To extend the schema, use the LDIFDE tool on the schema master of the forest.
#
# Sample command:
#   ldifde -i -v -f TPMSchemaExtension.ldf -c "DC=X" "DC=nttest,dc=microsoft,dc=com" -k -j .
#
# For more information on LDIFDE tool, see
# http://support.microsoft.com/default.aspx?scid=kb;en-us;237677 
#
#===============================================================================

#===============================================================================
# New schema attributes
#===============================================================================

#
# ms-TPM-Srk-Pub-Thumbprint
# GUID: 19d706eb-4d76-44a2-85d6-1c342be3be37
#
dn: CN=ms-TPM-Srk-Pub-Thumbprint,CN=Schema,CN=Configuration,DC=X
changetype: add
objectClass: attributeSchema
ldapDisplayName: msTPM-SrkPubThumbprint
adminDisplayName: TPM-SrkPubThumbprint
adminDescription: This attribute contains the thumbprint of the SrkPub corresponding to a particular TPM. This helps to index the TPM devices in the directory.
attributeId: 1.2.840.113556.1.4.2107
attributeSyntax: 2.5.5.10
omSyntax: 4
isSingleValued: TRUE
searchFlags: 11
schemaIdGuid:: 6wbXGXZNokSF1hw0K+O+Nw==
showInAdvancedViewOnly: TRUE
isMemberOfPartialAttributeSet: FALSE
rangeUpper: 20

#
# ms-TPM-Owner-Information-Temp
# GUID: c894809d-b513-4ff8-8811-f4f43f5ac7bc
#
dn: CN=ms-TPM-Owner-Information-Temp,CN=Schema,CN=Configuration,DC=X
changetype: add
objectClass: attributeSchema
ldapDisplayName: msTPM-OwnerInformationTemp
adminDisplayName: TPM-OwnerInformationTemp
adminDescription: This attribute contains temporary owner information for a particular TPM.
attributeId: 1.2.840.113556.1.4.2108
attributeSyntax: 2.5.5.12
omSyntax: 64
isSingleValued: TRUE
searchFlags: 640
rangeUpper: 128
schemaIdGuid:: nYCUyBO1+E+IEfT0P1rHvA==
showInAdvancedViewOnly: TRUE
isMemberOfPartialAttributeSet: FALSE

#
# ms-TPM-Tpm-Information-For-Computer
# GUID: ea1b7b93-5e48-46d5-bc6c-4df4fda78a35
#
dn: CN=ms-TPM-Tpm-Information-For-Computer,CN=Schema,CN=Configuration,DC=X
changetype: add
objectClass: attributeSchema
ldapDisplayName: msTPM-TpmInformationForComputer
adminDisplayName: TPM-TpmInformationForComputer
adminDescription: This attribute links a Computer object to a TPM object.
attributeId: 1.2.840.113556.1.4.2109
attributeSyntax: 2.5.5.1
omSyntax: 127
isSingleValued: TRUE
searchFlags: 16
omObjectClass:: KwwCh3McAIVK
schemaIdGuid:: k3sb6khe1Ua8bE30/aeKNQ==
showInAdvancedViewOnly: TRUE
isMemberOfPartialAttributeSet: FALSE
linkId: 2182

#
# ms-TPM-TpmInformation-For-Computer-BL
# GUID: 14fa84c9-8ecd-4348-bc91-6d3ced472ab7
#
dn: CN=ms-TPM-Tpm-Information-For-Computer-BL,CN=Schema,CN=Configuration,DC=X
changetype: add
objectClass: attributeSchema
ldapDisplayName: msTPM-TpmInformationForComputerBL
adminDisplayName: TPM-TpmInformationForComputerBL
adminDescription: This attribute links a TPM object to the Computer objects associated with it.
attributeId: 1.2.840.113556.1.4.2110
attributeSyntax: 2.5.5.1
omSyntax: 127
isSingleValued: FALSE
searchFlags: 0
omObjectClass:: KwwCh3McAIVK
schemaIdGuid:: yYT6FM2OSEO8kW087Ucqtw==
showInAdvancedViewOnly: TRUE
systemOnly: TRUE
linkId: 2183

#
# Commit the new attributes
#

dn:
changetype: modify
add: schemaUpdateNow
schemaUpdateNow: 1
-

#
# Modify the Computer schema to support the TPM link
#

dn: CN=computer,CN=Schema,CN=Configuration,DC=X
changetype: modify
add: mayContain
mayContain: msTPM-TpmInformationForComputer
-

#
# Commit the modification to the computer class
#

dn:
changetype: modify
add: schemaUpdateNow
schemaUpdateNow: 1
-

#===============================================================================
# New schema classes
#===============================================================================

#
# ms-TPM-Information-Objects-Container
# GUID: e027a8bd-6456-45de-90a3-38593877ee74
#
dn: CN=ms-TPM-Information-Objects-Container,CN=Schema,CN=Configuration,DC=X
changetype: add
objectClass: classSchema
ldapDisplayName: msTPM-InformationObjectsContainer
adminDisplayName: TPM-InformationObjectsContainer
adminDescription: Container for TPM objects.
governsID: 1.2.840.113556.1.5.276
objectClassCategory: 1
subClassOf: top
systemMustContain: cn
systemPossSuperiors: domain
systemPossSuperiors: domainDNS
schemaIdGUID:: vagn4FZk3kWQozhZOHfudA==
defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;LOLCCCRP;;;DC)
defaultHidingValue: TRUE
defaultObjectCategory: CN=ms-TPM-Information-Objects-Container,CN=Schema,CN=Configuration,DC=X

#
# ms-TPM-Information-Object
# GUID: 85045b6a-47a6-4243-a7cc-6890701f662c
#
# NOTE: If the 'defaultSecurityDescriptor' value below is changed,
#   also change the other '.ldf' files in this directory, as appropriate.
#
dn: CN=ms-TPM-Information-Object,CN=Schema,CN=Configuration,DC=X
changetype: add
objectClass: classSchema
ldapDisplayName: msTPM-InformationObject
adminDisplayName: TPM-InformationObject
adminDescription: This class contains recovery information for a Trusted Platform Module (TPM) device.
governsID: 1.2.840.113556.1.5.275
objectClassCategory: 1
subClassOf: top
systemMustContain: msTPM-OwnerInformation
systemMayContain: msTPM-SrkPubThumbprint
systemMayContain: msTPM-OwnerInformationTemp
systemPossSuperiors: 1.2.840.113556.1.5.276
schemaIdGUID:: alsEhaZHQ0KnzGiQcB9mLA==
defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLO;;;DC)(A;;WP;;;CO)
defaultHidingValue: TRUE
defaultObjectCategory: CN=ms-TPM-Information-Object,CN=Schema,CN=Configuration,DC=X
#
# NOTE: If the 'defaultSecurityDescriptor' value above is changed,
#   also change the other '.ldf' files in this directory, as appropriate.
#

#
# Commit the new TPM object class
#

dn:
changetype: modify
add: schemaUpdateNow
schemaUpdateNow: 1
-

#===============================================================================
# New objects
#===============================================================================

#
# Add the TPM container to its location in the directory
#
dn: CN=TPM Devices,DC=X
changetype: add
objectClass: msTPM-InformationObjectsContainer
```

You should be aware that only the Computer object that has created the TPM object can update it. This means that any subsequent updates to the TPM objects will not succeed in dual boot scenarios or scenarios where the computer is reimaged resulting in a new AD computer object being created. If you are planning to support such scenarios, you will need to update the schema further as shown in the schema extension example, TpmSchemaExtensionACLChanges.ldf.

### TpmSchemaExtensionACLChanges.ldf

This schema update modifies the ACLs on the TPM object to be less restrictive so that any subsequent operating system which takes ownership of the computer object can update the owner authorization value in AD DS.

**Important**  
After implementing this schema update, any computer in the domain can update the OwnerAuth of the TPM object (although it cannot read the OwnerAuth). When using this extension, perform a regular backup of the TPM objects and enable auditing to track the changes for these objects.

 

``` syntax
#===============================================================================
#
# Active Directory Domain Services schema extension for 
# BitLocker Drive Encryption and Trusted Platform Module (TPM) recovery
#
# This file modifies a class object that enables Windows Server 2008
# and Windows Server 2008 R2 domain controllers to store TPM recovery
# information in a new, TPM-specific location.
#
# This file converts the standard schema extension in which only the creator
# of an 'ms-TPM-Information-Object' can write to the object to the Open
# schema extension in which any Domain Computer can write to the object.
#
# This conversion does not apply to any 'ms-TPM-Information-Object' that
# was created before the conversion.

#
# Change History: 
#   12/2011 - Created
#
# To change the schema, use the LDIFDE tool on the schema master of the forest.
#
# Sample command:
#   ldifde -i -v -f TpmSchemaExtensionACLChanges.ldf
#      -c "DC=X" "DC=nttest,dc=microsoft,dc=com" -k -j .
#
# For more information on LDIFDE tool, see
# http://support.microsoft.com/default.aspx?scid=kb;en-us;237677 
#
#===============================================================================

#
# Modify the TPM-Information-Object class schema 'defaultSecurityDescriptor' to
# allow any Domain Computer to write its properties (including the TPM OwnerAuth
# value) from allowing only the creating Computer object to write its properties
#
# NOTE: Keep any changes to the 'defaultSecurityDescriptor' value in synchronization
#   with the value in the TPM-Information-Object class description in the
#   'TpmSchemaExtension.ldf' file
#

dn: CN=ms-TPM-Information-Object,CN=Schema,CN=Configuration,DC=X
changetype: modify
replace: defaultSecurityDescriptor
defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPWPLO;;;DC)
-

#
# Commit the modification to the TPM-Information-Object schema
#

dn:
changetype: modify
add: schemaUpdateNow
schemaUpdateNow: 1
-
```

 

 





