---
title: Define the Project Scope
description: Define the Project Scope
author: dansimp
ms.assetid: 84637d2a-2e30-417d-b150-dc81f414b3a5
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Define the Project Scope


When defining the project scope, determine the following:

1.  The MED-V end users—the location and number of end users are used in determining the location of MED-V client installations and the number of MED-V instances, as well as the number and placement of MED-V image repositories.

2.  The virtual machine (VM) images to be managed by MED-V—to determine the method of distributing images and placement of image repositories.

3.  The organization’s service level expectations—to determine the performance and fault-tolerance requirements for the MED-V server and database as well as the image repository.

4.  Validate with the business—ensure there is a complete understanding of how the planned infrastructure affects the business.

## Define the MED-V End Users


First, determine where the end users are located, as well as the number of users in each location. Second, obtain a network infrastructure diagram that displays the user locations and the available bandwidth to those locations. Third, find out if users travel between locations. If users travel, additional capacity may be required in the design of the server infrastructure and image repositories.

## Determine the MED-V Images to Be Managed by MED-V


After the MED-V end users have been defined, determine which VMs will be managed by MED-V for the users in each location.

If any of the VMs are stored in a centralized library, determine the location of the library so that it may be evaluated for use as a MED-V repository.

## <a href="" id="determine-the-organization-s-service-level-expectations"></a>Determine the Organization’s Service Level Expectations


For each MED-V workspace, note the acceptable time for a new image to load and the timeframe for critical updates to be deployed.

If applicable, record the service level expectations for MED-V reporting, to be used in the design of the server infrastructure.

## Validate with the Business


Ask business stakeholders and application owners the following questions:

-   Are there any existing images that can be combined? For example, if application A on Windows XP is one VPC image and application B on Windows XP is another VPC image, perhaps a single image can contain both applications, thereby reducing repository space and bandwidth required for image download.

-   Are the in-scope applications licensable and supportable if delivered in a VM by MED-V? Check with the application supplier to ensure that licensing and support terms will not be violated by delivering the application through MED-V.

 

 





