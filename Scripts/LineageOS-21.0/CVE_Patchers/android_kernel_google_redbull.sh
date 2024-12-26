#!/bin/bash
if cd "$DOS_BUILD_BASE/kernel/google/redbull"; then
git reset --hard && git clean -ffdx
git apply $DOS_PATCHES_LINUX_CVES/0003-syzkaller-Misc/ANY/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/0005-Graphene-Deny_USB/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.19/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.19/0012.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.19/0017.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-allocsize/4.19/0022.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-bugon/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-bugon/4.19/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-fortify/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.19/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-misc/4.19/0019.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.19/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.19/0013.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-random/4.19/0018.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.19/0013.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.19/0018.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.19/0021.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-ro/4.19/0024.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.19/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.19/0016.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-sanitize/4.19/0018.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.19/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.19/0011.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.19/0015.patch
git apply $DOS_PATCHES_LINUX_CVES/0008-Graphene-Kernel_Hardening-slab/4.19/0019.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-7837/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-3695/ANY/0001.patch
#git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5873/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5897/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-9415/ANY/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-3874/^5.1/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-9444/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-11191/^5.0/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12378/^5.1.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12379/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12380/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12381/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12455/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12456/^5.1.5/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15291/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-18786/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19051/4.19/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19068/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19602/^5.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20908/^5.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-11146/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-15780/^5.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-16119/^5.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-16119/^5.10/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-16120/^5.7/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-29372/^5.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-36782/^5.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-36783/^5.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-BleedingToothExtras/^5.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-1963/ANY/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-3493/^5.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-28039/^5.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-28950/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46912/^5.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46958/^5.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-46959/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47173/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47209/^5.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47234/^5.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47266/^5.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47329/^5.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47430/^5.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47472/^5.15/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47490/^5.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47616/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2021-47618/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3061/^5.18/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3104/^5.18/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3108/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3625/^5.19/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-3903/^6.0/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-4382/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-4662/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-20158/^5.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-20571/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-27950/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48663/^6.0/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48713/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48781/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48785/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48825/^5.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48910/4.19/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48920/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48938/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48955/^6.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2022-48966/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-0030/^4.20/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-0386/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-1989/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-3777/^6.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4133/^6.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4134/^6.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-4623/4.12-^6.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-21656/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-23000/^5.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-28541/qca-wifi-host-cmn/0001.patch --directory=drivers/staging/qca-wifi-host-cmn
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-33118/audio-kernel/0001.patch --directory=techpack/audio
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-33118/audio-kernel/0002.patch --directory=techpack/audio
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-43545/qcacld-3.0/0001.patch --directory=drivers/staging/qcacld-3.0
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52595/^6.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52604/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52682/^6.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52741/^6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52748/^6.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52773/^6.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52817/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52852/^6.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52884/^6.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2023-52917/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-23378/audio-kernel/0001.patch --directory=techpack/audio
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-24855/^6.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26720/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26760/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26771/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26861/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26900/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26920/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26950/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26951/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26961/^6.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-26972/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27009/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27033/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-27393/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-33053/video-driver/0001.patch --directory=techpack/video
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-34027/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35812/^6.9/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35824/^6.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35879/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35892/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35933/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35954/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35962/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-38538/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39296/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-39501/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40917/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40923/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40953/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40954/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40958/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40961/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40993/^6.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-40996/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41014/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41016/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-41041/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42077/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42102/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42229/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42247/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-42296/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44931/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44938/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44939/^6.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44982/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-44988/4.19/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46681/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46689/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46719/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46754/^6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46830/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-46854/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47670/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47672/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47679/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47685/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47696/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47697/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47698/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47699/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47706/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47709/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47713/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47723/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47737/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47742/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47747/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47749/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-47757/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49855/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49860/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49867/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49877/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49882/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49883/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49894/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49896/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49900/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49902/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49903/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49924/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49938/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49944/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49948/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49949/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49952/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49957/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49958/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49959/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49962/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49963/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49965/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49966/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49967/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49975/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49981/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49982/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49995/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-49997/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50006/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50007/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50008/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50017/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50019/^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50024/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50035/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50040/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50044/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50045/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50059/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50074/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50076/4.19/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50099/4.19/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50116/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50117/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50142/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50143/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50148/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50150/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50167/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50168/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50171/4.19/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50179/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50180/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50184/^6.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50186/^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50195/3.17-^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50201/^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50202/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50210/3.17-^6.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50218/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50228/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50229/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50230/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50234/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50236/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50237/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50251/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50262/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50264/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50265/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50267/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50269/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50273/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50279/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50282/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50287/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50290/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50292/^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50295/^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50296/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50299/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50301/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-50302/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53045/^6.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53057/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53060/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53061/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53063/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53066/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53101/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53103/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53104/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53112/4.19/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53127/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53130/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53131/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53136/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53140/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53141/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-53142/4.19/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-12819/4.19/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2024-35812/4.19/0003.patch
editKernelLocalversion "-dos.p295"
else echo "kernel_google_redbull is unavailable, not patching.";
fi;
cd "$DOS_BUILD_BASE"
