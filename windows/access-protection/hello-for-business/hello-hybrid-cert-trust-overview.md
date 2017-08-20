---
title: Hybrid Certificate Trust Deployment (Windows Hello for Business)
description: Hybrid Certificate Trust Deployment Overview
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: DaniHalfin
ms.author: mstephen
localizationpriority: high
---
# Hybrid Certificate Trust Deployment

**Applies to**
-   Windows 10

> This guide only applies to Windows 10, version 1703 or higher.

 
Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid certificate trust scenario.

It is recommended that review the Windows Hello for Business planning guide prior to using the deployment guide.  The planning guide helps you make decisions by explaining the available options with each aspect of the deployment and explains the potential outcomes based on each of these decisions.  You can review the [planning guide](https://docs.microsoft.com/en-us/windows/access-protection/hello-for-business/hello-planning-guide) and download the [planning worksheet](https://go.microsoft.com/fwlink/?linkid=852514).

This deployment guide provides guidance for new deployments and customers who are already federated with Office 365.  These two scenarios provide a baseline from which you can begin your deployment.

## New Deployment Baseline ##
The new deployment baseline helps organizations who are moving to Azure and Office 365 to include Windows Hello for Business as part of their deployments.  This baseline is good for organizations how are looking to deploy proof of concepts as well as IT professionals who want to familiarize themselves by deploying a lab environment.
 
This baseline provides detailed procedures to move your environment from an on-premises only environment to a hybrid environment using Windows Hello for Business to authenticate to Azure Active Directory and to your on-premises Active Directory using a single Windows sign-in.
 
## Federated Baseline ##
The federated baseline helps organizations who have completed their federation with Azure Active Directory and Office 365 introduce Windows Hello for Business into their hybrid environment.  This baseline exclusively focuses on the procedures needed add Windows Hello for Business to an existing hybrid deployment.

Regardless of the baseline you choose, you’re next step is to familiarize yourself with the Prerequisites needed for the deployment.  Many of the prerequisites will be new for organizations and individuals pursuing the new deployment baseline. Organizations and individuals starting from the federated baseline will likely be familiar with most of the prerequisites, but should validate they are using the proper versions that include the latest updates.
<br><br>

<hr>

## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. Overview (*You are here*)
2. [Prerequistes](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Windows Hello for Business settings](hello-hybrid-cert-whfb-settings.md)
5. Sign-in and Provision