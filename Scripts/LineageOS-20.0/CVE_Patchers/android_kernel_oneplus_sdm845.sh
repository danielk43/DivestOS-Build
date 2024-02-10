#!/bin/bash
if cd "$DOS_BUILD_BASE""kernel/oneplus/sdm845"; then
git apply $DOS_PATCHES_LINUX_CVES/0002-Misc_Fixes-Steam/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0005-Graphene-Deny_USB/4.9/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.9/0015.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.9/0020.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-bugon/4.9/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-bugon/4.9/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.9/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.9/0017.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.9/0020.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.9/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.9/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.9/0016.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.9/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.9/0027.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.9/0031.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.9/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.9/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.9/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.9/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.9/0013.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.9/0017.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slub/4.9/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slub/4.9/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slub/4.9/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-7837/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-3695/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16USB/ANY/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16USB/ANY/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16USB/ANY/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-7477/4.9/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-13693/^4.12.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-13694/^4.12.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-1000252/^4.13/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5897/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-9415/ANY/0005.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-11412/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-20855/^4.18/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-25020/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12378/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12455/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12456/^5.1.5/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15291/4.9/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16921/^4.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16994/4.9/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19051/4.9/0013.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19068/4.9/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20908/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-3674/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-16119/^5.10/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-24394/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-3656/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-33098/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-35084/qca-wifi-host-cmn/0001.patch --directory=drivers/staging/qca-wifi-host-cmn
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-35119/qca-wifi-host-cmn/0001.patch --directory=drivers/staging/qca-wifi-host-cmn
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-39792/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-45469/4.9-^5.16/0001.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-1204/4.14/0006.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-1204/4.14/0007.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-1204/4.14/0008.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-1204/4.14/0009.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-1204/4.14/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-1679/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-2153/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-2153/^5.17/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3061/^5.18/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-4382/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-20148/^5.15/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-20369/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-20371/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-25715/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-25722/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-27950/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-28388/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-33225/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-45887/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-45919/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-0045/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-0458/4.14/0003.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-0461/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1073/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1074/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1118/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1206/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1380/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1513/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1670/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1855/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1989/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1989/^6.3/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1990/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-2002/3.10-^6.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-2162/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-2194/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-2248/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-2269/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-2985/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3090/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3141/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3358/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3567/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3772/4.14/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3777/^6.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4132/4.6-^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4132/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4206/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4207/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4623/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4921/4.14/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-7192/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-23559/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-28553/qca-wifi-host-cmn/0001.patch --directory=drivers/staging/qca-wifi-host-cmn
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-30772/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-31083/^6.5/0001.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-31084/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-31085/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-32269/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-34256/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-34324/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-35001/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-35824/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-39192/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-39193/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-39194/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-40283/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-42752/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-42754/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-45862/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-45863/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-46343/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-51780/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-51781/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-51782/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-0340/^6.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-0639/4.14/0003.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-0775/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-fortify/4.9/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.9/0016.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.9/0029.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.9/0005.patch
editKernelLocalversion "-dos.p142"
else echo "kernel_oneplus_sdm845 is unavailable, not patching.";
fi;
cd "$DOS_BUILD_BASE"
