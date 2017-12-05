---
title: Windows Hello for Business Deployment Guide
description: A guide to Windows Hello for Business deployment 
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 10/20/2017
---
# Windows Hello for Business Deployment Guide

**Applies to**
-   Windows 10
-   Windows 10 Mobile

> This guide only applies to Windows 10, version 1703 or higher.

Windows Hello for Business is the springboard to a world without passwords. It replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair.

This deployment guide is to guide you through deploying Windows Hello for Business, based on the planning decisions made using the Planning a Windows Hello for Business Deployment Guide. It provides you with the information needed to successfully deploy Windows Hello for Business in an existing environment.

## Assumptions

This guide assumes a baseline infrastructure exists that meets the requirements for your deployment.  For either hybrid or on-premises deployments, it is expected that you have: 
* A well-connected, working network
* Internet access
* Multifactor Authentication Server to support MFA during Windows Hello for Business provisioning
* Proper name resolution, both internal and external names
* Active Directory and an adequate number of domain controllers per site to support authentication
* Active Directory Certificate Services 2012 or later
* One or more workstation computers running Windows 10, version 1703

If you are installing a role for the first time, ensure the appropriate server operating system is installed, updated with the latest patches, and joined to the domain.  This document provides guidance to install and configure the specific roles on that server.  

Do not begin your deployment until the hosting servers and infrastructure (not roles) identified in your prerequisite worksheet are configured and properly working.

## Deployment and trust models

Windows Hello for Business has two deployment models: Hybrid and On-premises. Each deployment model has two trust models: Key trust or certificate trust.

Hybrid deployments are for enterprises that use Azure Active Directory.  On-premises deployments are for enterprises who exclusively use on-premises Active Directory. Remember that the environments that use Azure Active Directory must use the hybrid deployment model for all domains in that forest.

The trust model determines how you want users to authentication to the on-premises Active Directory. Remember hybrid environments use Azure Active Directory and on-premises Active Directory. The key-trust model is for enterprises who do not want to issue end-entity certificates to their users and they have an adequate number of 2016 domain controllers in each site to support the authentication. The certificate-trust model is for enterprise that do want to issue end-entity certificates to their users and have the benefits of certificate expiration and renewal, similar to how smart cards work today. The certificate trust model is also enterprise who are not ready to deploy Windows Server 2016 domain controllers.

Following are the various deployment guides included in this topic:
* [Hybrid Key Trust Deployment](hello-hybrid-key-trust.md)
* [Hybrid Certificate Trust Deployment](hello-hybrid-cert-trust.md)
* [On Premises Key Trust Deployment](hello-deployment-key-trust.md)
* [On Premises Certificate Trust Deployment](hello-deployment-cert-trust.md)


## Provisioning

The Windows Hello for Business provisioning begins immediately after the user has signed in, after the user profile is loaded, but before the user receives their desktop.  Windows only launches the provisioning experience if all the prerequisite checks pass. You can determine the status of the prerequisite checks by viewing the **User Device Registration** in the **Event Viewer** under **Applications and Services Logs\Microsoft\Windows**.

