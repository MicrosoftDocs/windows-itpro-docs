---
title: Hybrid Certificate Trust Deployment (Windows Hello for Business)
description: Hybrid Certificate Trust Deployment Overview
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 09/08/2017
ms.reviewer: 
---
# Hybrid Azure AD joined Certificate Trust Deployment

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Certificate trust

 
Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid certificate trust scenario.

It is recommended that you review the Windows Hello for Business planning guide prior to using the deployment guide.  The planning guide helps you make decisions by explaining the available options with each aspect of the deployment and explains the potential outcomes based on each of these decisions.  You can review the [planning guide](https://docs.microsoft.com/windows/access-protection/hello-for-business/hello-planning-guide) and download the [planning worksheet](https://go.microsoft.com/fwlink/?linkid=852514).

This deployment guide provides guidance for new deployments and customers who are already federated with Office 365.  These two scenarios provide a baseline from which you can begin your deployment.

## New Deployment Baseline ##
The new deployment baseline helps organizations who are moving to Azure and Office 365 to include Windows Hello for Business as part of their deployments.  This baseline is good for organizations who are looking to deploy proof of concepts as well as IT professionals who want to familiarize themselves Windows Hello for Business by deploying a lab environment.
 
This baseline provides detailed procedures to move your environment from an on-premises only environment to a hybrid environment using Windows Hello for Business to authenticate to Azure Active Directory and to your on-premises Active Directory using a single Windows sign-in.
 
## Federated Baseline ##
The federated baseline helps organizations that have completed their federation with Azure Active Directory and Office 365 and enables them to introduce Windows Hello for Business into their hybrid environment.  This baseline exclusively focuses on the procedures needed to add Azure Device Registration and Windows Hello for Business to an existing hybrid deployment.

Regardless of the baseline you choose, your next step is to familiarize yourself with the prerequisites needed for the deployment.  Many of the prerequisites will be new for organizations and individuals pursuing the new deployment baseline. Organizations and individuals starting from the federated baseline will likely be familiar with most of the prerequisites, but should validate they are using the proper versions that include the latest updates.

> [!div class="nextstepaction"]
> [Prerequisites](hello-hybrid-cert-trust-prereqs.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. Overview (*You are here*)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Device Registration](hello-hybrid-cert-trust-devreg.md)
5. [Configure Windows Hello for Business settings](hello-hybrid-cert-whfb-settings.md)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
