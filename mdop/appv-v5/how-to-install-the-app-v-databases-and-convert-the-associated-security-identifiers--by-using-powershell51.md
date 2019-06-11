---
title: How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell
description: How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell
author: dansimp
ms.assetid: 2be6fb72-f3a6-4550-bba1-6defa78ca08a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell


Use the following PowerShell procedure to convert any number of Active Directory Domain Services (AD DS) user or machine accounts into formatted Security Identifiers (SIDs) both in the standard format and in the hexadecimal format used by Microsoft SQL Server when running SQL scripts.

Before attempting this procedure, you should read and understand the information and examples displayed in the following list:

-   **.INPUTS** – The account or accounts used to convert to SID format. This can be a single account name or an array of account names.

-   **.OUTPUTS** - A list of account names with the corresponding SID in standard and hexadecimal formats.

-   **Examples** -

    **.\\ConvertToSID.ps1 DOMAIN\\user\_account1 DOMAIN\\machine\_account1$ DOMAIN\\user\_account2 | Format-List**.

    **$accountsArray = @("DOMAIN\\user\_account1", "DOMAIN\\machine\_account1$", "DOMAIN\_user\_account2")**

    **.\\ConvertToSID.ps1 $accountsArray | Write-Output -FilePath .\\SIDs.txt -Width 200**

    \#&gt;

**To convert any number of Active Directory Domain Services (AD DS) user or machine accounts into formatted Security Identifiers (SIDs)**

1. Copy the following script into a text editor and save it as a PowerShell script file, for example **ConvertToSIDs.ps1**.

