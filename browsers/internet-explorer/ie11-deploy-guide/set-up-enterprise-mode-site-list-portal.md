---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to set up the Enterprise Mode Site List Portal for your organization.
author: eross-msft
ms.prod: ie11
title: Set up the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
---

# Set up the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

The Enterprise Mode Site List Portal is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management. Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

Before you can begin using the Enterprise Mode Site List Portal, you must set up your environment.

## Step 1 - Copying the deployment folder to the web server
You must download the deployment folder (**EMIEWebPortal/**), which includes all of the source code for the website, from the [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal) site to your web server.

**To download the source code**
1. Download the deployment folder from the [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal) source code to your web server.

2. Install the Node.js® package manager, [npm](https://www.npmjs.com/).

    >[!Note]   
    >You need to install the npm package manager to replace all the third-party libraries we removed to make the Enterprise Mode Site List Portal open-source.

3. Open File Explorer and then open the **EMIEWebPortal/** folder.

4. Press and hold **Shift**, right-click the window, then click **Open PowerShell window here**.

5. Type _npm i_ into the command prompt, then press **Enter**.

   Installs the npm package manager and bulk adds all the third-party libraries back into your codebase.

6. Go back up a directory, open the solution file **EMIEWebPortal.sln** in Visual Studio, and then build the entire solution.

7. Copy the contents of the **EMIEWebPortal/** folder to a dedicated folder on your file system. For example, _D:\EMIEWebApp_. In a later step, you'll designate this folder as your website in the IIS Manager.

## Step 2 - Create the Application Pool and website, by using IIS
Create a new Application Pool and the website, by using the IIS Manager.

**To create a new Application Pool**
1. In IIS Manager, expand your local computer, right-click **Application Pools**, then click **Add Application Pool**.
   
   The **Add Application Pool** box appears.

2. In the **Add Application Pool** box, enter the following info:
    
    - **Name.** Type the name of your new application pool. For example, _EMIEWebAppPool_.

    - **.NET CLR version.** Pick the version of .NET CLR used by your application pool from the drop-down box. It must be version 4.0 or higher.

    - **Managed pipeline mode.** Pick **Integrated** from the drop-down box. IIS uses the integrated IIS and ASP.NET request-processing pipeline for managed content.

3. Click **OK**.

4. Select your new application pool from the **Application Pool** pane, click **Advanced Settings** from the **Edit Application Pool** area of the **Actions** pane.

   The **Advanced Settings** box appears.

5. Make sure your **Identity** value is **ApplicationPoolIdentity**, click **OK**, and then close the box.

6. Open File Explorer and go to your deployment directory, created in Step 1. For example, _D:\EMIEWebApp_.

7. Right-click on the directory, click **Properties**, and then click the **Security** tab.

8. Add your new application pool to the list (for example, _IIS AppPool\EMIEWebAppPool_) with **Full control access**, making sure the location searches the local computer.

9. Add **Everyone** to the list with **Read & execute access**.

**To create the website**
1. In IIS Manager, expand your local computer, right-click **Sites**, then click **Add Website**.
   
   The **Add Website** box appears.

2. In the **Add Website** box, type the name of your website into the **Site name** box. For example, _EMIEWebApp_, and then click **Select**.

3. The **Select Application Pool** box appears.

4. Pick the name of the application pool created earlier in this step, and then click **OK**. For example, _EMIEWebAppPool_.

5. In the **Physical path** box, browse to your folder that contains your deployment directory. For example, _D:\EMIEWebApp_.

6. Set up your **Binding**, including your **Binding Type**, **IP address**, and **Port**, as appropriate for your organization.

7. Clear the **Start Website immediately** check box, and then click **OK**.

8. In IIS Manager, expand your local computer, and then double-click your new website. For example, _EMIEWebApp_.

   The **_EMIEWebApp_ Home** pane appears.

9. Double-click the **Authentication** icon, right-click on **Windows Authentication**, and then click **Enable**. 

    >[!Note]
    >You must also make sure that **Anonymous Authentication** is marked as **Enabled**.

10. Return to the **_EMIEWebApp_ Home** pane, and double-click the **Connection Strings** icon.

11. Open the **LOBMergedEntities Connection String** to edit: 

    - **Data source.** Type the name of your local computer.

    - **Initial catalog.** The name of your database.

        >[!Note]
        >Step 3 of this topic provides the steps to create your database.

## Step 3 - Create and prepare the database
1. Start SQL Server Management Studio.

2. Open Object Explorer and then connect to an instance fo the SQL Server Database Engine.

3. Expand the instance, right-click on Databases, and then click New Database.

4. Type a database name. For example, EMIEDatabase.

5. Accept all of the default values, and then click **OK**.

6. Open the DatabaseScripts/Create DB Tables/1_CreateEMIETables.sql query.

7. Replace the database name placeholder with your database name, created in Step 4.

8. Run the query.

