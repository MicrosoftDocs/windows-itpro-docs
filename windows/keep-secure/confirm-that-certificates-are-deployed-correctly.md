---
title: Confirm That Certificates Are Deployed Correctly (Windows 10)
description: Confirm That Certificates Are Deployed Correctly
ms.assetid: de0c8dfe-16b0-4d3b-8e8f-9282f6a65eee
author: brianlic-msft
---

# Confirm That Certificates Are Deployed Correctly


After configuring your certificates and autoenrollment in Group Policy, you can confirm that the policy is being applied as expected, and that the certificates are being properly installed on the workstation computers.

In these procedures, you refresh Group Policy on a client computer, and then confirm that the certificate is deployed correctly.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

In this topic:

-   [Refresh Group Policy on a computer](#bkmk-torefreshgrouppolicyonacomputer)

-   [Verify that a certificate is installed](#bkmk-toverifythatacertificateisinstalled)

## <a href="" id="bkmk-torefreshgrouppolicyonacomputer"></a>


**To refresh Group Policy on a computer**

-   On a computer running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2, [Start a Command Prompt as an Administrator](../p_server_archive/start-a-command-prompt-as-an-administrator.md), and then type the following command:

    ``` syntax
    gpupdate /target:computer /force
    ```

After Group Policy is refreshed, you can see which GPOs are currently applied to the computer.

## <a href="" id="bkmk-toverifythatacertificateisinstalled"></a>


**To verify that a certificate is installed**

1.  Click the **Start** charm, type **certmgr.msc**, and then press ENTER.

2.  In the navigation pane, expand **Trusted Root Certification Authorities**, and then click **Certificates**.

    The CA that you created appears in the list.

 

 





