---
ms.date: 12/15/2023
ms.topic: include
---

### Configure an enrollment agent certificate template

A certificate registration authority (CRA) is a trusted authority that validates certificate request. Once it validates the request, it presents the request to the certification authority (CA) for issuance. The CA issues the certificate, returns it to the CRA, which returns the certificate to the requesting user. Windows Hello for Business certificate trust deployments use AD FS as the CRA.

The CRA enrolls for an *enrollment agent certificate*. Once the CRA verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the CA. The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate. The CA only issues a certificate for that template if the registration authority signs the certificate request.

> [!IMPORTANT]
> Follow the procedures below based on the AD FS service account used in your environment.

#### Create an enrollment agent certificate for Group Managed Service Accounts (GMSA)

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click on the **Exchange Enrollment Agent (Offline request)** template details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list. 
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Enrollment Agent* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
1. On the **Subject** tab, select the **Supply in the request** button if it isn't already selected

   > [!NOTE]
   > Group Managed Service Accounts (GMSA) do not support the *Build from this Active Directory information* option and will result in the AD FS server failing to enroll the enrollment agent certificate. You must configure the certificate template with *Supply in the request* to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Security** tab, select **Add**
1. Select **Object Types** and select the **Service Accounts** check box. Select **OK**
1. Type *adfssvc* in the **Enter the object names to select** text box and select **OK**
1. Select the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section:
   - In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission
   - Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list
   - Select **OK**
1. Close the console

#### Create an enrollment agent certificate for a standard service account

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click on the **Exchange Enrollment Agent (Offline request)** template details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list. 
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Enrollment Agent* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
1. On the **Subject** tab:
   - Select the **Build from this Active Directory information** button
   - Select **Fully distinguished name** from the **Subject name format**
   - Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**
1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Security** tab, select **Add**
1. Select **Object Types** and select the **Service Accounts** check box. Select **OK**
1. Type *adfssvc* in the **Enter the object names to select** text box and select **OK**
1. Select the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section:
   - In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission
   - Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list
   - Select **OK**
1. Close the console

