---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to set up the Enterprise Mode Site List Portal for your organization.
author: lomayor
ms.prod: ie11
title: Set up the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
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

## Step 1 - Copy the deployment folder to the web server
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

6. Go back up a directory, open the solution file **EMIEWebPortal.sln** in Visual Studio, open **Web.config** from **EMIEWebPortal/** folder, and replace MSIT-LOB-COMPAT with your server name hosting your database, replace LOBMerged with your database name, and build the entire solution.

      >[!Note]
      >Step 3 of this topic provides the steps to create your database.

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

8. Add your new application pool to the list (for example, _IIS AppPool\EMIEWebAppPool_) with **Full control access**, making sure the location searches the local computer.

9. Add **Everyone** to the list with **Read & execute access**.

**To create the website**
1. In IIS Manager, expand your local computer in the **Connections** pane, right-click **Sites**, then click **Add Website**.
   
   The **Add Website** box appears.

2. In the **Add Website** box, type the name of your website into the **Site name** box. For example, _EMIEWebApp_, and then click **Select**.

   The **Select Application Pool** box appears.

4. Pick the name of the application pool created earlier in this step, and then click **OK**. For example, _EMIEWebAppPool_.

5. In the **Physical path** box, browse to your folder that contains your deployment directory. For example, _D:\EMIEWebApp_.

6. Set up your **Binding**, including your **Binding Type**, **IP address**, and **Port**, as appropriate for your organization.

7. Clear the **Start Website immediately** check box, and then click **OK**.

8. In IIS Manager, expand your local computer, and then double-click your new website. For example, _EMIEWebApp_.

   The **<<i>website_name</i>> Home** pane appears.

9. Double-click the **Authentication** icon, right-click on **Windows Authentication**, and then click **Enable**. 

    >[!Note]
    >You must also make sure that **Anonymous Authentication** is marked as **Enabled**.

## Step 3 - Create and prep your database
Create a SQL Server database and run our custom query to create the Enterprise Mode Site List tables.

**To create and prep your database**
1. Start SQL Server Management Studio.

2. Open **Object Explorer** and then connect to an instance of the SQL Server Database Engine.

3. Expand the instance, right-click on **Databases**, and then click **New Database**.

4. Type a database name. For example, _EMIEDatabase_.

5. Leave all default values for the database files, and then click **OK**.

6. Open the **DatabaseScripts/Create DB Tables/1_CreateEMIETables.sql** query file, located in the deployment directory.

7. Replace the database name placeholder with the database name you created earlier. For example, _EMIEDatabase_.

8. Run the query.

## Step 4 - Map your Application Pool to a SQL Server role
Map your ApplicationPoolIdentity to your database, adding the db_owner role.

**To map your ApplicationPoolIdentity to a SQL Server role**
1. Start SQL Server Management Studio and connect to your database.

2. Expand the database instance and then open the server-level **Security** folder.
    
    > [!IMPORTANT]
    > Make sure you open the **Security** folder at the server level and not for the database.

3. Right-click **Logins**, and then click **New Login**.

   The **Login-New** dialog box appears.  

4. Type the following into the **Login name** box, based on your server instance type:

    - **Local SQL Server instance.** If you have a local SQL Server instance, where IIS and SQL Server are on the same server, type the name of your Application Pool. For example, _IIS AppPool\EMIEWebAppPool_.

    - **Remote SQL Server instance.** If you have a remote SQL Server instance, where IIS and SQL Server are on different servers, type `Domain\ServerName$`.

        > [!IMPORTANT]
        > Don't click **Search** in the **Login name** box. Login name searches will resolve to a ServerName\AppPool Name account and SQL Server Management Studio won't be able to resolve the account's virtual Security ID (SID).

5. Click **User Mapping** from the **Select a page** pane, click the checkbox for your database (for example, _EMIEDatabase_) from the **Users mapped to this login** pane, and then click **db_owner** from the list of available roles in the **Database role membership** pane. 

6. Click **OK**.

## Step 5 - Restart the Application Pool and website
Using the IIS Manager, you must restart both your Application Pool and your website.

**To restart your Application Pool and website**
1. In IIS Manager, expand your local computer in the **Connections** pane, select your website, then click **Restart** from the **Manage Website** pane.

2. In the **Connections** pane, select your Application Pool, and then click **Recycle** from the **Application Pool Tasks** pane.

## Step 6 - Registering as an administrator
After you've created your database and website, you'll need to register yourself (or another employee) as an administrator for the Enterprise Mode Site List Portal.

**To register as an administrator**
1. Open Microsoft Edge and type your website URL into the Address bar. For example, https://emieportal:8085.

2. Click **Register now**.

3. Type your name or alias into the **Email** box, making sure it matches the info in the drop-down box.

4. Click **Administrator** from the **Role** box, and then click **Save**.

5. Append your website URL with `/#/EMIEAdminConsole` in the Address bar to go to your administrator console. For example, https://emieportal:8085/#/EMIEAdminConsole.

   A dialog box appears, prompting you for the system user name and password. The default user name is EMIEAdmin and the default password is Admin123. We strongly recommend that you change the password by using the **Change password** link as soon as you're done with your first visit.

6. Select your name from the available list, and then click **Activate**.

7. Go to the Enterprise Mode Site List Portal Home page and sign in.

## Step 7 - Configure the SMTP server and port for email notification
After you've set up the portal, you need to configure your SMTP server and port for email notifications from the system.

**To set up your SMTP server and port for emails**
1. Open Visual Studio, and then open the web.config file from your deployment directory.

2. Update the SMTP server and port info with your info, using this format:

    ```
       <add key="host" value="SMTPHOST.corp.contoso.com"/>
       <add key="port" value="2500"/>
    ```
3. Open the **Settings** page in the Enterprise Mode Site List Portal, and then update the email account and password info.

## Step 8 - Register the scheduler service
Register the EMIEScheduler tool and service for production site list changes.

**To register the scheduler service**

1. Open File Explorer and go to EMIEWebPortal.SchedulerService\EMIEWebPortal.SchedulerService in your deployment directory, and then copy the **App_Data**, **bin**, and **Logs** folders to a separate folder. For example, C:\EMIEService\.
 
    >[!Important]
    >If you can't find the **bin** and **Logs** folders, you probably haven't built the Visual Studio solution. Building the solution creates the folders and files.

2. In Visual Studio start the Developer Command Prompt as an administrator, and then change the directory to the location of the InstallUtil.exe file. For example, _C:\Windows\Microsoft.NET\Framework\v4.0.30319_.

3. Run the command, `InstallUtil "<path_to_service>"`. For example, _InstallUtil "C:\EMIEService\bin\Debug\EMIEWebPortal.SchedulerService.exe"._
 
   You'll be asked for your user name and password for the service.

4. Open the **Run** command, type `Services.msc`, and then start the EMIEScheduler service.

## Related topics
- [Enterprise Mode Site List Portal source code](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)

- [Enterprise Mode and the Enterprise Mode Site List](what-is-enterprise-mode.md)

- [Use the Enterprise Mode Site List Manager tool or page](use-the-enterprise-mode-site-list-manager.md) 
