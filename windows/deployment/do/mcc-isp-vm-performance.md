# Enhancing VM Performance

In virtual environments, the cache server egress peaks at around 1.1 Gbps. If you want to maximize the egress in virtual environments, it's critical to change the following two settings:

1. Enable **SR-IOV** in the following three locations:

    - The BIOS of the MCC VM
    - The MCC VM's network card properties
    - The hypervisor for the MCC VM

    Microsoft has found these settings to double egress when using a Microsoft Hyper-V deployment.

2. Enable "high performance" in the BIOS instead of energy savings. Microsoft has found this setting to also nearly double egress in a Microsoft Hyper-V deployment.