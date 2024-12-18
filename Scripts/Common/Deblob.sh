#!/bin/bash
#DivestOS: A mobile operating system divested from the norm.
#Copyright (c) 2017-2023 Divested Computing Group
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU Affero General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU Affero General Public License for more details.
#
#You should have received a copy of the GNU Affero General Public License
#along with this program.  If not, see <https://www.gnu.org/licenses/>.
umask 0022;
set -uo pipefail;

export DOS_WORKSPACE_ROOT=${GIT_LOCAL}"/DivestOS-Build/"; #XXX: Set to project root for this fork.
source "$DOS_WORKSPACE_ROOT/Scripts/init.sh"

source "$DOS_SCRIPTS_COMMON/Shell.sh";

#Goal: Remove as many proprietary blobs without breaking core functionality
#Outcome: Increased battery/performance/privacy/security, Decreased ROM size
#TODO: Clean init*.rc files, Modularize, Remove more variants

export DOS_BUILD_BASE=$LINEAGE_ROOT
echo "DOS_BUILD_BASE=$DOS_BUILD_BASE"
echo "DOS_DEBLOBBER_REMOVE_ACCESSORIES=$DOS_DEBLOBBER_REMOVE_ACCESSORIES"
echo "DOS_DEBLOBBER_REMOVE_AUDIOFX=$DOS_DEBLOBBER_REMOVE_AUDIOFX"
echo "DOS_DEBLOBBER_REMOVE_CNE=$DOS_DEBLOBBER_REMOVE_CNE"
echo "DOS_DEBLOBBER_REMOVE_GRAPHICS=$DOS_DEBLOBBER_REMOVE_GRAPHICS"
echo "DOS_DEBLOBBER_REMOVE_RENDERSCRIPT=$DOS_DEBLOBBER_REMOVE_RENDERSCRIPT"
echo "DOS_DEBLOBBER_REMOVE_FP=$DOS_DEBLOBBER_REMOVE_FP"
echo "DOS_DEBLOBBER_REMOVE_IMS=$DOS_DEBLOBBER_REMOVE_IMS"
echo "DOS_DEBLOBBER_REMOVE_RCS=$DOS_DEBLOBBER_REMOVE_RCS"
echo "DOS_DEBLOBBER_REMOVE_IPA=$DOS_DEBLOBBER_REMOVE_IPA"
echo "DOS_DEBLOBBER_REMOVE_IR=$DOS_DEBLOBBER_REMOVE_IR"
echo "DOS_DEBLOBBER_REPLACE_TIME=$DOS_DEBLOBBER_REPLACE_TIME"
echo "Deblobbing...";

