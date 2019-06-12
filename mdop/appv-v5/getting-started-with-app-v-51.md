---
title: Getting Started with App-V 5.1
description: Getting Started with App-V 5.1
author: dansimp
ms.assetid: 49a20e1f-0566-4e53-a417-1521393fc974
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Getting Started with App-V 5.1


Microsoft Application Virtualization (App-V) 5.1 enables administrators to deploy, update, and support applications as services in real time, on an as-needed basis. Individual applications are transformed from locally installed products into centrally managed services and are available wherever you need, without the need to preconfigure computers or to change operating system settings.

App-V consists of the following elements:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Element</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Management Server</p></td>
<td align="left"><ul>
<li><p>Provides a central location for managing the App-V infrastructure, which delivers virtual applications to both the App-V Desktop Client and the Remote Desktop Services (formerly Terminal Services) Client.</p></li>
<li><p>Uses Microsoft SQL Server® for its data store, where one or more App-V Management servers can share a single SQL Server data store.</p></li>
<li><p>Authenticates requests and provides security, metering, monitoring, and data gathering. The server uses Active Directory and supporting tools to manage users and applications.</p></li>
<li><p>Has a management site that lets you configure the App-V infrastructure from any computer. You can add and remove applications, manipulate shortcuts, assign access permissions to users and groups, and create connection groups.</p></li>
<li><p>Enables communication between the App-V Web Management Console and the SQL Server data store. These components can all be installed on a single server computer, or on one or more separate computers, depending on the required system architecture.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Publishing Server</p></td>
<td align="left"><ul>
<li><p>Provides App-V Clients with entitled applications for the specific user</p></li>
<li><p>Hosts the virtual application package for streaming.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Desktop Client</p></td>
<td align="left"><ul>
<li><p>Retrieves virtual applications</p></li>
<li><p>Publishes the applications on the clients</p></li>
<li><p>Automatically sets up and manages virtual environments at runtime on Windows endpoints.</p></li>
<li><p>Stores user-specific virtual application settings, such as registry and file changes, in each user&#39;s profile.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Remote Desktop Services (RDS) Client</p></td>
<td align="left"><p>Enables Remote Desktop Session Host servers to use the capabilities of the App-V Desktop Client for shared desktop sessions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Sequencer</p></td>
<td align="left"><ul>
<li><p>Is a wizard-based tool that you use to transform traditional applications into virtual applications.</p></li>
<li><p>Produces the application “package,” which consists of:</p>
<ol>
<li><p>a sequenced application (APPV) file</p></li>
<li><p>a Windows Installer file (MSI) that can be deployed to clients configured for stand-alone operation</p></li>
<li><p>Several XML files including Report.XML, PackageName_DeploymentConfig.XML, and PackageName_UserConfig.XML. The UserConfig and DeploymentConfig XML files are used to configure custom changes to the default behavior of the package.</p></li>
</ol></li>
</ul></td>
</tr>
</tbody>
</table>

 

For more information about these elements, see [High Level Architecture for App-V 5.1](high-level-architecture-for-app-v-51.md).

If you are new to this product, we recommend that you read the documentation thoroughly. Before you deploy it to a production environment, we also recommend that you validate your deployment plan in a test network environment. You might also consider taking a class about relevant technologies. For more information about Microsoft training opportunities, see the Microsoft Training Overview at <https://go.microsoft.com/fwlink/p/?LinkId=80347>.

**Note**  
A downloadable version of this administrator’s guide is not available. However, you can learn about a special mode of the TechNet Library that allows you to select articles, group them in a collection, and print them or export them to a file at <https://go.microsoft.com/fwlink/?LinkId=272491> (https://go.microsoft.com/fwlink/?LinkId=272491).

 

This section of the App-V 5.1 Administrator’s Guide includes high-level information about App-V 5.1 to provide you with a basic understanding of the product before you begin the deployment planning.

## Getting started with App-V 5.1


-   [About App-V 5.1](about-app-v-51.md)

    Provides a high-level overview of App-V 5.1 and how it can be used in your organization.

-   [Evaluating App-V 5.1](evaluating-app-v-51.md)

    Provides information about how you can best evaluate App-V 5.1 for use in your organization.

-   [High Level Architecture for App-V 5.1](high-level-architecture-for-app-v-51.md)

    Provides a description of the App-V 5.1 features and how they work together.

-   [Accessibility for App-V 5.1](accessibility-for-app-v-51.md)

    Provides information about features and services that make this product and its corresponding documentation more accessible for people with disabilities.

## <a href="" id="other-resources-for-this-product-"></a>Other resources for this product


-   [Microsoft Application Virtualization 5.1 Administrator's Guide](microsoft-application-virtualization-51-administrators-guide.md)

-   [Planning for App-V 5.1](planning-for-app-v-51.md)

-   [Deploying App-V 5.1](deploying-app-v-51.md)

-   [Operations for App-V 5.1](operations-for-app-v-51.md)

-   [Troubleshooting App-V 5.1](troubleshooting-app-v-51.md)

-   [Technical Reference for App-V 5.1](technical-reference-for-app-v-51.md)






 

 





