---
title: Deploying the MBAM 1.0 Language Release Update
description: Deploying the MBAM 1.0 Language Release Update
author: msfttracyp
ms.assetid: 9dbd85c3-e470-4752-a90f-25754dd46dab
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying the MBAM 1.0 Language Release Update


Microsoft BitLocker Administration and Monitoring (MBAM) 1.0 Language Release is an update to MBAM and includes the support of new languages. The new languages are:

-   English (en-us)

-   French (fr)

-   Italian (it)

-   German (de)

-   Spanish (es)

-   Korean (ko)

-   Japanese (ja)

-   Brazilian Portuguese (pt-br)

-   Russian (ru)

-   Chinese Traditional (zh-tw)

-   Chinese Simplified (zh-cn)

The MBAM 1.0 language update will change the version number from MBAM 1.0.1237.1 to MBAM 1.0.2001.

You do not need to reinstall all of the MBAM features in order to add these additional languages. This topic defines the steps required to add the newly supported languages.

## Deploy the MBAM international release to MBAM Server features


To begin, you must update the following MBAM server features:

-   Compliance and Audit Report

-   Administration and Monitoring Server

-   Policy Templates

Then, you must run **MbamSetup.exe** to upgrade the MBAM features that run on the same server at the same time.

[How to Install the MBAM Language Update on a Single Server](how-to-install-the-mbam-language-update-on-a-single-server-mbam-1.md)

[How to Install the MBAM Language Update on Distributed Servers](how-to-install-the-mbam-language-update-on-distributed-servers-mbam-1.md)

## Install the MBAM language update for Group Policies


The MBAM Group Policy templates can be installed on each management workstation or they can be copied to the Group Policy central store, in order to make the templates available to all Group Policy administrators. The policy templates cannot be directly installed on a domain controller. If you do not use a Group Policy central store, then you must copy the policies manually to each domain controller that manages MBAM Group Policy.

To add the MBAM language policies templates, copy the Group Policy language files from %SystemRoot%\\PolicyDefinitions on the computer where the “Policy Templates” role was installed to the same location on the workstation computer. Here are some examples of Group Policy files:

-   BitLockerManagement.admx

-   BitLockerUserManagement.admx

-   en-us\\BitLockerManagement.adml

-   en-us\\BitLockerUserManagement.adml

-   fr-fr\\ BitLockerManagement.adml

-   fr-fr\\ BitLockerUserManagement.adml

-   (and similarly for each supported language)

## Known issues in the MBAM international release


This topic contains known issues for Microsoft BitLocker Administration and Monitoring International Release.

[Known Issues in the MBAM International Release](known-issues-in-the-mbam-international-release-mbam-1.md)

## Other resources for deploying the MBAM 1.0 Language Update


[Deploying MBAM 1.0](deploying-mbam-10.md)

 

 





