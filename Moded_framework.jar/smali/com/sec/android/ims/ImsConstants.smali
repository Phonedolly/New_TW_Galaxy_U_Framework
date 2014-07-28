.class public interface abstract Lcom/sec/android/ims/ImsConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/ImsConstants$ImsCameraEffect;,
        Lcom/sec/android/ims/ImsConstants$ImsCameraWhiteBalance;,
        Lcom/sec/android/ims/ImsConstants$IMSCameraParam;,
        Lcom/sec/android/ims/ImsConstants$ImsImCPIMType;,
        Lcom/sec/android/ims/ImsConstants$IM_MMContentType;
    }
.end annotation


# static fields
.field public static final AlarmTimerCancel:I = 0x15

.field public static final AlarmTimerSet:I = 0x14

.field public static final IMS_ALREADY_IN_CALL:I = 0xd5

.field public static final IMS_CALLSWAP_ACTIVEUSE_IND:I = 0x124

.field public static final IMS_CALL_ADDRESS_INCOMPLETE:I = 0x134

.field public static final IMS_CALL_ALERTING:I = 0xcd

.field public static final IMS_CALL_ANNOUNCEMENT:I = 0x128

.field public static final IMS_CALL_BUSY:I = 0xd9

.field public static final IMS_CALL_BYE_TIMEOUT:I = 0xd3

.field public static final IMS_CALL_CODEC_EXIT_SUCCESS:I = 0xf0

.field public static final IMS_CALL_CODEC_FAILURE:I = 0xee

.field public static final IMS_CALL_CODEC_INIT_SUCCESS:I = 0xef

.field public static final IMS_CALL_DISCONNECTED:I = 0xcf

.field public static final IMS_CALL_DTMF_ALREADY_INPROG:I = 0x113

.field public static final IMS_CALL_DTMF_PROCESSED_IND:I = 0x112

.field public static final IMS_CALL_ESTABLISHED:I = 0xd0

.field public static final IMS_CALL_FAILED:I = 0xd6

.field public static final IMS_CALL_FAR_FRAME_READY:I = 0x12e

.field public static final IMS_CALL_FILEFEED_COMPLETE:I = 0xfa

.field public static final IMS_CALL_FILEFEED_FAILURE:I = 0xfb

.field public static final IMS_CALL_FILE_RX_FAILED:I = 0xfd

.field public static final IMS_CALL_FILE_TX_BAD:I = 0xf8

.field public static final IMS_CALL_FORBIDDEN:I = 0x12f

.field public static final IMS_CALL_HELD_IND:I = 0x109

.field public static final IMS_CALL_HOLD_FAILED:I = 0x126

.field public static final IMS_CALL_HOLD_FAILED_IND:I = 0x107

.field public static final IMS_CALL_INCOMING_NOTIFY:I = 0x119

.field public static final IMS_CALL_INCOMING_REFER_REQ:I = 0x115

.field public static final IMS_CALL_INCOMMING_IND:I = 0xca

.field public static final IMS_CALL_INCOMMING_REPLACES_IND:I = 0x120

.field public static final IMS_CALL_INVALID_STATE:I = 0xc9

.field public static final IMS_CALL_IN_PROGRESS:I = 0xcb

.field public static final IMS_CALL_IS_FORWARDED:I = 0xce

.field public static final IMS_CALL_LOCAL_CAPTURE_FAILURE:I = 0x12b

.field public static final IMS_CALL_LOCAL_CAPTURE_SUCCESS:I = 0x12a

.field public static final IMS_CALL_MAX:I = 0x15e

.field public static final IMS_CALL_METHOD_NOT_ALLOWED:I = 0x130

.field public static final IMS_CALL_NETWORK_UNREACHABLE:I = 0xda

.field public static final IMS_CALL_NONE:I = 0xc8

.field public static final IMS_CALL_NOT_ACCEPTABLE:I = 0x131

.field public static final IMS_CALL_NOT_FOUND:I = 0xd7

.field public static final IMS_CALL_RECV_OPTION_ACCEPT:I = 0x1

.field public static final IMS_CALL_RECV_OPTION_MAX:I = 0x5

.field public static final IMS_CALL_RECV_OPTION_NONE:I = 0x0

.field public static final IMS_CALL_RECV_OPTION_REJECT_AS_BUSY:I = 0x4

