#!/bin/bash
cd "$DOS_BUILD_BASE""kernel/fairphone/msm8974"
git apply $DOS_PATCHES_LINUX_CVES/0003-syzkaller-Misc/ANY/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/0003-syzkaller-Misc2/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0006-Copperhead-Kernel_Hardening/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/0007-Accelerated_AES/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2012-6544/^3.6/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3076/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3222/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3225/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3227/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3228/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3229/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-3231/^3.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2013-4470/^3.12/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2014-3688/^3.17.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2014-7975/^3.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-2042/^3.19/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-6937/^4.2.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-7566/^4.4.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-8553/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-8746/^4.2.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2015-8812/^4.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-2085/^4.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-2543/^4.4.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-4485/^4.5.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-4580/^4.5.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-4913/^4.5.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-5244/^4.6.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-5828/^4.6.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-6480/^4.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2016-10318/^4.7.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16USB/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16USB/ANY/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16USB/ANY/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-0750/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-0786/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-7645/^4.10.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-8824/^4.14.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-9984/^4.11.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-11473/^4.12.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-12762/^4.12/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-13695/^4.12.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-14489/^4.13.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16526/^4.13.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16532/^4.13.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16537/^4.13.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-16650/^4.13.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-17450/^4.14.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-17805/^4.14.8/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-18079/^4.12.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-18203/^4.14.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-18360/^4.11.3/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2017-1000363/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5332/^4.14.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5333/^4.14.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-5750/^4.14.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-7492/^4.14.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-7566/^4.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-7755/^4.15.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-7757/^4.15.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-8781/^4.15/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10021/^4.16/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10087/^4.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10124/^4.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10675/^4.12.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0007.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0008.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0009.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10876/3.4/0010.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10879/3.4/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10879/3.4/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10880/3.4/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-10940/^4.16.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-12233/^4.17.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-15594/^4.18.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-16658/^4.18.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2018-18710/^4.19/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-2054/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-10142/^5.0.17/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-10527/3.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-10622/ANY/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-10626/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-14037/3.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-14053/3.4/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15118/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15216/^5.0.14/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-15807/^5.1.13/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16746/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16746/3.4/0003.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-16746/3.4/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-18806/^5.3.5/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19051/^5.3.11/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19066/^5.3.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19073/^5.3.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19074/^5.3.11/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19528/^5.3.7/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19528/^5.3.7/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20054/^5.0.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20054/^5.0.6/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20096/^5.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-20636/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-0404/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-0431/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-8647/3.4/0002.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-8648/3.4/0004.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-8648/3.4/0005.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-8648/3.4/0006.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-9383/^5.5.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-10773/ANY/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-11565/^5.6.2/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-12656/^5.6.10/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-13974/^5.7.1/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-14314/^5.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-15393/^5.7.6/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2020-25643/^5.9/0001.patch
git apply $DOS_PATCHES_LINUX_CVES/Untracked-02/ANY/kernel.msm.git-9f34c6ebc016cd061ae5ec901221d15fa3d67e49.patch
git apply $DOS_PATCHES_LINUX_CVES/CVE-2019-19051/^5.3.11/0001.patch
editKernelLocalversion "-dos.p120"
cd "$DOS_BUILD_BASE"
