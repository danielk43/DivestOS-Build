#!/bin/bash
cd "$DOS_BUILD_BASE""kernel/google/coral"
git apply $DOS_PATCHES_LINUX_CVES/0001-LinuxIncrementals/4.14/4.14.0201-0202.patch --exclude=Makefile
git apply $DOS_PATCHES_LINUX_CVES/0001-LinuxIncrementals/4.14/4.14.0205-0206.patch --exclude=Makefile
git apply $DOS_PATCHES_LINUX_CVES/0001-LinuxIncrementals/4.14/4.14.0207-0208.patch --exclude=Makefile
git apply $DOS_PATCHES_LINUX_CVES/0001-LinuxIncrementals/4.14/4.14.0210-0211.patch --exclude=Makefile
git apply $DOS_PATCHES_LINUX_CVES/0001-LinuxIncrementals/4.14/4.14.0219-0220.patch --exclude=Makefile
git apply $DOS_PATCHES_LINUX_CVES/0003-syzkaller-Misc/ANY/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/0003-syzkaller-Misc2/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0051.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0052.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0053.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0054.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0055.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0056.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0059.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0062.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0064.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0065.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0066.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0067.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0069.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0070.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0071.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0072.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0073.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0075.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0076.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0077.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0078.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0079.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0080.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0081.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/4.14/0082.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-7837/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-3695/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-0627/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-14875/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-18232/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5897/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-9415/ANY/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-20855/^4.18.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-0145/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-0148/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-3874/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-9444/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-10520/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-11191/^5.0.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12378/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12455/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12456/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-14034/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15291/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16921/^4.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19051/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19318/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19602/^5.4.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19816/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20908/^5.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-11146/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-11250/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-11608/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-11608/^5.6.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-12352/ANY/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-14351/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-14386/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-15780/^5.7.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-16119/^5.10/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-25643/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-25645/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-25668/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-25704/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-25705/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-27777/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-27815/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-27825/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-28374/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-28915/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-28915/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-28915/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-28941/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-28974/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29372/^5.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29568/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29568/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29568/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29568/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29568/4.14/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29569/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29661/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-35508/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-36158/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-BleedingToothExtras/^5.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-3178/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-3348/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26930/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26931/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26931/4.14/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26931/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26932/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26932/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26932/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26932/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-26932/4.14/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-27363/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-27365/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-27365/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-28038/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-28038/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-28039/^5.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-27830/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29660/4.14/0002.patch
editKernelLocalversion "-dos.p111"
cd "$DOS_BUILD_BASE"