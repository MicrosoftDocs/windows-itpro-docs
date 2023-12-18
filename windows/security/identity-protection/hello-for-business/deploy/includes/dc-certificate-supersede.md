---
ms.date: 12/15/2023
ms.topic: include
---

### Supersede existing domain controller certificates

The domain controllers may have an existing domain controller certificate. The Active Directory Certificate Services provides a default certificate template for domain controllers called *domain controller certificate*. Later releases of Windows Server provided a new certificate template called *domain controller authentication certificate*. These certificate templates were provided prior to the update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the *KDC Authentication* extension.

The *Kerberos Authentication* certificate template is the most current certificate template designated for domain controllers, and should be the one you deploy to all your domain controllers.\
The *autoenrollment* feature allows you to replace the domain controller certificates. Use the following configuration to replace older domain controller certificates with new ones, using the *Kerberos Authentication* certificate template.

Sign in to a CA or management workstations with *Enterprise Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates > Manage**
1. In the **Certificate Template Console**, right-click the *Domain Controller Authentication (Kerberos)* (or the name of the certificate template you created in the previous section) template in the details pane and select **Properties**
1. Select the **Superseded Templates** tab. Select **Add**
1. From the **Add Superseded Template** dialog, select the *Domain Controller* certificate template and select **OK > Add**
1. From the **Add Superseded Template** dialog, select the *Domain Controller Authentication* certificate template and select **OK**
1. From the **Add Superseded Template** dialog, select the *Kerberos Authentication* certificate template and select **OK**
1. Add any other enterprise certificate templates that were previously configured for domain controllers to the **Superseded Templates** tab
1. Select **OK** and close the **Certificate Templates** console

The certificate template is configured to supersede all the certificate templates provided in the *superseded templates* list.\
However, the certificate template and the superseding of certificate templates isn't active until the template is published to one or more certificate authorities.

> [!NOTE]
> The domain controller's certificate must chain to a root in the NTAuth store. By default, the Active Directory Certificate Authority's root certificate is added to the NTAuth store. If you are using a third-party CA, this may not be done by default. If the domain controller certificate does not chain to a root in the NTAuth store, user authentication will fail.
>To see all certificates in the NTAuth store, use the following command:
>
> `Certutil -viewstore -enterprise NTAuth`
