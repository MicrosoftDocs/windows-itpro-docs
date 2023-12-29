---
ms.date: 01/03/2024
ms.topic: include
---

The following guidance describes the deployment of a new instance of AD FS using the Windows Information Database (WID) as the configuration database.\
WID is ideal for environments with no more than **30 federation servers** and no more than **100 relying party trusts**. If your environment exceeds either of these factors, or needs to provide *SAML artifact resolution*, *token replay detection*, or needs AD FS to operate as a federated provider role, then the deployment requires the use of SQL as a configuration database.\
To deploy AD FS using SQL as its configuration database, review the [Deploying a Federation Server Farm](/windows-server/identity/ad-fs/deployment/deploying-a-federation-server-farm) checklist.

A new AD FS farm should have a minimum of two federation servers for proper load balancing, which can be accomplished with external networking peripherals, or with using the Network Load Balancing Role included in Windows Server.

Prepare the AD FS deployment by installing and **updating** two Windows Servers.

## Enroll for a TLS server authentication certificate

Typically, a federation service is an edge facing role. However, the federation services and instance used with the on-premises deployment of Windows Hello for Business does not need Internet connectivity.

The AD FS role needs a *server authentication* certificate for the federation services, and you can use a certificate issued by your enterprise (internal) CA. The server authentication certificate should have the following names included in the certificate, if you are requesting an individual certificate for each node in the federation farm:

 - **Subject Name**: the internal FQDN of the federation server
 - **Subject Alternate Name**: the federation service name (e.g. *sts.corp.contoso.com*) or an appropriate wildcard entry (e.g. *\*.corp.contoso.com*)

The federation service name is set when the AD FS role is configured. You can choose any name, but that name must be different than the name of the server or host. For example, you can name the host server *adfs* and the federation service *sts*. In this example, the FQDN of the host is *adfs.corp.contoso.com* and the FQDN of the federation service is *sts.corp.contoso.com*.

You can also issue one certificate for all hosts in the farm. If you chose this option, leave the subject name *blank*, and include all the names in the subject alternate name when creating the certificate request. All names should include the FQDN of each host in the farm and the federation service name.

When creating a wildcard certificate, mark the private key as exportable, so that the same certificate can be deployed across each federation server and web application proxy within the AD FS farm. Note that the certificate must be trusted (chain to a trusted root CA). Once you have successfully requested and enrolled the server authentication certificate on one node, you can export the certificate and private key to a PFX file using the Certificate Manager console. You can then import the certificate on the remaining nodes in the AD FS farm.

Be sure to enroll or import the certificate into the AD FS server's computer certificate store. Also, ensure all nodes in the farm have the proper TLS server authentication certificate.

### AD FS authentication certificate enrollment

Sign-in the federation server with *domain administrator* equivalent credentials.

1. Start the Local Computer **Certificate Manager** (certlm.msc)
1. Expand the **Personal** node in the navigation pane
1. Right-click **Personal**. Select **All Tasks > Request New Certificate**
1. Select **Next** on the **Before You Begin** page
1. Select **Next** on the **Select Certificate Enrollment Policy** page
1. On the **Request Certificates** page, select the **Internal Web Server** check box
1. Select the **⚠️ More information is required to enroll for this certificate. Click here to configure settings** link
    :::image type="content" source="../images/hello-internal-web-server-cert.png" lightbox="../images/hello-internal-web-server-cert.png" alt-text="Example of Certificate Properties Subject Tab - This is what shows when you select the above link.":::
1. Under **Subject name**, select **Common Name** from the **Type** list. Type the FQDN of the computer hosting the AD FS role and then select **Add**
1. Under **Alternative name**, select **DNS** from the **Type** list. Type the FQDN of the name that you will use for your federation services (*sts.corp.contoso.com*). The name you use here MUST match the name you use when configuring the AD FS server role. Select **Add** and **OK** when finished
1. Select **Enroll**

A server authentication certificate should appear in the computer's personal certificate store.
