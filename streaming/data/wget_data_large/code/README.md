### Code
This folder contains the code we use to capture wget audit data.

Note that we assume VMs have correctly set up for the experiments (i.e., have CamFlow installed).
If this is not the case, you need to set up client and server VMs first before running the code included in this folder.

#### Wget Vulnerability

Once the system has `CamFlow` installed, you can run the `Makefile` in this folder to install the vulnerable `wget`:
```
make prepare
```

The attack we use can be referenced from: https://www.exploit-db.com/exploits/40064/