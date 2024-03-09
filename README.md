- 👋 Hi, I’m @satvik-huse
- This File is For "Cannot open /dev/vmmon: No such file or directory. Please make sure that the kernel module `vmmon' is loaded" in Ubuntu 22.

The File provide steps to sign VMware drivers on Linux host with secure boot enabled, so that VMware Workstation can run VMs successfully.
On Linux host with secure mode enabled, it is not allowed to load any unsigned drivers. Due to this, VMware drivers, such as vmmon and vmnet, are not able to be loaded which prevents virtual machine to power on.



