# Uninstall your cache node

There are two main steps required to uninstall your cache node:
1. Delete your cache node from the Azure portal
1. Run the uninstall script to cleanly remove MCC from your server


## Delete your cache node from the Azure portal
Navigate to your Overview page. On the top bar, click on **Delete**.


## Run the uninstall script to cleanly remove MCC from your server
In the installer zip file, you'll find the file **uninstallmcc.sh**. This script uninstalls MCC and all the related components. Before you run this script, contact the MCC team. Only run it if you're facing issues with MCC installation.

> [!WARNING]
> Be cautious before running this script. It will also erase existing IoT workflows in this VM.

The **uninstallmcc.sh** script removes the following components:

- IoT Edge
- Edge Agent
- Edge Hub
- MCC
- Moby CLI
- Moby engine

To run the script, use the following commands:

```bash
sudo chmod +x uninstallmcc.sh
sudo ./uninstallmcc.sh
```