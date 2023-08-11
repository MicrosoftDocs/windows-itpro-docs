---
title: Managing CI Policies and Tokens with CiTool
description: Learn how to use Policy Commands, Token Commands, and Miscellaneous Commands in CiTool
ms.topic: how-to
ms.date: 04/05/2023
---

# CiTool technical reference

CiTool makes Windows Defender Application Control (WDAC) policy management easier for IT admins.  CI Tool can be used to manage Windows Defender Application Control policies and CI Tokens. This article describes how to use CiTool to update and manage policies.  CiTool is currently included as part of the Windows image in Windows 11 version 22H2.

## Policy Commands

| Command | Description | Alias |
|--------|---------|---------|
| --update-policy `</Path/To/Policy/File>` | Add or update a policy on the current system | -up |
| --remove-policy `<PolicyGUID>` | Remove a policy indicated by PolicyGUID from the system | -rp |
| --list-policies | Dump information about all policies on the system, whether they're active or not | -lp |

## Token Commands

| Command | Description | Alias |
|--------|---------|---------|
| --add-token `<Path/To/Token/File>` <--token-id ID> | Deploy a token onto the current system, with an optional specific ID. | -at |
| --remove-token `<ID>` | Remove a Token indicated by ID from the system. | -rt |
| --list-tokens | Dump information about all tokens on the system | -lt |

> [!NOTE]
> Regarding `--add-token`, if `<ID>` is specified, a pre-existing token with `<ID>` should not exist.

## Miscellaneous Commands

| Command | Description | Alias |
|--------|---------|---------|
| --device-id | Dump the Code Integrity Device ID | -id |
| --refresh | Attempt to Refresh WDAC Policies | -r |
| --help | Display the tool's help menu | -h |

## Examples

### Deploy a WDAC policy

```powershell
CiTool --update-policy "\Windows\Temp\{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}.cip"
```

### Refresh the WDAC policies on the system

```powershell
CiTool --refresh
```

### Remove a specific WDAC policy by its policy ID

```powershell
CiTool --remove-policy "{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}"
```

### List the actively enforced WDAC policies on the system

```powershell
# Check each policy's IsEnforced state and return only the enforced policies
(CiTool -lp -json | ConvertFrom-Json).Policies | Where-Object {$_.IsEnforced -eq "True"} |
Select-Object -Property PolicyID,FriendlyName | Format-List
```

### Display the help menu

```powershell
CiTool -h

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
  --add-token Path/To/Token/File <--token-id ID>
    Deploy a token onto the current system, with an optional specific ID
    If <ID> is specified, a pre-existing token with <ID> should not exist.
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
