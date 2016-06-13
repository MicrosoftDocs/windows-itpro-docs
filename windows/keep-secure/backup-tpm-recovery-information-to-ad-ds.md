---
title: Backup the TPM recovery Information to AD DS (Windows 10)
description: This topic for the IT professional describes how to back up a computer’s Trusted Platform Module (TPM) information to Active Directory Domain Services (AD DS) so that you can use AD DS to administer the TPM from a remote computer.
ms.assetid: 62bcec80-96a1-464e-8b3f-d177a7565ac5
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Backup the TPM recovery Information to AD DS

**Applies to**
-   Windows 10

This topic for the IT professional describes how to back up a computer’s Trusted Platform Module (TPM) information to Active Directory Domain Services (AD DS) so that you can use AD DS to administer the TPM from a remote computer.

## About administering TPM remotely

Backing up the TPM owner information for a computer allows administrators in a domain to remotely configure the TPM security hardware on the local computer. For example, administrators might want to reset the TPM to the manufacturer’s defaults when they decommission or repurpose computers, without having to be present at the computer.

You can use AD DS to store TPM owner information for use in recovery situations where the TPM owner has forgotten the password or where you must take control of the TPM. There is only one TPM owner password per computer; therefore, the hash of the TPM owner password can be stored as an attribute of the computer object in AD DS. The attribute has the common name (CN) of **ms-TPM-OwnerInformation**.

> **Note:**  The TPM owner authorization value is stored in AD DS, and it is present in a TPM owner password file as a SHA-1 hash of the TPM owner password, which is base 64–encoded. The actual owner password is not stored.
 
Domain controllers running Windows Server 2012 R2 or Windows Server 2012 include the required AD DS schema objects by default. However, if your domain controller is running Windows Server 2008 R2, you need to update the schema as described in [AD DS schema extensions to support TPM backup](ad-ds-schema-extensions-to-support-tpm-backup.md).

This topic contains procedures, some of which are dependent on Visual Basic scripts, to recover TPM information and decommission TPM on remote computers. Sample scripts are available, which you can customize to meet the requirements of your environment.

In this topic:

