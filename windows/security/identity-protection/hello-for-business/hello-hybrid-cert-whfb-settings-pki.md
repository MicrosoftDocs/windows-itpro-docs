### Enrollment Agent certificate template

Active Directory Federation Server used for Windows Hello for Business certificate enrollment performs its own certificate lifecycle management. Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request, or when the service first starts.

Approximately 60 days prior to the enrollment agent certificate's expiration, the AD FS service attempts to renew the certificate until it is successful. If the certificate fails to renew and expires, the AD FS server will request a new enrollment agent certificate. You can view the AD FS event logs to determine the status of the enrollment agent certificate.

> [!IMPORTANT]
> Follow the procedures below based on the AD FS service account used in your environment.

#### Creating an Enrollment Agent certificate for Group Managed Service Accounts

Sign-in to a certificate authority or management workstation with _Domain Admin_ equivalent credentials.

1. Open the **Certification Authority Management** console.

2. Right-click **Certificate Templates** and click **Manage**.

3. In the **Certificate Template Console**, right click on the **Exchange Enrollment Agent (Offline request)** template details pane and click **Duplicate Template**.

4. On the **Compatibility** tab, clear the **Show resulting changes** check box. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certificate Recipient** list.

5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.

6. On the **Subject** tab, select the **Supply in the request** button if it is not already selected.

   > [!NOTE]
   > The preceding step is very important. Group Managed Service Accounts (GMSA) do not support the _Build from this Active Directory information_ option, which will result in the AD FS server failing to enroll the enrollment agent certificate. You must configure the certificate template with _Supply in the request_ to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.

8. On the **Security** tab, click **Add**.

9. Click **Object Types**.  Select the **Service Accounts** check box and click **OK**.

10. Type **adfssvc** in the **Enter the object names to select** text box and click **OK**.

11. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**.

12. Close the console.

#### Creating an Enrollment Agent certificate for typical Service Accounts

Sign-in to a certificate authority or management workstation with *Domain Admin* equivalent credentials.

1. Open the **Certification Authority** management console.

2. Right-click **Certificate Templates** and click **Manage**.

3. In the **Certificate Template** console, right-click the **Exchange Enrollment Agent (Offline request)** template in the details pane and click **Duplicate Template**.

4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certificate Recipient** list.

5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.

6. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected.  Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.

8. On the **Security** tab, click **Add**. Type **adfssvc** in the **Enter the object names to select text box** and click **OK**.

9. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check boxes for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**.

10. Close the console.

### Section Review

> [!div class="checklist"]
> * Domain Controller certificate template
> * Configure superseded domain controller certificate templates
> * Enrollment Agent certificate template
> * Windows Hello for Business Authentication certificate template
> * Mark the certificate template as Windows Hello for Business sign-in template
> * Publish Certificate templates to certificate authorities
> * Unpublish superseded certificate templates
> 
> [!div class="step-by-step"]
> [< Configure Azure AD Connect](hello-hybrid-cert-whfb-settings-dir-sync.md)
> [Configure AD FS >](hello-hybrid-cert-whfb-settings-adfs.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide

1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: PKI (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
