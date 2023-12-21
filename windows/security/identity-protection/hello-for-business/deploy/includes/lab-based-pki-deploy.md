---
ms.date: 12/15/2023
ms.topic: include
---

## Deploy an enterprise certification authority

This guide assumes most enterprises have an existing public key infrastructure. Windows Hello for Business depends on an enterprise PKI running the Windows Server *Active Directory Certificate Services* role.\
If you don't have an existing PKI, review [Certification Authority Guidance][PREV-1] to properly design your infrastructure. Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy][PREV-2] for instructions on how to configure your PKI using the information from your design session.

### Lab-based PKI

The following instructions may be used to deploy simple public key infrastructure that is suitable **for a lab environment**.

Sign in using *Enterprise Administrator* equivalent credentials on a Windows Server where you want the certification authority (CA) installed.

>[!NOTE]
>Never install a certification authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt
1. Use the following command to install the Active Directory Certificate Services role.
    ```PowerShell
    Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
    ```
3. Use the following command to configure the CA using a basic certification authority configuration
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```

<!--links-->
[PREV-1]: /previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831574(v=ws.11)
[PREV-2]: /previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831348(v=ws.11)