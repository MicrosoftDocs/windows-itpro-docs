---
ms.date: 01/03/2024
ms.topic: include
---

## Configure an enrollment agent certificate template

A certificate registration authority (CRA) is a trusted authority that validates certificate request. Once it validates the request, it presents the request to the certification authority (CA) for issuance. The CA issues the certificate, returns it to the CRA, which returns the certificate to the requesting user. Windows Hello for Business certificate trust deployments use AD FS as the CRA.

The CRA enrolls for an *enrollment agent certificate*. Once the CRA verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the CA. The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate. The CA only issues a certificate for that template if the registration authority signs the certificate request.

> [!IMPORTANT]
> Follow the procedures below based on the AD FS service account used in your environment.

### Create an enrollment agent certificate for Group Managed Service Accounts (GMSA)

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click on the **Exchange Enrollment Agent (Offline request)** template details pane and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2016** from the *Certification Authority list*</li><li>Select **Windows 10 / Windows Server 2016** from the *Certification Recipient list*</li></ul> |
    | *General* | <ul><li>Specify a **Template display name**, for example *WHFB Enrollment Agent*</li><li>Set the validity period to the desired value</li></ul>|
    | *Subject Name* | Select **Supply in the request**<br><br>**Note:** Group Managed Service Accounts (GMSA) don't support the *Build from this Active Directory information* option and will result in the AD FS server failing to enroll the enrollment agent certificate. You must configure the certificate template with *Supply in the request* to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.|
    | *Cryptography* | <ul><li>Set the *Provider Category* to **Key Storage Provider**</li><li>Set the *Algorithm name* to **RSA**</li><li>Set the *minimum key size* to **2048**</li><li>Set the *Request hash* to **SHA256**</li> |
    | *Security* | <ul><li>Select **Add**</li><li>Select **Object Types** and select the **Service Accounts** check box</li><li> Select **OK**</li><li>Type `adfssvc` in the **Enter the object names to select** text box and select **OK**</li><li>Select the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section:<ul><li>In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission</li><li>Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list</li></ul></li><li>Select **OK**</li></ul> |

1. Select **OK** to finalize your changes and create the new template
1. Close the console

### Create an enrollment agent certificate for a standard service account

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click on the **Exchange Enrollment Agent (Offline request)** template details pane and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2016** from the **Certification Authority** list</li><li>Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *WHFB Enrollment Agent*</li><li>Set the validity period to the desired value</li></ul>|
    | *Subject Name* | <ul><li>Select **Build from this Active Directory information**</li><li>Select **Fully distinguished name** from the **Subject name format** list</li><li>Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**</li></ul>|
    |*Cryptography*|<ul><li>Set the *Provider Category* to **Key Storage Provider**</li><li>Set the *Algorithm name* to **RSA**</li><li>Set the *minimum key size* to **2048**</li><li>Set the *Request hash* to **SHA256**</li></ul>|
    | *Security* | <ul><li>Select **Add**</li><li>Select **Object Types** and select the **Service Accounts** check box</li><li> Select **OK**</li><li>Type `adfssvc` in the **Enter the object names to select** text box and select **OK**</li><li>Select the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section:<ul><li>In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission</li><li>Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list</li></ul></li><li>Select **OK**</li></ul> |

1. Select **OK** to finalize your changes and create the new template
1. Close the console