#
#START OF BLOBS ARRAY
#
	#WARNING: STRAY DELIMITERS WILL RESULT IN FILE DELETIONS
	blobs=""; #Delimited using "|"
	makes="";
	manifests="";
	overlay="invalid_placeholder_aekiekan";
	ipcSec="";
	kernels=""; #Delimited using " "

	#ACDB (Audio Calibration DataBase) [Qualcomm] XXX: Breaks audio output
	#blobs=$blobs".*.acdb|florida.*.bin"; #databases
	#blobs=$blobs"|libacdb.*.so|libaditrtac.so|libaudcal.so"; #loaders

	#ADSP/Hexagon (Hardware Digital Signal Processor) [Qualcomm]
	#blobs=$blobs"[/]adsp[/]|.*adspd.*|.*adsprpc.*";
	#blobs=$blobs"|libfastcvadsp_stub.so|libfastcvopt.so|libadsp.*.so|libscve.*.so";

	#IFAA (???) [Qualcomm/OnePlus?]
	blobs=$blobs"ifaadaemon|ifaadaemonProxy";
	blobs=$blobs"|IFAAService.apk";
	blobs=$blobs"|vendor.oneplus.hardware.ifaa.*";
	makes=$makes"org.ifaa.android.manager|IFAAService";
	manifests=$manifests"hardware.ifaa";

	#Alipay (Payment Platform) [Alibaba]
	blobs=$blobs"|alipay.*";
	manifests=$manifests"|alipay";

	#Mlipay (Payment Platform) [Xiaomi]
	blobs=$blobs"|mlipayd.*";
	blobs=$blobs"|libmlipay.*.so";
	blobs=$blobs"|vendor.xiaomi.hardware.mlipay.*";
	manifests=$manifests"|mlipay";

	#AIV (DRM) [Amazon]
	blobs=$blobs"|libaivdrmclient.so|libAivPlay.so";

	#ANT (Wireless)
	blobs=$blobs"|libantradio.so";
	#blobs=$blobs"|com.qualcomm.qti.ant.*";
	makes=$makes"|AntHalService|com.dsi.ant.antradio_library";
	manifests=$manifests"|AntHci";

	#aptX (Bluetooth Audio Compression Codec) [Qualcomm]
	if [ "$DOS_DEBLOBBER_REMOVE_APTX" = true ]; then
		blobs=$blobs"|.*aptX.*|libbt-aptx.*.so";
		blobs=$blobs"|aptxui.apk";
		#makes=$makes"|aptxui";
	fi;

	#AT Command Handling/Forwarding (See: https://atcommands.org)
	blobs=$blobs"|bin[/]atd|drexe|log_serial_arm|at_distributor|connfwexe";
	blobs=$blobs"|OBDM_Permissions.apk";
	if [ "$DOS_DEBLOBBER_REMOVE_ATFWD" = true ]; then
		blobs=$blobs"|ATFWD-daemon|atfwd_daemon";
		blobs=$blobs"|vendor.qti.atcmdfwd.*|vendor.qti.hardware.radio.atcmdfwd.*";
		blobs=$blobs"|atfwd.apk";
		#makes=$makes"|atfwd";
		manifests=$manifests"|AtCmdFwd";
	fi;

	#AudioFX (Audio Effects)
	if [ "$DOS_DEBLOBBER_REMOVE_AUDIOFX" = true ]; then
		blobs=$blobs"|fmas_eq.dat";
		blobs=$blobs"|libasphere.so|libdownmix.so|libeffectproxy.so|libfmas.so|libldnhncr.so|libmmieffectswrapper.so|libreverbwrapper.so|libshoebox.so|libvisualizer.so|libvolumelistener.so|libLifevibes_lvverx.so|libLifevibes_lvvetx.so|libdynproc.so";
		#blobs=$blobs"|libspeakerbundle.so|libmotaudioutils.so"; #XXX: Breaks audio on Motorola devices (?)
		blobs=$blobs"|libqcbassboost.so|libqcreverb.so|libqcvirt.so"; #Qualcomm
		#blobs=$blobs"|libbundlewrapper.so|libqcompostprocbundle.so|libqcomvoiceprocessing.so|libqcomvoiceprocessingdescriptors.so|libqcomvisualizer.so|libqtiautobundle.so";
		blobs=$blobs"|libhwdap.so|libhwdap.*.so|libswdap.*.so|lib_dlb_msd.so|vendor.dolby.hardware.dms.*"; #Dolby
		blobs=$blobs"|libsonypostprocbundle.so|libsonysweffect.so"; #Sony
	fi;

	#Clearkey (DRM) [Google]
	blobs=$blobs"|libdrmclearkeyplugin.so";
	makes=$makes"|android.hardware.drm.*clearkey.*|libdrmclearkeyplugin";
	manifests=$manifests"|clearkey";

	#CMN (?) [?]
	#blobs=$blobs"|cmnlib.*";

	#CNE (VoWiFi) [Qualcomm]
	if [ "$DOS_DEBLOBBER_REMOVE_CNE" = true ]; then
		#blobs=$blobs"|libcneapiclient.so|libNimsWrap.so|com.quicinc.cne.*.so"; #XXX: Breaks radio
		blobs=$blobs"|andsfCne.xml|ATT_profile.*.xml|cneapiclient.xml|com.quicinc.cne.xml|ConnectivityExt.xml|profile1.xml|profile2.xml|profile3.xml|profile4.xml|profile5.xml|ROW_profile.*.xml|SwimConfig.xml|VZW_profile.*.xml";
		blobs=$blobs"|cnd";
		blobs=$blobs"|cneapiclient.jar|com.quicinc.cne.*.jar|ConnectivityExt.jar";
		blobs=$blobs"|CNEService.apk|CneApp.apk|IWlanService.apk";
		blobs=$blobs"|libcneconn.so|libcneqmiutils.so|libcne.so|libvendorconn.so|libwms.so|libwqe.so|libcneoplookup.so";
		#blobs=$blobs"|vendor.qti.data.factory.*|vendor.qti.hardware.data.dynamicdds.*|vendor.qti.hardware.data.latency.*|vendor.qti.hardware.data.qmi.*|vendor.qti.latency.*|vendor.qti.hardware.data.iwlan.*";
		overlay=$overlay"|config_wlan_data_service_package|config_wlan_network_service_package|config_qualified_networks_service_package";
		#makes=$makes"|libcnefeatureconfig"; XXX: breaks radio
		manifests=$manifests"|com.quicinc.cne|iwlan";
		blobs=$blobs"|QualifiedNetworksService.apk"; #Google
		blobs=$blobs"|qualifiednetworksservice.xml";
		makes=$makes"|Iwlan|CNEService|CneApp|IWlanService";
	fi;

	#CPPF (DRM) [?]
	blobs=$blobs"|libcppf.so";
	blobs=$blobs"|cppf.*";

	#Diagnostics
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/diag/ [headers]
	#https://source.codeaurora.org/quic/imm/imm/sources/diag/ [related?]
	blobs=$blobs"|[/]diag[/]|diag_callback_client|diag_dci_sample|diag_klog|diag_mdlog|diag_mdlog-getlogs|diag_mdlog-wrap|diag[/]mdm|diag_qshrink4_daemon|diag_socket_log|diag_uart_log|drmdiagapp|libdrmdiag.so|ssr_diag|test_diag|cnss_diag";
	#blobs=$blobs"|libdiag.so|libsdm-diag.so|libDiagService.so"; #XXX: Breaks things
	ipcSec="4097:4294967295:2002:2950:3009:2901|4097:4294967295:3009";

	#Dirac (Audio Codec + Effects) [Dirac]
	#if [ "$DOS_DEBLOBBER_REMOVE_AUDIOFX" = true ]; then
		#blobs=$blobs"|libDiracAPI_SHARED.so|.*dirac.*"; #XXX: Breaks headphone jack
		#blobs=$blobs"|diracmobile.config";
	#fi;

	#Discretix (DRM/HDCP) [Discretix Technologies]
	blobs=$blobs"|DxDrmServerIpc|discretix";
	blobs=$blobs"|libDxHdcp.so|libDxModularPluginNv.so|libDxDrmServer.so";
	blobs=$blobs"|DxHDCP.cfg|DxDrmConfig.txt";
	blobs=$blobs"|dxhdcp.*|dxcpr.*";
	blobs=$blobs"|libhdcpsrm.so|libcpion.so";
	makes=$makes"|DxHDCP.cfg";

	#Display Color Tuning [Qualcomm] #XXX: still breaks boot on some devices
	blobs=$blobs"|colorservice.apk|PPPreference.apk|CABLService.apk|QdcmFF.apk";
	if [ "$DOS_DEBLOBBER_REMOVE_DPP" = true ]; then
		blobs=$blobs"|mm-pp-daemon|mm-pp-dpps";
		blobs=$blobs"|libmm-color-convertor.so|libsd_sdk_display.so|libdpps.so";
		blobs=$blobs"|libdisp-aba.so|libmm-abl-oem.so|libmm-abl.so|libmm-als.so|libmm-disp-apis.so|libmm-qdcm.so"; #XXX: needed for hwcomposer(?)
		blobs=$blobs"|vendor.display.color.*|vendor.display.postproc.*|vendor.qti.hardware.qdutils_disp.*|com.qti.snapdragon.sdk.display.*";
		makes=$makes"|vendor.lineage.livedisplay.*service-legacymm";
	fi;

	#DivX (DRM) [DivX]
	blobs=$blobs"|libDivxDrm.so|libSHIMDivxDrm.so";

	#DPM (Data Power Management? Data Port Mapper?) [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/dpm/ [headers]
	if [ "$DOS_DEBLOBBER_REMOVE_DPM" = true ]; then
		blobs=$blobs"|com.qti.dpmframework.jar|dpmapi.jar|tcmclient.jar";
		blobs=$blobs"|com.qti.dpmframework.xml|dpmapi.xml|dpm.conf|NsrmConfiguration.xml";
		blobs=$blobs"|dpmd|dpmQmiMgr";
		blobs=$blobs"|dpmserviceapp.apk";
		blobs=$blobs"|libdpmctmgr.so|libdpmfdmgr.so|libdpmframework.so|libdpmnsrm.so|libdpmtcm.so|libdpmqmihal.so";
		blobs=$blobs"|com.qualcomm.qti.dpm.*";
		ipcSec=$ipcSec"|47:4294967295:1001:3004|48:4294967295:1000:3004";
		manifests=$manifests"|dpmQmiService";
		makes=$makes"|dpmserviceapp";
	fi;

	#DRM
	blobs=$blobs"|liboemcrypto.so|libtzdrmgenprov.so";
	blobs=$blobs"|libpvr.so|librmp.so|libsi.so|libSSEPKCS11.so";
	blobs=$blobs"|libdrmctaplugin.so|libdrmmtkplugin.so|libdrmmtkwhitelist.so|libmockdrmcryptoplugin.so";
	blobs=$blobs"|libOMXVideoDecoder.*Secure.so"; #Decoding
	blobs=$blobs"|htc_drmprov.*|gpsample.mbn|gptauuid.xml"; #HTC
	blobs=$blobs"|if.bin"; #Intel PAVP backend
	blobs=$blobs"|liblgdrm.so"; #LG
	#blobs=$blobs"|libtpa_core.so|libdataencrypt_tpa.so|libpkip.so"; #OMAP SMC
	blobs=$blobs"|vendor.oneplus.hardware.drmkey.*|bin[/]hw[/]vendor.oneplus.hardware.hdcpkey.*|etc[/]init[/]vendor.oneplus.hardware.hdcpkey.*"; #OnePlus
	#blobs=$blobs"|vendor.oneplus.hardware.hdcpkey.*.so"; #XXX: Breaks radio, linked by libril-qc-hal-qmi.so
	manifests=$manifests"|OneplusHdcpKey";
	blobs=$blobs"|smc_pa.ift|drmserver.samsung"; #Samsung
	blobs=$blobs"|provision_device";
	#blobs=$blobs"|libasfparser.so|libsavsff.so"; #Parsers
	makes=$makes"|android.hardware.drm.*|liboemcrypto";
	manifests=$manifests"|android.hardware.drm";
	#makes=$makes"|libdrmframework.*"; #necessary to compile
	#makes=$makes"|mediadrmserver|com.android.mediadrm.signer.*|drmserver"; #Works but causes long boot times

	#eMBMS [Qualcomm]
	blobs=$blobs"|embms.apk";
	blobs=$blobs"|embms.xml";
	blobs=$blobs"|embmslibrary.jar";
	manifests=$manifests"|embms";
	#makes=$makes"|embms";

	#External Accessories
	if [ "$DOS_DEBLOBBER_REMOVE_ACCESSORIES" = true ]; then
		#tangorpro
		if [[ "$DOS_VERSION" == "LineageOS-20.0" ]] || [[ "$DOS_VERSION" == "LineageOS-21.0" ]]; then
			blobs=$blobs"|AndroidMediaShell.apk|CastAuthPrebuilt.apk|UsoniaPrebuilt.apk|HomegraphPrebuilt.apk|SmartDisplayPrebuilt.apk|DockManagerPrebuilt.apk|DockSetup.apk";
			blobs=$blobs"|default-permissions_SmartDisplayPrebuilt.xml|com.google.android.apps.mediashell.xml|com.google.android.apps.nest.castauth.xml|pixel_docking_experience_2022.xml|appcompat[/]compat_framework_overrides.xml|com.google.assistant.hubui.xml|sysconfig[/]communal.xml|com.google.android.apps.nest.dockmanager.app.xml|google-nest-hiddenapi-package-whitelist.xml";
		fi;
		#dragon
		blobs=$blobs"|DragonKeyboardFirmwareUpdater.apk";
		#griffin
		blobs=$blobs"|ProjectorApp.apk|MotCameraMod.apk|ModFmwkProxyService.apk|ModService.apk";
		blobs=$blobs"|libcamera_mods_legacy_hal.so|libmodmanager.*.so|com.motorola.mod.*.so|libmodhw.so";
		blobs=$blobs"|mods_camd";
		blobs=$blobs"|projectormod.xml|com.motorola.modservice.xml";
		blobs=$blobs"|motorola.hardware.mods_camera.*";
		#mata
		blobs=$blobs"|[/]Score[/]|[/]Klik[/]|Score.apk|Klik.apk";
		blobs=$blobs"|vendor.essential.hardware.sidecar.*";
		blobs=$blobs"|vendor-essential-hardware-sidecar.*.xml";
		#albus
		blobs=$blobs"|DTVPlayer.apk|DTVService.apk";
	fi;

	#Face Unlock [Google]
	blobs=$blobs"|libfacenet.so|libfilterpack_facedetect.so|libfrsdk.so"; #legacy
	if [ "$DOS_DEBLOBBER_REMOVE_FACE" = true ]; then #modern
		blobs=$blobs"|android.hardware.biometrics.face.*"; #depends on airbrush
		blobs=$blobs"|manifest_face.xml";
		#blobs=$blobs"|firmware/faceauth";
		makes=$makes"|android.hardware.biometrics.face.*";
	fi;

	#GPS [Qualcomm]
	#blobs=$blobs"|gpsd";
	#blobs=$blobs"|libflp.so|libgps.utils.so|libloc_api_v02.so|libloc_core.so|libloc_ds_api.so|libloc_eng.so|libloc_ext.so|libizat_core.so";
	#blobs=$blobs"|flp.default.so|flp.msm.*.so|gps.default.so|gps.msm.*.so";
	#blobs=$blobs"|flp.conf";

	#Graphics
	#blobs=$blobs"|eglsubAndroid.so|eglSubDriverAndroid.so|libbccQTI.so|libC2D2.so|libc2d30_bltlib.so|libc2d30.so|libc2d30.*.so|libCB.so|libEGL.*.so|libGLES.*.so|libgsl.so|libq3dtools_esx.so|libq3dtools.*.so|libQTapGLES.so|libscale.so|libsc.*.so";
	#blobs=$blobs"|libglcore.so|libnvblit.so|libnvddk_vic.so|libnvglsi.so|libnvgr.so|libnvptx.so|libnvrmapi.*.so|libnvrm_graphics.so|libnvrm.so|libnvwsi.so"; #NVIDIA
	#blobs=$blobs"|gralloc.*.so|hwcomposer.*.so|memtrack.*.so";
	#blobs=$blobs"|libadreno_utils.so"; #Adreno
	#blobs=$blobs"|libllvm.*.so"; #LLVM
	#blobs=$blobs"|libOpenCL.*.so|libclcore_nvidia.bc"; #OpenCL
	#blobs=$blobs"|vulkan.*.so"; #Vulkan
	#makes=$makes"|android.hardware.vulkan.*|libvulkan";
	#Renderscript
	#blobs=$blobs"|android.hardware.renderscript.*";
	#blobs=$blobs"|librs.*.so|libRSDriver.*.so|libnvRSCompiler.so|libnvRSDriver.so"; #Adreno
	#blobs=$blobs"|libPVRRS.*.so|libufwriter.so"; #Intel
	#makes=$makes"|android.hardware.renderscript.*";

	#Felicia [Google?]
	blobs=$blobs"|MobileFeliCaClient.apk|MobileFeliCaMenuMainApp.apk|MobileFeliCaSettingApp.apk|MobileFeliCaWebPlugin.apk|MobileFeliCaWebPluginBoot.apk";
	blobs=$blobs"|etc[/]felica[/]";

	#Fingerprint Reader
	if [ "$DOS_DEBLOBBER_REMOVE_FP" = true ]; then
		blobs=$blobs"|fingerprint.*.so|libbauthserver.so|libcom_fingerprints_service.so|libegis_fp_normal_sensor_test.so|lib_fpc_tac_shared.so|libfpfactory.*.so|libsynaFpSensorTestNwd.so|libbl_fp_algo.so|libBtlFpHal.so|libxuFPAlg.so|libgf_hal.so|libgoodixfingerprintd_binder.so|fp_hal_extension.so|libgf_ud_hal.so|goodix.fod.*.so";
		blobs=$blobs"|fpc_early_loader|btlfpserver";
		blobs=$blobs"|fpctzappfingerprint.*";
		blobs=$blobs"|android.hardware.biometrics.fingerprint.*|vendor.qti.hardware.fingerprint.*";
		makes=$makes"|android.hardware.biometrics.fingerprint.*|android.hardware.fingerprint.*";
	fi;

	#FM Radio [Google]
	blobs=$blobs"|FMRadioGoogle.apk|FmRadioTrampoline2.apk";

	#[Google]
	blobs=$blobs"|TetheringEntitlement.apk|CarrierLocation.apk|CarrierWifi.apk";
	#blobs=$blobs"|CarrierSettings.apk"; #TODO carriersettings_extractor
	blobs=$blobs"|CarrierSetup.apk";
	blobs=$blobs"|CarrierServices.apk";
	blobs=$blobs"|HardwareInfo.apk";
	blobs=$blobs"|SCONE.apk"; #Adaptive Connectivity Services
	blobs=$blobs"|DevicePersonalizationPrebuilt.*.apk|DeviceIntelligence.*.apk";
	blobs=$blobs"|libhwinfo.jar|com.google.android.hardwareinfo.xml";
	overlay=$overlay"|config_defaultAttentionService|config_defaultSystemCaptionsManagerService|config_defaultSystemCaptionsService|config_systemAmbientAudioIntelligence|config_systemAudioIntelligence|config_systemNotificationIntelligence|config_systemTextIntelligence|config_systemUiIntelligence|config_systemVisualIntelligence|config_defaultContentSuggestionsService|config_defaultAppPredictionService";
	overlay=$overlay"|config_defaultWellbeingPackage|config_defaultSupervisionProfileOwnerComponent";
	overlay=$overlay"|platform_carrier_config_package";

	#eUICC (Virtual SIM) [Google]
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ] || [ "$DOS_DEBLOBBER_REMOVE_EUICC" = true ]; then
		blobs=$blobs"|EuiccGoogle.apk|EuiccGoogleOverlay.apk"; #Google LPAD
		makes=$makes"|GoogleParts"; #Disables apps if GMS is not available
		#overlay=$overlay"|config_telephonyEuiccDeviceCapabilities"; #TODO handle multiple lines
		if [ "$DOS_DEBLOBBER_REMOVE_EUICC_FULL" = true ]; then
			blobs=$blobs"|EuiccSupportPixel.apk|EuiccSupportPixelPermissions.apk"; #Hardware support
			blobs=$blobs"|esim0.img|esim-v1.img|esim-full-v0.img|esim-a1.img|esim-a2.img"; #Firmware
			blobs=$blobs"|com.google.euiccpixel.xml|com.google.euiccpixel.permissions.xml"; #Permissions
			makes=$makes"|android.hardware.telephony.euicc.*"; #Manifests
		fi;
	fi;

	#Google Camera (app)
	#blobs=$blobs"|com.google.android.camera.experimental.*";

	#Google Camera (system) Extensions
	blobs=$blobs"|PixelCameraServices.*.apk";
	blobs=$blobs"|com.google.android.camera.extensions.*";

	#Google NFC
	blobs=$blobs"|PixelNfc.apk";

	#Google RIL
	blobs=$blobs"|grilservice.apk|RilConfigService.apk";
	blobs=$blobs"|google-ril.jar|RadioConfigLib.jar";
	blobs=$blobs"|google-ril.xml";
	blobs=$blobs"|ConnectivityThermalPowerManager.apk";
	overlay=$overlay"|config_show_adaptive_connectivity";

	#Google Setup Wizard
	blobs=$blobs"|DreamlinerPrebuilt.apk|DreamlinerUpdater.apk";
	blobs=$blobs"|com.google.android.apps.dreamliner.xml|dreamliner.xml";

	#Google Tango
	blobs=$blobs"|TangoCore.apk|TangoDiscovery.apk";
	blobs=$blobs"|tango_service";
	blobs=$blobs"|libtango_device.*.jar";
	blobs=$blobs"|libtango_.*.so";

	#Google TV
	blobs=$blobs"|LeanbackIme.apk|LeanbackLauncher.apk|AtvRemoteService.apk|GamepadPairingService.apk|GlobalKeyInterceptor.apk|RemoteControlService.apk|TV.apk|CanvasPackageInstaller.apk|Overscan.apk";

	#Gemini PDA [Planet]
	blobs=$blobs"|ApplicationBar.apk|Gemini_Keyboard.apk|GeminiInputDevices.apk|notes.apk";

	#[Huawei]
	blobs=$blobs"|HWSarControlService.apk";

	#HDCP (DRM)
	blobs=$blobs"|libmm-hdcpmgr.so|libstagefright_hdcp.so|libhdcp2.so";
	blobs=$blobs"|libtsechdcp.so|libtlk_secure_hdcp_up.so|libstagefright_hdcp.so|libnvhdcp.so";
	blobs=$blobs"|android.hardware.drm.*hdcp.*";
	blobs=$blobs"|srm.bin|insthk|hdcp_test|tsechdcp_test";
	blobs=$blobs"|hdcp2xtest.srm";
	blobs=$blobs"|hdcp1.*|hdcp2.*|tzhdcp.*";
	makes=$makes"|android.hardware.drm.*hdcp.*";
	manifests=$manifests"|HDCPSession";

	#HDR
	blobs=$blobs"|libdovi.so";
	#blobs=$blobs"|libdolby.*.so"; #TODO: test me
	#blobs=$blobs"|libhdr_tm.so"; #XXX: potential breakage
	blobs=$blobs"|DolbyVisionService.apk";
	blobs=$blobs"|dolby_vision.cfg|hdr_tm_config.xml";
	manifests=$manifests"|dolby.hardware.dms";

	#I/O Prefetcher [Qualcomm]
	#blobs=$blobs"|libqc-opt.so"; #Can break camera in some cases
	blobs=$blobs"|libqti-iop.*.so";
	blobs=$blobs"|bin[/]iop";
	blobs=$blobs"|QPerformance.jar";
	blobs=$blobs"|vendor.qti.hardware.iop.*";
	manifests=$manifests"|hardware.iop";

	#IMS (VoLTE/Wi-Fi Calling) [Qualcomm]
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ]; then
		#blobs=$blobs"|libimsmedia_jni.so|vendor.qti.hardware.radio.ims.*";
		blobs=$blobs"|lib-imsdpl.so|lib-imscamera.so|libimscamera_jni.so|lib-imsqimf.so|lib-imsSDP.so|lib-imss.so|lib-imsvt.so|lib-imsxml.so|lib-imsvideocodec.so|lib-imsvtextutils.so|lib-imsvtutils.so";
		blobs=$blobs"|imscmservice|imsdatadaemon|imsqmidaemon";
		blobs=$blobs"|imscm.xml|ims.xml|android.hardware.telephony.ims.xml";
		blobs=$blobs"|qti_permissions.xml|qti-vzw-ims-internal.xml";
		blobs=$blobs"|ShannonIms.apk";
		blobs=$blobs"|imssettings.apk|ims.apk";
		blobs=$blobs"|imscmlibrary.jar|qti-vzw-ims-internal.jar";
		blobs=$blobs"|com.qualcomm.qti.imscmservice.*|vendor.qti.ims.*";
		#RTP
		blobs=$blobs"|ims_rtp_daemon|lib-rtpcommon.so|lib-rtpcore.so|lib-rtpdaemoninterface.so|lib-rtpsl.so";
		blobs=$blobs"|vendor.qti.imsrtpservice.*";
		#Misc.
		blobs=$blobs"|lib-dplmedia.so|librcc.so|libvcel.so|libvoice-svc.so";
		blobs=$blobs"|volte_modem[/]";
		makes=$makes"|ims-ext-common";
		ipcSec=$ipcSec"|32:4294967295:1001";
		manifests=$manifests"|qti.ims|radio.ims";
	fi;
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ] || [ "$DOS_DEBLOBBER_REMOVE_RCS" = true ]; then
		#RCS (Proprietary messaging protocol)
		#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/rcs-service/ [useless]
		blobs=$blobs"|imsrcsd";
		blobs=$blobs"|lib-imsrcscmclient.so|lib-ims-rcscmjni.so|lib-imsrcscmservice.so|lib-imsrcscm.so|lib-imsrcs.so|lib-imsrcs-v2.so|lib-rcsimssjni.so|lib-rcsjni.so|lib-uceservice.so|lib-imsrcsbaseimpl.so";
		blobs=$blobs"|rcsimssettings.jar|rcsservice.jar";
		blobs=$blobs"|rcsimssettings.xml|rcsservice.xml";
		blobs=$blobs"|RCSBootstraputil.apk|RcsImsBootstraputil.apk|uceShimService.apk";
		blobs=$blobs"|ShannonRcs.apk";
		#blobs=$blobs"|vendor.qti.ims.rcsconfig.*";
		blobs=$blobs"|com.qualcomm.qti.uceservice.*";
		manifests=$manifests"|uceservice";
		makes=$makes"|rcs_service.*|RcsService|PresencePolling";
		ipcSec=$ipcSec"|18:4294967295:1001:3004";
	fi;


	#IPA (Internet Packet Accelerator) [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/hardware/qcom/data/ipa-cfg-mgr/
	#https://source.codeaurora.org/quic/la/platform/hardware/qcom/data/ipacfg-mgr/
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/data-ipa-cfg-mgr/
	blobs=$blobs"|ipacm-diag";
	if [ "$DOS_DEBLOBBER_REMOVE_IPA" = true ]; then
		blobs=$blobs"|ipacm";
		makes=$makes"|ipacm|IPACM_cfg.xml";
		kernels=$kernels" drivers/platform/msm/ipa";
	fi;

	#IS? (DRM) [?]
	blobs=$blobs"|isdbtmm.*";

	#IR
	if [ "$DOS_DEBLOBBER_REMOVE_IR" = true ]; then
		blobs=$blobs"|cir_fw_update";
		blobs=$blobs"|consumerir.*.so|ibcir_driver.so|libcir_driver.so|libhtcirinterface_jni.so";
		blobs=$blobs"|htcirlibs.jar";
		blobs=$blobs"|CIRModule.apk";
		blobs=$blobs"|cir.img";
		makes=$makes"|android.hardware.ir.*|android.hardware.consumerir.*";
	fi;

	#Keystore/TrustZone (HW Crypto) [Qualcomm]
	#blobs=$blobs"|keystore.qcom.so|libdrmdecrypt.so|libdrmfs.so|libdrmtime.so|libQSEEComAPI.so|librpmb.so|libssd.so|libQTEEConnector.*.so";
	#blobs=$blobs"|qseecomd";
	blobs=$blobs"|qseecom_sample_client|qseecom_security_test|qseeproxysampledaemon";
	#blobs=$blobs"|keymaster.*|tzapps.*";
	#blobs=$blobs"|vendor.qti.hardware.qteeconnector.*";

	#libMM (multimedia encoder/decoder/parser) [Qualcomm]
	#blobs=$blobs"|libmmparser.so|libmmipstreamsourcehttp.so";

	#Location (gpsOne/gpsOneXTRA/IZat/Lumicast/QUIP) [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/location/
	blobs=$blobs"|libalarmservice_jni.so|libasn1cper.so|libasn1crt.so|libasn1crtx.so|libgdtap.so|libloc_ext.so|libloc_xtra.so|liblowi_wifihal_nl.so|liblowi_wifihal.so|libquipc_os_api.so|libquipc_ulp_adapter.so|libxt_native.so|libxtwifi_ulp_adaptor.so|libxtwifi_zpp_adaptor.so|libxtwifi_server_protocol.so|libxtwifi_server_protocol_uri_v3.so";
	#blobs=$blobs"|libulp2.so|libxtadapter.so|libgeofence.so|liblbs_core.so|libdataitems.so|libdrplugin_client.so|libDRPlugin.so|libevent_observer.so|liblocationservice_glue.so|liblocationservice.so|liblowi_client.so";
	blobs=$blobs"|cacert_location.pem|com.qti.location.sdk.xml|com.qualcomm.location.xml|izat.conf|izat.xt.srv.xml|lowi.conf|xtra_root_cert.pem|xtwifi.conf";
	blobs=$blobs"|com.qti.location.sdk.jar|izat.xt.srv.jar";
	blobs=$blobs"|com.qualcomm.location.apk|com.qualcomm.services.location.apk|xtra_t_app.apk|CACertService.apk";
	blobs=$blobs"|gpsone_daemon|izat.xt.srv|location-mq|loc_launcher|lowi-server|slim_ap_daemon|slim_daemon|xtwifi-client|xtwifi-inet-agent|xtra-daemon|garden_app";
	overlay=$overlay"|config_comboNetworkLocationProvider|config_enableFusedLocationOverlay|config_enableNetworkLocationOverlay|config_fusedLocationProviderPackageName|config_enableNetworkLocationOverlay|config_networkLocationProviderPackageName|com.qualcomm.location";

	#Machine Learning [Google]
	#blobs=$blobs"|libdarwinn_client.so|libdarwinn_compiler.so|libdarwinn_hal.so"; #breaks camera
	#blobs=$blobs"|vendor.google.darwinn.service.*";

	#Machine Learning [Qualcomm]
	#blobs=$blobs"|vendor.qti.hardware.mlshal.*|vendor.qti.hardware.cvp.*";
	#blobs=$blobs"|libopenvx.so|libnpu.so|libcvp.*.so"; #XXX: breaks camera

	#Misc
	blobs=$blobs"|libjni_latinime.so|libuiblur.so|libwifiscanner.so";

	#Motion Sense
	blobs=$blobs"|OsloFeedback.apk";
	#blobs=$blobs"|oslo.so|oslo.napp_header";
	#blobs=$blobs"|BufferConfigValOslo.bin|OsloSensorConfig.bin|OsloSensorPackage.bin";
	#blobs=$blobs"|vendor.google.airbrush.*|libairbrush-pixel.so";
	#blobs=$blobs"|pixelatoms-cpp.so|vendor-pixelatoms-cpp.so"; #???

	#Music Detection [Google]
	blobs=$blobs"|AmbientSensePrebuilt.apk";
	blobs=$blobs"|dnd.descriptor|dnd.sound_model|music_detector.descriptor|music_detector.sound_model|matcher_tah.leveldb";

	#[Motorola] #See: http://www.beneaththewaves.net/Projects/Motorola_Is_Listening.html
	blobs=$blobs"|BuaContactAdapter.apk|com.motorola.DirectedSMSProxy.xml|com.motorola.msimsettings.xml";
	blobs=$blobs"|MotoDisplayFWProxy.apk|com.motorola.motodisplay.xml";
	blobs=$blobs"|com.motorola.camera.xml|com.motorola.gallery.xml";
	blobs=$blobs"|EasyAccessService.apk";
	blobs=$blobs"|batt_health";
	#blobs=$blobs"|dbvc_atvc_property_set";
	blobs=$blobs"|com.motorola.motosignature.jar|com.motorola.motosignature.xml|MotoSignatureApp.apk";
	blobs=$blobs"|TriggerEnroll.apk|TriggerTrainingService.apk|com.motorola.triggerenroll.xml";
	blobs=$blobs"|audio.motvr.default.so";
	blobs=$blobs"|libcce-socketjni.so|libmotocare.so";
	#blobs=$blobs"|qmi_motext_hook|libmdmcutback.so|libqmimotext.so|libmotext_inf.so"; #necessary for radio
	makes=$makes"|com.motorola.cameraone.xml";

	#OEMLock (disables OEM unlock toggle) [Google?]
	#XXX: cannot be removed because the AOSP no-op service just uses the PDB
	#blobs=$blobs"|oemlock-bridge|oemlock-bridge-client|oemlock_provision";
	#blobs=$blobs"|android.hardware.oemlock.*";
	#blobs=$blobs"|liboemlock.so|liboemlock.*.so|liboemlock-provision.so";
	#makes=$makes"|android.hardware.oemlock.*";
	#manifests=$manifests"|OemLock";
	overlay=$overlay"|config_persistentDataPackageName";

	#OMA-DM/SyncML #See: https://www.blackhat.com/docs/us-14/materials/us-14-Solnik-Cellular-Exploitation-On-A-Global-Scale-The-Rise-And-Fall-Of-The-Control-Protocol.pdf
	blobs=$blobs"|SyncMLSvc.apk|libsyncml_core.so|libsyncml_port.so"; #SyncML
	blobs=$blobs"|libvdmengine.so|libvdmfumo.so"; #RedBend
	blobs=$blobs"|libdme_main.so|libwbxmlparser.so|libprovlib.so";
	blobs=$blobs"|dm_agent|dm_agent_binder";
	blobs=$blobs"|npsmobex"; #Samsung?
	blobs=$blobs"|ConnMO.apk|OmaDmclient.apk|SprintHiddenMenu.apk|UpdateSetting.apk|USCCDM.apk|com.android.omadm.service.xml|com.android.omadm.radioconfig.xml|DCMO.apk|DiagMon.apk|DMConfigUpdate.apk|DMConfigUpdateLight.apk|DMService.apk|libdmengine.so|libdmjavaplugin.so|SprintDM.apk|SDM.apk|whitelist_com.android.omadm.service.xml|com.android.sdm.plugins.connmo.xml|com.android.sdm.plugins.sprintdm.xml|com.google.omadm.trigger.xml|com.android.sdm.plugins.diagmon.xml|com.android.sdm.plugins.dcmo.xml|com.android.sdm.plugins.usccdm.xml"; #Sprint
	makes=$makes"|OmaDmclient|SprintHiddenMenu|UpdateSetting|SecPhone|HiddenMenu|DMConfigUpdate|SprintDM"; #SDM

	#OpenMobileAPI [SIM Alliance]
	#https://github.com/seek-for-android/platform_packages_apps_SmartCardService
	#blobs=$blobs"|org.simalliance.openmobileapi.jar";
	#blobs=$blobs"|org.simalliance.openmobileapi.xml";

	#Performance [Qualcomm]
	#blobs=$blobs"|msm_irqbalance";
	#Devices utilizing perfd won't hotplug cores without it
	#blobs=$blobs"|mpdecision|perfd";
	#blobs=$blobs"|libqti-perfd.*.so|libperfconfig.so|libperfgluelayer.so|libperfioctl.so";
	#blobs=$blobs"|perf-profile.*.conf";
	#blobs=$blobs"|vendor.qti.hardware.perf.*|vendor.qti.memory.pasrmanager.*";
	#manifests=$manifests"|IPerf";
	blobs=$blobs"|Perfdump.apk";

	#Peripheral Manager
	#https://source.codeaurora.org/quic/la/platform/system/peripheralmanager/ [headers]
	#blobs=$blobs"|libperipheral_client.so|libspcom.so";
	#blobs=$blobs"|pm-proxy|pm-service|spdaemon";

	#Pixel Visual Core [Google]
	#blobs=$blobs"|easelmanagerd";
	#blobs=$blobs"|EaselServicePrebuilt.apk";
	#blobs=$blobs"|libeaselcomm.so|libeaselcontrol.amber.so|libhdrplusclient.so|libhdrplusclientimpl.so|libhdrplusmessenger.so";

	#Playready (DRM) [Microsoft]
	blobs=$blobs"|prapp|scranton_RD";
	blobs=$blobs"|libtzplayready.so|libdrmprplugin.so|libprdrmdecrypt.so|libprmediadrmdecrypt.so|libprmediadrmplugin.so|libseppr_hal.so|android.hardware.drm.*playready.*";
	blobs=$blobs"|PR-ModelCert";
	blobs=$blobs"|playread.*|hcheck.*";
	makes=$makes"|android.hardware.drm.*playready.*";
	manifests=$manifests"|playready";

	#Power [Google]
	blobs=$blobs"|LowPowerMonitorDevice.*.jar|PowerAnomaly.*.jar";

	#Project Fi [Google]
	blobs=$blobs"|Tycho.apk";

	#Quickboot [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/packages/apps/FastPowerOn/
	blobs=$blobs"|power_off_alarm";
	blobs=$blobs"|QuickBoot.apk|PowerOffAlarm.apk";
	blobs=$blobs"|vendor.qti.hardware.alarm.*";

	#QTI (Tethering Extensions) [Qualcomm]
	blobs=$blobs"|libQtiTether.so";
	blobs=$blobs"|QtiTetherService.apk";

	#RIL [Qualcomm]
	blobs=$blobs"|Asdiv.apk";

	#[Samsung]
	blobs=$blobs"|SystemUpdateUI.apk";

	#SecProtect [Qualcomm]
	blobs=$blobs"|SecProtect.apk";

	#SecureUI [Qualcomm]
	blobs=$blobs"|com.qualcomm.qti.services.secureui.*";
	if [ "$DOS_VERSION" != "LineageOS-14.1" ]; then
		blobs=$blobs"|lib-sec-disp.so|libSecureUILib.so|libsecureui.so|libsecureuisvc_jni.so|libsecureui_svcsock.so|libsecureui_svcsock_system.so|android.hardware.confirmationui@1.0-service-google"; #XXX: Can break qseecomd
		blobs=$blobs"|libHealthAuthClient.so|libHealthAuthJNI.so|libSecureExtAuthJNI.so";
	fi;
	blobs=$blobs"|libSampleAuthJNI.so|libSampleAuthJNIv1.so|libSampleExtAuthJNI.so|libSecureSampleAuthClient.so";
	#blobs=$blobs"|libsdedrm.so"; #Direct Rendering Manager not evil DRM? #XXX: potential breakage

	#TrustedUI [Qualcomm]
	blobs=$blobs"|vendor.qti.hardware.tui.*";
	manifests=$manifests"|tui_comm|trustedui";

	#Soter (Biometric Auth) [Tencent]
	blobs=$blobs"|SoterService.apk";
	blobs=$blobs"|vendor.qti.hardware.soter.*";
	manifests=$manifests"|ISoter|hardware.soter";

	#[Sprint]
	blobs=$blobs"|CQATest.apk|GCS.apk|HiddenMenu.apk|HiddenMenuLight.apk|LifetimeData.apk|SprintHM.apk|LifeTimerService.apk|SecPhone.apk|SprintMenu.apk";
	ipcSec=$ipcSec"|238:4294967295:1001:3004";

	#Thermal Throttling [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/thermal-engine/ [headers]
	#blobs=$blobs"|thermal-engine";
	#blobs=$blobs"|libthermalclient.so|libthermalioctl.so";

	#Time Service [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/time-services/ [headers]
	#Requires that android_hardware_sony_timekeep be included in repo manifest
	#blobs=$blobs"|libtime_genoff.so"; #XXX: Breaks radio
	#blobs=$blobs"|libTimeService.so";
	#blobs=$blobs"|TimeService.apk";
	#blobs=$blobs"|time_daemon";

	#[T-Mobile]
	blobs=$blobs"|TmobileGrsuPrebuilt.apk";

	#Touchscreen [Qualcomm] XXX: breaks touch
	#blobs=$blobs"|vendor.qti.hardware.improvetouch.*"; #TODO: test with just this line uncommented
	#blobs=$blobs"|hbtp_daemon|hbtp_cmd.sh";
	#blobs=$blobs"|libhbtpclient.so|libhbtpdsp.so|libhbtpfrmwk.so";
	#manifests=$manifests"|improvetouch";

	#Venus (Hardware Video Decoding) [Qualcomm]
	#blobs=$blobs"|venus.*";

	#[Verizon]
	blobs=$blobs"|libmotricity.so|libakuaf.so";
	blobs=$blobs"|com.qualcomm.location.vzw_library.jar|com.verizon.hardware.telephony.ehrpd.jar|com.verizon.hardware.telephony.lte.jar|com.verizon.ims.jar|VerizonUnifiedSettings.jar";
	blobs=$blobs"|OemDmTrigger.apk|appdirectedsmspermission.apk|AppDirectedSMSService.apk|AppDirectedSMSProxy.apk|VerizonSSOEngine.apk|VZWAPNLib.apk|vzwapnpermission.apk|VZWAPNService.apk|VZWAVS.apk|VzwLcSilent.apk|vzw_msdc_api.apk|VzwOmaTrigger.apk|VerizonAuthDialog.apk|MyVerizonServices.apk|WfcActivation.apk|obdm_stub.apk|QAS_DVC_MSP.*.apk|Showcase.apk|LLKAgent.apk";
	blobs=$blobs"|com.android.vzwomatrigger.xml|vzw_mvs_permissions.xml|obdm_permissions.xml|com.verizon.services.xml|features-verizon.xml|com.qualcomm.location.vzw_library.xml|com.verizon.apn.xml|com.verizon.embms.xml|com.verizon.hardware.telephony.ehrpd.xml|com.verizon.hardware.telephony.lte.xml|com.verizon.ims.xml|com.verizon.provider.xml|com.vzw.vzwapnlib.xml|vzw_sso_permissions.xml|com.vzw.hardware.lte.xml|com.vzw.hardware.ehrpd.xml|verizon_config_params.txt|com.verizon.llkagent.xml|vzw_mvs_sysconfig.xml";

	#Voice Recognition
	blobs=$blobs"|liblistenhardware.so|liblistenjni.so|liblisten.so|liblistensoundmodel.*.so|libqvop-service.so|librecoglib.so|libsupermodel.so|libtrainingcheck.so";
	#blobs=$blobs"|libadpcmdec.so|sound_trigger.primary.*.so|libgcs.*.so|libsmwrapper.so";
	blobs=$blobs"|audiomonitor|qvop-daemon";
	blobs=$blobs"|HotwordEnrollment.apk|HotwordEnrollment.*.apk";
	#blobs=$blobs"|es305_fw.bin"; #XXX: breaks audio
	#blobs=$blobs"|aonvr1.bin|aonvr2.bin"; #XXX: required by adspd, likely for more than VR
	blobs=$blobs"|vendor.qti.voiceprint.*";
	blobs=$blobs"|com.android.hotwordenrollment.*";
	#makes=$makes"|android.hardware.soundtrigger.*|libsoundtriggerservice|sound_trigger.*";
	#makes=$makes"|sound_trigger_mixer_paths.xml|sound_trigger_platform_info.xml";

	#Wi-Fi [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wigig/ [headers]
	#https://source.codeaurora.org/quic/qsdk/oss/wigig-utils/ [useless]
	blobs=$blobs"|wifilearner|wigighalsvc|wigignpt|fstman";
	blobs=$blobs"|wigig-service.jar";
	blobs=$blobs"|vendor.qti.hardware.wifi.wifilearner.*|vendor.qti.hardware.wigig.*";
	blobs=$blobs"|libwigig_flashaccess.so|libwigig_pciaccess.so|libwigig_utils.so|libwigigsensing.so|libwigig.*.so";
	manifests=$manifests"|wifilearner|wigig";

	#Wfd (Wireless Display) [Qualcomm]
	#https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wfd-commonsys/ [useless]
	blobs=$blobs"|libmmrtpdecoder.so|libmmrtpencoder.so|libmmwfdinterface.so|libmmwfdsinkinterface.so|libmmwfdsrcinterface.so|libwfdavenhancements.so|libwfdclient.so|libwfdcodecv4l2_proprietary.so|libwfdcodecv4l2.so|libwfdcommonutils_proprietary.so|libwfdcommonutils.so|libwfdconfigutils_proprietary.so|libwfdconfigutils.so|libwfddisplayconfig_proprietary.so|libwfddisplayconfig.so|libwfdhaldsmanager.so|libwfdhdcpcp.so|libwfdhdcpservice_proprietary.so|libwfdmminterface_proprietary.so|libwfdmminterface.so|libwfdmmservice_proprietary.so|libwfdmmservice.so|libwfdmmsink.so|libwfdmmsrc_proprietary.so|libwfdmmsrc.so|libwfdmmsrc_system.so|libwfdmmutils.so|libwfdmodulehdcpsession.so|libwfdnative.so|libwfdrtsp_proprietary.so|libwfdrtsp.so|libwfdservice.so|libwfdsessionmodule.so|libwfdsinksm.so|libwfdsm.so|libwfdsourcesession_proprietary.so|libwfdsourcesm_proprietary.so|libwfduibcinterface_proprietary.so|libwfduibcinterface.so|libwfduibcsinkinterface_proprietary.so|libwfduibcsinkinterface.so|libwfduibcsink_proprietary.so|libwfduibcsink.so|libwfduibcsrcinterface_proprietary.so|libwfduibcsrcinterface.so|libwfduibcsrc_proprietary.so|libwfduibcsrc.so|libwfdutils_proprietary.so|libwfdaac.so|libOmxVideoDSMode.so";
	blobs=$blobs"|wfdservice|wifidisplayhalservice|wfdhdcphalservice|wfdvndservice";
	blobs=$blobs"|WfdService.apk";
	blobs=$blobs"|WfdCommon.jar";
	blobs=$blobs"|wfdvndservice.rc";
	blobs=$blobs"|wfdconfigsink.xml|wfdconfig.xml";
	blobs=$blobs"|com.qualcomm.qti.wifidisplayhal.*|vendor.qti.hardware.wifidisplaysession.*|android.hardware.drm.*wfdhdcp.*";
	makes=$makes"|WfdCommon|android.hardware.drm.*wfdhdcp.*";
	manifests=$manifests"|wfdhdcp|wifidisplayhdcphal|WifiDisplay";

	#Widevine (DRM) [Google]
	blobs=$blobs"|libdrmwvmplugin.so|libmarlincdmplugin.so|libwvdrmengine.so|libwvdrm_L1.so|libwvdrm_L3.so|libwvhidl.so|libwvm.so|libWVphoneAPI.so|libWVStreamControlAPI_L1.so|libWVStreamControlAPI_L3.so|libdrmmtkutil.so|libsepdrm.*.so|libvtswidevine32.so|libvtswidevine64.so|android.hardware.drm.*widevine.*";
	blobs=$blobs"|test-wvdrmplugin|oemwvtest";
	blobs=$blobs"|com.google.widevine.software.drm.jar";
	blobs=$blobs"|com.google.widevine.software.drm.xml";
	#blobs=$blobs"|smc_pa_wvdrm.ift"; breaks maguro/toro* boot
	blobs=$blobs"|tzwidevine.*|tzwvcpybuf.*|widevine.*";
	makes=$makes"|libshim_wvm|move_widevine_data.sh|android.hardware.drm.*widevine.*";

	#WiPower (Wireless Charging) [Qualcomm]
	blobs=$blobs"|libwbc_jni.so|wbc_hal.default.so";
	blobs=$blobs"|a4wpservice.apk|com.quicinc.wbcserviceapp.apk";
	blobs=$blobs"|com.quicinc.wbc.jar|com.quicinc.wbcservice.jar";
	blobs=$blobs"|com.quicinc.wbcservice.xml|com.quicinc.wbc.xml";
	makes=$makes"|android.wipower|android.wipower.xml|com.quicinc.wbcserviceapps|libwipower_jni|wipowerservice";

	export blobs;
	export makes;
	export overlay;
	export ipcSec;
	export kernels;
	export manifests;