2. To open a PowerShell console click **Start** and type **PowerShell**. Right-click **Windows PowerShell** and select **Run as Administrator**.

   ``` syntax
   <#
   ```

   ``` syntax
   .SYNOPSIS
   ```

   ``` syntax
   This PowerShell script will take an array of account names and try to convert each of them to the corresponding SID in standard and hexadecimal formats.
   ```

   ``` syntax
   .DESCRIPTION
   ```

   ``` syntax
   This is a PowerShell script that converts any number of Active Directory (AD) user or machine accounts into formatted Security Identifiers (SIDs) both in the standard format and in the hexadecimal format used by SQL server when running SQL scripts.
   ```

   ``` syntax
   .INPUTS
   ```

   ``` syntax
   The account(s) to convert to SID format. This can be a single account name or an array of account names. Please see examples below.
   ```

   ``` syntax
   .OUTPUTS
   ```

   ``` syntax
   A list of account names with the corresponding SID in standard and hexadecimal formats
   ```

   ``` syntax
   .EXAMPLE
   ```

   ``` syntax
   .\ConvertToSID.ps1 DOMAIN\user_account1 DOMAIN\machine_account1$ DOMAIN\user_account2 | Format-List
   ```

   ``` syntax
   .EXAMPLE
   ```

   ``` syntax
   $accountsArray = @("DOMAIN\user_account1", "DOMAIN\machine_account1$", "DOMAIN_user_account2")
   ```

   ``` syntax
   .\ConvertToSID.ps1 $accountsArray | Write-Output -FilePath .\SIDs.txt -Width 200
   ```

   ``` syntax
   #>
   ```

   ``` syntax
   ```

   []()  

   []()  

   ``` syntax
   function ConvertSIDToHexFormat
   ```

   {

      param(\[System.Security.Principal.SecurityIdentifier\]$sidToConvert)

   ``` syntax
   ```

   ``` syntax
      $sb = New-Object System.Text.StringBuilder
   ```

   ``` syntax
       [int] $binLength = $sidToConvert.BinaryLength
   ```

   ``` syntax
       [Byte[]] $byteArray = New-Object Byte[] $binLength
   ```

   ``` syntax
      $sidToConvert.GetBinaryForm($byteArray, 0)
   ```

   ``` syntax
      foreach($byte in $byteArray)
   ```

   ``` syntax
      {
   ```

   ``` syntax
      $sb.Append($byte.ToString("X2")) |Out-Null
   ```

   ``` syntax
      }
   ```

   ``` syntax
      return $sb.ToString()
   ```

   ``` syntax
   }
   ```

   ``` syntax
    [string[]]$myArgs = $args
   ```

   ``` syntax
   if(($myArgs.Length -lt 1) -or ($myArgs[0].CompareTo("/?") -eq 0))
   ```

   {

   ``` syntax
    [string]::Format("{0}====== Description ======{0}{0}" +
   ```

   ``` syntax
   "  Converts any number of user or machine account names to string and hexadecimal SIDs.{0}" +
   ```

   ``` syntax
                  "  Pass the account(s) as space separated command line parameters. (For example 'ConvertToSID.exe DOMAIN\\Account1 DOMAIN\\Account2 ...'){0}" +
   ```

   ``` syntax
                  "  The output is written to the console in the format 'Account name    SID as string   SID as hexadecimal'{0}" +
   ```

   ``` syntax
                  "  And can be written out to a file using standard PowerShell redirection{0}" +
   ```

   ``` syntax
                  "  Please specify user accounts in the format 'DOMAIN\username'{0}" + 
   ```

   ``` syntax
                  "  Please specify machine accounts in the format 'DOMAIN\machinename$'{0}" +
   ```

   ``` syntax
                  "  For more help content, please run 'Get-Help ConvertToSID.ps1'{0}" + 
   ```

   ``` syntax
                  "{0}====== Arguments ======{0}" +
   ```

   ``` syntax
                  "{0}  /?    Show this help message", [Environment]::NewLine) 
   ```

   ``` syntax
   {
   ```

   ``` syntax
   else
   ```

   ``` syntax
   {  
       #If an array was passed in, try to split it
   ```

   ``` syntax
       if($myArgs.Length -eq 1)
   ```

   ``` syntax
       {
   ```

   ``` syntax
           $myArgs = $myArgs.Split(' ')
   ```

   ``` syntax
       }
   ```

   ``` syntax

       #Parse the arguments for account names
   ```

   ``` syntax
       foreach($accountName in $myArgs)
   ```

   ``` syntax
       {    
   ```

   ``` syntax
           [string[]] $splitString = $accountName.Split('\')  # We're looking for the format "DOMAIN\Account" so anything that does not match, we reject
   ```

   ``` syntax
           if($splitString.Length -ne 2)
   ```

   ``` syntax
           {
   ```

   ``` syntax
               $message = [string]::Format("{0} is not a valid account name. Expected format 'Domain\username' for user accounts or 'DOMAIN\machinename$' for machine accounts.", $accountName)
   ```

   ``` syntax
               Write-Error -Message $message
   ```

   ``` syntax
               continue
   ```

   ``` syntax
           }
   ```

   ``` syntax
            
   ```

   ``` syntax
           #Convert any account names to SIDs
   ```

   ``` syntax
           try
   ```

   ``` syntax
           {
   ```

   ``` syntax
               [System.Security.Principal.NTAccount] $account = New-Object System.Security.Principal.NTAccount($splitString[0], $splitString[1])
   ```

   ``` syntax
               [System.Security.Principal.SecurityIdentifier] $SID = [System.Security.Principal.SecurityIdentifier]($account.Translate([System.Security.Principal.SecurityIdentifier]))
   ```

   ``` syntax
           }
   ```

   ``` syntax
           catch [System.Security.Principal.IdentityNotMappedException]
   ```

   ``` syntax
           {
   ```

   ``` syntax
               $message = [string]::Format("Failed to translate account object '{0}' to a SID. Please verify that this is a valid user or machine account.", $account.ToString())
   ```

   ``` syntax
               Write-Error -Message $message
   ```

   ``` syntax
               continue
   ```

   ``` syntax
           }
   ```

   ``` syntax

           #Convert regular SID to binary format used by SQL
   ```

   ``` syntax
           $hexSIDString = ConvertSIDToHexFormat $SID
   ```

   ``` syntax
            
           $SIDs = New-Object PSObject
   ```

   ``` syntax
           $SIDs | Add-Member NoteProperty Account $accountName
   ```

   ``` syntax
           $SIDs | Add-Member NoteProperty SID $SID.ToString()
   ```

   ``` syntax
           $SIDs | Add-Member NoteProperty Hexadecimal $hexSIDString
   ```

   ``` syntax

           Write-Output $SIDs
   ```

   ``` syntax
       }
   ```

   ``` syntax
   }
   ```

3. Run the script you saved in step one of this procedure passing the accounts to convert as arguments.

   For example,

   **.\\ConvertToSID.ps1 DOMAIN\\user\_account1 DOMAIN\\machine\_account1$ DOMAIN\\user\_account2 | Format-List” or “$accountsArray = @("DOMAIN\\user\_account1", "DOMAIN\\machine\_account1$", "DOMAIN\_user\_account2")**

   **.\\ConvertToSID.ps1 $accountsArray | Write-Output -FilePath .\\SIDs.txt -Width 200”**

   **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Administering App-V 5.1 by Using PowerShell](administering-app-v-51-by-using-powershell.md)

 

 





