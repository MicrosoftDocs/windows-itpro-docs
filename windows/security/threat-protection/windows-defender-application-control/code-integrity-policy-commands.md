---
title: CI Policy, Token, and Miscellaneous Commands
description: Learn how to use Policy Commands, Token Commands, and Miscellaneous Commands.
author: valemieux
ms.author: v-alemieux
ms.service: WDAC
ms.topic: how-to
ms.date: 08/07/2022
ms.custom: template-how-to
---

# CIPolicyCommands

Generates Policy Commands, Token Commands, and Miscellaneous Commands for user mode code and drivers.

# Policy Commands

| Command:| --update-policy /Path/To/Policy/File |
| Description: | Add or update a policy on the current system |
| Alias: | -up | 

| Command:| --remove-policy PolicyGUID |
| Description: | Remove a policy indicated by PolicyGUID from the system |
| Alias: | -rp | 

| Command:| --list-policies |
| Description: | Dump information about all policies on the system, whether they be active or not |
| Alias: | -lp | 

# Token Commands

| Command:| --add-token Path/To/Token/File [--token-id ID] |
| Description: | Deploy a token onto the current system, with an optional specific ID.   |
| Alias: | -at | 
>[!NOTE] If [ID] is specified, a pre-existing token with [ID] should not exist.

| Command:| --remove-token ID |
| Description: | Remove a Token indicated by ID from the system. |
| Alias: | -rt | 

| Command:| --list-tokens |
| Description: | Dump information about all tokens on the system |
| Alias: | -lt | 

# Miscellaneous Commands

| Command:| --device-id |
| Description: | Dump the Code Integrity Device Id |
| Alias: | -id | 

| Command:| --refresh |
| Description: | Attempt to Refresh CI Policies |
| Alias: | -r | 

| Command:| --help |
| Description: | Display help |
| Alias: | -h | 

#Examples

#Example 1: Update Policy/Deploy
Extract BF61FE40-8929-4FDF-9EC2-F7A767717F0B.cip into C:\windows\system32
```powershell```
PS C:\Users\[USER] cd \windows\system32
PS C:\windows\system32> .\BF61FE40-8929-4FDF-9EC2-F7A767717F0B.cip -up

C:\Windows\System32>.\CITool.exe -update-policy \windows\system32\BF61FE40-8929-4FDF-9EC2-F7A767717F0B.cip
Usage: CiTool.exe COMMAND <Command-Options> [-json]
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

#Example 2: Refresh the policy
```powershell```
PS C:\Users\[USER] cd \windows\system32
PS C:\Windows\System32>.\CITool.exe --refresh
Operation Successful
```

#Example 3: Remove the policy
```powershell```
PS C:\Users\[USER] cd \windows\system32
PS C:\Windows\System32>.\CITool.exe --remove-policy {BF61FE40-8929-4FDF-9EC2-F7A767717F0B}
Usage: CiTool.exe COMMAND <Command-Options> [-json]
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

#Example 4: Display help
```powershell```
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