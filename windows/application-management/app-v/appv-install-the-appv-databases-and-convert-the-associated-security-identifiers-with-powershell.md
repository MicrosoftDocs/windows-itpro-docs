---
title: How to Install the App-V Databases and Convert the Associated Security Identifiers by Using Windows PowerShell (Windows 10/11)
description: How to Install the App-V Databases and Convert the Associated Security Identifiers by Using Windows PowerShell
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
---


# How to Install the App-V Databases and Convert the Associated Security Identifiers by Using Windows PowerShell

**Applies to**
-   Windows Server 2016

Use the following Windows PowerShell procedure to convert any number of Active Directory Domain Services (AD DS) user or machine accounts into formatted Security Identifiers (SIDs) both in the standard format and in the hexadecimal format used by Microsoft SQL Server when running SQL scripts.

Before attempting this procedure, you should read and understand the information and examples displayed in the following list:

-   **.INPUTS** – The account or accounts used to convert to SID format. This item can be a single account name or an array of account names.

-   **.OUTPUTS** - A list of account names with the corresponding SID in standard and hexadecimal formats.

-   **Examples** -

    **.\\ConvertToSID.ps1 DOMAIN\\user\_account1 DOMAIN\\machine\_account1$ DOMAIN\\user\_account2 | Format-List**.

    **$accountsArray = @("DOMAIN\\user\_account1", "DOMAIN\\machine\_account1$", "DOMAIN\_user\_account2")**

    **.\\ConvertToSID.ps1 $accountsArray | Write-Output -FilePath .\\SIDs.txt -Width 200**

    \#&gt;

**To convert any number of Active Directory Domain Services (AD DS) user or machine accounts into formatted Security Identifiers (SIDs)**

1.  Copy the following script into a text editor and save it as a Windows PowerShell script file, for example **ConvertToSIDs.ps1**.

2.  To open a Windows PowerShell console, click **Start** and type **PowerShell**. Right-click **Windows PowerShell** and select **Run as Administrator**.

    ```powershell
    <#
    .SYNOPSIS
    This Windows PowerShell script will take an array of account names and try to convert each of them to the corresponding SID in standard and hexadecimal formats.
    .DESCRIPTION
    This is a Windows PowerShell script that converts any number of Active Directory (AD) user or machine accounts into formatted Security Identifiers (SIDs) both in the standard format and in the hexadecimal format used by SQL server when running SQL scripts.
    .INPUTS
    The account(s) to convert to SID format. This can be a single account name or an array of account names. Please see examples below.
    .OUTPUTS
    A list of account names with the corresponding SID in standard and hexadecimal formats
    .EXAMPLE
    .\ConvertToSID.ps1 DOMAIN\user_account1 DOMAIN\machine_account1$ DOMAIN\user_account2 | Format-List
    .EXAMPLE
    $accountsArray = @("DOMAIN\user_account1", "DOMAIN\machine_account1$", "DOMAIN_user_account2")
    .\ConvertToSID.ps1 $accountsArray | Write-Output -FilePath .\SIDs.txt -Width 200
    #>

    function ConvertSIDToHexFormat
    {
       param([System.Security.Principal.SecurityIdentifier]$sidToConvert)
       $sb = New-Object System.Text.StringBuilder
        [int] $binLength = $sidToConvert.BinaryLength
        [Byte[]] $byteArray = New-Object Byte[] $binLength
       $sidToConvert.GetBinaryForm($byteArray, 0)
       foreach($byte in $byteArray)
       {
       $sb.Append($byte.ToString("X2")) |Out-Null
       }
       return $sb.ToString()
    }
     [string[]]$myArgs = $args
    if(($myArgs.Length -lt 1) -or ($myArgs[0].CompareTo("/?") -eq 0))
    {
     [string]::Format("{0}====== Description ======{0}{0}" +
    "  Converts any number of user or machine account names to string and hexadecimal SIDs.{0}" +
                   "  Pass the account(s) as space separated command line parameters. (For example 'ConvertToSID.exe DOMAIN\\Account1 DOMAIN\\Account2 ...'){0}" +
                   "  The output is written to the console in the format 'Account name    SID as string   SID as hexadecimal'{0}" +
                   "  And can be written out to a file using standard Windows PowerShell redirection{0}" +
                   "  Please specify user accounts in the format 'DOMAIN\username'{0}" + 
                   "  Please specify machine accounts in the format 'DOMAIN\machinename$'{0}" +
                   "  For more help content, please run 'Get-Help ConvertToSID.ps1'{0}" + 
                   "{0}====== Arguments ======{0}" +
                   "{0}  /?    Show this help message", [Environment]::NewLine) 
    {
    else
    {  
        #If an array was passed in, try to split it
        if($myArgs.Length -eq 1)
        {
            $myArgs = $myArgs.Split(' ')
        }

        #Parse the arguments for account names
        foreach($accountName in $myArgs)
        {    
            [string[]] $splitString = $accountName.Split('\')  # We're looking for the format "DOMAIN\Account" so anything that does not match, we reject
            if($splitString.Length -ne 2)
            {
                $message = [string]::Format("{0} is not a valid account name. Expected format 'Domain\username' for user accounts or 'DOMAIN\machinename$' for machine accounts.", $accountName)
                Write-Error -Message $message
                continue
            }
            #Convert any account names to SIDs
            try
            {
                [System.Security.Principal.NTAccount] $account = New-Object System.Security.Principal.NTAccount($splitString[0], $splitString[1])
                [System.Security.Principal.SecurityIdentifier] $SID = [System.Security.Principal.SecurityIdentifier]($account.Translate([System.Security.Principal.SecurityIdentifier]))
            }
            catch [System.Security.Principal.IdentityNotMappedException]
            {
                $message = [string]::Format("Failed to translate account object '{0}' to a SID. Please verify that this is a valid user or machine account.", $account.ToString())
                Write-Error -Message $message
                continue
            }

            #Convert regular SID to binary format used by SQL
            $hexSIDString = ConvertSIDToHexFormat $SID
            $SIDs = New-Object PSObject
            $SIDs | Add-Member NoteProperty Account $accountName
            $SIDs | Add-Member NoteProperty SID $SID.ToString()
            $SIDs | Add-Member NoteProperty Hexadecimal $hexSIDString

            Write-Output $SIDs
        }
    }
    ```

3.  Run the script you saved in Step 1 of this procedure passing the accounts to convert as arguments.

    For example,

    **.\\ConvertToSID.ps1 DOMAIN\\user\_account1 DOMAIN\\machine\_account1$ DOMAIN\\user\_account2 | Format-List” or “$accountsArray = @("DOMAIN\\user\_account1", "DOMAIN\\machine\_account1$", "DOMAIN\_user\_account2")**

    **.\\ConvertToSID.ps1 $accountsArray | Write-Output -FilePath .\\SIDs.txt -Width 200”**



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles

[Administering App-V by Using Windows PowerShell](appv-administering-appv-with-powershell.md)
