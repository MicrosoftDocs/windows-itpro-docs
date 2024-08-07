---
ms.date: 01/03/2024
ms.topic: include
---

### Configure a Windows Hello for Business authentication certificate template

During Windows Hello for Business provisioning, Windows clients request an authentication certificate from AD FS, which requests the authentication certificate on behalf of the user. This task configures the Windows Hello for Business authentication certificate template.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click the **Smartcard Logon** template and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2016** from the *Certification Authority list*</li><li>Select **Windows 10 / Windows Server 2016** from the *Certification Recipient list*</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *WHFB Authentication*</li><li>Set the validity period to the desired value</li><li>Take note of the template name for later, which should be the same as the Template display name minus spaces</li></ul>|
    | *Subject Name* | <ul><li>Select **Build from this Active Directory information**</li><li>Select **Fully distinguished name** from the **Subject name format** list</li><li>Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**</li></ul>|
    |*Cryptography*|<ul><li>Set the *Provider Category* to **Key Storage Provider**</li><li>Set the *Algorithm name* to **RSA**</li><li>Set the *minimum key size* to **2048**</li><li>Set the *Request hash* to **SHA256**</li>|
    |*Extensions*|Verify the **Application Policies** extension includes **Smart Card Logon**|
    |*Issuance Requirements*|<ul><li>Select the **This number of authorized signatures** check box. Type *1* in the text box</li><li>Select **Application policy** from the *Policy type required in signature*</li><li>Select **Certificate Request Agent** from in the *Application policy* list</li><li>Select the **Valid existing certificate** option</li></ul>|
    |*Request Handling*|Select the **Renew with same key** check box|
    |*Security*| <ul><li>Select **Add**</li><li>Target an Active Directory security group that contains the users that you want to enroll in Windows Hello for Business. For example, if you have a group called *Window Hello for Business Users*, type it in the **Enter the object names to select** text box and select **OK**</li><li>Select the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section:<ul><li>Select the **Allow** check box for the **Enroll** permission</li><li>Excluding the group above (for example, *Window Hello for Business Users*), clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes aren't already cleared</li></ul><li>Select **OK**</li></ul>|

1. Select **OK** to finalize your changes and create the new template
1. Close the console

#### Mark the template as the Windows Hello Sign-in template

Sign in to a CA or management workstations with *Enterprise Administrator* equivalent credentials

Open an elevated command prompt end execute the following command

```cmd
certutil.exe -dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY
```

If the template was changed successfully, the output of the command will contain old and new values of the template parameters. The new value must contain the `CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY` parameter. Example:

```cmd
CN=Certificate Templates,CN=Public Key Services,CN=Services,CN=Configuration,DC=[yourdomain]:WHFBAuthentication

Old Value:
msPKI-Private-Key-Flag REG_DWORD = 5050080 (84213888)
CTPRIVATEKEY_FLAG_REQUIRE_SAME_KEY_RENEWAL -- 80 (128)
CTPRIVATEKEY_FLAG_ATTEST_NONE -- 0
TEMPLATE_SERVER_VER_WINBLUE<<CTPRIVATEKEY_FLAG_SERVERVERSION_SHIFT -- 50000 (327680)
TEMPLATE_CLIENT_VER_WINBLUE<<CTPRIVATEKEY_FLAG_CLIENTVERSION_SHIFT -- 5000000 (83886080)

New Value:
msPKI-Private-Key-Flag REG_DWORD = 5250080 (86311040)
CTPRIVATEKEY_FLAG_REQUIRE_SAME_KEY_RENEWAL -- 80 (128)
CTPRIVATEKEY_FLAG_ATTEST_NONE -- 0
TEMPLATE_SERVER_VER_WINBLUE<<CTPRIVATEKEY_FLAG_SERVERVERSION_SHIFT -- 50000 (327680)
CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY -- 200000 (2097152)
TEMPLATE_CLIENT_VER_WINBLUE<<CTPRIVATEKEY_FLAG_CLIENTVERSION_SHIFT -- 5000000 (83886080)
CertUtil: -dsTemplate command completed successfully."
```

>[!NOTE]
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace `WHFBAuthentication` in the above command with the name of your certificate template. It's important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc).