.field public static final IMS_CALL_RECV_OPTION_REJECT_AS_DECLINE:I = 0x2

.field public static final IMS_CALL_RECV_OPTION_REJECT_AS_TRANSACTION_CLOSE:I = 0x3

.field public static final IMS_CALL_REFER_REQ_ACCEPTED:I = 0x117

.field public static final IMS_CALL_REFER_REQ_REJECTED:I = 0x118

.field public static final IMS_CALL_REJECTED:I = 0xd2

.field public static final IMS_CALL_REMOTE_CAPTURE_FAILURE:I = 0x12d

.field public static final IMS_CALL_REMOTE_CAPTURE_SUCCESS:I = 0x12c

.field public static final IMS_CALL_REQ_FAILED:I = 0xd4

.field public static final IMS_CALL_REQ_REJECTED:I = 0x123

.field public static final IMS_CALL_REQ_TERMINATED:I = 0x133

.field public static final IMS_CALL_RESUME_FAILED:I = 0x127

.field public static final IMS_CALL_RETRIEVE_FAILED_IND:I = 0x108

.field public static final IMS_CALL_RETRIEVE_IND:I = 0x10a

.field public static final IMS_CALL_RX_ACTIVATE_DONE:I = 0xf3

.field public static final IMS_CALL_RX_DEACTIVATE_DONE:I = 0xf5

.field public static final IMS_CALL_SEND_DTMF_FAILURE:I = 0x114

.field public static final IMS_CALL_SEND_IMAGE_DONE:I = 0xf6

.field public static final IMS_CALL_SEND_IMAGE_FAILED:I = 0xf7

.field public static final IMS_CALL_SEND_INFO:I = 0x125

.field public static final IMS_CALL_SEND_REFER_FAILED:I = 0x116

.field public static final IMS_CALL_SERVER_INTERNAL_ERR:I = 0x137

.field public static final IMS_CALL_SERVICE_CHANGE_IND_EVENT:I = 0xe8

.field public static final IMS_CALL_SERVICE_NOTIFICATION:I = 0x121

.field public static final IMS_CALL_SERVICE_UNAVAILABLE:I = 0x135

.field public static final IMS_CALL_SHOW_FAR_FRAME:I = 0x111

.field public static final IMS_CALL_SHOW_NEAR_FRAME:I = 0x110

.field public static final IMS_CALL_START_FILEFEED:I = 0xf9

.field public static final IMS_CALL_START_RECORDING:I = 0xfc

.field public static final IMS_CALL_STOP_RECORDING_DURATION_REACHED:I = 0xff

.field public static final IMS_CALL_STOP_RECORDING_FAILURE:I = 0x101

.field public static final IMS_CALL_STOP_RECORDING_STORAGE_FULL:I = 0x100

.field public static final IMS_CALL_STOP_RECORDING_USER_STOPPED:I = 0xfe

.field public static final IMS_CALL_SWAP_COMPLETED_IND:I = 0x106

.field public static final IMS_CALL_SWAP_INPROGRESS_IND:I = 0x105

.field public static final IMS_CALL_SWITCH_FAILED:I = 0x10f

.field public static final IMS_CALL_SWITCH_IND:I = 0x10b

.field public static final IMS_CALL_SWITCH_REQUEST:I = 0x10c

.field public static final IMS_CALL_SWITCH_RESPONSE:I = 0x10d

.field public static final IMS_CALL_TEMP_UNAVAILABLE:I = 0xd8

.field public static final IMS_CALL_TIMEOUT:I = 0xdb

.field public static final IMS_CALL_TRANSFERED:I = 0x122

.field public static final IMS_CALL_TRANSFER_FAILED:I = 0x11b

.field public static final IMS_CALL_TRANSFER_SUCCESS:I = 0x11a

.field public static final IMS_CALL_TRYING:I = 0xcc

.field public static final IMS_CALL_TX_ACTIVATE_DONE:I = 0xf2

.field public static final IMS_CALL_TX_DEACTIVATE_DONE:I = 0xf4

.field public static final IMS_CALL_TYPE_NULL:I = 0x0

.field public static final IMS_CALL_TYPE_POC:I = 0x3

.field public static final IMS_CALL_TYPE_VOIP:I = 0x2

.field public static final IMS_CALL_TYPE_VT:I = 0x1

.field public static final IMS_CALL_UNBLOCK_CODEC_SETTING:I = 0xf1

