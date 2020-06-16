---
title: Set up Microsoft Defender ATP deployment
description: 
keywords:
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article 
---

# Set up Microsoft Defender ATP deployment

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Deploying Microsoft Defender ATP is a three-phase process:

<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;" >
      <a href= "https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment"> 
        <img src="images/prepare.png" alt="Prepare to deploy Microsoft Defender ATP" title="Prepare" />
      <br/>Phase 1: Prepare </a><br>
    </td>
     <td align="center"bgcolor="#d5f5e3">
      <a href="https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment">
        <img src="images/setup.png" alt="Onboard to the Microsoft Defender ATP service" title="Setup" />
      <br/>Phase 2: Set up </a><br>
    </td>
    <td align="center">
      <a href="https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboarding">
        <img src="images/onboard.png" alt="Onboard" title="Onboard" />
      <br/>Phase 3: Onboard </a><br>
</td>


  </tr>
</table>

You are currently in the set up phase.

In this deployment scenario, you'll be guided through the steps on:
- Licensing validation
- Tenant configuration
- Network configuration


>[!NOTE]
>For the purpose of guiding you through a typical deployment, this scenario will only cover the use of Microsoft Endpoint Configuration Manager. Microsoft Defender ATP supports the use of other onboarding tools but will not cover those scenarios in the deployment guide. For more information, see [Onboard machines to Microsoft Defender ATP](onboard-configure.md).

## Check license state

Checking for the license state and whether it got properly provisioned, can be done through the admin center or through the **Microsoft Azure portal**.

