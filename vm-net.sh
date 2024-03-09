sudo vmware-modconfig --console --install-all

openssl req -new -x509 -newkey rsa:2048 -keyout satvik.priv -outform DER -out satvik.der -nodes -days 36500 -subj "/CN=VMWARE/"

sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./satvik.priv ./satvik.der $(modinfo -n vmmon)

sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./satvik.priv ./satvik.der $(modinfo -n vmnet)

tail $(modinfo -n vmmon) | grep "Module signature appended"

sudo mokutil --import satvik.der

#now reboot

#$ reboot

#run below command after Reboot

#$ mokutil --test-key satvik.der


#if terminal shows like already enrolled means we have solved the problem successfully


#now open vmware