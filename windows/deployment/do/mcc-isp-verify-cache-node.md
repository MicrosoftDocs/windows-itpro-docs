# Verify cache node functionality

### Verify client side

Sign in to the Connected Cache server or use SSH. Run the following command from a terminal to see the running modules (containers):

```bash
sudo iotedge list
```

If the cache server is running properly, you will see the containers **edgeAgent**, **edgeHub**, and **[Your Cache Node name]** listed, all with the status **running**.

If it lists the **edgeAgent** and **edgeHub** containers, but doesn't include **MCC**, view the status of the IoT Edge security manager using the command:

```bash
sudo journalctl -u iotedge -f
```

This command provides the current status of the starting and stopping of a container or the container pull and start.

### Verify server side

It can take a few minutes for the container to deploy.

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

If the test fails, for more information, see the [common issues](#common-issues) section.