1.  [Check status of prerequisites](#bkmk-prereqs)
2.  [Set permissions to back up password information](#bkmk-setperms)
3.  [Configure Group Policy to back up TPM recovery information in AD DS](#bkmk-configuregp)
4.  [Use AD DS to recover TPM information](#bkmk-useit)
5.  [Sample scripts](#bkmk-adds-tpm-scripts)

## <a href="" id="bkmk-prereqs"></a>Check status of prerequisites

Before you begin your backup, ensure that the following prerequisites are met:

1.  All domain controllers that are accessible by client computers that will be using TPM services are running Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 with the updated schema.
    
    > **Tip:**  For more info about the schema extensions that are required for a TPM backup in Active Directory domains that are running Windows Server 2008 R2, see [AD DS schema extensions to support TPM backup](ad-ds-schema-extensions-to-support-tpm-backup.md).
     
2.  You have domain administrator rights in the target forest, or you are using an account that has been granted appropriate permissions to extend the schema for the target forest. Members of the Enterprise Admins or Schema Admins groups are examples of accounts that have the appropriate permissions.

## <a href="" id="bkmk-setperms"></a>Set permissions to back up password information

This procedure uses the sample script [Add-TPMSelfWriteACE.vbs](#bkmk-add-tpmselfwriteace) to add an access control entry (ACE) so that backing up TPM recovery information is possible. A client computer cannot back up TPM owner information until this ACE is added.

This script is run on the domain controller that you will use to administer the TPM recovery information, and it operates under the following assumptions:

-   You have domain administrator credentials to set permissions for the top-level domain object.
-   Your target domain is the same as the domain for the user account that is running the script. For example, running the script as TESTDOMAIN\\admin will extend permissions for TESTDOMAIN.

    > **Note:**  You might need to modify the sample script if you want to set permissions for multiple domains, but you do not have domain administrator accounts for each of those domains. Find the variable **strPathToDomain** in the script, and modify it for your target domain, for example:
    `LDAP://DC=testdomain,DC=nttest,DC=microsoft,DC=com`
     
-   Your domain is configured so that permissions are inherited from the top-level domain object to targeted computer objects.

    Permissions will not take effect if any container in the hierarchy does not allow inherited permissions. By default, permissions inheritance is set in AD DS. If you are not sure whether your configuration differs from this default, you can continue with the setup steps to set the permissions. 
    You can then verify your configuration as described later in this topic. Or you can click the **Effective Permissions** button while viewing the properties of a computer object, then check that **Self** is approved to write the **msTPM-OwnerInformation** attribute.

**To add an ACE to allow TPM recovery information backup**

1.  Open the sample script **Add-TPMSelfWriteACE.vbs**.

    The script contains a permission extension, and you must modify the value of **strPathToDomain** by using your domain name.

2.  Save your modifications to the script.
3.  Type the following at a command prompt, and then press ENTER:

    **cscript Add-TPMSelfWriteACE.vbs**

This script adds a single ACE to the top-level domain object. The ACE is an inheritable permission that allows the computer (SELF) to write to the **ms-TPM-OwnerInformation** attribute for computer objects in the domain.
Complete the following procedure to check that the correct permissions are set and to remove TPM and BitLocker ACEs from the top-level domain, if necessary.

**Manage ACEs configured on TPM schema objects**

1.  Open the sample script **List-ACEs.vbs**.
2.  Modify **List-ACEs.vbs**.

    You must modify:
    -   Value of **strPathToDomain**: Use your domain name.
    -   Filter options: The script sets a filter to address BitLocker and TPM schema objects, so you must modify **If IsFilterActive ()** if you want to list or remove other schema objects.

3.  Save your modifications to the script.
4.  Type the following at a command prompt, and then press ENTER:

    **cscript List-ACEs.vbs**

    With this script you can optionally remove ACEs from BitLocker and TPM schema objects on the top-level domain.

## <a href="" id="bkmk-configuregp"></a>Configure Group Policy to back up TPM recovery information in AD DS

Use these procedures to configure the [TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md#bkmk-tpmgp-addsbu) policy setting on a local computer. In a production environment, an efficient way to do this is to create or edit a Group Policy Object (GPO) that can target client computers in the domain.

**To enable local policy setting to back up TPM recovery information to AD DS**

1.  Sign in to a domain-joined computer by using a domain account that is a member of the local Administrators group.
2.  Open the Local Group Policy Editor (gpedit.msc), and in the console tree, navigate to **Computer Configuration\\Administrative Templates\\System**.
3.  Click **Trusted Platform Module Services**.
4.  Double-click **Turn on TPM backup to Active Directory Domain Services**.
5.  Click **Enabled**, and then click **OK**.
> **Important:**  When this setting is enabled, the TPM owner password cannot be set or changed unless the computer is connected to the domain and AD DS backup of the TPM recovery information succeeds.
 
## <a href="" id="bkmk-useit"></a>Use AD DS to recover TPM information

When you need to recover the TPM owner information from AD DS and use it to manage the TPM, you need to read the **ms-TPM-OwnerInformation** object from AD DS, and then manually create a TPM owner password backup file that can be supplied when TPM owner credentials are required.

**To obtain TPM owner backup information from AD DS and create a password file**

1.  Sign in to a domain controller by using domain administrator credentials.
2.  Copy the sample script file, [Get-TPMOwnerInfo.vbs](#ms-tpm-ownerinformation), to a location on your computer.
3.  Open a Command Prompt window, and change the default location to the location of the sample script files you saved in the previous step.
4.  At the command prompt, type **cscript Get-TPMOwnerInfo.vbs**.

    The expected output is a string that is the hash of the password that you created earlier.
    > **Note:**  If you receive the error message, "Active Directory: The directory property cannot be found in the cache," verify that you are using a domain administrator account, which is required to read the **ms-TPM-OwnerInformation** attribute.
    
    The only exception to this requirement is that if users are the Creator Owner of computer objects that they join to the domain, they can possibly read the TPM owner information for their computer objects.
     
5.  Open Notepad or another text editor, and copy the following code sample into the file, and replace *TpmOwnerPasswordHash* with the string that you recorded in the previous step.
    
    ``` syntax
    <?xml version="1.0" encoding="UTF-8"?>
    <!--
    This page is a backup of Trusted Platform Module (TPM) owner
    authorization information. Upon request, use the authorization information to
    prove ownership of the computer's TPM.
    IMPORTANT: Please keep this file in a secure location away from your computer's
    local hard drive.
    -->
    <tpmOwnerData version="1.0" softwareAuthor="Microsoft Windows [Version 6.1.7600]" creationDate="2009-11-11T14:39:29-08:00" creationUser="DOMAIN\username" machineName="mymachine">
                    <tpmInfo manufacturerId="1096043852"/>
                    <ownerAuth>TpmOwnerPasswordHash</ownerAuth>
    </tpmOwnerData>
    ```
6.  Save this file with a .tpm extension on a removable storage device, such as a USB flash drive. When you access the TPM, and you are required to provide the TPM owner password, choose the option for reading the password from a file and provide the path to this file.

## <a href="" id="bkmk-adds-tpm-scripts"></a>Sample scripts

You can use all or portions of the following sample scripts, which are used in the preceding procedures, to configure AD DS for backing up TPM recovery information. Customization is required depending on how your environment is configured.

-   [Add-TPMSelfWriteACE.vbs: Use to add the access control entry (ACE) for the TPM to AD DS](#bkmk-add-tpmselfwriteace)
-   [List-ACEs.vbs: Use to list or remove the ACEs that are configured on BitLocker and TPM schema objects](#bkmk-list-aces)
-   [Get-TPMOwnerInfo.vbs: Use to retrieve the TPM recovery information from AD DS for a particular computer](#bkmk-get-tpmownerinfo)

### <a href="" id="bkmk-add-tpmselfwriteace"></a>Add-TPMSelfWriteACE.vbs

This script adds the access control entry (ACE) for the TPM to AD DS so that the computer can back up TPM recovery information in AD DS.

``` syntax
'===============================================================================
'
' This script demonstrates the addition of an Access Control Entry (ACE)
' to allow computers to write Trusted Platform Module (TPM) 
' recovery information to Active Directory.
'
' This script creates a SELF ACE on the top-level domain object, and
' assumes that inheritance of ACL's from the top-level domain object to 
' down-level computer objects are enabled.
'
' 
'
' Last Updated: 12/05/2012
' Last Reviewed: 12/05/2012
' Microsoft Corporation
'
' Disclaimer
' 
' The sample scripts are not supported under any Microsoft standard support program
' or service. The sample scripts are provided AS IS without warranty of any kind. 
' Microsoft further disclaims all implied warranties including, without limitation, 
' any implied warranties of merchantability or of fitness for a particular purpose. 
' The entire risk arising out of the use or performance of the sample scripts and 
' documentation remains with you. In no event shall Microsoft, its authors, or 
' anyone else involved in the creation, production, or delivery of the scripts be 
' liable for any damages whatsoever (including, without limitation, damages for loss 
' of business profits, business interruption, loss of business information, or 
' other pecuniary loss) arising out of the use of or inability to use the sample 
' scripts or documentation, even if Microsoft has been advised of the possibility 
' of such damages.
'
' Version 1.0.2 - Tested and re-released for Windows 8 and Windows Server 2012 
' 
'===============================================================================
' --------------------------------------------------------------------------------
' Access Control Entry (ACE) constants 
' --------------------------------------------------------------------------------
'- From the ADS_ACETYPE_ENUM enumeration
Const ADS_ACETYPE_ACCESS_ALLOWED_OBJECT      = &H5   'Allows an object to do something
'- From the ADS_ACEFLAG_ENUM enumeration
Const ADS_ACEFLAG_INHERIT_ACE                = &H2   'ACE can be inherited to child objects
Const ADS_ACEFLAG_INHERIT_ONLY_ACE           = &H8   'ACE does NOT apply to target (parent) object
'- From the ADS_RIGHTS_ENUM enumeration
Const ADS_RIGHT_DS_WRITE_PROP                = &H20  'The right to write object properties
Const ADS_RIGHT_DS_CREATE_CHILD              = &H1   'The right to create child objects
'- From the ADS_FLAGTYPE_ENUM enumeration
Const ADS_FLAG_OBJECT_TYPE_PRESENT           = &H1   'Target object type is present in the ACE 
Const ADS_FLAG_INHERITED_OBJECT_TYPE_PRESENT = &H2   'Target inherited object type is present in the ACE 
' --------------------------------------------------------------------------------
' TPM and FVE schema object GUID's 
' --------------------------------------------------------------------------------
'- ms-TPM-OwnerInformation attribute
SCHEMA_GUID_MS_TPM_OWNERINFORMATION = "{AA4E1A6D-550D-4E05-8C35-4AFCB917A9FE}"
'- ms-FVE-RecoveryInformation object
SCHEMA_GUID_MS_FVE_RECOVERYINFORMATION = "{EA715D30-8F53-40D0-BD1E-6109186D782C}"
'- Computer object
SCHEMA_GUID_COMPUTER = "{BF967A86-0DE6-11D0-A285-00AA003049E2}"
'Reference: "Platform SDK: Active Directory Schema"
' --------------------------------------------------------------------------------
' Set up the ACE to allow write of TPM owner information
' --------------------------------------------------------------------------------
Set objAce1 = createObject("AccessControlEntry")
objAce1.AceFlags = ADS_ACEFLAG_INHERIT_ACE + ADS_ACEFLAG_INHERIT_ONLY_ACE
objAce1.AceType = ADS_ACETYPE_ACCESS_ALLOWED_OBJECT
objAce1.Flags = ADS_FLAG_OBJECT_TYPE_PRESENT + ADS_FLAG_INHERITED_OBJECT_TYPE_PRESENT
objAce1.Trustee = "SELF"
objAce1.AccessMask = ADS_RIGHT_DS_WRITE_PROP 
objAce1.ObjectType = SCHEMA_GUID_MS_TPM_OWNERINFORMATION
objAce1.InheritedObjectType = SCHEMA_GUID_COMPUTER
' --------------------------------------------------------------------------------
' NOTE: BY default, the "SELF" computer account can create 
' BitLocker recovery information objects and write BitLocker recovery properties
'
' No additional ACE's are needed.
' --------------------------------------------------------------------------------
' --------------------------------------------------------------------------------
' Connect to Discretional ACL (DACL) for domain object
' --------------------------------------------------------------------------------
Set objRootLDAP = GetObject("LDAP://rootDSE")
strPathToDomain = "LDAP://" & objRootLDAP.Get("defaultNamingContext") ' e.g. string dc=fabrikam,dc=com
Set objDomain = GetObject(strPathToDomain)
WScript.Echo "Accessing object: " + objDomain.Get("distinguishedName")
Set objDescriptor = objDomain.Get("ntSecurityDescriptor")
Set objDacl = objDescriptor.DiscretionaryAcl
 
' --------------------------------------------------------------------------------
' Add the ACEs to the Discretionary ACL (DACL) and set the DACL
' --------------------------------------------------------------------------------
objDacl.AddAce objAce1
objDescriptor.DiscretionaryAcl = objDacl
objDomain.Put "ntSecurityDescriptor", Array(objDescriptor)
objDomain.SetInfo
WScript.Echo "SUCCESS!"
```

### <a href="" id="bkmk-list-aces"></a>List-ACEs.vbs

This script lists or removes the ACEs that are configured on BitLocker and TPM schema objects for the top-level domain. This enables you to verify that the expected ACEs have been added appropriately or to remove any ACEs that are related to BitLocker or the TPM, if necessary.

``` syntax
'===============================================================================
'
' This script lists the access control entries (ACE's) configured on 
' Trusted Platform Module (TPM) and BitLocker Drive Encryption (BDE) schema objects 
' for the top-level domain.
'
' You can use this script to check that the correct permissions have been set and
' to remove TPM and BitLocker ACE's from the top-level domain.
'
' 
' Last Updated: 12/05/2012
' Last Reviewed: 12/02/2012
'
' Microsoft Corporation
'
' Disclaimer
' 
' The sample scripts are not supported under any Microsoft standard support program
' or service. The sample scripts are provided AS IS without warranty of any kind. 
' Microsoft further disclaims all implied warranties including, without limitation, 
' any implied warranties of merchantability or of fitness for a particular purpose. 
' The entire risk arising out of the use or performance of the sample scripts and 
' documentation remains with you. In no event shall Microsoft, its authors, or 
' anyone else involved in the creation, production, or delivery of the scripts be 
' liable for any damages whatsoever (including, without limitation, damages for loss 
' of business profits, business interruption, loss of business information, or 
' other pecuniary loss) arising out of the use of or inability to use the sample 
' scripts or documentation, even if Microsoft has been advised of the possibility 
' of such damages.
'
' Version 1.0.2 - Tested and re-released for Windows 8 and Windows Server 2012
' 
'===============================================================================
' --------------------------------------------------------------------------------
' Usage
' --------------------------------------------------------------------------------
Sub ShowUsage
   Wscript.Echo "USAGE: List-ACEs"
   Wscript.Echo "List access permissions for BitLocker and TPM schema objects"
   Wscript.Echo ""
   Wscript.Echo "USAGE: List-ACEs -remove"
   Wscript.Echo "Removes access permissions for BitLocker and TPM schema objects"
   WScript.Quit
End Sub
' --------------------------------------------------------------------------------
' Parse Arguments
' --------------------------------------------------------------------------------
Set args = WScript.Arguments
Select Case args.Count
  
  Case 0
      ' do nothing - checks for ACE's 
      removeACE = False
      
  Case 1
    If args(0) = "/?" Or args(0) = "-?" Then
      ShowUsage
    Else 
      If UCase(args(0)) = "-REMOVE" Then
            removeACE = True
      End If
    End If
  Case Else
    ShowUsage
End Select
' --------------------------------------------------------------------------------
' Configuration of the filter to show/remove only ACE's for BDE and TPM objects
' --------------------------------------------------------------------------------
'- ms-TPM-OwnerInformation attribute
SCHEMA_GUID_MS_TPM_OWNERINFORMATION = "{AA4E1A6D-550D-4E05-8C35-4AFCB917A9FE}"
'- ms-FVE-RecoveryInformation object
SCHEMA_GUID_MS_FVE_RECOVERYINFORMATION = "{EA715D30-8F53-40D0-BD1E-6109186D782C}"
' Use this filter to list/remove only ACEs related to TPM and BitLocker
aceGuidFilter = Array(SCHEMA_GUID_MS_TPM_OWNERINFORMATION, _
                      SCHEMA_GUID_MS_FVE_RECOVERYINFORMATION)
' Note to script source reader:
' Uncomment the following line to turn off the filter and list all ACEs
'aceGuidFilter = Array()
' --------------------------------------------------------------------------------
' Helper functions related to the list filter for listing or removing ACE's
' --------------------------------------------------------------------------------
Function IsFilterActive()
    If Join(aceGuidFilter) = "" Then
       IsFilterActive = False
    Else 
       IsFilterActive = True
    End If
End Function
Function isAceWithinFilter(ace) 
    aceWithinFilter = False  ' assume first not pass the filter
    For Each guid In aceGuidFilter 
        If ace.ObjectType = guid Or ace.InheritedObjectType = guid Then
           isAceWithinFilter = True           
        End If
    Next
End Function
Sub displayFilter
    For Each guid In aceGuidFilter
       WScript.echo guid
    Next
End Sub
' --------------------------------------------------------------------------------
' Connect to Discretional ACL (DACL) for domain object
' --------------------------------------------------------------------------------
Set objRootLDAP = GetObject("LDAP://rootDSE")
strPathToDomain = "LDAP://" & objRootLDAP.Get("defaultNamingContext") ' e.g. dc=fabrikam,dc=com
Set domain = GetObject(strPathToDomain)
WScript.Echo "Accessing object: " + domain.Get("distinguishedName")
WScript.Echo ""
Set descriptor = domain.Get("ntSecurityDescriptor")
Set dacl = descriptor.DiscretionaryAcl
' --------------------------------------------------------------------------------
' Show Access Control Entries (ACE's)
' --------------------------------------------------------------------------------
' Loop through the existing ACEs, including all ACEs if the filter is not active
i = 1 ' global index
c = 0 ' found count - relevant if filter is active
For Each ace In dacl
 If IsFilterActive() = False or isAceWithinFilter(ace) = True Then
    ' note to script source reader:
    ' echo i to show the index of the ACE
    
    WScript.echo ">            AceFlags: " & ace.AceFlags
    WScript.echo ">             AceType: " & ace.AceType
    WScript.echo ">               Flags: " & ace.Flags
    WScript.echo ">          AccessMask: " & ace.AccessMask
    WScript.echo ">          ObjectType: " & ace.ObjectType
    WScript.echo "> InheritedObjectType: " & ace.InheritedObjectType
    WScript.echo ">             Trustee: " & ace.Trustee
    WScript.echo ""
    if IsFilterActive() = True Then
      c = c + 1
      ' optionally include this ACE in removal list if configured
      ' note that the filter being active is a requirement since we don't
      ' want to accidentally remove all ACEs
      If removeACE = True Then
        dacl.RemoveAce ace  
      End If
    end if
  End If 
  i = i + 1
Next
' Display number of ACEs found
If IsFilterActive() = True Then
  WScript.echo c & " ACE(s) found in " & domain.Get("distinguishedName") _
                 & " related to BitLocker and TPM" 'note to script source reader: change this line if you configure your own 
filter
  ' note to script source reader: 
  ' uncomment the following lines if you configure your own filter
  'WScript.echo ""
  'WScript.echo "The following filter was active: "
  'displayFilter
  'Wscript.echo ""
Else
  i = i - 1
  WScript.echo i & " total ACE(s) found in " & domain.Get("distinguishedName")
  
End If
' --------------------------------------------------------------------------------
' Optionally remove ACE's on a filtered list
' --------------------------------------------------------------------------------
if removeACE = True and IsFilterActive() = True then
  descriptor.DiscretionaryAcl =  dacl
  domain.Put "ntSecurityDescriptor", Array(descriptor)
  domain.setInfo
  WScript.echo c & " ACE(s) removed from " & domain.Get("distinguishedName")
else 
  if removeACE = True then
    WScript.echo "You must specify a filter to remove ACEs from " & domain.Get("distinguishedName") 
 
 end if
end if
```

### <a href="" id="bkmk-get-tpmownerinfo"></a>Get-TPMOwnerInfo.vbs

This script retrieves TPM recovery information from AD DS for a particular computer so that you can verify that only domain administrators (or delegated roles) can read backed up TPM recovery information and verify that the information is being backed up correctly.

``` syntax
'=================================================================================
'
' This script demonstrates the retrieval of Trusted Platform Module (TPM) 
' recovery information from Active Directory for a particular computer.
'
' It returns the TPM owner information stored as an attribute of a 
' computer object.
'
' Last Updated: 12/05/2012
' Last Reviewed: 12/05/2012
'
' Microsoft Corporation
'
' Disclaimer
' 
' The sample scripts are not supported under any Microsoft standard support program
' or service. The sample scripts are provided AS IS without warranty of any kind. 
' Microsoft further disclaims all implied warranties including, without limitation, 
' any implied warranties of merchantability or of fitness for a particular purpose. 
' The entire risk arising out of the use or performance of the sample scripts and 
' documentation remains with you. In no event shall Microsoft, its authors, or 
' anyone else involved in the creation, production, or delivery of the scripts be 
' liable for any damages whatsoever (including, without limitation, damages for loss 
' of business profits, business interruption, loss of business information, or 
' other pecuniary loss) arising out of the use of or inability to use the sample 
' scripts or documentation, even if Microsoft has been advised of the possibility 
' of such damages.
'
' Version 1.0 - Initial release
' Version 1.1 - Updated GetStrPathToComputer to search the global catalog.
' Version 1.1.2 - Tested and re-released for Windows 8 and Windows Server 2012
' 
'=================================================================================
' --------------------------------------------------------------------------------
' Usage
' --------------------------------------------------------------------------------
Sub ShowUsage
   Wscript.Echo "USAGE: Get-TpmOwnerInfo [Optional Computer Name]"
   Wscript.Echo "If no computer name is specified, the local computer is assumed."
   WScript.Quit
End Sub
' --------------------------------------------------------------------------------
' Parse Arguments
' --------------------------------------------------------------------------------
Set args = WScript.Arguments
Select Case args.Count
  
  Case 0
      ' Get the name of the local computer      
      Set objNetwork = CreateObject("WScript.Network")
      strComputerName = objNetwork.ComputerName
    
  Case 1
    If args(0) = "/?" Or args(0) = "-?" Then
      ShowUsage
    Else
      strComputerName = args(0)
    End If
  
  Case Else
    ShowUsage
End Select
' --------------------------------------------------------------------------------
' Get path to Active Directory computer object associated with the computer name
' --------------------------------------------------------------------------------
Function GetStrPathToComputer(strComputerName) 
    ' Uses the global catalog to find the computer in the forest
    ' Search also includes deleted computers in the tombstone
    Set objRootLDAP = GetObject("LDAP://rootDSE")
    namingContext = objRootLDAP.Get("defaultNamingContext") ' e.g. string dc=fabrikam,dc=com    
    strBase = "<GC://" & namingContext & ">"
 
    Set objConnection = CreateObject("ADODB.Connection") 
    Set objCommand = CreateObject("ADODB.Command") 
    objConnection.Provider = "ADsDSOOBject" 
    objConnection.Open "Active Directory Provider" 
    Set objCommand.ActiveConnection = objConnection 
    strFilter = "(&(objectCategory=Computer)(cn=" &  strComputerName & "))"
    strQuery = strBase & ";" & strFilter  & ";distinguishedName;subtree" 
    objCommand.CommandText = strQuery 
    objCommand.Properties("Page Size") = 100 
    objCommand.Properties("Timeout") = 100
    objCommand.Properties("Cache Results") = False 
    ' Enumerate all objects found. 
    Set objRecordSet = objCommand.Execute 
    If objRecordSet.EOF Then
      WScript.echo "The computer name '" &  strComputerName & "' cannot be found."
      WScript.Quit 1
    End If
    ' Found object matching name
    Do Until objRecordSet.EOF 
      dnFound = objRecordSet.Fields("distinguishedName")
      GetStrPathToComputer = "LDAP://" & dnFound
      objRecordSet.MoveNext 
    Loop 
    ' Clean up. 
    Set objConnection = Nothing 
    Set objCommand = Nothing 
    Set objRecordSet = Nothing 
End Function
' --------------------------------------------------------------------------------
' Securely access the Active Directory computer object using Kerberos
' --------------------------------------------------------------------------------
Set objDSO = GetObject("LDAP:")
strPath = GetStrPathToComputer(strComputerName)
WScript.Echo "Accessing object: " + strPath
Const ADS_SECURE_AUTHENTICATION = 1
Const ADS_USE_SEALING = 64 '0x40
Const ADS_USE_SIGNING = 128 '0x80
Set objComputer = objDSO.OpenDSObject(strPath, vbNullString, vbNullString, _
                                   ADS_SECURE_AUTHENTICATION + ADS_USE_SEALING + ADS_USE_SIGNING)
' --------------------------------------------------------------------------------
' Get the TPM owner information from the Active Directory computer object
' --------------------------------------------------------------------------------
strOwnerInformation = objComputer.Get("msTPM-OwnerInformation")
WScript.echo "msTPM-OwnerInformation: " + strOwnerInformation
```

## Additional resources

- [Trusted Platform Module technology overview](trusted-platform-module-overview.md)
- [TPM fundamentals](tpm-fundamentals.md)
- [TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md)
- [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx)
- [AD DS schema extensions to support TPM backup](ad-ds-schema-extensions-to-support-tpm-backup.md)
- [Prepare your organization for BitLocker: Planning and Policies](http://technet.microsoft.com/library/jj592683.aspx), see TPM considerations
