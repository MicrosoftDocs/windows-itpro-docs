---
title: Upgrading to MBAM 2.5 SP1 from MBAM 2.5
description: Upgrading to MBAM 2.5 SP1 from MBAM 2.5
author: kaushika
ms.assetid: 
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 2/16/2018
---

# Upgrading to MBAM 2.5 SP1 from MBAM 2.5
This topic describes the process for upgrading the Microsoft BitLocker Administration and Monitoring (MBAM) Server 2.5 and the MBAM Client from 2.5 to MBAM 2.5 SP1.

### Before you begin, download the September 2017 servicing release
[Desktop Optimization Pack](https://www.microsoft.com/en-us/download/details.aspx?id=56126)

#### Steps to upgrade the MBAM Database (SQL Server)
1. Using the MBAM Configurator; remove the Reports roll from the SQL server, or wherever the SSRS database is housed (Could be on the same server or  different one, depending on your environment)
Note: You will not see an option to remove the Databases; this is expected.  
2. Install 2.5 SP1 (Located with MDOP - Microsoft Desktop Optimization Pack 2015 from the Volume Licensing Service Center site:  <https://www.microsoft.com/Licensing/servicecenter/default.aspx>
3. Do not configure it at this time 
4. Install the September Rollup: https://www.microsoft.com/en-us/download/details.aspx?id=56126
5. Using the MBAM Configurator; re-add the Reports rollup
6. This will configure the SSRS connection using the latest MBAM code from the rollup 
7. Using the MBAM Configurator; re-add the SQL Database roll on the SQL Server.
- At the end, you will be warned that the DBs already exist and  weren’t created, but this is  expected.
- This process updates the existing databases to the current version  being installed                  

#### Steps to upgrade the MBAM Server (Running MBAM and IIS)
1. Using the MBAM Configurator; remove the Admin and Self Service Portals from  the IIS server
2. Install MBAM 2.5 SP1
3. Do not configure it at this time  
4. Install the September 2017 Rollup on the IIS server(https://www.microsoft.com/en-us/download/details.aspx?id=56126)
5. Using the MBAM Configurator; re-add the Admin and Self Service Portals to the IIS server 
6. This will configure the sites using the latest MBAM code from the June  Rollup
7. - Open an elevated command prompt, Type: **IISRESET** and Hit Enter.
 
#### Steps to upgrade the MBAM Clients/Endpoints
1. Uninstall the 2.5 Agent from client endpoints
2. Install the 2.5 SP1 Agent on the client endpoints
3. Push out the September Rollup Client update to clients running the 2.5 SP1 Agent 
4. There is no need to uninstall existing client prior to installing the September Rollup.  