#
#END OF BLOBS ARRAY
#

#
#START OF FUNCTIONS
#
deblobDevice() {
	local devicePath="$1";
	cd "$DOS_BUILD_BASE/$devicePath";
	if [ -f Android.mk ]; then
		#Some devices store these in a dedicated firmware partition, others in /system/vendor/firmware, either way the following are just symlinks
		#sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(CMN_SYMLINKS)//' Android.mk; #Remove CMN firmware
		if [ "$DOS_DEBLOBBER_REMOVE_CNE" = true ]; then sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(CNE_SYMLINKS)//' Android.mk; fi; #Remove CNE blobs
		sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(DM_SYMLINKS)//' Android.mk; #Remove OMA-DM blobs
		sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(DXHDCP2_SYMLINKS)//' Android.mk; #Remove Discretix firmware
		if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ]; then sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(IMS_SYMLINKS)//' Android.mk; fi; #Remove IMS firmware
		sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(PLAYREADY_SYMLINKS)//' Android.mk; #Remove Microsoft Playready firmware
		sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(SECUREUI_SYMLINKS)//' Android.mk; #Remove SecureUI blobs
		sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(WIDEVINE_SYMLINKS)//' Android.mk; #Remove Google Widevine firmware
		sed -i '/ALL_DEFAULT_INSTALLED_MODULES/s/$(WV_SYMLINKS)//' Android.mk; #Remove Google Widevine firmware
	fi;
	if [ "$DOS_DEBLOBBER_REMOVE_CNE" = true ]; then sed -i 's/BOARD_USES_QCNE := true/BOARD_USES_QCNE := false/' BoardConfig*.mk &>/dev/null || true; fi; #Disable CNE
	sed -i 's/BOARD_USES_WIPOWER := true/BOARD_USES_WIPOWER := false/' BoardConfig*.mk &>/dev/null || true; #Disable WiPower
	sed -i 's/TARGET_HAS_HDR_DISPLAY := true/TARGET_HAS_HDR_DISPLAY := false/' BoardConfig*.mk &>/dev/null || true; #Disable HDR
	sed -i 's/BOARD_SUPPORTS_SOUND_TRIGGER := true/BOARD_SUPPORTS_SOUND_TRIGGER := false/' BoardConfig*.mk &>/dev/null || true; #Disable Sound Trigger
	sed -i 's/BOARD_SUPPORTS_SOUND_TRIGGER_HAL := true/BOARD_SUPPORTS_SOUND_TRIGGER_HAL := false/' BoardConfig*.mk &>/dev/null || true;
	sed -i 's/BOARD_SUPPORTS_SOUND_TRIGGER_5514 := true/BOARD_SUPPORTS_SOUND_TRIGGER_5514 := false/' BoardConfig*.mk &>/dev/null || true;
	if [ "$DOS_DEBLOBBER_REMOVE_AUDIOFX" = true ]; then sed -i 's/AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true/AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false/' BoardConfig*.mk &>/dev/null || true; fi; #Disable Dolby
	sed -i 's/BOARD_ANT_WIRELESS_DEVICE := true/BOARD_ANT_WIRELESS_DEVICE := false/' BoardConfig*.mk &>/dev/null || true; #Disable ANT
	sed -i '/BOARD_ANT_WIRELESS_DEVICE/d' BoardConfig*.mk &>/dev/null || true;
	#sed -i '!/RS_DRIVER/d' BoardConfig*.mk &>/dev/null || true; #Renderscript

	sed -i '/loc.nlp_name/d' *.prop *.mk &>/dev/null || true; #Disable QC Location Provider
	sed -i 's/drm.service.enabled=true/drm.service.enabled=false/' *.prop *.mk &>/dev/null || true;
	if [ "$DOS_DEBLOBBER_REMOVE_APTX" = true ]; then sed -i 's/bt.enableAptXHD=true/bt.enableAptXHD=false/' *.prop *.mk &>/dev/null || true; fi; #Disable aptX
	if [ "$DOS_DEBLOBBER_REMOVE_CNE" = true ]; then sed -i 's/cne.feature=./cne.feature=0/' *.prop *.mk &>/dev/null || true; fi; #Disable CNE
	if [ "$DOS_DEBLOBBER_REMOVE_DPM" = true ]; then
		sed -i 's/dpm.feature=11/dpm.feature=0/' *.prop *.mk &>/dev/null || true; #Disable DPM
		sed -i 's/dpm.feature=./dpm.feature=0/' *.prop *.mk &>/dev/null || true; #Disable DPM
		sed -i 's/sys.dpmd.nsrm=./sys.dpmd.nsrm=0/' *.prop *.mk &>/dev/null || true; #Disable DPM
	fi;
	sed -i 's/gps.qc_nlp_in_use=./gps.qc_nlp_in_use=0/' *.prop *.mk &>/dev/null || true; #Disable QC Location Provider
	sed -i 's/bluetooth.emb_wp_mode=true/bluetooth.emb_wp_mode=false/' *.prop *.mk &>/dev/null || true; #Disable WiPower
	sed -i 's/bluetooth.wipower=true/bluetooth.wipower=false/' *.prop *.mk &>/dev/null || true; #Disable WiPower
	sed -i 's/wfd.enable=1/wfd.enable=0/' *.prop *.mk &>/dev/null || true; #Disable Wi-Fi display
	sed -i '/vendor.camera.extensions/d' *.prop *.mk &>/dev/null || true; #Disable camera extensions
	if [ -f system.prop ]; then
		if ! grep -q "drm.service.enabled=false" system.prop; then echo -e "\ndrm.service.enabled=false\n" >> system.prop; fi; #Disable DRM server
	fi
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ]; then
		sed -i 's/ims.volte=true/ims.volte=false/' *.prop *.mk &>/dev/null || true;
		sed -i 's/ims.vt=true/ims.vt=false/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.calls.on.ims=true/radio.calls.on.ims=false/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.calls.on.ims=1/radio.calls.on.ims=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.hw_mbn_update=./radio.hw_mbn_update=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.jbims=./radio.jbims=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.sw_mbn_update=./radio.sw_mbn_update=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.sw_mbn_volte=./radio.sw_mbn_volte=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.VT_ENABLE=./radio.VT_ENABLE=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/radio.VT_HYBRID_ENABLE=./radio.VT_HYBRID_ENABLE=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/volte_enabled_by_hw=./volte_enabled_by_hw=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/dbg.ims_volte_enable=./dbg.ims_volte_enable=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/dbg.volte_avail_ovr=1/dbg.volte_avail_ovr=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's/dbg.vt_avail_ovr=1/dbg.vt_avail_ovr=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's|<bool name="config_carrier_volte_available">true</bool>|<bool name="config_carrier_volte_available">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
		sed -i 's|<bool name="config_carrier_vt_available">true</bool>|<bool name="config_carrier_vt_available">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
		sed -i 's|<bool name="config_device_volte_available">true</bool>|<bool name="config_device_volte_available">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
		sed -i 's|<bool name="config_device_vt_available">true</bool>|<bool name="config_device_vt_available">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
		sed -i 's|<bool name="config_dynamic_bind_ims">true</bool>|<bool name="config_dynamic_bind_ims">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
		sed -i '/config_ims_package/d' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
	fi;
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ] || [ "$DOS_DEBLOBBER_REMOVE_CNE" = true ]; then
		sed -i 's/data.iwlan.enable=true/data.iwlan.enable=false/' *.prop *.mk &>/dev/null || true;
		sed -i 's/dbg.wfc_avail_ovr=1/dbg.wfc_avail_ovr=0/' *.prop *.mk &>/dev/null || true;
		sed -i 's|<bool name="config_device_wfc_ims_available">true</bool>|<bool name="config_device_wfc_ims_available">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
		sed -i 's|<bool name="config_carrier_wfc_ims_available">true</bool>|<bool name="config_carrier_wfc_ims_available">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
	fi;
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ] || [ "$DOS_DEBLOBBER_REMOVE_RCS" = true ]; then
		sed -i 's/rcs.supported=./rcs.supported=0/' *.prop *.mk &>/dev/null || true; #Disable RCS
	fi;
	if [ -f configs/qmi_config.xml ]; then
		if [ "$DOS_DEBLOBBER_REMOVE_DPM" = true ]; then
			sed -i 's|name="dpm_enabled" type="int"> 1 <|name="dpm_enabled" type="int"> 0 <|' configs/qmi_config.xml; #Disable DPM
		fi;
	fi;
	# shellcheck disable=SC2144
	if [ -f init/init_*.cpp ]; then
		#Disable IMS
		if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ]; then
			sed -i 's/property_set("persist.ims.volte", "true");/property_set("persist.ims.volte", "false");/' init/init_*.cpp;
			sed -i 's/property_set("persist.ims.vt", "true");/property_set("persist.ims.vt", "false");/' init/init_*.cpp;
			sed -i 's/property_set("persist.radio.calls.on.ims", "true");/property_set("persist.radio.calls.on.ims", "false");/' init/init_*.cpp;
			sed -i 's/property_set("persist.radio.jbims", ".");/property_set("persist.radio.jbims", "0");/' init/init_*.cpp;
			sed -i 's/property_set("persist.radio.VT_ENABLE", ".");/property_set("persist.radio.VT_ENABLE", "0");/' init/init_*.cpp;
			sed -i 's/property_set("persist.radio.VT_HYBRID_ENABLE", ".");/property_set("persist.radio.VT_HYBRID_ENABLE", "0");/' init/init_*.cpp;
		fi;
		if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ] || [ "$DOS_DEBLOBBER_REMOVE_RCS" = true ]; then
			sed -i 's/property_set("persist.rcs.supported", ".");/property_set("persist.rcs.supported", "0");/' init/init_*.cpp; #Disable RCS
		fi;
	fi;
  splitol=$(echo "$overlay" | tr "|" "\n")
  for ol in $splitol
  do
    sed -i "/$ol/d" overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
  done
	sed -i 's|<bool name="config_enableWifiDisplay">true</bool>|<bool name="config_enableWifiDisplay">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true;
	sed -i 's|<bool name="config_uiBlurEnabled">true</bool>|<bool name="config_uiBlurEnabled">false</bool>|' overlay*/frameworks/base/core/res/res/values/config.xml &>/dev/null || true; #Disable UIBlur
	sed -i '/platform_carrier_config_package/d' overlay*/packages/services/Telephony/res/values/config.xml &>/dev/null || true;
	sed -i '/config_show_adaptive_connectivity/d' overlay*/packages/apps/Settings/res/values/config.xml &>/dev/null || true;
	if [ "$DOS_DEBLOBBER_REMOVE_CNE" = true ]; then rm -f board/qcom-cne.mk product/qcom-cne.mk; fi; #Remove CNE
	if [ "$DOS_DEBLOBBER_REMOVE_IMS" = true ]; then
		rm -f rootdir/etc/init.qti.ims.sh rootdir/init.qti.ims.sh init.qti.ims.sh; #Remove IMS startup script
		rm -rf IMSEnabler; #Remove IMS compatibility module
	fi;
	rm -rf ifaa org.ifaa.android.manager; #Remove AliPay
	if [ "$DOS_DEBLOBBER_REMOVE_IPA" = true ]; then rm -rf data-ipa-cfg-mgr; fi; #Remove IPA
	rm -rf libshim_wvm libshimwvm libshims/wvm_shim.cpp; #Remove Google Widevine compatibility module
	rm -rf board/qcom-wipower.mk product/qcom-wipower.mk; #Remove WiPower makefiles
  #splitipcsec=$(echo "$ipcSec" | tr "|" "\n")
  #for ipcsec in $splitipcsec
  #do
	#  sed -i "/$ipcsec/d" configs/sec_config &>/dev/null || true; #Remove all IPC security exceptions from sec_config
  #done
  splitblobs=$(echo "$blobs" | tr "|" "\n")
  for blob in $splitblobs
  do
	  sed -i "/$blob/d" ./*proprietary*.txt &>/dev/null || true; #Remove all blob references from blob manifest
	  sed -i "/$blob/d" ./*/*proprietary*.txt &>/dev/null || true; #Remove all blob references from blob manifest location in subdirectory
  done
	#if [ -f setup-makefiles.sh ]; then
	#	 bash -c "cd $DOS_BUILD_BASE/$devicePath && ./setup-makefiles.sh" || true; #Update the makefiles
	#fi;
	cd "$DOS_BUILD_BASE";
}
export -f deblobDevice;

