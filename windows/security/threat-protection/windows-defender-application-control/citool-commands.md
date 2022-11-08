---
title: Managing CI Policies and Tokens with CiTool
description: Learn how to use Policy Commands, Token Commands, and Miscellaneous Commands in CiTool
author: valemieux
ms.author: jogeurte
ms.reviewer: jogeurte
ms.topic: how-to
ms.date: 08/07/2022
ms.custom: template-how-to
ms.prod: windows-client
ms.technology: itpro-security
---

# Manage Windows Defender Application Control (WDAC) Policies with CI Tool

CI Tool makes Windows Defender Application Control (WDAC) policy management easier for IT admins.  CI Tool can be used to manage Windows Defender Application Control policies and CI Tokens. This article describes how to use CI Tool to update and manage policies.  CI Tool is currently included in Windows 11, version 22H2.

## Policy Commands

| Command | Description | Alias |
|--------|---------|---------|
| --update-policy `</Path/To/Policy/File>` | Add or update a policy on the current system | -up |
| --remove-policy `<PolicyGUID>` | Remove a policy indicated by PolicyGUID from the system | -rp |
| --list-policies | Dump information about all policies on the system, whether they are active or not | -lp |

## Token Commands

| Command | Description | Alias |
|--------|---------|---------|
| --add-token `<Path/To/Token/File>` <--token-id ID> | Deploy a token onto the current system, with an optional specific ID. | -at |
| --remove-token `<ID>` | Remove a Token indicated by ID from the system. | -rt |
| --list-tokens | Dump information about all tokens on the system | -lt |

> [!NOTE]
> Regarding --add-token, if `<ID>` is specified, a pre-existing token with `<ID>` should not exist.

## Miscellaneous Commands

| Command | Description | Alias |
|--------|---------|---------|
| --device-id | Dump the Code Integrity Device ID | -id |
| --refresh | Attempt to Refresh WDAC Policies | -r |
| --help | Display the tool's help menu | -h |

## Examples

1. Deploy a WDAC policy onto the system

    ```powershell
    PS C:\Users\<USER> CITool --update-policy "\Windows\Temp\{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}.cip"
    Operation Successful
    Press Enter to Continue
    ```

2. Refresh the WDAC policies

    ```powershell
    PS C:\Users\<USER> CITool --refresh
    Operation Successful
    ```

3. Remove a specific WDAC policy by its policy ID

    ```powershell
    PS C:\Users\<USER> CiTool --remove-policy "{BF61FE40-8929-4FDF-9EC2-F7A767717F0B}"
    Operation Successful
    Press Enter to Continue
    ```

4. Display the help menu

    ```powershell
    PS C:\Users\<USER> CITool -h

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
