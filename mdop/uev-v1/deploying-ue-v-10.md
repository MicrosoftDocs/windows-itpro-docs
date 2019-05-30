---
title: Deploying UE-V 1.0
description: Deploying UE-V 1.0
author: levinec
ms.assetid: 519598bb-8c81-4af7-bee7-357696bff880
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying UE-V 1.0


There are a number of different deployment configurations that Microsoft User Experience Virtualization (UE-V) supports. This section includes general information and step-by-step procedures to help you successfully perform the tasks that you must complete at different stages of your deployment.

## Deployment information for UE-V


A UE-V deployment requires a settings storage location on a network share and a UE-V agent installed on every computer that synchronizes settings. The UE-V Group Policy templates can be used to manage UE-V settings. The following topics describe how to deploy these features.

[Deploying the Settings Storage Location for UE-V 1.0](deploying-the-settings-storage-location-for-ue-v-10.md)

All UE-V deployments require a settings storage location where the settings packages that contain the synchronized setting values are located.

[Deploying the UE-V Agent](deploying-the-ue-v-agent.md)

To synchronize settings by using UE-V, a computer must have the UE-V Agent installed and running.

[Installing the UE-V Group Policy ADMX Templates](installing-the-ue-v-group-policy-admx-templates.md)

You can use Group Policy to preconfigure UE-V settings before you deploy the UE-V Agent as well as standard UE-V configuration.

## Deployment information for custom template deployment


If you plan to create custom settings location templates for applications other than the Microsoft applications that are included in UE-V, such as line-of-business applications, then you can deploy a settings template catalog and you must install the UE-V Generator to create those templates. For more information, see [Planning for Custom Template Deployment for UE-V 1.0](planning-for-custom-template-deployment-for-ue-v-10.md).

[Installing the UE-V Generator](installing-the-ue-v-generator.md)

Use the UE-V Generator to create, edit, and validate custom settings location templates that help synchronize settings of applications other than the default applications.

[Deploying the Settings Template Catalog for UE-V 1.0](deploying-the-settings-template-catalog-for-ue-v-10.md)

If you need to deploy custom settings location templates to support applications other than the default applications in the UE-V Agent, you must configure a settings template catalog to store them.

[Deploying UE-V Settings Location Templates for UE-V 1.0](deploying-ue-v-settings-location-templates-for-ue-v-10.md)

If you need to synchronize applications other than the default applications in the UE-V Agent, the custom setting location templates that are created with UE-V Generator can be distributed to the UE-V settings template catalog.

**Note**  
Deploying custom templates requires a settings template catalog. The default Microsoft application templates are deployed with the UE-V Agent.

 

## Topics for this product


[Microsoft User Experience Virtualization (UE-V) 1.0](index.md)

[Getting Started With User Experience Virtualization 1.0](getting-started-with-user-experience-virtualization-10.md)

[Planning for UE-V 1.0](planning-for-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

[Troubleshooting UE-V 1.0](troubleshooting-ue-v-10.md)

 

 





