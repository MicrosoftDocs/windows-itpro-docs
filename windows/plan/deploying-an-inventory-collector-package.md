---
title: Deploying an Inventory-Collector Package (Windows 10)
ms.assetid: 8726ff71-0d17-4449-bdb7-66957ae51c62
description: 
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Deploying an Inventory-Collector Package


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can use the following methods to deploy an inventory-collector package to the destination computers:

-   **Group Policy Software Installation.** This is a feature of Active Directory Domain Services in Windows Server. All computers to which you deploy the package must be part of the Active Directory forest.

-   **Logon script.** You can use Windows Script Host to create a logon script. Installing by using a logon script requires administrator credentials on the local computer.

-   **Microsoft® System Center Configuration Manager.** For information about how to use System Center Configuration Manager, see the product documentation.

-   **Manual distribution.** You can use a file server on the network as a software distribution point, or you can distribute removable media. User installation of an inventory-collector package requires administrator credentials on the local computer.

**To deploy an inventory-collector package by using Group Policy Software Installation**

1.  Ensure that the computers to which you want to deploy the inventory-collector package are members of the Active Directory forest.

2.  Create a Group Policy Object (GPO) for publishing the inventory-collector package.

3.  Assign the GPO to the organizational units (OUs) that contain the set of computers.

4.  Create and publish a new software installation package by using Group Policy Software Installation.

    For information about the Group Policy Software Installation process, see [Best practices for Group Policy Software Installation](http://go.microsoft.com/fwlink/p/?LinkId=87996).

**To assign a logon script for installing an inventory-collector package to an organizational unit**

1.  Create the logon script. The following script is an example.

    ``` syntax
    Set ws = WScript.CreateObject("WScript.Shell")
    ws.Run("\\servername\collector\package_name.exe")
    ```

    To keep the installation from running repeatedly, your script must create a marker.

    For more information about logon scripts, see [Assign a Logon Script to a User in the Active Directory](http://go.microsoft.com/fwlink/p/?LinkId=87997).

2.  Save your script in the SYSVOL\\Scripts folder.

3.  Open the Active Directory Users and Computers console by clicking **Start**, clicking **All Programs**, clicking **Administrative Tools**, and then clicking **Active Directory Users and Computers**.

4.  Right-click the OU to which you intend to assign the logon script, click **Properties**, and then click the **Group Policy** tab.

5.  Click **New** to add a new GPO, or select an existing GPO and then click **Edit**.

6.  In the left pane, expand the **User Configuration** object, expand the **Windows Setting** object, and then click **Scripts (Logon/Logoff)**.

7.  In the right pane, double-click the **Logon** script.

8.  Click **Add**.

9.  Click **Browse**, browse to the \\\\*&lt;domain&gt;*\\Sysvol\\Scripts folder, select your script, and then click **Open**.

10. Click **OK** to close the **Logon Properties** dialog box.

11. Close the Group Policy Management console and the Active Directory Users and Computers console.

12. On a computer that is a member of the domain and a part of the OU, log on as an OU user.

13. Open a **Command Prompt** window, and then type `GPUPDATE /force` to force the update of the Group Policy setting.

14. At the command prompt, type `RSOP.msc` to verify your Group Policy assignment.

15. In the left pane, expand the **Computer Configuration** object, expand the **Windows Setting** object, and then click **Security Settings**.

16. Expand **Account Policies**, click **Password Policy**, and verify the assigned Group Policy setting.

17. Close the Resultant Set of Policy console and the **Command Prompt** window.

**To deploy an inventory-collector package by using System Center Configuration Manager**

1.  Verify that the computers to which you want to deploy the package are included in your Configuration Manager inventory.

2.  Create a Configuration Manager computer collection that includes the computers.

3.  Create a shared folder that contains the source image of the inventory-collector package.

4.  Create a Configuration Manager package that is based on the source image from the shared folder.

    For more information, see [How to Create a Package](http://go.microsoft.com/fwlink/p/?LinkId=131355).

5.  Specify the Configuration Manager software distribution points.

6.  Create a Configuration Manager program that includes the required commands and command-line options to deploy the inventory-collector package.

    For more information, see [How to Create a Program](http://go.microsoft.com/fwlink/p/?LinkId=131356).

7.  Create a Configuration Manager advertisement that instructs Configuration Manager clients to run the program that you specified in the previous step.

    For more information, see [How to Create an Advertisement](http://go.microsoft.com/fwlink/p/?LinkId=131357).

**To deploy an inventory-collector package from a network share**

1.  Store your package (.msi) file in a shared folder on the network.

2.  Notify the users of the computers that require the inventory-collector package to run the .msi file. For example, you might send an email message that includes a hyperlink to the shared folder.

**To deploy an inventory-collector package to offline computers**

1.  In your inventory-collector package, specify a local output path for the log file.

2.  Burn your.msi file to removable media.

3.  Send the removable media to users of the offline computers.

4.  Instruct the users to run the .msi file and then return the generated log file. For example, the users might send the log file in an email message or place the file on a network share.

## Related topics


[Identifying Computers for Inventory Collection](identifying-computers-for-inventory-collection.md)

[Creating an Inventory-Collector Package](creating-an-inventory-collector-package.md)

 

 





