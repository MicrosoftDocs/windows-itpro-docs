---
title: Configure Windows Defender ATP endpoints (client onboarding)
description: Use Group Policy to deploy the configuration package or do manual registry changes on endpoints so that they are onboarded to the service.
keywords: configure endpoints, client onboarding, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl:
ms.sitesec: library
author: mjcaparas
---

# Configure Windows Defender ATP endpoints (client onboarding)

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You can use a Group Policy (GP) configuration package or an automated script to configure endpoints. You can deploy the GP configuration package or script with a GP update, or manually through the command line.

## Configure with Group Policy
Using the GP configuration package ensures your endpoints will be correctly configured to report to the Windows Defender ATP service.

> **Note**&nbsp;&nbsp; To use GP updates to deploy the package, you must be on Windows Server 2008 R2 or later. The endpoints must be running Windows 10 TAP.

1.  Open the GP configuration package .zip file (*WindowsATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the [Windows Defender ATP portal](https://seville.windows.com):

    a.  Click **Client onboarding** on the **Navigation pane**.
    
    b.  Select **GP**, click **Download package** and save the .zip file.
    
2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the endpoints. You should have a folder called _*OptionalParamsPolicy*_ and the file _*WindowsATPOnboardingPackage.cmd*_.

3. Open the [Group Policy Management Console](https://technet.microsoft.com/en-us/library/cc731212.aspx) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

4. In the **Group Policy Management Editor**, go to **Computer configuration**, then **Preferences**, and then **Control panel settings**.

5. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

6. In the  **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account under **Security options**.

7. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

8. Go to the **Actions** tab and click **New…** Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared _*WindowsATPOnboardingPackage.cmd*_ file.

9. Click **OK** and close any open GPMC windows.

For additional settings, see the [Additional configuration settings section](additional-configuration-windows-advanced-threat-protection.md).

## Configure with System Center Configuration Manager (SCCM)

1. Open the SCCM configuration package .zip file (*WindowsATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the [Windows Defender ATP portal](https://seville.windows.com):  <span style="background-color: yellow;">Naama: Confirm package name</span>

  a. Click **Client onboarding** on the **Navigation pane**.
  
  b. Select **SCCM**, click **Download package**, and save the .zip file. <span style="background-color: yellow;">Iaan: Need to confirm the UI for this</span>

2.	Copy the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package.

<span style="background-color: yellow;">Iaan: Will confirm ui for this</span>

3. In the SCCM console, go to **Software Library**.
4. Under **Application Management**, right-click **Packages** and select **Import**.
5. Click **Browse** and choose the package that was downloaded from the portal (zip file).
6. The package will appear under the Packages page.
7. Right-click the Package and choose deploy.
8. Choose a predefined device collection to deploy the package to.

<span style="background-color: yellow;">Naama note: If it’s a package we create then we’ll set the necessary privileges, otherwise provide guidance (Omri: what is the necessary privileges?)</span>

## Configure endpoints manually with registry changes 
You can also manually onboard individual endpoints to Windows Defender ATP. You might want to do this first when testing the service before you commit to onboarding all endpoints in your network.

1.  Extract the contents of the configuration package to a location on
    the endpoint you want to onboard (for example, the Desktop).

2.  Open an elevated command-line prompt on the endpoint and run the
    script:

    a.  Click **Start** and type **cmd**.
    
    b.  Right-click **Command prompt** and select **Run as administrator**.
    
    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

3.  Type the location of the script file. If you copied the file the
    desktop, type:
```*%userprofile%\Desktop\WindowsATPOnboardingScript.sc*```

4.  Press the  **Enter** key or click  **OK**.

See the [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-advanced-threat-protection.md) topic for details on how you can manually validate that the endpoint is compliant and correctly reports telemetry.

## Related topics
- [Windows Defender ATP service onboarding](service-onboarding-windows-advanced-threat-protection.md)
- [Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-advanced-threat-protection.md)

