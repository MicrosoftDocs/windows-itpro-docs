---
title: CI Policy, Token, and Miscellaneous Commands
description: Learn how to use Policy Commands, Token Commands, and Miscellaneous Commands.
author: valemieux
ms.author: jgeurten
ms.service: security
ms.reviewer: jgeurten
ms.topic: how-to
ms.date: 08/07/2022
ms.custom: template-how-to
---

# Manage WDAC Policies with CI Tool

Generates Policy Commands, Token Commands, and Miscellaneous Commands for user mode code and drivers.

## Policy Commands

| Command | Description | Alias |
|--------|---------|---------|
| --update-policy /Path/To/Policy/File | Add or update a policy on the current system | -up |
| --remove-policy PolicyGUID | Remove a policy indicated by PolicyGUID from the system | -rp |
| --list-policies | Dump information about all policies on the system, whether they are active or not | -lp |

## Token Commands

| Command | Description | Alias |
|--------|---------|---------|
| --add-token Path/To/Token/File [--token-id ID] | Deploy a token onto the current system, with an optional specific ID. | -at |
| --remove-token ID | Remove a Token indicated by ID from the system. | -rt |
| --list-tokens | Dump information about all tokens on the system | -lt |

>[!NOTE]
>Regarding --add-token, if [ID] is specified, a pre-existing token with [ID] should not exist.

## Miscellaneous Commands

| Command | Description | Alias |
|--------|---------|---------|
| --device-id | Dump the Code Integrity Device ID | -id |
| --refresh | Attempt to Refresh WDAC Policies | -r |
| --help | Display the tool's help menu | -h |

## Examples

>[!NOTE]
>The following examples assume you have extracted the policy file {BF61FE40-8929-4FDF-9EC2-F7A767717F0B}.cip to C:\windows\system32

1. Deploy a WDAC policy onto the system

```powershell
PS C:\windows\system32> .\BF61FE40-8929-4FDF-9EC2-F7A767717F0B.cip -up

C:\Windows\System32>.\CITool.exe -update-policy \windows\system32\BF61FE40-8929-4FDF-9EC2-F7A767717F0B.cip
Usage: CiTool.exe COMMAND [Command-Options] [-json]
Commands:
----------------------------- Policy Commands ---------------------------------
  --update-policy /Path/To/Policy/File
      Add or update a policy on the current system
      aliases: -up
  --remove-policy PolicyGUID
      Remove a policy indicated by PolicyGUID from the system
      aliases: -rp
  --list-policies
      Dump information about all policies on the system, whether they be active or not
      aliases: -lp
----------------------------- Token Commands ---------------------------------
  --add-token Path/To/Token/File [--token-id ID]
      Deploy a token onto the current system, with an optional specific ID
          If [ID] is specified, a pre-existing token with [ID] should not exist.
      aliases:-at
  --remove-token ID
      Remove a Token indicated by ID from the system.
      aliases: -rt
  --list-tokens
      Dump information about all tokens on the system
      aliases: -lt
----------------------------- Misc Commands ---------------------------------
  --device-id
      Dump the Code Integrity Device Id
      aliases: -id
  --refresh
      Attempt to Refresh CI Policies
      aliases: -r
  --help
      Display this message
      aliases: -h
----------------------------- Global Flags---------------------------------
  -json
     Format output as json and suppress input
```

2. Refresh the WDAC policies in the \Windows\system32\CodeIntegrity\CiPolicies\Active folder
```powershell
PS C:\Users\[USER] cd \Windows\system32\CodeIntegrity\CiPolicies\Active
PS C:\Windows\System32\CodeIntegrity\CiPolicies\Active>.\CITool --refresh
Operation Successful
```

3. Remove a specific WDAC policy by GUID
```powershell
PS C:\Users\[USER] cd \windows\system32
PS C:\Windows\System32>.\CITool.exe --remove-policy {BF61FE40-8929-4FDF-9EC2-F7A767717F0B}
Usage: CiTool.exe COMMAND [Command-Options] [-json]
Commands:
----------------------------- Policy Commands ---------------------------------
  --update-policy /Path/To/Policy/File
      Add or update a policy on the current system
      aliases: -up
  --remove-policy PolicyGUID
      Remove a policy indicated by PolicyGUID from the system
      aliases: -rp
  --list-policies
      Dump information about all policies on the system, whether they be active or not
      aliases: -lp
----------------------------- Token Commands ---------------------------------
  --add-token Path/To/Token/File [--token-id ID]
      Deploy a token onto the current system, with an optional specific ID
          If [ID] is specified, a pre-existing token with [ID] should not exist.
      aliases:-at
  --remove-token ID
      Remove a Token indicated by ID from the system.
      aliases: -rt
  --list-tokens
      Dump information about all tokens on the system
      aliases: -lt
----------------------------- Misc Commands ---------------------------------
  --device-id
      Dump the Code Integrity Device Id
      aliases: -id
  --refresh
      Attempt to Refresh CI Policies
      aliases: -r
  --help
      Display this message
      aliases: -h
----------------------------- Global Flags---------------------------------
  -json
     Format output as json and suppress input
Press Enter to Exit
```

4. Display the help menu
```powershell
PS C:\Users\[USER] cd \windows\system32
PS C:\windows\system32> .\CITool.exe -h

----------------------------- Policy Commands ---------------------------------
  --update-policy /Path/To/Policy/File
      Add or update a policy on the current system
      aliases: -up
  --remove-policy PolicyGUID
      Remove a policy indicated by PolicyGUID from the system
      aliases: -rp
  --list-policies
      Dump information about all policies on the system, whether they be active or not
      aliases: -lp
----------------------------- Token Commands ---------------------------------
  --add-token Path/To/Token/File [--token-id ID]
      Deploy a token onto the current system, with an optional specific ID
          If [ID] is specified, a pre-existing token with [ID] should not exist.
      aliases:-at
  --remove-token ID
      Remove a Token indicated by ID from the system.
      aliases: -rt
  --list-tokens
      Dump information about all tokens on the system
      aliases: -lt
----------------------------- Misc Commands ---------------------------------
  --device-id
      Dump the Code Integrity Device Id
      aliases: -id
  --refresh
      Attempt to Refresh CI Policies
      aliases: -r
  --help
      Display this message
      aliases: -h
```