---
ms.date: 12/28/2022
ms.topic: include
---

### Configure a Windows Hello for Business authentication certificate template

During Windows Hello for Business provisioning, Windows clients request an authentication certificate from AD FS, which requests the authentication certificate on behalf of the user. This task configures the Windows Hello for Business authentication certificate template.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. Right-click the **Smartcard Logon** template and choose **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Authentication* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the deployment.
1. On the **Cryptography** tab
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**
1. On the **Issuance Requirements** tab, 
   - Select the **This number of authorized signatures** check box. Type *1* in the text box
   - Select **Application policy** from the **Policy type required in signature**
   - Select **Certificate Request Agent** from in the **Application policy** list
   - Select the **Valid existing certificate** option
1. On the **Subject** tab, 
   - Select the **Build from this Active Directory information** button
   - Select **Fully distinguished name** from the **Subject name format** list
   - Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**
1. On the **Request Handling** tab, select the **Renew with same key** check box
1. On the **Security** tab, select **Add**. Target an Active Directory security group that contains the users that you want to enroll in Windows Hello for Business. For example, if you have a group called *Window Hello for Business Users*, type it in the **Enter the object names to select** text box and select **OK**
1. Select the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section:
   - Select the **Allow** check box for the **Enroll** permission
   - Excluding the group above (for example, *Window Hello for Business Users*), clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes aren't already cleared
   - Select **OK**
1. If you previously issued Windows Hello for Business sign-in certificates using Configuration Manger and are switching to an AD FS registration authority, then on the **Superseded Templates** tab, add the previously used **Windows Hello for Business Authentication** template(s), so they'll be superseded by this template for the users that have Enroll permission for this template
1. Select on the **Apply** to save changes and close the console

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
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace `WHFBAuthentication` in the above command with the name of your certificate template. It's important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc). Or, you can view the template name using the `Get-CATemplate` ADCS Administration Windows PowerShell cmdlet on your certification authority.

</details>