---
title: Design the MED-V Image Repositories
description: Design the MED-V Image Repositories
author: dansimp
ms.assetid: e153154d-2751-4990-b94d-a2d76242c15f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Design the MED-V Image Repositories


After MED-V images are created and packed, they can be stored on a file server in any location. The files may be sent over HTTP or HTTPS by one or more IIS servers. The image repository can be shared by multiple MED-V instances.

To design the image repositories, you must first decide how the images will be deployed to each client and then whether that client requires a local image repository. Each repository is then designed and placed, along with its accompanying IIS server.

## Determine How Images Will Be Deployed


For each MED-V workspace, decide how you plan to deploy MED-V images to the client. This is important in determining how many repositories are necessary to store the packed images, where those repositories will be placed, and then to design those repositories.

Packed images can be deployed in the following ways:

-   Downloaded over the network from an image distribution server, which comprises a file server and IIS server.

-   On removable media, such as a USB drive or DVD.

-   Pre-staged to an image store directory on the client computer using an enterprise software distribution center.

Decide which method, or methods, will be used to deploy MED-V images to each of the clients and whether the location will require an image repository.

## Determine the Number of Image Repositories


Now that you have determined the minimum number of repositories you need, add more if any of the following criteria apply:

-   Organizational or regulatory reasons to separate the MED-V images—some MED-V images may not be able to coexist in the same repository. For example, sensitive personal data may require storage on a server that is only available to a limited set of employees who need access to the data.

-   Clients in isolated networks—if images will be deployed over the network, determine whether any networks are isolated and require a separate repository. For example, organizations often isolate lab networks from production networks.

-   Clients in remote networks—if images will be deployed over the network, some client machines may be separated from the repository by network links that have insufficient bandwidth to provide an adequate experience when a client loads a MED-V workspace. If necessary, design additional MED-V instances to address this need.

Add these repositories to the design. Decide on a name for each repository and the reason for designing it. Decide which MED-V images the repositories will hold and which MED-V clients will load MED-V workspaces with images from the repository.

## Design and Place the Image Repositories


When a new image is available to clients, clients begin downloading the image, possibly simultaneously. This creates a high demand on the repository and must be taken into account when designing the image repository.

For each repository, determine the amount of data it will store. Sum the sizes of images that will be stored in the repository. This is the value of the disk space required on the file server.

Next, add up the number of clients that may download MED-V images from the repository. This is the maximum number of concurrent downloads that can occur when a new MED-V image is loaded into the repository. The file server must be designed with a disk subsystem that can meet the IO demands this will create.

The image repository can reside on the same system as the MED-V server and the server running SQL Server, or on a remote file share. You can also run it in a Windows Server 2008 Hyper-V VM. Check the network location of the clients that the image repository will service, and place the repository in a network location where it will have sufficient bandwidth to meet the service level expectations of those clients.

### Fault Tolerance

If the image repository is unavailable, clients will not be able to download new or updated MED-V images. To design fault-tolerance options for the file server and fault-tolerant disks, see the [Infrastructure Planning and Design Microsoft SQL Server 2008](https://go.microsoft.com/fwlink/?LinkId=163302) guide.

## Design and Place the IIS Servers


This section is only relevant if clients will download image files over the network using HTTP or HTTPS.

The IIS server can coexist on the same system as the MED-V server and the server running SQL Server. It can also run in a Windows Server 2008 Hyper-V VM. The IIS server infrastructure must have sufficient throughput to deliver images to clients within the service level expectations of the organization. It must be designed with a disk subsystem that can meet the IO demands this creates.

For each image repository, sum the number of clients that may download MED-V images using IIS. This is the maximum number of concurrent downloads that can occur when an image is loaded into the repository. Use the throughput sum and the service level expectations determined in [Define the Project Scope](define-the-project-scope.md) to plan the design of the IIS server infrastructure and to determine the appropriate amount of bandwidth to allocate for the repository.

To design the IIS infrastructure, see the [Infrastructure Planning and Design Microsoft Internet Information Services](https://go.microsoft.com/fwlink/?LinkId=160826) guide.

### Fault Tolerance

If the IIS server infrastructure is unavailable, clients will not be able to download new or updated images. To configure fault tolerance, the Windows Server 2008-based IIS server can be placed in a failover cluster. To design the fault tolerance for the IIS server infrastructure, see the [Infrastructure Planning and Design Microsoft Internet Information Services](https://go.microsoft.com/fwlink/?LinkId=160826) guide.

## Related topics


[Deploying a MED-V Workspace Using an Enterprise Software Distribution System](deploying-a-med-v-workspace-using-an-enterprise-software-distribution-system.md)

[Deploying a MED-V Workspace Using a Deployment Package](deploying-a-med-v-workspace-using-a-deployment-package.md)

 

 





