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
1. In IIS Manager, expand your local computer in the **Connections** pane, right-click **Application Pools**, then click **Add Application Pool**.
   
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

8. Add your new application pool to the list (for example, *IIS AppPool\EMIEWebAppPool*) with **Full control access**, making sure the location searches the local computer.

9. Add **Everyone** to the list with **Read & execute access**.

**To create the website**
1. In IIS Manager, expand your local computer in the **Connections** pane, right-click **Sites**, then click **Add Website**.
   
   The **Add Website** box appears.

2. In the **Add Website** box, type the name of your website into the **Site name** box. For example, _EMIEWebApp_, and then click **Select**.

3. The **Select Application Pool** box appears.

4. Pick the name of the application pool created earlier in this step, and then click **OK**. For example, _EMIEWebAppPool_.

5. In the **Physical path** box, browse to your folder that contains your deployment directory. For example, _D:\EMIEWebApp_.

6. Set up your **Binding**, including your **Binding Type**, **IP address**, and **Port**, as appropriate for your organization.

7. Clear the **Start Website immediately** check box, and then click **OK**.

8. In IIS Manager, expand your local computer, and then double-click your new website. For example, _EMIEWebApp_.

   The **<<i>website_name</i>> Home** pane appears.

9. Double-click the **Authentication** icon, right-click on **Windows Authentication**, and then click **Enable**. 

    >[!Note]
    >You must also make sure that **Anonymous Authentication** is marked as **Enabled**.

10. Return to the **<<i>website_name</i>> Home** pane, and double-click the **Connection Strings** icon.

11. Open the **LOBMergedEntities Connection String** to edit: 

    - **Data source.** Type the name of your local computer.

    - **Initial catalog.** The name of your database.

        >[!Note]
        >Step 3 of this topic provides the steps to create your database.

## Step 3 - Create and prepare the database
1. Start SQL Server Management Studio.

2. Open Object Explorer and then connect to an instance fo the SQL Server Database Engine.

3. Expand the instance, right-click on Databases, and then click New Database.

4. Type a database name. For example, _EMIEDatabase_.

5. Accept all of the default values, and then click **OK**.

6. Open the **DatabaseScripts/Create DB Tables/1_CreateEMIETables.sql** query file.

7. Replace the database name placeholder with the database name you created earlier. For example, _EMIEDatabase_.

8. Run the query.

## Step 4: Map your Application Pool to a SQL Server role
Map your ApplicationPoolIdentity to your database, adding the db_owner role.

**To map your ApplicationPoolIdentity to a SQL Server role**
1. Start SQL Server Management Studio and connect to your database.
2. Expand the instance and 
Open SQL Server Management Studio and connect to your instance.
Expand the instance and open the *Security folder at the server level, not the security folder for the database.
Right-click on Logins and select New Login.
Do not click Search. In the Login name field, if you have a local SQL Server instance, where IIS and SQL Server are on the same server, enter the name of your Application Pool, e.g. IIS AppPool\EMIEWebAppPool. If you have a remote SQL Server instance, where IIS and SQL Server are on the same server, enter Domain\ServerName$.
(If a search is executed, it will resolve to an account with ServerName\AppPool Name and Management Studio will be unable to resolve the account's SID, as it is virtual) 
Open the User Mapping page and check the database you created earlier, e.g. EMIEDatabase. Select db_owner in the list of roles.
Click OK.

## Step 5: Restart the Application Pool and website
Using the IIS Manager, you must restart both your Application Pool and your website.

**To restart your Application Pool and website**
1. In IIS Manager, expand your local computer in the **Connections** pane, select your website, then click **Restart** from the **Manage Website** pane.

2. In the **Connections** pane, select your Application Pool, and then click **Recycle** from the **Application Pool Tasks** pane.