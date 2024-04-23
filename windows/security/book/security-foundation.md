---
title: Security foundation
description: Windows 11 security book - Security foundation chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Security foundations

Microsoft is committed to continuously investing in improving our software development process, building highly secure-by-design software, and addressing security compliance requirements. At Microsoft, we embed security and privacy considerations from the earliest lifecycle phases of all our product design and software development processes. We build in security from the ground up for powerful defense in today's threat environment and have the infrastructure to protect and react quickly to future threats.

Every component of the Windows 11 technology stack, from chip-to-cloud, is purposefully built secure by design. Windows 11 meets the modern threats of today's flexible work environments by delivering hardware-based isolation, end-to-end encryption, and advanced malware protection.

With Windows 11, organizations can improve productivity and gain intuitive new experiences without compromising security.

:::image type="content" source="images\security-foundations-on.png" alt-text="Diagram of containng a list of security features." lightbox="images\security-foundations.png" border="false":::

## Offensive research

## Microsoft Security Development Lifecycle (SDL)

The Microsoft Security Development Lifecycle (SDL) introduces security best practices, tools, and processes throughout all phases of engineering and development.

## OneFuzz service

A range of tools and techniques—such as threat modeling, static analysis, fuzz testing, and code quality checks—enable continued security value to be embedded into Windows by every engineer on the team from day one. Through the SDL practices, Microsoft engineers are continuously provided with actionable and up-to-date methods to improve development workflows and overall product security before the code has been released.

Microsoft is dedicated to working with the community and our customers to continuously improve and tune our platform and products to help defend against the dynamic and sophisticated threat landscape. Project OneFuzz—an extensible fuzz testing framework used by Microsoft Edge, Windows, and teams across Microsoft—is now available to developers around the world through GitHub as an open-source tool.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Project OneFuzz framework, an open source developer tool to find and fix bugs](https://www.microsoft.com/en-us/security/blog/2020/09/15/microsoft-onefuzz-framework-open-source-developer-tool-fix-bugs/) [at scale](https://www.microsoft.com/en-us/security/blog/2020/09/15/microsoft-onefuzz-framework-open-source-developer-tool-fix-bugs/)
- [OneFuzz on GitHub](https://github.com/microsoft/onefuzz)

## Microsoft Offensive Research and Security Engineering

[Microsoft Offensive Research and Security Engineering](https://github.com/microsoft/WindowsAppSDK-Samples?msclkid=1a6280c6c73d11ecab82868efae04e5c) [](https://github.com/microsoft/WindowsAppSDK-Samples?msclkid=1a6280c6c73d11ecab82868efae04e5c)performs targeted design reviews, audits, and deep penetration testing of Windows features using Microsoft's open-source OneFuzz platform as part of their development and testing cycle.

## Windows Insider and Bug Bounty program

As part of our secure development process, the Microsoft Windows Insider Preview bounty program invites eligible researchers across the globe to find and submit vulnerabilities that reproduce in the latest Windows Insider Preview (WIP) Dev Channel.

The goal of the Windows Insider Preview bounty program is to uncover significant vulnerabilities that have a direct and demonstrable impact on the security of customers using the latest version of Windows.

Through this collaboration with researchers across the globe, our teams identify critical vulnerabilities that were not previously found during development and quicky fix the issues before releasing our final Windows.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Insider Program](https://learn.microsoft.com/en-us/windows-insider/get-started)
- [Microsoft bounty programs](https://www.microsoft.com/en-us/msrc/bounty)

# Certification

Microsoft is committed to supporting product security standards and certifications, including FIPS 140 and Common Criteria, as an external validation of security assurance.

## Federal Information Processing Standard (FIPS)

The Federal Information Processing Standard (FIPS) Publication 140 is a US government standard that defines the minimum security requirements for cryptographic modules in IT products. Microsoft maintains an active commitment to meeting the requirements of the FIPS 140 standard, having validated cryptographic modules against FIPS 140-2 since it was first established. Microsoft products, including Windows 11, Windows 10, Windows Server, and many cloud services, use these cryptographic modules.

## Common Criteria (CC)

Common Criteria (CC) is an international standard currently maintained by national governments who participate in the Common Criteria Recognition Arrangement. Common Criteria defines a common taxonomy for security functional requirements, security assurance requirements, and an evaluation methodology used to ensure products undergoing evaluation satisfy the functional and assurance requirements.

Microsoft ensures that products incorporate the features and functions required by relevant Common Criteria Protection Profiles and completes Common Criteria certifications of Microsoft Windows products.

Microsoft publishes the list of FIPS 140 and Common Criteria certified products at [Federal](https://learn.microsoft.com/en-us/windows/security/security-foundations/certification/fips-140-validation) [Information Processing Standard (FIPS)](https://learn.microsoft.com/en-us/windows/security/security-foundations/certification/fips-140-validation) 140 Validation and [Common Criteria Certifications.](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-platform-common-criteria)

# Secure supply chain

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

If you are a developer, you can find security best practices and information at [Windows](https://docs.microsoft.com/windows/security/threat-protection/windows-platform-common-criteria#security-and-privacy) [application development—best practices](https://docs.microsoft.com/windows/security/threat-protection/windows-platform-common-criteria#security-and-privacy). You can get started with [Windows App SDK](https://docs.microsoft.com/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples) [](https://docs.microsoft.com/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples)[Samples on GitHub](https://docs.microsoft.com/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples)[.](https://docs.microsoft.com/windows/security/threat-protection/fips-140-validation#windows-app-sdk-samples) For an example of the continuous security process in action with the Windows App SDK, see the [most recent release](https://insider.windows.com/#version-11).
