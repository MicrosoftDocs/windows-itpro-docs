---
title: Managing CI policies and tokens with CiTool
description: Learn how to use policy commands, token commands, and miscellaneous commands in CiTool
ms.topic: reference
ms.date: 09/11/2024
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# CiTool technical reference

CiTool makes App Control for Business policy management easier for IT admins. You can use this tool to manage App Control for Business policies and CI tokens. This article describes how to use CiTool to update and manage policies. It's currently included as part of the Windows image in Windows 11, version 22H2.

## Policy commands

| Command | Description | Alias |
|--------|---------|---------|
| `--update-policy </Path/To/Policy/File>` | Add or update a policy on the current system. | `-up` |
| `--remove-policy <PolicyGUID>` | Remove a policy indicated by PolicyGUID from the system. | `-rp` |
| `--list-policies` | Dump information about all policies on the system, whether they're active or not. | `-lp` |

## Token commands

| Command | Description | Alias |
|--------|---------|---------|
| `--add-token <Path/To/Token/File> <--token-id ID>` | Deploy a token onto the current system, with an optional specific ID. | `-at` |
| `--remove-token <ID>` | Remove a token indicated by ID from the system. | `-rt` |
| `--list-tokens` | Dump information about all tokens on the system. | `-lt` |

> [!NOTE]
> Regarding `--add-token`, if `<ID>` is specified, a pre-existing token with `<ID>` shouldn't exist.

## Miscellaneous commands

| Command | Description | Alias |
|--------|---------|---------|
| `--device-id` | Dump the code integrity device ID. | `-id` |
| `--refresh` | Attempt to refresh App Control policies. | `-r` |
| `--help` | Display the tool's help menu. | `-h` |

## Output attributes and descriptions

### List policies (`--list-policies`)

```console
Policy ID: d2bda982-ccf6-4344-ac5b-0b44427b6816
Base Policy ID: d2bda982-ccf6-4344-ac5b-0b44427b6816
Friendly Name: Microsoft Windows Driver Policy
Version: 2814751463178240
Platform Policy: true
Policy is Signed: true
Has File on Disk: false
Is Currently Enforced: true
Is Authorized: true
Status: 0
```

| Attribute | Description | Example value |
|--------|---------|---------|
| Policy ID | Lists the ID of the policy. | `d2bda982-ccf6-4344-ac5b-0b44427b6816` |
| Base Policy ID | Lists the ID of the base policy. | `d2bda982-ccf6-4344-ac5b-0b44427b6816` |
| Friendly Name | Value listed in `<Setting Provider="PolicyInfo" Key="Information" ValueName="Name">` | `Microsoft Windows Driver Policy` |
| Version | Version of the policy listed in `<VersionEx>` | `2814751463178240` |
| Platform Policy | Indicates whether the policy is provided by Microsoft, for example in the vulnerable driver blocklist policy. | `true` |
| Policy is Signed | Indicates whether the policy has a valid signature. | `true` |
| Has File on Disk | Indicates whether the policy file is currently on the disk. | `false` |
| Is Currently Enforced | Indicates whether the policy file is active. | `true` |
| Is Authorized | If the policy requires a token to be activated, this value is the state of authorization for the token. If the policy doesn't require a token, this value matches the value for the **Is Currently Enforced** property. | `true` |

## Examples

### Deploy an App Control policy

```powershell
CiTool --update-policy "\Windows\Temp\{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}.cip"
```

### Refresh the App Control policies on the system

```powershell
CiTool --refresh
```

### Remove a specific App Control policy by its policy ID

```powershell
CiTool --remove-policy "{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}"
```

### List the actively enforced App Control policies on the system

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
