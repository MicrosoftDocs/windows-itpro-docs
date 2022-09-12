# Verify cache node functionality


### Verify functionality on Azure portal

Log into Azure portal and navigate to the Overview page. Select the **Monitoring** tab to verify the functionality of your server(s) by validating the number of healthy nodes shown. If you see any **Unhealthy nodes**, select the "Diagnose and Solve" link to troubleshoot and resolve the issue.

### Verify functionality on the server

It can take a few minutes for the container to deploy after you've saved the configuration.


To validate a properly functioning MCC, run the following command in the terminal of the cache server or any device in the network. Replace `<CacheServerIP>` with the IP address of the cache server.

```bash
wget http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com
```

If successful, you will see a terminal output similar to the following:

```bash
HTTP request sent, awaiting response... 200 OK
Length: 969710 (947K) [image/gif]
Saving to: 'wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com'

wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com   100%[========================]
```

:::image type="content" source="images/imcc28.png" alt-text="Terminal output of successful test result with wget command to validate a MCC.":::

Similarly, enter the following URL into a web browser on any device on the network:

```http
http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com
```


If the test fails, for more information, see the [FAQs](#mcc-isp-faq) section.

