---
title: Secure supply chain
description: Windows 11 security book - Security foundation chapter - Secure supply chain.
ms.topic: overview
ms.date: 04/09/2024
---

# Secure supply chain

:::image type="content" source="images/security-foundation.png" alt-text="Diagram of containing a list of security features." lightbox="images/security-foundation.png" border="false":::

The end-to-end Windows 11 supply chain is complex, extending from the entire development process to components such as chips, firmware, drivers, operating system, and apps from other organizations, manufacturing, and security updates. Microsoft invests significantly in Windows 11 supply chain security, as well as the security of features and components. In 2021, the United States issued an executive order on enhancing the nation's cybersecurity. The executive order, along with various attacks like SolarWinds and WannaCry, elevated the urgency and importance of ensuring a secure supply chain.

Microsoft requires the Windows 11 supply chain to comply with controls including:

- Identity management and user access control
  - Access control
  - Principles of least privilege
  - RBAC
  - Segregation of duties
  - MFAs
  - Account management
  - Physical access control
- Information security
  - Information handling
  - Cryptography
  - Vulnerability scanning
  - Encryption
  - Integrity and attestation
  - Confidentiality
- Operational controls
  - Code of repo ownership
  - Config & change management
  - Asset ownership
  - Manufacturing standards
- Security monitoring & event logging
  - Network
  - Host
  - Application
  - Services
  - DevOps
  - Manufacturing security
  - Physical security monitoring
- Supplier security control
  - SSPA
  - Supplier screening
  - Supplier inventory
- Logistics security control
  - Receiving
  - Shipping
  - Warehouse & storage
  - Logistics management

## Software bill of materials (SBOM)

In addition to following the above supply chain security controls, SBOMs are leveraged to provide the transparency and provenance of the content as it moves through various stages of the Windows supply chain. This enables trust between each supply chain segment, ensures that tampering has not taken place during ingestion and along the way, and provides a provable chain of custody for the product that we ship to customers.

Code-signing software is the best way to guarantee application integrity and authenticity and helps users distinguish between trusted applications and malware before downloading or installing. Code signing proprietary applications and software from other organizations greatly reduces the complexity of creating and managing application control policies. Code signing enables the creation and deployment of certificate chain-based application control policies, which can then be cryptographically enforced.

Traditionally, code signing has been a difficult undertaking due to the complexities involved in obtaining certificates, securely managing those certificates, and integrating a proper signing process into the development and continuous integration and continuous deployment (CI/CD) pipelines.

## Windows App software development kit (SDK)

Developers can design highly secure applications that benefit from the latest Windows 11 safeguards using the Windows App SDK. The SDK provides a unified set of APIs and tools for developing secure desktop apps for Windows 11 and Windows 10. To help create apps that are up to date and protected, the SDK follows the same security standards, protocols, and compliance as the core Windows operating system.

If you are a developer, you can find security best practices and information at [Windows](/windows/security/threat-protection/windows-platform-common-criteria#security-and-privacy) [application development—best practices](/windows/security/threat-protection/windows-platform-common-criteria#security-and-privacy). You can get started with [Windows App SDK](/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples) [](/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples)[Samples on GitHub](/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples)[.](/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples) For an example of the continuous security process in action with the Windows App SDK, see the [most recent release](https://insider.windows.com/#version-11).
