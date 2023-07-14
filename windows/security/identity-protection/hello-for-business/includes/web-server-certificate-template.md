---
ms.date: 01/23/2023
ms.topic: include
---

### Configure an internal web server certificate template

Windows clients communicate with AD FS via HTTPS. To meet this need, a *server authentication* certificate must be issued to all the nodes in the AD FS farm. On-premises deployments can use a *server authentication* certificate issued by the enterprise PKI. A *server authentication* certificate template must be configured, so the AD FS nodes can request a certificate.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click the **Web Server** template in the details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *Internal Web Server* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the lab.
1. On the **Request Handling** tab, select **Allow private key to be exported**
1. On the **Subject** tab, select the **Supply in the request** button if it isn't already selected
1. On the **Security** tab:
   - Select **Add**
   - Type **Domain Computers** in the **Enter the object names to select** box
   - Select **OK**
   - Select the **Allow** check box next to the **Enroll** permission
1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
   - Select **OK**
1. Close the console

