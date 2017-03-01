---
title: MBR to GPT partition conversion tool
description: How to use the MBR2GPT tool to convert partitions
keywords: deploy, troubleshoot, windows, 10, upgrade, partition, mbr, gpt
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
localizationpriority: high
---

# MBR to GPT conversion tool

**Applies to**
-   Windows 10

>**Important**: This topic contains technical instructions for IT administrators. If you are not an IT administrator, ....

## In this topic

This topic contains ...:

- [Background](#background): A.<BR>
- [Requirements](#requirements): B.<BR>
- [How to use MBR2GPT](#how-to): BB
- [Syntax](#syntax): C.
    - [Command line options](#command-line-options): D.
    - [Examples](#examples): E.
- [Conversion workflow](#conversion-workflow): F.
    - [Validation](#validation): G.
    - [Repartitioning](#repartitioning): H.
- [Troubleshooting](#troubleshooting): I.


## Background

The ...:

1. **Something**: 1
2. **Something**: 2
        - Example 
3. **Something**: 3
        - Example 
4. **Something**: 4
        - Example 
5. **Something**: 5
        - Example 

**Figure 1**: 1:

Image here

definitions

## Requirements

The following ...

Table or list here

## How to use MBR2GPT

## Syntax

### Command line options

| Option | Description | 
|----|-------------|
|/disk:\<diskNumber\>| This option specifies the Diskpart-reported disk number of the disk to be converted to GPT. If the option isn’t specified, the system disk is used. (System disk is determined using the same mechanism behind Diskpart’s “SELECT DISK SYSTEM” command.) |
|opt|desc|
|opt|desc|
|opt|desc|
|opt|desc|
|opt|desc|
|opt|desc|

### Help

```

C:\> mbr2gpt /?

Converts a disk from MBR to GPT partitioning without modifying or deleting data on the disk.

MBR2GPT.exe /validate|convert [/disk:<diskNumber>] [/logs:<logDirectory>] [/map:<source>=<destination>] [/allowFullOS]

Where:

 /validate
         - Validates that the selected disk can be converted
           without performing the actual conversion.

 /convert
         - Validates that the selected disk can be converted
           and performs the actual conversion.

 /disk:<diskNumber>
         - Specifies the disk number of the disk to be processed.
           If not specified, the system disk is processed.

 /logs:<logDirectory>
         - Specifies the directory for logging. By default logs
           are created in the %windir% directory.

 /map:<source>=<destination>
         - Specifies the GPT partition type to be used for a
           given MBR partition type not recognized by Windows.
           Multiple /map switches are allowed.

 /allowFullOS
         - Allows the tool to be used from the full Windows
           environment. By default, this tool can only be used
           from the Windows Preinstallation Environment.


```

### Examples

## Conversion workflow

### Validation

### Repartitioning

## Troubleshooting


## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/en-us/windows/dn798755.aspx)
<BR>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/en-us/windows/dn798752.aspx)
<BR>[Windows 10 Specifications](https://www.microsoft.com/en-us/windows/Windows-10-specifications)
<BR>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<BR>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