.field public static final IMS_CALL_UNSUPPORTED_MEDIA:I = 0x132

.field public static final IMS_CALL_USER_POWERED_OFF:I = 0x136

.field public static final IMS_CALL_WAITING_CONNECT_IND:I = 0x103

.field public static final IMS_CALL_WAITING_DISCONNECTED_IND:I = 0x104

.field public static final IMS_CALL_WAITING_IND:I = 0x102

.field public static final IMS_CALL_WAITING_REINVITE:I = 0x10e

.field public static final IMS_CONF_ADD_USER_FAIL:I = 0x11e

.field public static final IMS_CONF_MEDIASERVER_CONNECT_FAILED:I = 0x11d

.field public static final IMS_CONF_TWC_CONNECTED:I = 0x11f

.field public static final IMS_DEINIT_VIDEO:I = 0x129

.field public static final IMS_DEREGISTRATION_FAILED:I = 0x6b

.field public static final IMS_DEREGISTRATION_SUCCEED:I = 0x6a

.field public static final IMS_DEREG_REQ_FAILED:I = 0x69

.field public static final IMS_FAILED_TO_GO_READY:I = 0xed

.field public static final IMS_IP_CHANGED_EVENT:I = 0x16

.field public static final IMS_NOT_REGISTERED:I = 0x65

.field public static final IMS_PPP_OPEN_FAILURE:I = 0xde

.field public static final IMS_PPP_OPEN_SUCCESS:I = 0xdd

.field public static final IMS_PPP_OPEN_TRYING:I = 0xdc

.field public static final IMS_PPP_STATUS_CHANGE_IND_EVENT:I = 0xe9

.field public static final IMS_PPP_STATUS_CLOSE_EVENT:I = 0xea

.field public static final IMS_QOS_FAILURE:I = 0xe4

.field public static final IMS_QOS_INCALL_SUSPEND:I = 0xe6

.field public static final IMS_QOS_INCALL_UNAWARE:I = 0xe7

.field public static final IMS_QOS_NW_UNAWARE:I = 0xe5

.field public static final IMS_QOS_SUCCESS:I = 0xe3

.field public static final IMS_QOS_TRYING:I = 0xe2

.field public static final IMS_READY_TO_GO:I = 0xec

.field public static final IMS_REGISTRATION_FAILED:I = 0x68

.field public static final IMS_REGISTRATION_SUCCEED:I = 0x66

.field public static final IMS_REG_MAX:I = 0xc7

.field public static final IMS_REG_NETWORK_UNREACHABLE:I = 0x6c

.field public static final IMS_REG_NONE:I = 0x64

.field public static final IMS_REG_NOT_SUBSCRIBED:I = 0x71

.field public static final IMS_REG_REQ_FAILED:I = 0x67

.field public static final IMS_REG_SERVER_ERROR:I = 0x6f

.field public static final IMS_REG_SRV_UNAVAIL:I = 0x6e

.field public static final IMS_REG_TEMP_ERROR:I = 0x70

.field public static final IMS_REG_TIMEOUT:I = 0x6d

.field public static final IMS_RTP_NO_PACKET_FOR_10SEC:I = 0xeb

.field public static final IMS_SESSION_TERMINATED:I = 0xd1

.field public static final IMS_SIP_REG_FAILURE:I = 0xe1

.field public static final IMS_SIP_REG_SUCCESS:I = 0xe0

.field public static final IMS_SIP_REG_TRYING:I = 0xdf

.field public static final IMS_WAIT_FOR_TARGET_DISCONNECT:I = 0x11c

.field public static final MOD_SS:I = 0x1

.field public static final MOD_VT:I = 0x0

.field public static final UI_APP_IM:I = 0x2

.field public static final UI_APP_IM_MSRP:I = 0xb

.field public static final UI_APP_MAX:I = 0x10

.field public static final UI_APP_MIN:I = 0x0

.field public static final UI_APP_MNGR:I = 0x9

.field public static final UI_APP_POC:I = 0x1

.field public static final UI_APP_PRES:I = 0xa

.field public static final UI_APP_REG:I = 0x5

.field public static final UI_APP_SMSIP:I = 0x3

.field public static final UI_APP_SS_CH:I = 0xd

.field public static final UI_APP_SS_CT:I = 0xe

.field public static final UI_APP_SS_GEN:I = 0xc

.field public static final UI_APP_SS_TWC:I = 0xf

