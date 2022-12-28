---
author: paolomatarazzo
ms.author: paoloma
ms.date: 12/28/2022
ms.topic: include
---

Windows clients use the https protocol when communicating with Active Directory Federation Services (AD FS). To meet this need, you must issue a server authentication certificate to all the nodes in the AD FS farm. On-premises deployments can use a server authentication certificate issued by their enterprise PKI. You must configure a server authentication certificate template so the host running AD FS can request the certificate.

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