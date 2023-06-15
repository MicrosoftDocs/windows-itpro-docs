---
title: Managing CI Policies and Tokens with CiTool
description: Learn how to use Policy Commands, Token Commands, and Miscellaneous Commands in CiTool
author: valemieux
ms.author: jogeurte
ms.reviewer: jsuther1974
ms.topic: how-to
ms.date: 12/03/2022
ms.custom: template-how-to
ms.prod: windows-client
ms.technology: itpro-security
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

## Output Parameters and Descriptions

1. List Policies

Policy:
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

| Command | Description |
|--------|---------|
| Policy ID | The ID of the Policy listed in <PolicyID>
| Base Policy ID | The ID of the Base Policy listed in <BasePolicyID>
| Friendly Name | Value listed in <Setting Provider="PolicyInfo" Key="Information" ValueName="Name">
| Version | Version of the policy listed in <VersionEx> 
| Platform Policy | Whether the policy is a policy provided by Microsoft (e.g. Vulnerable Driver blocklist policy)
| Policy is Signed | Whether the policy has a valid signature
| Has File on Disk | Whether the policy file is currently on the disk
| Is Currently Enforced | Whether the policy file is active
| Is Authorized | If the policy requires a token to be activated, it will return the state of authorization for the token. If the policy does not require a token, matches the state of Is Currently Enforced"

## Examples

1. Deploy a WDAC policy

    ```powershell
    CiTool --update-policy "\Windows\Temp\{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}.cip"
    ```

2. Refresh the WDAC policies on the system

    ```powershell
    CiTool --refresh
    ```

3. Remove a specific WDAC policy by its policy ID

    ```powershell
    CiTool --remove-policy "{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}"
    ```

4. List the actively enforced WDAC policies on the system

    ```powershell
    # Check each policy's IsEnforced state and return only the enforced policies
    (CiTool -lp -json | ConvertFrom-Json).Policies | Where-Object {$_.IsEnforced -eq "True"} |
    Select-Object -Property PolicyID,FriendlyName | Format-List
    ```

5. Display the help menu

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
