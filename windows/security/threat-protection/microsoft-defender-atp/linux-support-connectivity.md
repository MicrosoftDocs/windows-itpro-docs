---
title: Troubleshoot cloud connectivity issues for Microsoft Defender ATP for Linux
ms.reviewer:
description: Troubleshoot cloud connectivity issues for Microsoft Defender ATP for Linux
keywords: microsoft, defender, atp, linux, cloud, connectivity, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
---

# Troubleshoot cloud connectivity issues for Microsoft Defender ATP for Linux

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

## Run the connectivity test

To test if Microsoft Defender ATP for Linux can communicate to the cloud with the current network settings, run a connectivity test from the command line:

```bash
$ mdatp --connectivity-test
```

If the connectivity test fails, check if the machine has Internet access and if [any of the endpoints required by the product](microsoft-defender-atp-linux.md#network-connections) are blocked by a proxy or firewall.

## Troubleshooting steps for environments without proxy or with transparent proxy

To test that a connection is not blocked in an environment without a proxy or with a transparent proxy, run the following command in the terminal:

```bash
curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should be similar to:

```
OK https://x.cp.wd.microsoft.com/api/report
OK https://cdn.x.cp.wd.microsoft.com/ping
```

## Troubleshooting steps for environments with static proxy

> [!WARNING]
> PAC, WPAD, and authenticated proxies are not supported. Ensure that only a static proxy or transparent proxy is being used.
>
> SSL inspection and intercepting proxies are also not supported for security reasons. Configure an exception for SSL inspection and your proxy server to directly pass through data from Microsoft Defender ATP for Linux to the relevant URLs without interception. Adding your proxy certificate to the global store will not allow for interception.

If a static proxy is required, add a proxy parameter to the above command, where `proxy_address:port` correspond to the proxy address and port:

```bash
$ curl -x http://proxy_address:port -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

Ensure that you use the same proxy address and port as configured in the `/lib/system/system/mdatp.service` file. Check your proxy configuration if there are errors from the above commands.

To use a static proxy, the `mdatp.service` file must be modified. Ensure the leading `#` is removed to uncomment the following line from `/lib/systemd/system/mdatp.service`:

```bash
#Environment="HTTPS_PROXY=http://address:port"
```

Also ensure that the correct static proxy address is filled in to replace `address:port`.

If this file is correct, try running the following command in the terminal to reload Microsoft Defender ATP for Linux and propagate the setting:

```bash
$ sudo systemctl daemon-reload; sudo systemctl restart mdatp
```

Upon success, attempt another connectivity test from the command line:

```bash
$ mdatp --connectivity-test
```

If the problem persists, contact customer support.

## Resources

- For more information about how to configure the product to use a static proxy, see [Configure Microsoft Defender ATP for static proxy discovery](linux-static-proxy-configuration.md).