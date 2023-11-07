---
title: Certificate Propagation Service 
description: This topic for the IT professional describes the certificate propagation service (CertPropSvc), which is used in smart card implementation.
ms.topic: concept-article
ms.date: 08/24/2021
---

# Certificate Propagation Service

This topic for the IT professional describes the certificate propagation service (CertPropSvc), which is used in smart card implementation.

The certificate propagation service activates when a signed-in user inserts a smart card in a reader that is attached to the computer. This action causes the certificate to be read from the smart card. The certificates are then added to the user's Personal store. Certificate propagation service actions are controlled by using Group Policy. For more information, see [Smart Card Group Policy and Registry Settings](smart-card-group-policy-and-registry-settings.md).

> [!NOTE]
> The certificate propagation service must be running for smart card Plug and Play to work.

The following figure shows the flow of the certificate propagation service. The action begins when a signed-in user inserts a smart card.

1. The arrow labeled **1** indicates that the Service Control Manager (SCM) notifies the certificate propagation service (CertPropSvc) when a user signs in, and CertPropSvc begins to monitor the smart cards in the user session
1. The arrow labeled **R** represents the possibility of a remote session and the use of smart card redirection
1. The arrow labeled **2** indicates the certification to the reader
1. The arrow labeled **3** indicates the access to the certificate store during the client session

![Certificate propagation service.](images/sc-image302.gif)

1. A signed-in user inserts a smart card
1. CertPropSvc is notified that a smart card was inserted
1. CertPropSvc reads all certificates from all inserted smart cards. The certificates are written to the user's personal certificate store

> [!NOTE]
> The certificate propagation service is started as a Remote Desktop Services dependency.

Properties of the certificate propagation service include:

- `CERT_STORE_ADD_REPLACE_EXISTING_INHERIT_PROPERTIES` adds certificates to a user's Personal store
- If the certificate has the `CERT_ENROLLMENT_PROP_ID` property (as defined by `wincrypt.h`), it filters empty requests and places them in the current user's request store, but it doesn't propagate them to the user's Personal store
- The service doesn't propagate any computer certificates to a user's Personal store or propagate user certificates to a computer store
- The service propagates certificates according to Group Policy options that are set, which might include:
  - **Turn on certificate propagation from the smart card** specifies whether a user's certificate should be propagated
  - **Turn on root certificate propagation from smart card** specifies whether root certificates should be propagated
  - **Configure root certificate cleanup** specifies how root certificates are removed

## Root certificate propagation service

Root certificate propagation is responsible for the following smart card deployment scenarios when public key infrastructure (PKI) trust hasn't yet been established:

- Joining the domain
- Accessing a network remotely

In both cases, the computer isn't joined to a domain, and therefore, trust isn't being managed by Group Policy. However, the objective is to authenticate to a remote server, such as the domain controller. Root certificate propagation provides the ability to use the smart card to include the missing trust chain.

When the smart card is inserted, the certificate propagation service propagates any root certificates on the card to the trusted smart card root computer certificate stores. This process establishes a trust relationship with the enterprise resources. You might also use a subsequent cleanup action when the user's smart card is removed from the reader, or when the user signs out. This is configurable with Group Policy. For more information, see [Smart Card Group Policy and Registry Settings](smart-card-group-policy-and-registry-settings.md).

For more information about root certificate requirements, see [Smart card root certificate requirements for use with domain sign-in](smart-card-certificate-requirements-and-enumeration.md#smart-card-root-certificate-requirements-for-use-with-domain-sign-in).

## See also

[How Smart Card Sign-in Works in Windows](smart-card-how-smart-card-sign-in-works-in-windows.md)