deblobKernel() {
	local kernelPath="$1";
	cd "$DOS_BUILD_BASE/$kernelPath";
	rm -rf $kernels;
	cd "$DOS_BUILD_BASE";
}
export -f deblobKernel;

deblobVendors() {
	cd "$DOS_BUILD_BASE";
	find vendor -regextype posix-extended -regex '.*('$blobs')' -type f -delete; #Delete all blobs
}
export -f deblobVendors;

deblobVendorMk() {
	local makefile="$1";
	cd "$DOS_BUILD_BASE";
  splitblobs=$(echo "$blobs" | tr "|" "\n")
  for blob in $splitblobs
  do
    sed -i "/$blob/d" "$makefile"; #Remove all blob references from makefile
  done
}
export -f deblobVendorMk;

deblobVendorBp() {
	local bpfile="$1";
	cd "$DOS_BUILD_BASE";
	#TODO: remove these lines instead
  splitblobs=$(echo "$blobs" | tr "|" "\n")
  for blob in $splitblobs
  do
	  sed -i -E "s/apk.*("$blob").*/apk: \"proprietary\/priv-app\/qcrilmsgtunnel\/qcrilmsgtunnel.apk\", enabled: false,/g" "$bpfile";
	  sed -i -E "s/jars.*("$blob").*/jars: \[\"proprietary\/system\/framework\/qcrilhook.jar\"\], enabled: false,/g" "$bpfile";
	  sed -i -E "s/srcs.*("$blob").*/srcs: \[\"proprietary\/vendor\/lib\/libtime_genoff.so\"\], enabled: false,/g" "$bpfile";
  done
	#TODO make this work for more then these two blobs
	#Credit: https://stackoverflow.com/a/26053127
	sed -i ':a;N;s/\n/&/3;Ta;/manifest_android.hardware.drm@1.*-service.widevine.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
	sed -i ':a;N;s/\n/&/3;Ta;/manifest_android.hardware.drm-service.widevine.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
	sed -i ':a;N;s/\n/&/3;Ta;/android.hardware.confirmationui@1.0-service-google.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
	sed -i ':a;N;s/\n/&/3;Ta;/manifest_vendor.xiaomi.hardware.mlipay.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
	sed -i ':a;N;s/\n/&/3;Ta;/vendor.qti.hardware.radio.atcmdfwd@1.0.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
	sed -i ':a;N;s/\n/&/3;Ta;/com.google.android.widevine-.*.apex/!{P;D};:b;N;s/\n/&/6;Tb;d' "$bpfile";
	if [ "$DOS_DEBLOBBER_REMOVE_FACE" = true ]; then
		sed -i ':a;N;s/\n/&/3;Ta;/android.hardware.biometrics.face-service.22.pixel.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
		sed -i ':a;N;s/\n/&/3;Ta;/manifest_face.xml/!{P;D};:b;N;s/\n/&/8;Tb;d' "$bpfile";
	fi;
}
export -f deblobVendorBp;
#
#END OF FUNCTIONS
#


