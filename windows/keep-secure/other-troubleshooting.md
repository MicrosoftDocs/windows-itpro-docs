---
title: troubleshoot Windows Defender Advanced Threat Protection onboarding issues two
description: Troubleshoot Windows Defender Advanced Threat Protection onboarding issues
keywords: troubleshoot
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: mjcaparas
---

# Troubleshoot Windows Defender Advanced Threat Protection onboarding issues two

**Applies to:**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot the onboarding process if you encounter issues.

## Endpoints not reporting to the service correctly

If you have completed the endpoint onboarding process and don't see endpoints in the [Machines view](investigate-machines-windows-defender-advanced-threat-protection.md) after 20 minutes, it might indicate an endpoint onboarding or a connectivity problem.

Go through the following verification topics to address this issue:

- [Ensure that the endpoint is onboarded successfully](#Ensure-that-the-endpoint-is-onboarded-successfully)
- [Ensure that the Windows Defender ATP service is enabled](#Ensure-that-the-Windows-Defender-ATP-service-is-enabled)
- [Ensure that the telemetry and diagnostics service is enabled](#Ensure-that-the-telemetry-and-diagnostics-service-is-enabled)
- [Ensure that the Windows Defender ATP endpoint has internet connection](#Ensure-that-the-Windows-Defender-ATP-endpoint-has-internet-connection)

### Ensure that the endpoint is onboarded successfully
If the endpoints aren't reporting correctly, you might need to check that the Windows Defender Advanced Threat Protection service was successfully onboarded on the endpoint.

**Check the onboarding state in Registry**:

1. Click **Start**.

2. Type **Run**.

3. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the Status key under **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Advanced Threat Protection**.

5. Check that the **OnboardingState** value is set to **1**.

  ![Image of OnboardingState status in Registry Editor](images/onboardingstate.png)

  If the **OnboardingState** value is not set to **1**, follow the instructions on **Identifying and addressing onboarding issues**.
  
**Identifying and addressing onboarding errors:**    

1. Click **Start**.
 
2. Type **Event Viewer**.

3. In **Event Viewer**, browse to the **Application and Services Logs\Microsoft\Windows\SENSE** directory.

4. Click the **Operational** log.

5. In the **Action** pane, click **Filter Current log**.

6. Select **Critical**, **Warning**, and **Error**, then click **OK**.

  ![Image of Event Viewer log filter](images/filter-log.png)
  
7. Review the remaining events which can indicate issues and troubleshoot them based on the corresponding solutions from the following table:

Event ID | Message | Resolution steps
:---|:---|:---
5 | Windows Advanced Threat Protection service failed to connect to the server at ```variable```| Ensure that the Windows Defender ATP endpoint has internet access.
6 | Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: ```variable```| Run the onboarding script again.
7 |  Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: ```variable```| Ensure that the Windows Defender ATP endpoint has internet access, then run the onboarding script again.
15 | Windows Advanced Threat Protection cannot start command channel with URL: ```variable``` | Ensure that the Windows Defender ATP endpoint has internet access.  

### Ensure that the Windows Defender ATP service is enabled
If the endpoints aren't reporting correctly, you might need to check that the Windows 10 Windows Defender Advanced Threat Protection service is enabled on the endpoint. 

**Check the startup type from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.
  
  b.  Right-click **Command prompt** and select **Run as administrator**.
 
2.  Enter the following command and press **Enter**:
 
  sc qc sense
  
  If the the service is running, then the result should look like the following screenshot:
  
  ![Result of the sq query sense command](images/sc-query-sense-autostart.png)

3. If the service **START_TYPE** is not set to **AUTO_START**, then you'll need to enter the following command and press **Enter**:
  
  sc config sense start=auto
  
4.  A success message is displayed. Verify the change by entering the following command and press **Enter**:
 
  sc qc sense
 

**Check that the service is running from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.
  
  b.  Right-click **Command prompt** and select **Run as administrator**.
 
2.  Enter the following command and press **Enter**.
 
  sc query sense
  
  If the service is running, the result should look like the following screenshot:
  ![Result of the sc query sense command](images/sc-query-sense-running.png)

3. If the service **STATE** is not set to **RUNNING**, then you'll need to enter the following command and press **Enter**:
 
  sc start sense
 
4. A success message is displayed. Verify the change by entering the following command and press **Enter**:
 
  sc qc sense
 

### Ensure that telemetry and diagnostics service is enabled
If the endpoints aren't reporting correctly, you might need to check that the Windows 10 telemetry and diagnostics service is enabled on the endpoint. The service may have been disabled by other programs or user configuration changes.

You will need to check the startup type and verify that the service is running. 

There are two ways to check the startup type for the service: from the command line or in the services console.

**Check the startup type from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.
 
2.  Enter the following command and press **Enter**.
 
  sc qc diagtrack
 
  If the service is enabled, then the result should look like the following screenshot:

  ![Result of the sc query command for diagtrack](images/windefatp-sc-qc-diagtrack.png)
  
4. If the **START_TYPE** is not set to **AUTO_START**, then you'll need to enter the following command and press **Enter**:
  
  sc config diagtrack start=auto
 
5. A success message is displayed. Verify the change by entering the following command and press **Enter**:
 
  sc qc diagtrack
 

**Check the startup type in the services console:**

1.  Open the services console:

  a. Click **Start** and type **services**. 
  
  b. Press **Enter** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**. 

3.  Check the **Startup type** column - the service should be set as **Automatic**.

ASK ALON HOW SET TO AUTOMATIC IF IT'S NOT SET FROM THE CONSOLE.

**Check that the service is running from the command line**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**.
 
  sc query diagtrack

  If the service is running, the result should look like the following screenshot:

  ![Result of the sc query command for sc query diagtrack](images/windefatp-sc-query-diagtrack.png)
  
3. If the service **STATE** is not set to **RUNNING**, then you'll need to enter the following command and press **Enter**:

  sc start diagtrack
 
4. A success message is displayed. Verify the change by entering the following command and press **Enter**:

 
  sc query diagtrack


### Ensure that the Windows Defender ATP endpoint has internet connection

The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to be able to report telemetry and communicate with the Windows Defender ATP service. 

WinHTTP is independent of the Internet browsing proxy settings and other user context applications and must be able to detect the proxy servers that are available in your particular environment. 

To ensure that sensor has service connectivity, follow the steps described in the [Verify client connectivity to Windows Defender ATP service URLs](configure-proxy-internet-windows-defender-advanced-threat-protection.md#
Verify-client-connectivity-to-Windows-Defender-ATP-service-URLs) topic.

If the verification fails and your environment is using a proxy to connect to the internet, then follow the steps described in [Configure proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md#) topic.    
