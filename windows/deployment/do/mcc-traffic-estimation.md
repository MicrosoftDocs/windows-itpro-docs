# Traffic Estimation

During the sign up process, Microsoft will provide you with a traffic estimation based on your ASN(s). We make estimations based on our predictions on historical data about Microsoft content download volume. We will use these estimations to recommend the right hardware for you to deploy your cache node on. You can view these recommendations within the Azure portal.

Note that we make these estimations based on the Microsoft content types that Microsoft Connected Cache serves. To learn more about the types of content that are supported, see [Delivery Optimization and Microsoft Connected Cache content endpoints](). 

## Cache performance

To make sure you are maximizing the performance of your cache node, please note the following:

### Drive performance

The maximum number of disks supported is 9. When configuring your drives, we recommend SSD drives as cache read speed of SSD is superior to HDD. In addition, using multiple disks is recommended to improve cache performance. 

RAID disk configurations are discouraged as cache performance will be impacted. If using RAID disk configurations, ensure striping.

### NIC requirements

- Multiple NICs on a single MCC instance are supported using a _link aggregated_ configuration.
- 10 Gbps NIC is the minimum speed recommended, but any NIC is supported.

### Sizing recommendations

The MCC module is optimized for Ubuntu 20.04 LTS. Install Ubuntu 20.04 LTS on a physical server or VM of your choice. The following recommended configuration can egress at a rate of 9 Gbps with a 10 Gbps NIC.

| Component  | Minimum | Recommended |
| -- | --- | --- |
| OS |  Ubuntu 20.04 LTS VM or physical server | Ubuntu 20.04 LTS VM or physical server (preferred) |
| NIC | 10 Gbps| at least 10 Gbps |
| Disk | SSD <br>1 drive <br>2 TB each  |SSD <br>2-4 drives <br>at least 2 TB each  |
| Memory | 8 GB | 32 GB or greater |
| Cores | 4 | 8 or more  |

### Virtual Machines

If you are using a virtual machine as your server, please refer to [VM performance](mcc-isp-vm-performance.md) for tips on how to improve your VM performance.