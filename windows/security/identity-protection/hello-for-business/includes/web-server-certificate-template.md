---
ms.date: 12/15/2023
ms.topic: include
---

### Configure an internal web server certificate template

Windows clients communicate with AD FS via HTTPS. To meet this need, a *server authentication* certificate must be issued to all the nodes in the AD FS farm. On-premises deployments can use a *server authentication* certificate issued by the enterprise PKI. A *server authentication* certificate template must be configured, so the AD FS nodes can request a certificate.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates > Manage**
1. In the **Certificate Template Console**, right-click the **Web Server** template in the details pane and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2016** from the *Certification Authority list*</li><li>Select **Windows 10 / Windows Server 2016** from the *Certification Recipient list*</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *Internal Web Server*</li><li>Set the validity period to the desired value</li><li>Take note of the template name for later, which should be the same as the Template display name minus spaces</li></ul>|
    | *Request Handling* | Select **Allow private key to be exported** |
    | *Subject Name* | Select **Supply in the request**|
    |*Security*|Add **Domain Computers** with **Enroll** access|
    |*Cryptography*|<ul><li>Set the *Provider Category* to **Key Storage Provider**</li><li>Set the *Algorithm name* to **RSA**</li><li>Set the *minimum key size* to **2048**</li><li>Set the *Request hash* to **SHA256**</li>|

1. Select **OK** to finalize your changes and create the new template
1. Close the console
