---
title: How Windows Hello for Business works - Technology and Terms
description: Explains registration, authentication, key material, and infrastructure for Windows Hello for Business.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 05/05/2018
---
# Technolgy and Terms


## Trusted Platform Module

-   A Trusted Platform Module (TPM) is a hardware component that provides unique security features.

    Windows 10 leverages security characteristics of a TPM for measuring boot integrity sequence (and based on that, unlocking automatically BitLocker protected drives), for protecting credentials or for health attestation.

    A TPM implements controls that meet the specification described by the Trusted Computing Group (TCG). At the time of this writing, there are two versions of TPM specification produced by TCG that are not compatible with each other:

    -   The first TPM specification, version 1.2, was published in February 2005 by the TCG and standardized under ISO / IEC 11889 standard.
    -   The latest TPM specification, referred to as TPM 2.0, was released in April 2014 and has been approved by the ISO/IEC Joint Technical Committee (JTC) as ISO/IEC 11889:2015.

    Windows 10 uses the TPM for cryptographic calculations as part of health attestation and to protect the keys for BitLocker, Windows Hello, virtual smart cards, and other public key certificates. For more information, see [TPM requirements in Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=733948).

    Windows 10 recognizes versions 1.2 and 2.0 TPM specifications produced by the TCG. For the most recent and modern security features, Windows 10 supports only TPM 2.0. 

    TPM 2.0 provides a major revision to the capabilities over TPM 1.2:

    -   Update crypto strength to meet modern security needs

        -   Support for SHA-256 for PCRs
        -   Support for HMAC command

    -   Cryptographic algorithms flexibility to support government needs

        -   TPM 1.2 is severely restricted in terms of what algorithms it can support
        -   TPM 2.0 can support arbitrary algorithms with minor updates to the TCG specification documents

    -   Consistency across implementations

        -   The TPM 1.2 specification allows vendors wide latitude when choosing implementation details
        -   TPM 2.0 standardizes much of this behavior




This section describes endorsement key (EK) (that acts as an identity card for TPM), storage root key (SRK) (that protect keys) and attestation identity key (AIK) (that can report platform state) are used for health attestation reporting.

In a simplified manner, the TPM is a passive component with limited resources. It can calculate random numbers, RSA keys, decrypt short data, store hashes taken when booting the device.  A TPM incorporates in a single component:
* A RSA 2048-bit key generator
* A random number generator
* Nonvolatile memory for storing EK, SRK, and AIK keys
* A cryptographic engine to encrypt, decrypt, and sign
* Volatile memory for storing the PCRs and RSA keys

## Endorsement key

The TPM has an embedded unique cryptographic key called the endorsement key. The TPM endorsement key is a pair of asymmetric keys (RSA size 2048 bits).

The endorsement key public key is generally used for sending securely sensitive parameters, such as when taking possession of the TPM that contains the defining hash of the owner password. The EK private key is used when creating secondary keys like AIKs.

The endorsement key acts as an identity card for the TPM. For more information, see [Understand the TPM endorsement key](https://go.microsoft.com/fwlink/p/?LinkId=733952).

The endorsement key is often accompanied by one or two digital certificates:

-   One certificate is produced by the TPM manufacturer and is called the **endorsement certificate**. The endorsement certificate is used to prove the authenticity of the TPM (for example, that it’s a real TPM manufactured by a specific chip maker) to local processes, applications, or cloud services. The endorsement certificate is created during manufacturing or the first time the TPM is initialized by communicating with an online service.
-   The other certificate is produced by the platform builder and is called the **platform certificate** to indicate that a specific TPM is integrated with a certain device.
For certain devices that use firmware-based TPM produced by Intel or Qualcomm, the endorsement certificate is created when the TPM is initialized during the OOBE of Windows 10.

## Attestation Identity Keys

Because the endorsement certificate is unique for each device and does not change, the usage of it may present privacy concerns because it's theoretically possible to track a specific device. To avoid this privacy problem, Windows 10 issues a derived attestation anchor based on the endorsement certificate. This intermediate key, which can be attested to an endorsement key, is the Attestation Identity Key (AIK) and the corresponding certificate is called the AIK certificate. This AIK certificate is issued by a Microsoft cloud service.

>**Note:**  The AIK certificate must be provisioned in conjunction with a third-party service like the Microsoft Cloud CA service. After it is provisioned, the AIK private key can be used to report platform configuration. Windows 10 creates a signature over the platform log state (and a monotonic counter value) at each boot by using the AIK.
 
The AIK is an asymmetric (public/private) key pair that is used as a substitute for the EK as an identity for the TPM for privacy purposes. The private portion of an AIK is never revealed or used outside the TPM and can only be used inside the TPM for a limited set of operations. Furthermore, it can only be used for signing, and only for limited, TPM-defined operations.

Windows 10 creates AIKs protected by the TPM, if available, that are 2048-bit RSA signing keys. Microsoft hosts a cloud service called Microsoft Cloud CA to establish cryptographically that it is communicating with a real TPM and that the TPM possesses the presented AIK. After the Microsoft 
Cloud CA service has established these facts, it will issue an AIK certificate to the Windows 10-based device.

Many existing devices that will upgrade to Windows 10 will not have a TPM, or the TPM will not contain an endorsement certificate. **To accommodate those devices, Windows 10 allows the issuance of AIK certificates without the presence of an endorsement certificate.** Such AIK certificates are not issued by Microsoft Cloud CA. Note that this is not as trustworthy as an endorsement certificate that is burned into the device during manufacturing, but it will provide compatibility for advanced scenarios like Windows Hello for Business without TPM.

In the issued AIK certificate, a special OID is added to attest that endorsement certificate was used during the attestation process. This information can be leveraged by a relying party to decide whether to reject devices that are attested using AIK certificates without an endorsement certificate or accept them. Another scenario can be to not allow access to high-value assets from devices that are attested by an AIK certificate that is not backed by an endorsement certificate.

## Storage Root Key
The storage root key (SRK) is also an asymmetric key pair (RSA with a minimum of 2048 bits length). The SRK has a major role and is used to protect TPM keys, so that these keys cannot be used without the TPM. The SRK key is created when the ownership of the TPM is taken.


## Primary Refresh Token
SSO relies on special tokens obtained for each of the types of applications above. These are in turn used to obtain access tokens to specific applications. In the traditional Windows Integrated authentication case using Kerberos, this token is a Kerberos TGT (ticket-granting ticket). For Azure AD and AD FS applications we call this a Primary Refresh Token (PRT). This is a [JSON Web Token](http://openid.net/specs/draft-jones-json-web-token-07.html) containing claims about both the user and the device.

The PRT is initially obtained during Windows Logon (user sign-in/unlock) in a similar way the Kerberos TGT is obtained. This is true for both Azure AD joined and domain joined devices. In personal devices registered with Azure AD, the PRT is initially obtained upon Add Work or School Account (in a personal device the account to unlock the device is not the work account but a consumer account e.g. hotmail.com, live.com, outlook.com, etc.).

The PRT is needed for SSO. Without it, the user will be prompted for credentials when accessing applications every time. Please also note that the PRT contains information about the device. This means that if you have any [device-based conditional access](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-conditional-access-policy-connected-applications) policy set on an application, without the PRT, access will be denied.

## Azure AD Registered

## Azure AD Joined

## Hybrid Azure AD Joined

## Managed Environment


## Federated Environment

## Cloud Deployment

## Hybrid Deployment

## On-premises Deployment 