.field public static final UI_APP_VOIP:I = 0x4

.field public static final UI_APP_VSH:I = 0x6

.field public static final UI_APP_VT:I = 0x8

.field public static final UI_APP_XDM:I = 0x7

.field public static final VT_DIAL_INVALID:I = 0x0

.field public static final VT_DIAL_MAX:I = 0x5

.field public static final VT_DIAL_SIPURI:I = 0x1

.field public static final VT_DIAL_TELNO:I = 0x3

.field public static final VT_DIAL_TELURI:I = 0x2

.field public static final VT_DIAL_USERNAME:I = 0x4

.field public static final XAN_CAM_SYNC_ERR:I = 0x2

.field public static final XAN_CODEC_PARM_AUDIO_CODEC:I = 0x11

.field public static final XAN_CODEC_PARM_AUDIO_CODEC_PT:I = 0x12

.field public static final XAN_CODEC_PARM_AUDIO_DEVICE:I = 0x9

.field public static final XAN_CODEC_PARM_AUDIO_EVRC_RATE:I = 0x7

.field public static final XAN_CODEC_PARM_AUDIO_MUTE:I = 0x8

.field public static final XAN_CODEC_PARM_AUDIO_RATE:I = 0x6

.field public static final XAN_CODEC_PARM_AUDIO_VOLUME:I = 0xa

.field public static final XAN_CODEC_PARM_CAMERA_BRIGHTNESS:I = 0xc

.field public static final XAN_CODEC_PARM_CAMERA_COLOR_EFFECT:I = 0xd

.field public static final XAN_CODEC_PARM_CAMERA_WHITE_BALANCE:I = 0xe

.field public static final XAN_CODEC_PARM_CAMERA_ZOOM:I = 0xb

.field public static final XAN_CODEC_PARM_MAX:I = 0x13

.field public static final XAN_CODEC_PARM_VIDEO_BIT_RATE:I = 0x0

.field public static final XAN_CODEC_PARM_VIDEO_CODEC:I = 0x10

.field public static final XAN_CODEC_PARM_VIDEO_FRAME_RATE:I = 0x1

.field public static final XAN_CODEC_PARM_VIDEO_INTRA_PERIOD:I = 0x3

.field public static final XAN_CODEC_PARM_VIDEO_MUTE:I = 0x4

.field public static final XAN_CODEC_PARM_VIDEO_QP:I = 0x2

.field public static final XAN_CODEC_PARM_VIDEO_ROTATION:I = 0x5

.field public static final XAN_CODEC_PARM_VOX_MODE:I = 0xf

.field public static final XAN_DTMF_KEY_0:I = 0x0

.field public static final XAN_DTMF_KEY_1:I = 0x1

.field public static final XAN_DTMF_KEY_2:I = 0x2

.field public static final XAN_DTMF_KEY_3:I = 0x3

.field public static final XAN_DTMF_KEY_4:I = 0x4

.field public static final XAN_DTMF_KEY_5:I = 0x5

.field public static final XAN_DTMF_KEY_6:I = 0x6

.field public static final XAN_DTMF_KEY_7:I = 0x7

.field public static final XAN_DTMF_KEY_8:I = 0x8

.field public static final XAN_DTMF_KEY_9:I = 0x9

.field public static final XAN_DTMF_KEY_A:I = 0xc

.field public static final XAN_DTMF_KEY_ASTERISK:I = 0xa

.field public static final XAN_DTMF_KEY_B:I = 0xd

.field public static final XAN_DTMF_KEY_C:I = 0xe

.field public static final XAN_DTMF_KEY_D:I = 0xf

.field public static final XAN_DTMF_KEY_FLASH:I = 0x10

.field public static final XAN_DTMF_KEY_INVALID:I = -0x1

.field public static final XAN_DTMF_KEY_MAX:I = 0x11

.field public static final XAN_DTMF_KEY_POUND:I = 0xb

.field public static final XAN_FAILURE:I = -0x1

.field public static final XAN_FALSE:I = 0x0

.field public static final XAN_SS_ERROR:I = -0x1

.field public static final XAN_SS_OK:I = 0x0

.field public static final XAN_SUCCESS:I = 0x0

.field public static final XAN_TRUE:I = 0x1

.field public static final XAN_VT_CALLSSNID_INVALID:I = -0x1

.field public static final XAN_WOULDBLOCK:I = 0x1
