---
Description: 'Install Internet Explorer 11 (IE11) - System Center 2012 R2 Configuration Manager'
MS-HAID: 'p\_ie11deploy.install\_internet\_explorer\_11\_\_ie11\_\_\_\_system\_center\_2012\_r2\_configuration\_manager'
MSHAttr: 'PreferredLib:/library'
title: 'Install Internet Explorer 11 (IE11) - System Center 2012 R2 Configuration Manager'
---

#  - System Center 2012 R2 Configuration Manager


You can install Internet Explorer 11 (IE11) by using [System Center R2 2012 Configuration Manager](http://go.microsoft.com/fwlink/p/?linkid=276664). Complete these steps for each operating system and platform combination.

![](../common/wedge.gif)**To install IE11**

1.  Download and approve the [System requirements and language support for Internet Explorer 11 (IE11)](system-requirements-and-language-support-for-ie11.md).

2.  Create a software distribution package that includes the IE11 installation package.

3.  Create a program that includes the command-line needed to run the IE11 installation package. To run the package silently, without restarting and without checking the Internet for updates, use:`ie11_package.exe /quiet /norestart /update-no`.

4.  Move the installation package to your distribution points, and then advertise the package.

You can also use System Center Essentials 2010 to deploy IE11 installation packages. For info, see [System Center Essentials 2010](http://go.microsoft.com/fwlink/p/?linkid=395200) and the [System Center Essentials 2010 Operations Guide](http://go.microsoft.com/fwlink/?LinkId=214266).

 

 



