#!/bin/bash
if cd "$DOS_BUILD_BASE""kernel/google/msm-4.14"; then
git apply $DOS_PATCHES_LINUX_CVES/0003-syzkaller-Misc/ANY/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/0005-Graphene-Deny_USB/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.14/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.14/0016.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.14/0021.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-bugon/4.14/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-fortify/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.14/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.14/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.14/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.14/0018.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.14/0021.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.14/0012.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.14/0017.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0012.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0017.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0028.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0030.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0032.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.14/0038.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.14/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.14/0015.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.14/0017.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.14/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.14/0014.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.14/0018.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-unused/4.14/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-unused/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-7837/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-3695/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-5754/^4.19/0157.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-18232/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5897/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5995/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-9415/ANY/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-20855/^4.18/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-3874/^5.1/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-9444/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-10520/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-11191/^5.0/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-11487/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12378/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12455/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12456/^5.1.5/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15291/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16921/^4.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-18786/4.14/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19051/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19068/4.14/0002.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19252/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19602/^5.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20908/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-15780/^5.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-16119/^5.10/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29372/^5.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-BleedingToothExtras/^5.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-1963/ANY/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-3493/^5.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-28039/^5.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-33624/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-33655/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-33655/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46912/^5.12/0001.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46921/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46958/^5.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46998/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46999/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47058/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47110/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47112/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47173/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47209/^5.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47234/^5.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47266/^5.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47346/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47430/^5.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47472/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47583/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47616/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47618/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3061/^5.18/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-4382/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-20382/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-27950/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48627/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48671/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48697/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48781/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48825/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48914/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48938/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1077/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1989/4.14/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3777/^6.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4881/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-6040/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-6270/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-6606/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-21657/4.14/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-23000/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-28554/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-31083/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-33070/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-35823/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-43550/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-46838/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-47233/4.14/0009.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-51043/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52429/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52435/4.19/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52436/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52437/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52439/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52443/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52444/^6.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52445/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52449/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52464/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52469/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52470/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52486/4.14/0008.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52486/^6.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52504/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52583/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52594/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52595/^6.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52597/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52598/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52599/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52600/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52602/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52603/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52604/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52605/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52606/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52607/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52615/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52619/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52620/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52623/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52650/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52670/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52675/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52685/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52686/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52691/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52693/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52699/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52707/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52741/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52746/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52803/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52847/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52880/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52884/^6.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-0340/4.14/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-0607/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-1086/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-21459/qca-wifi-host-cmn/0001.patch --directory=drivers/staging/qca-wifi-host-cmn
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-21468/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-22099/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-23848/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-23849/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-24855/^6.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-24857/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-24861/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-25739/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26600/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26602/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26606/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26624/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26625/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26633/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26635/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26636/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26642/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26645/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26651/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26663/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26675/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26679/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26685/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26696/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26697/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26704/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26720/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26722/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26735/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26752/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26754/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26760/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26763/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26772/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26773/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26777/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26778/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26779/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26791/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26793/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26801/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26805/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26816/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26825/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26839/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26840/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26845/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26857/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26859/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26874/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26875/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26880/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26883/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26884/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26889/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26894/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26900/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26901/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26917/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26920/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26931/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26934/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26956/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26957/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26961/^6.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26965/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26966/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26972/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26973/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26976/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26981/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26993/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26994/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26999/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27000/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27001/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27008/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27009/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27013/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27028/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27033/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27059/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27074/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27075/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27078/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27388/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27393/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27396/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27398/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27399/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27401/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27405/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27410/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27412/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27413/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27416/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27419/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27420/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27421/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27426/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27427/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27428/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27429/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27430/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-33014/qca-wifi-host-cmn/0001.patch --directory=drivers/staging/qca-wifi-host-cmn
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-33060/4.14/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-34027/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35789/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35806/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35807/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35821/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35822/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35824/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35825/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35828/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35830/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35847/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35849/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35877/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35879/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35886/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35893/4.14/0008.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35910/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35915/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35922/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35925/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35930/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35933/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35935/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35936/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35944/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35947/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35950/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35954/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35955/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35960/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35962/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35969/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35978/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35982/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35997/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36004/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36015/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36016/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36017/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36286/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36484/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36883/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36886/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36919/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36933/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36934/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36940/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36941/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36946/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36950/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36954/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36959/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36960/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36964/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-36971-aosp/4.14/0013.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-37078/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-37353/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-37356/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38381/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38549/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38558/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38559/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38560/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38565/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38567/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38578/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38579/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38587/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38589/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38596/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38599/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38601/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38612/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38613/4.14/0009.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38618/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38619/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38621/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38627/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38633/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38634/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38637/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38659/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38780/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39276/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39292/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39296/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39301/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39475/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39480/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39487/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39488/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39489/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39499/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39501/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39509/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40902/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40904/3.5-^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40912/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40917/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40923/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40932/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40941/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40942/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40943/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40954/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40959/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40968/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40974/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40978/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40981/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40984/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40987/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40988/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40996/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41006/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41012/4.14/0012.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41014/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41015/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41016/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41017/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41020/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41035/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41041/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41044/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41059/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41063/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41068/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41072/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41081/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41089/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41095/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41097/4.12-^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42070/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42077/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42084/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42089/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42090/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42094/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42096/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42097/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42101/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42102/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42105/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42106/4.12-^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42115/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42131/4.19/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42143/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42145/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42148/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42154/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42157/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42223/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42224/4.14/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42232/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42236/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42246/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42265/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42271/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42280/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42284/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42289/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42295/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42296/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42297/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42304/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42305/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42309/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42310/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42311/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42313/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43839/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43853/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43854/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43858/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43861/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43879/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43882/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43883/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43884/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43890/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43893/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-43914/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44938/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44939/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44944/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44946/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44947/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44952/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44954/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44960/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44987/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44998/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44999/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-45021/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-45030/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46673/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46674/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46677/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46681/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46685/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46721/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46722/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46723/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46738/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46743/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46744/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46745/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46750/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46755/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46756/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46757/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46758/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46759/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46761/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46771/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46800/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46830/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46840/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46844/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12819/4.14/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52601/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27424/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27425/4.14/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42104/4.14/0009.patch
editKernelLocalversion "-dos.p497"
else echo "kernel_google_msm-4.14 is unavailable, not patching.";
fi;
cd "$DOS_BUILD_BASE"