#
#START OF DEBLOBBING
#

cd "$DOS_BUILD_BASE";
for makefile in $(find build -name "*.mk" -type f)
do
  for blob in $(echo "$makes" | tr "|" "\n")
  do
    sed -i "/$blob/d" $makefile
  done
done
for makefile in $(find device -name "*.mk" -type f)
do
  for blob in $(echo "$makes" | tr "|" "\n")
  do
    sed -i "/$blob/d" $makefile
  done
done
find device -maxdepth 2 -mindepth 2 -type d -exec bash -c 'deblobDevice "$0"' {} \;; #Deblob all device directories
find device -name "*.mk" -type f -print0 | xargs -0 -n 1 -P 8 -I {} bash -c 'sed -i "/$makes/d" "{}"'; #Deblob all makefiles
#find kernel -maxdepth 2 -mindepth 2 -type d -print0 | xargs -0 -n 1 -P 8 -I {} bash -c 'deblobKernel "{}"'; #Deblob all kernel directories
find vendor -name "*endor*.mk" -type f -print0 | xargs -0 -n 1 -P 8 -I {} bash -c 'deblobVendorMk "{}"'; #Deblob all makefiles
find vendor -name "Android.bp" -type f -print0 | xargs -0 -n 1 -P 8 -I {} bash -c 'deblobVendorBp "{}"'; #Deblob all makefiles
if [ "$DOS_VERSION" != "LineageOS-14.1" ]; then
perl -0777 -pe 's,(<hal.*?>.*?</hal>),$1 =~ /'$manifests'/?"":$1,gse' -i $(grep 'format="hidl"' "$DOS_BUILD_BASE/device" -ril); #Deblob all matrixes #Credit: https://unix.stackexchange.com/a/72160
perl -0777 -pe 's,(<hal.*?>.*?</hal>),$1 =~ /'$manifests'/?"":$1,gse' -i $(grep 'format="hidl"' "$DOS_BUILD_BASE/hardware/interfaces" -ril);
else
echo "Skipping manifest deblobbing";
fi;
deblobVendors; #Deblob entire vendor directory
rm -rf frameworks/av/drm/mediadrm/plugins/clearkey; #Remove ClearKey
#rm -rf frameworks/av/drm/mediacas/plugins/clearkey; #XXX: breaks protobuf inclusion
[[ -d vendor/samsung/nodevice ]] && rm -rf vendor/samsung/nodevice;