1. To view your licenses go to the **Microsoft Azure portal** and navigate to the [Microsoft Azure portal license section](https://portal.azure.com/#blade/Microsoft_AAD_IAM/LicensesMenuBlade/Products).

   ![Image of Azure Licensing page](images/atp-licensing-azure-portal.png)

1. Alternately, in the admin center, navigate to **Billing** > **Subscriptions**.

    On the screen you will see all the provisioned licenses and their current **Status**.

    ![Image of billing licenses](images/atp-billing-subscriptions.png)


## Cloud Service Provider validation

To gain access into which licenses are provisioned to your company, and to check the state of the licenses, go to the admin center.

1. From the **Partner portal**, click on the **Administer services > Office 365**.

2. Clicking on the **Partner portal** link will leverage the **Admin on behalf** option and will give you access to the customer admin center.

   ![Image of O365 admin portal](images/atp-O365-admin-portal-customer.png)



## Tenant Configuration

When accessing [Microsoft Defender Security Center](https://securitycenter.windows.com/) for the first time there will be a set up wizard that will guide you through some initial steps. At the end of the setup wizard there will be a dedicated cloud instance of Microsoft Defender ATP created. The easiest method is to perform these steps from a Windows 10 client machine.

1. From a web browser, navigate to <https://securitycenter.windows.com>.

    ![Image of Set up your permissions for Microsoft Defender ATP](images/atp-setup-permissions-wdatp-portal.png)

2. If going through a TRIAL license, go to the link (<https://signup.microsoft.com/Signup?OfferId=6033e4b5-c320-4008-a936-909c2825d83c&dl=WIN_DEF_ATP&pc=xxxxxxx-xxxxxx-xxx-x>)

    Once the authorization step is completed, the **Welcome** screen will be displayed.
3. Go through the authorization steps.

    ![Image of Welcome screen for portal set up](images/welcome1.png)

4. Set up preferences.

   **Data storage location** - It's important to set this up correctly. Determine where the customer wants to be primarily hosted: US, EU or UK. You cannot change the location after this set up and Microsoft will not transfer the data from the specified geolocation. 

    **Data retention** - The default is 6 months.

    **Enable preview features** - The default is on, can be changed later.

    ![Image of geographic location in set up](images/setup-preferences.png)

5. Select **Next**.

     ![Image of final preference set up](images/setup-preferences2.png)

6. Select **Continue**.


## Network configuration
If the organization does not require the endpoints to use a Proxy to access the
Internet, skip this section.

The Microsoft Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to
report sensor data and communicate with the Microsoft Defender ATP service. The
embedded Microsoft Defender ATP sensor runs in the system context using the
LocalSystem account. The sensor uses Microsoft Windows HTTP Services (WinHTTP)
to enable communication with the Microsoft Defender ATP cloud service. The
WinHTTP configuration setting is independent of the Windows Internet (WinINet)
internet browsing proxy settings and can only discover a proxy server by using
the following discovery methods:

**Auto-discovery methods:**

-   Transparent proxy

-   Web Proxy Auto-discovery Protocol (WPAD)

If a Transparent proxy or WPAD has been implemented in the network topology,
there is no need for special configuration settings. For more information on
Microsoft Defender ATP URL exclusions in the proxy, see the
Appendix section in this document for the URLs allow list or on
[Microsoft
Docs](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-proxy-internet-windows-defender-advanced-threat-protection#enable-access-to-windows-defender-atp-service-urls-in-the-proxy-server).

> [!NOTE]
> For a detailed list of URLs that need to be allowed, please see [this article](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-network-connections-microsoft-defender-antivirus).

**Manual static proxy configuration:**

-   Registry based configuration

-   WinHTTP configured using netsh command <br> Suitable only for desktops in a
    stable topology (for example: a desktop in a corporate network behind the
    same proxy)

### Configure the proxy server manually using a registry-based static proxy

Configure a registry-based static proxy to allow only Microsoft Defender ATP
sensor to report diagnostic data and communicate with Microsoft Defender ATP
services if a computer is not permitted to connect to the Internet. The static
proxy is configurable through Group Policy (GP). The group policy can be found
under:

 - Administrative Templates \> Windows Components \> Data Collection and Preview Builds \> Configure Authenticated Proxy usage for the Connected User Experience and Telemetry Service
     - Set it to **Enabled** and select **Disable Authenticated Proxy usage**

1. Open the Group Policy Management Console.
2. Create a policy or edit an existing policy based off the organizational practices.
3. Edit the Group Policy and navigate to **Administrative Templates \> Windows Components \> Data Collection and Preview Builds \> Configure Authenticated Proxy usage for the Connected User Experience and Telemetry Service**. 
    ![Image of Group Policy setting](images/atp-gpo-proxy1.png)

4. Select **Enabled**.
5. Select **Disable Authenticated Proxy usage**.
   
6. Navigate to **Administrative Templates \> Windows Components \> Data Collection and Preview Builds \> Configure connected user experiences and telemetry**.
    ![Image of Group Policy setting](images/atp-gpo-proxy2.png)
7. Select **Enabled**.
8. Enter the **Proxy Server Name**.

The policy sets two registry values `TelemetryProxyServer` as REG_SZ and `DisableEnterpriseAuthProxy` as REG_DWORD under the registry key `HKLM\Software\Policies\Microsoft\Windows\DataCollection`.

The registry value `TelemetryProxyServer` takes the following string format:

```text
<server name or ip>:<port>
```

For example: 10.0.0.6:8080

The registry value `DisableEnterpriseAuthProxy` should be set to 1.

###  Configure the proxy server manually using netsh command

Use netsh to configure a system-wide static proxy.

> [!NOTE]
> - This will affect all applications including Windows services which use WinHTTP with default proxy.</br>
> - Laptops that are changing topology (for example: from office to home) will malfunction with netsh. Use the registry-based static proxy configuration.

1. Open an elevated command-line:

    1. Go to **Start** and type **cmd**.

    1. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command and press **Enter**:

   ```PowerShell
   netsh winhttp set proxy <proxy>:<port>
   ```

   For example: netsh winhttp set proxy 10.0.0.6:8080


###  Proxy Configuration for down-level machines

Down-Level machines include Windows 7 SP1 and Windows 8.1 workstations as well
as Windows Server 2008 R2, Windows Sever 2012, Windows Server 2012 R2, and
versions of Windows Server 2016 prior to Windows Server CB 1803. These operating
systems will have the proxy configured as part of the Microsoft Management Agent
to handle communication from the endpoint to Azure. Refer to the
Microsoft Management Agent Fast Deployment Guide for information on how a proxy
is configured on these machines.

### Proxy Service URLs
URLs that include v20 in them are only needed if you have Windows 10, version
1803 or later machines. For example, ```us-v20.events.data.microsoft.com``` is only
needed if the machine is on Windows 10, version 1803 or later.

 Service location | Microsoft.com DNS record
-|-
Common URLs for all locations | ```crl.microsoft.com/pki/crl/*```<br> ```ctldl.windowsupdate.com``` <br>```www.microsoft.com/pkiops/*```<br>```events.data.microsoft.com```<br>```notify.windows.com```<br> ```settings-win.data.microsoft.com```
European Union | ```eu.vortex-win.data.microsoft.com``` <br> ```eu-v20.events.data.microsoft.com``` <br> ```usseu1northprod.blob.core.windows.net```  <br>```usseu1westprod.blob.core.windows.net``` <br> ```winatp-gw-neu.microsoft.com``` <br> ```winatp-gw-weu.microsoft.com``` <br>```wseu1northprod.blob.core.windows.net``` <br>```wseu1westprod.blob.core.windows.net``` 
United Kingdom | ```uk.vortex-win.data.microsoft.com``` <br>```uk-v20.events.data.microsoft.com``` <br>```ussuk1southprod.blob.core.windows.net``` <br>```ussuk1westprod.blob.core.windows.net``` <br>```winatp-gw-uks.microsoft.com``` <br>```winatp-gw-ukw.microsoft.com``` <br>```wsuk1southprod.blob.core.windows.net``` <br>```wsuk1westprod.blob.core.windows.net``` 
United States | ```us.vortex-win.data.microsoft.com``` <br> ```ussus1eastprod.blob.core.windows.net``` <br> ```ussus1westprod.blob.core.windows.net``` <br> ```ussus2eastprod.blob.core.windows.net``` <br> ```ussus2westprod.blob.core.windows.net``` <br> ```ussus3eastprod.blob.core.windows.net``` <br> ```ussus3westprod.blob.core.windows.net``` <br> ```ussus4eastprod.blob.core.windows.net``` <br> ```ussus4westprod.blob.core.windows.net``` <br> ```us-v20.events.data.microsoft.com``` <br> ```winatp-gw-cus.microsoft.com``` <br> ```winatp-gw-eus.microsoft.com``` <br> ```wsus1eastprod.blob.core.windows.net``` <br> ```wsus1westprod.blob.core.windows.net``` <br> ```wsus2eastprod.blob.core.windows.net``` <br> ```wsus2westprod.blob.core.windows.net```


If a proxy or firewall is blocking anonymous traffic, as Microsoft Defender ATP sensor is connecting from system context, make sure anonymous traffic is permitted in the previously listed URLs.

###  Microsoft Defender ATP service backend IP range

If you network devices don't support the URLs white-listed in the prior section, you can use the following information.

Microsoft Defender ATP is built on Azure cloud, deployed in the following regions:

- \+\<Region Name="uswestcentral">
- \+\<Region Name="useast2">
- \+\<Region Name="useast">
- \+\<Region Name="europenorth">
- \+\<Region Name="europewest">
- \+\<Region Name="uksouth">
- \+\<Region Name="ukwest">

You can find the Azure IP range on [Microsoft Azure Datacenter IP Ranges](https://www.microsoft.com/en-us/download/details.aspx?id=41653).

> [!NOTE]
> As a cloud-based solution, the IP address range can change. It's recommended you move to DNS resolving setting.

## Next step
|||
|:-------|:-----|
|![Phase 3: Onboard](images/onboard.png) <br>[Phase 3: Onboard](onboarding.md) | Onboard devices to the service so that the Microsoft Defender ATP service can get sensor data from them.
