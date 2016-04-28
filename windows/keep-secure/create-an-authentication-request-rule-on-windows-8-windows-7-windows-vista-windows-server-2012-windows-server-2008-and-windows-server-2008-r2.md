---
title: Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 (Windows 10)
description: Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2
ms.assetid: 1296e048-039f-4d1a-aaf2-8472ad05e359
author: brianlic-msft
---

# Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2


After you have configured IPsec algorithms and authentication methods, you can create the rule that requires the computers on the network to use those protocols and methods before they can communicate.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To create the authentication request rule**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, right-click **Connection Security Rules**, and then click **New Rule**.

3.  On the **Rule Type** page, select **Isolation**, and then click **Next**.

4.  On the **Requirements** page, select **Request authentication for inbound and outbound connections**.

    **Caution**  
    Do not configure the rule to require inbound authentication until you have confirmed that all of your computers are receiving the correct GPOs, and are successfully negotiating IPsec and authenticating with each other. Allowing the computers to communicate even when authentication fails prevents any errors in the GPOs or their distribution from breaking communications on your network.

     

5.  On the **Authentication Method** page, select the authentication option you want to use on your network. To select multiple methods that are tried in order until one succeeds, click **Advanced**, click **Customize**, and then click **Add** to add methods to the list. Second authentication methods require Authenticated IP (AuthIP), which is supported only on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2.

    1.  **Default**. Selecting this option tells the computer to request authentication by using the method currently defined as the default on the computer. This default might have been configured when the operating system was installed or it might have been configured by Group Policy. Selecting this option is appropriate when you have configured system-wide settings by using the [Configure Authentication Methods on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-authentication-methods-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md) procedure.

    2.  **Computer and User (Kerberos V5)**. Selecting this option tells the computer to request authentication of both the computer and the currently logged-on user by using their domain credentials. This authentication method works only with other computers that can use AuthIP, including Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2. User-based authentication using Kerberos V5 is not supported by IKE v1.

    3.  **Computer (Kerberos V5)**. Selecting this option tells the computer to request authentication of the computer by using its domain credentials. This option works with other computers than can use IKE v1, including earlier versions of Windows.

    4.  **Advanced**. Click **Customize** to specify a custom combination of authentication methods required for your scenario. You can specify both a **First authentication method** and a **Second authentication method**.

        The **First authentication method** can be one of the following:

        -   **Computer (Kerberos V5)**. Selecting this option tells the computer to request authentication of the computer by using its domain credentials. This option works with other computers than can use IKE v1, including earlier versions of Windows.

        -   **Computer (NTLMv2)**. Selecting this option tells the computer to use and require authentication of the computer by using its domain credentials. This option works only with other computers that can use AuthIP, including Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2. User-based authentication using Kerberos V5 is not supported by IKE v1.

        -   **Computer certificate from this certification authority (CA)**. Selecting this option and entering the identification of a CA tells the computer to request authentication by using a certificate that is issued by the specified CA. If you also select **Accept only health certificates**, then only certificates issued by a NAP server can be used for this rule.

        -   **Preshared key (not recommended)**. Selecting this method and entering a pre-shared key tells the computer to authenticate by exchanging the pre-shared keys. If the keys match, then the authentication succeeds. This method is not recommended, and is included for backward compatibility and testing purposes only.

        If you select **First authentication is optional**, then the connection can succeed even if the authentication attempt specified in this column fails.

        The **Second authentication method** can be one of the following:

        -   **User (Kerberos V5)**. Selecting this option tells the computer to use and require authentication of the currently logged-on user by using his or her domain credentials. This authentication method works only with other computers that can use AuthIP, including Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2. User-based authentication using Kerberos V5 is not supported by IKE v1.

        -   **User (NTLMv2)**. Selecting this option tells the computer to use and require authentication of the currently logged-on user by using his or her domain credentials, and uses the NTLMv2 protocol instead of Kerberos V5. This authentication method works only with other computers that can use AuthIP, including Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2. User-based authentication using NTLMv2 is not supported by IKE v1.

        -   **User health certificate from this certification authority (CA)**. Selecting this option and entering the identification of a CA tells the computer to request user-based authentication by using a certificate that is issued by the specified CA. If you also select **Enable certificate to account mapping**, then the certificate can be associated with a user in Active Directory for purposes of granting or denying access to certain users or user groups.

        -   **Computer health certificate from this certification authority (CA)**. Selecting this option and entering the identification of a CA tells the computer to use and require authentication by using a certificate that is issued by the specified CA. If you also select **Accept only health certificates**, then only certificates issued by a NAP server can be used for this rule.

        If you check **Second authentication is optional**, the connection can succeed even if the authentication attempt specified in this column fails.

        **Important**  
        Make sure that you do not select the boxes to make both first and second authentication optional. Doing so allows plaintext connections whenever authentication fails.

         

6.  After you have configured the authentication methods, click **OK** on each dialog box to save your changes and close it, until you return to the **Authentication Method** page in the wizard. Click **Next**.

7.  On the **Profile** page, select the check boxes for the network location type profiles to which this rule applies.

    -   On portable computers, consider clearing the **Private** and **Public** boxes to enable the computer to communicate without authentication when it is away from the domain network.

    -   On computers that do not move from network to network, consider selecting all of the profiles. Doing so prevents an unexpected switch in the network location type from disabling the rule.

    Click **Next**.

8.  On the **Name** page, type a name for the connection security rule and a description, and then click **Finish**.

    The new rule appears in the list of connection security rules.

If you arrived at this page by clicking a link in a checklist, use your browser’s **Back** button to return to the checklist.

 

 





