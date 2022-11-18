---
title: Hybrid Key Trust Deployment (Windows Hello for Business)
description: Review this deployment guide to successfully deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 08/20/2018
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
ms.topic: article
---
# Hybrid Azure AD joined Key Trust Deployment

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid key trust scenario.

It is recommended that you review the Windows Hello for Business planning guide prior to using the deployment guide.  The planning guide helps you make decisions by explaining the available options with each aspect of the deployment and explains the potential outcomes based on each of these decisions.  You can review the [planning guide](/windows/access-protection/hello-for-business/hello-planning-guide) and download the [planning worksheet](https://go.microsoft.com/fwlink/?linkid=852514).

This deployment guide provides guidance for new deployments and customers who are already federated with Azure AD.  These two scenarios provide a baseline from which you can begin your deployment.

## New Deployment Baseline ##

The new deployment baseline helps organizations who are moving to Azure AD to include Windows Hello for Business as part of their deployments.  This baseline is good for organizations who are looking to deploy proof of concepts as well as IT professionals who want to familiarize themselves Windows Hello for Business by deploying a lab environment.

This baseline provides detailed procedures to move your environment from an on-premises only environment to a hybrid environment using Windows Hello for Business to authenticate to Azure Active Directory and to your on-premises Active Directory using a single Windows sign-in.

Your next step is to familiarize yourself with the prerequisites needed for the deployment.  Many of the prerequisites will be new for organizations and individuals pursuing the new deployment baseline. Organizations and individuals starting from the federated baseline will likely be familiar with most of the prerequisites, but should validate they are using the proper versions that include the latest updates.

> [!div class="nextstepaction"]
> [Prerequisites](hello-hybrid-key-trust-prereqs.md)

<br><br>

## Follow the Windows Hello for Business hybrid key trust deployment guide

1. Overview (*You are here*)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)