---
title: Configure Authentication Methods 
description: Learn how to configure authentication methods for devices in an isolated domain or standalone server zone in Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
---

# Configure Authentication Methods


This procedure shows you how to configure the authentication methods that can be used by computers in an isolated domain or standalone isolated server zone.

>**Note:**  If you follow the steps in the procedure in this topic, you alter the system-wide default settings. Any connection security rule can use these settings by specifying **Default** on the **Authentication** tab.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To configure authentication methods**

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2. In the details pane on the main Windows Defender Firewall with Advanced Security page, click **Windows Defender Firewall Properties**.

3. On the **IPsec Settings** tab, click **Customize**.

4. In the **Authentication Method** section, select the type of authentication that you want to use from among the following:

   1.  **Default**. Selecting this option tells the computer to use the authentication method currently defined by the local administrator in Windows Defender Firewall or by Group Policy as the default.

   2.  **Computer certificate from this certification authority**. Selecting this option and entering the identification of a certification authority (CA) tells the computer to use and require authentication by using a certificate that is issued by the selected CA. If you also select **Accept only health certificates**, then only certificates that include the system health authentication extended key usage (EKU) typically provided in a Network Access Protection (NAP) infrastructure can be used for this rule.

   3.  **Advanced**. Click **Customize** to specify a custom combination of authentication methods required for your scenario. You can specify both a **First authentication method** and a **Second authentication method**.

       The first authentication method can be one of the following methods:

       -   **Computer (NTLMv2)**. Selecting this option tells the computer to use and require authentication of the computer by using its domain credentials. This option works only with other computers that can use AuthIP. User-based authentication using Kerberos V5 isn't supported by IKE v1.

       -   **Computer certificate from this certification authority (CA)**. Selecting this option and entering the identification of a CA tells the computer to use and require authentication by using a certificate that is issued by that CA. If you also select **Accept only health certificates**, then only certificates issued by a NAP server can be used.

       -   **Preshared key (not recommended)**. Selecting this method and entering a preshared key tells the computer to authenticate by exchanging the preshared keys. If they match, then the authentication succeeds. This method isn't recommended, and is included only for backward compatibility and testing purposes.

       If you select **First authentication is optional**, then the connection can succeed even if the authentication attempt specified in this column fails.

       The second authentication method can be one of the following methods:

       -   **User (NTLMv2)**. Selecting this option tells the computer to use and require authentication of the currently signed-in user by using their domain credentials, and uses the NTLMv2 protocol instead of Kerberos V5. This authentication method works only with other computers that can use AuthIP. User-based authentication using Kerberos V5 isn't supported by IKE v1.

       -   **User health certificate from this certification authority (CA)**. Selecting this option and entering the identification of a CA tells the computer to use and require user-based authentication by using a certificate that is issued by the specified CA. If you also select **Enable certificate to account mapping**, then the certificate can be associated with a user in Active Directory for purposes of granting or denying access to specified users or user groups.

       -   **Computer health certificate from this certification authority (CA)**. Selecting this option and entering the identification of a CA tells the computer to use and require authentication by using a certificate that is issued by the specified CA. If you also select **Accept only health certificates**, then only certificates that include the system health authentication EKU typically provided in a NAP infrastructure can be used for this rule.

       If you select **Second authentication is optional**, then the connection can succeed even if the authentication attempt specified in this column fails.

       >**Important:**  Make sure that you do not select the check boxes to make both first and second authentication optional. Doing so allows plaintext connections whenever authentication fails.

5. Click **OK** on each dialog box to save your changes and return to the Group Policy Management Editor.