#Remove proprietary libraries
rm -rf external/firebase-messaging/* || true;
rm -rf prebuilts/tools/common/m2/repository/com/apple/AppleJavaExtensions || true;
rm -rf prebuilts/tools/common/m2/repository/com/cenqua/clover/clover || true;
rm -rf prebuilts/tools/common/m2/repository/com/crittercism || true;
rm -rf prebuilts/tools/common/m2/repository/com/facebook/android/facebook-android-sdk || true;
rm -rf prebuilts/tools/common/m2/repository/com/firebase/firebase-client-android || true;
rm -rf prebuilts/tools/common/m2/repository/com/firebase/firebase-client-jvm || true;
rm -rf prebuilts/tools/common/m2/repository/com/google/android/gms || true;
rm -rf prebuilts/tools/common/m2/repository/com/google/android/play || true;
rm -rf prebuilts/tools/common/m2/repository/com/helpshift || true;
#rm -rf prebuilts/tools/common/m2/repository/org/python/jython || true;
#Remove apps depending on proprietary libraries
rm -rf packages/apps/Car/DebuggingRestrictionController/* || true;
rm -rf packages/apps/ImsServiceEntitlement/* || true;
#
#END OF DEBLOBBING
#

cd "$DOS_BUILD_BASE";

echo -e "\e[0;32m[SCRIPT COMPLETE] Deblobbing complete\e[0m";
