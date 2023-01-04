---
ms.date: 12/28/2022
ms.topic: include
---

Windows Hello for Business is a distributed system, which on the surface appears complex and difficult. The key to a successful deployment is to validate phases of work prior to moving to the next phase.

Confirm your domain controllers enroll the correct certificates and not any superseded certificate templates. Check that each domain controller completed the certificate autoenrollment.

### Use the event logs

Sign in to domain controller or management workstations with *Domain Administrator* equivalent credentials.

1. Using the Event Viewer, navigate to the **Application and Services > Microsoft > Windows > CertificateServices-Lifecycles-System** event log
1. Look for an event indicating a new certificate enrollment (autoenrollment):
   - The details of the event include the certificate template on which the certificate was issued
   - The name of the certificate template used to issue the certificate should match the certificate template name included in the event
   - The certificate thumbprint and EKUs for the certificate are also included in the event
   - The EKU needed for proper Windows Hello for Business authentication is Kerberos Authentication, in addition to other EKUs provide by the certificate template

Certificates superseded by your new domain controller certificate generate an archive event in the event log. The archive event contains the certificate template name and thumbprint of the certificate that was superseded by the new certificate.

### Certificate Manager

You can use the Certificate Manager console to validate the domain controller has the properly enrolled certificate based on the correct certificate template with the proper EKUs. Use **certlm.msc** to view certificate in the local computers certificate stores. Expand the **Personal** store and view the certificates enrolled for the computer. Archived certificates don't appear in Certificate Manager.

### Certutil.exe

You can use `certutil.exe` command to view enrolled certificates in the local computer. Certutil shows enrolled and archived certificates for the local computer. From an elevated command prompt, run `certutil.exe -q -store my` to view locally enrolled certificates.

To view detailed information about each certificate in the store, use `certutil.exe -q -v -store my` to validate automatic certificate enrollment enrolled the proper certificates.

### Troubleshooting

Windows triggers automatic certificate enrollment for the computer during boot, and when Group Policy updates. You can refresh Group Policy from an elevated command prompt using `gpupdate.exe /force`.

Alternatively, you can forcefully trigger automatic certificate enrollment using `certreq.exe -autoenroll -q` from an elevated command prompt.

Use the event logs to monitor certificate enrollment and archive. Review the configuration, such as publishing certificate templates to issuing certification authority and the allow auto enrollment permissions.