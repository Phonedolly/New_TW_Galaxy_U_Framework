.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x3

.field public static final PHONE_TYPE_NONE:I = 0x0

.field private static final PREFIX_TABLE:[Ljava/lang/String; = null

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, "010"

    .line 96
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 998
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "010"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, "SKT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "010"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "010"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "010"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "KTF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 90
    return-void
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getIConnectivityManager()Landroid/net/IConnectivityManager;
    .registers 2

    .prologue
    .line 877
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 881
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 2

    .prologue
    .line 886
    const-string/jumbo v0, "phoneext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method private getMobileQualityInfo()Lcom/android/internal/telephony/IMobileQualityInfo;
    .registers 2

    .prologue
    .line 779
    const-string v0, "imobilequalityinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMobileQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 342
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    .local v0, mode:I
    if-ne v0, v2, :cond_c

    .line 344
    const/4 v1, 0x0

    .line 345
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 332
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, type:I
    return v0
.end method

.method private static getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "ua"
    .parameter "mdn"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v7, "I%c%c%s"

    .line 1003
    const/4 v0, -0x1

    .line 1004
    .local v0, nNum:I
    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oversea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1013
    :goto_17
    return-object p0

    .line 1008
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_43

    .line 1009
    const-string v1, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    .line 1011
    :cond_43
    const-string v1, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17
.end method

.method private static getServiceUserAgent()C
    .registers 3

    .prologue
    .line 1029
    const/16 v0, 0x30

    .line 1031
    .local v0, cNetworkType:C
    invoke-static {}, Landroid/telephony/TelephonyManager;->isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1032
    const/16 v0, 0x44

    .line 1061
    :goto_a
    return v0

    .line 1034
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1036
    .local v1, nNetworkType:I
    packed-switch v1, :pswitch_data_28

    .line 1058
    const/16 v0, 0x36

    goto :goto_a

    .line 1039
    :pswitch_19
    const/16 v0, 0x42

    .line 1040
    goto :goto_a

    .line 1042
    :pswitch_1c
    const/16 v0, 0x43

    .line 1043
    goto :goto_a

    .line 1045
    :pswitch_1f
    const/16 v0, 0x38

    .line 1046
    goto :goto_a

    .line 1048
    :pswitch_22
    const/16 v0, 0x39

    .line 1049
    goto :goto_a

    .line 1055
    :pswitch_25
    const/16 v0, 0x36

    .line 1056
    goto :goto_a

    .line 1036
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 772
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getUAField()Ljava/lang/String;
    .registers 14

    .prologue
    .line 1065
    const/4 v8, 0x0

    .line 1066
    .local v8, numPrefix:Ljava/lang/String;
    const-string v0, ""

    .line 1067
    .local v0, UserAgent:Ljava/lang/String;
    const-string v4, ""

    .line 1068
    .local v4, min8:Ljava/lang/String;
    const-string v3, ""

    .line 1069
    .local v3, mdn:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v1, "0106CSSMF4611480754442216"

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v10, sbDeviceInfo:Ljava/lang/StringBuffer;
    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oversea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1071
    .local v2, is_roaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getServiceUserAgent()C

    move-result v1

    .line 1073
    .local v1, networkType:C
    const/4 v5, 0x3

    invoke-virtual {v10, v5, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1075
    const-string v1, "gsm.operator.numeric"

    .end local v1           #networkType:C
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1076
    .local v6, networkOperator:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 1077
    .local v1, cell:Landroid/telephony/gsm/GsmCellLocation;
    if-nez v1, :cond_41

    .line 1078
    const-string v1, "TelephonyManager"

    .end local v1           #cell:Landroid/telephony/gsm/GsmCellLocation;
    const-string v2, "No Sim or Flight mode"

    .end local v2           #is_roaming:Z
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v3           #mdn:Ljava/lang/String;
    .local v2, mdn:Ljava/lang/String;
    move-object v1, v0

    .end local v0           #UserAgent:Ljava/lang/String;
    .local v1, UserAgent:Ljava/lang/String;
    move-object v3, v4

    .line 1125
    .end local v4           #min8:Ljava/lang/String;
    .end local v6           #networkOperator:Ljava/lang/String;
    .end local v8           #numPrefix:Ljava/lang/String;
    .local v3, min8:Ljava/lang/String;
    :goto_40
    return-object v1

    .line 1083
    .restart local v0       #UserAgent:Ljava/lang/String;
    .local v1, cell:Landroid/telephony/gsm/GsmCellLocation;
    .local v2, is_roaming:Z
    .local v3, mdn:Ljava/lang/String;
    .restart local v4       #min8:Ljava/lang/String;
    .restart local v6       #networkOperator:Ljava/lang/String;
    .restart local v8       #numPrefix:Ljava/lang/String;
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1084
    .local v1, cid:I
    const v5, 0xff00

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v7, v5

    .line 1085
    .local v7, nodeB:B
    shr-int/lit8 v5, v1, 0x10

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v9, v5

    .line 1086
    .local v9, rnc:B
    shr-int/lit8 v1, v1, 0x15

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v5, v1

    .line 1089
    .local v5, msd:B
    if-nez v2, :cond_15a

    .line 1090
    .end local v1           #cid:I
    const-string v1, "gsm.sim.imsim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v3           #mdn:Ljava/lang/String;
    .local v1, mdn:Ljava/lang/String;
    move-object v3, v1

    .line 1094
    .end local v1           #mdn:Ljava/lang/String;
    .restart local v3       #mdn:Ljava/lang/String;
    :goto_5f
    sget-object v1, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    sub-int/2addr v11, v12

    aget-object v8, v1, v11

    .line 1096
    const-string v1, "TelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mdn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v11, 0xb

    if-ne v1, v11, :cond_163

    .line 1099
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .end local v2           #is_roaming:Z
    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_99} :catch_1b5

    move-result-object v1

    .end local v4           #min8:Ljava/lang/String;
    .local v1, min8:Ljava/lang/String;
    move-object v2, v1

    .line 1110
    .end local v1           #min8:Ljava/lang/String;
    .local v2, min8:Ljava/lang/String;
    :goto_9b
    :try_start_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v7, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v4, v7, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1111
    .local v7, nodeBStr:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1112
    .local v4, mnc:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .end local v6           #networkOperator:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, mcc:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    .end local v7           #nodeBStr:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #msd:B
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #mnc:Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #mcc:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, networkInfo:Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .end local v1           #networkInfo:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    if-eqz v8, :cond_137

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    :cond_137
    invoke-static {v0, v3}, Landroid/telephony/TelephonyManager;->getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    const-string v1, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUAField():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_153} :catch_1d5

    move-object v1, v3

    .end local v3           #mdn:Ljava/lang/String;
    .local v1, mdn:Ljava/lang/String;
    move-object v3, v8

    .end local v8           #numPrefix:Ljava/lang/String;
    .end local v9           #rnc:B
    .local v3, numPrefix:Ljava/lang/String;
    :goto_155
    move-object v3, v2

    .end local v2           #min8:Ljava/lang/String;
    .local v3, min8:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #mdn:Ljava/lang/String;
    .local v2, mdn:Ljava/lang/String;
    move-object v1, v0

    .line 1125
    .end local v0           #UserAgent:Ljava/lang/String;
    .local v1, UserAgent:Ljava/lang/String;
    goto/16 :goto_40

    .line 1092
    .end local v1           #UserAgent:Ljava/lang/String;
    .restart local v0       #UserAgent:Ljava/lang/String;
    .local v2, is_roaming:Z
    .local v3, mdn:Ljava/lang/String;
    .local v4, min8:Ljava/lang/String;
    .restart local v5       #msd:B
    .restart local v6       #networkOperator:Ljava/lang/String;
    .local v7, nodeB:B
    .restart local v8       #numPrefix:Ljava/lang/String;
    .restart local v9       #rnc:B
    :cond_15a
    :try_start_15a
    const-string v1, "gsm.sim.sktirm"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v3           #mdn:Ljava/lang/String;
    .local v1, mdn:Ljava/lang/String;
    move-object v3, v1

    .end local v1           #mdn:Ljava/lang/String;
    .restart local v3       #mdn:Ljava/lang/String;
    goto/16 :goto_5f

    .line 1100
    :cond_163
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v11, 0xa

    if-ne v1, v11, :cond_1a3

    .line 1102
    if-nez v2, :cond_191

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    .end local v2           #is_roaming:Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x7

    sub-int/2addr v2, v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v4           #min8:Ljava/lang/String;
    .local v1, min8:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #min8:Ljava/lang/String;
    .local v2, min8:Ljava/lang/String;
    goto/16 :goto_9b

    .line 1105
    .local v2, is_roaming:Z
    .restart local v4       #min8:Ljava/lang/String;
    :cond_191
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .end local v2           #is_roaming:Z
    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v4           #min8:Ljava/lang/String;
    .restart local v1       #min8:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #min8:Ljava/lang/String;
    .local v2, min8:Ljava/lang/String;
    goto/16 :goto_9b

    .line 1108
    .local v2, is_roaming:Z
    .restart local v4       #min8:Ljava/lang/String;
    :cond_1a3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .end local v2           #is_roaming:Z
    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_1b1} :catch_1b5

    move-result-object v1

    .end local v4           #min8:Ljava/lang/String;
    .restart local v1       #min8:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #min8:Ljava/lang/String;
    .local v2, min8:Ljava/lang/String;
    goto/16 :goto_9b

    .line 1121
    .end local v2           #min8:Ljava/lang/String;
    .end local v5           #msd:B
    .end local v7           #nodeB:B
    .end local v9           #rnc:B
    .restart local v4       #min8:Ljava/lang/String;
    :catch_1b5
    move-exception v1

    move-object v2, v3

    .end local v3           #mdn:Ljava/lang/String;
    .local v2, mdn:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #min8:Ljava/lang/String;
    .local v3, min8:Ljava/lang/String;
    move-object v4, v8

    .line 1122
    .end local v6           #networkOperator:Ljava/lang/String;
    .end local v8           #numPrefix:Ljava/lang/String;
    .local v1, e:Ljava/lang/Exception;
    .local v4, numPrefix:Ljava/lang/String;
    :goto_1b9
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Sim or No MSISDN -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2           #mdn:Ljava/lang/String;
    .local v1, mdn:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #min8:Ljava/lang/String;
    .local v2, min8:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #numPrefix:Ljava/lang/String;
    .local v3, numPrefix:Ljava/lang/String;
    goto :goto_155

    .line 1121
    .end local v1           #mdn:Ljava/lang/String;
    .local v3, mdn:Ljava/lang/String;
    .restart local v8       #numPrefix:Ljava/lang/String;
    .restart local v9       #rnc:B
    :catch_1d5
    move-exception v1

    move-object v4, v8

    .end local v8           #numPrefix:Ljava/lang/String;
    .restart local v4       #numPrefix:Ljava/lang/String;
    move-object v13, v2

    .end local v2           #min8:Ljava/lang/String;
    .local v13, min8:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #mdn:Ljava/lang/String;
    .local v2, mdn:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #min8:Ljava/lang/String;
    .local v3, min8:Ljava/lang/String;
    goto :goto_1b9
.end method

.method private static isWIFIConnected()Z
    .registers 2

    .prologue
    .line 1017
    const-string v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, wifiConnected:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1021
    const/4 v1, 0x1

    .line 1023
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method public disableDataConnectivity()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1211
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_13

    .line 1218
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_11} :catch_33

    move-result v1

    .line 1222
    :goto_12
    return v1

    .line 1212
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 1213
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1214
    goto :goto_12

    .line 1219
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2f
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v4

    .line 1220
    goto :goto_12

    .line 1221
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_33
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v4

    .line 1222
    goto :goto_12
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 269
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 273
    :goto_7
    return-void

    .line 271
    :catch_8
    move-exception v0

    goto :goto_7

    .line 270
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableDataConnectivity()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1185
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    move-result v1

    if-nez v1, :cond_11

    move v1, v3

    .line 1202
    :goto_c
    return v1

    .line 1187
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    move v1, v3

    .line 1188
    goto :goto_c

    .line 1192
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_11
    :try_start_11
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_22

    .line 1198
    :try_start_19
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_20} :catch_2a

    move-result v1

    goto :goto_c

    .line 1193
    :catch_22
    move-exception v1

    move-object v0, v1

    .restart local v0       #ex:Ljava/lang/Exception;
    move v1, v3

    .line 1194
    goto :goto_c

    .line 1199
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_26
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v3

    .line 1200
    goto :goto_c

    .line 1201
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v3

    .line 1202
    goto :goto_c
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 252
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 256
    :goto_7
    return-void

    .line 254
    :catch_8
    move-exception v0

    goto :goto_7

    .line 253
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 799
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 805
    :goto_9
    return v1

    .line 800
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 802
    goto :goto_9

    .line 803
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 805
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 939
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 944
    :goto_9
    return v1

    .line 940
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 942
    goto :goto_9

    .line 943
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 944
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 957
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 962
    :goto_9
    return v1

    .line 958
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 960
    goto :goto_9

    .line 961
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 962
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 973
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 978
    :goto_9
    return-object v1

    .line 974
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 976
    goto :goto_9

    .line 977
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 978
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 229
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 231
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_1b

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v4

    .line 237
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :goto_14
    return-object v3

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cl:Landroid/telephony/CellLocation;
    :cond_15
    move-object v3, v1

    .line 233
    goto :goto_14

    .line 234
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :catch_17
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 235
    goto :goto_14

    .line 236
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1b
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 237
    goto :goto_14
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 720
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 725
    :goto_9
    return-object v1

    .line 721
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 722
    goto :goto_9

    .line 723
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 725
    goto :goto_9
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 835
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 841
    :goto_9
    return v1

    .line 836
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 838
    goto :goto_9

    .line 839
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 841
    goto :goto_9
.end method

.method public getDataNetworkDisable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1303
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkDisable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1307
    :goto_9
    return v1

    .line 1304
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1305
    goto :goto_9

    .line 1306
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1307
    goto :goto_9
.end method

.method public getDataRoamingEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1172
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1176
    :goto_9
    return v1

    .line 1173
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1174
    goto :goto_9

    .line 1175
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1176
    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 867
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 872
    :goto_9
    return v1

    .line 868
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 870
    goto :goto_9

    .line 871
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 872
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 211
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 215
    :goto_9
    return-object v1

    .line 212
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 213
    goto :goto_9

    .line 214
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 215
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 194
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 198
    :goto_9
    return-object v1

    .line 195
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 196
    goto :goto_9

    .line 197
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 198
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 684
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 689
    :goto_9
    return-object v1

    .line 685
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 686
    goto :goto_9

    .line 687
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 689
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 664
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 669
    :goto_9
    return-object v1

    .line 665
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 666
    goto :goto_9

    .line 667
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 669
    goto :goto_9
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1138
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getMobileQualityInfo()Lcom/android/internal/telephony/IMobileQualityInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IMobileQualityInfo;->getInfo()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1142
    :goto_9
    return-object v1

    .line 1139
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1140
    goto :goto_9

    .line 1141
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1142
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 285
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 289
    :goto_9
    return-object v1

    .line 286
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 287
    goto :goto_9

    .line 288
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 289
    goto :goto_9
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 461
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 462
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 463
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result v2

    .line 473
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_b
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_c
    move v2, v3

    .line 466
    goto :goto_b

    .line 468
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 470
    goto :goto_b

    .line 471
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 473
    goto :goto_b
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 509
    :pswitch_7
    const-string v0, "UNKNOWN"

    :goto_9
    return-object v0

    .line 487
    :pswitch_a
    const-string v0, "GPRS"

    goto :goto_9

    .line 489
    :pswitch_d
    const-string v0, "EDGE"

    goto :goto_9

    .line 491
    :pswitch_10
    const-string v0, "UMTS"

    goto :goto_9

    .line 493
    :pswitch_13
    const-string v0, "HSDPA"

    goto :goto_9

    .line 495
    :pswitch_16
    const-string v0, "HSUPA"

    goto :goto_9

    .line 497
    :pswitch_19
    const-string v0, "HSPA"

    goto :goto_9

    .line 499
    :pswitch_1c
    const-string v0, "CDMA"

    goto :goto_9

    .line 501
    :pswitch_1f
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_9

    .line 503
    :pswitch_22
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_9

    .line 505
    :pswitch_25
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_9

    .line 507
    :pswitch_28
    const-string v0, "CDMA - 1xRTT"

    goto :goto_9

    .line 485
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_7
        :pswitch_25
    .end packed-switch
.end method

.method public getPhoneType()I
    .registers 4

    .prologue
    .line 312
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 313
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 314
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 326
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 317
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_17

    move-result v2

    goto :goto_a

    .line 319
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 322
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 323
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 326
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getServiceState()I
    .registers 3

    .prologue
    .line 1242
    const/4 v0, 0x0

    .line 1244
    .local v0, state:I
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 1248
    :goto_9
    return v0

    .line 1246
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1245
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 610
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 592
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 622
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 627
    :goto_9
    return-object v1

    .line 623
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 624
    goto :goto_9

    .line 625
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 627
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 562
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 564
    const/4 v1, 0x1

    .line 579
    :goto_f
    return v1

    .line 566
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 567
    const/4 v1, 0x2

    goto :goto_f

    .line 569
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 570
    const/4 v1, 0x3

    goto :goto_f

    .line 572
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 573
    const/4 v1, 0x4

    goto :goto_f

    .line 575
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 576
    const/4 v1, 0x5

    goto :goto_f

    .line 579
    :cond_38
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 646
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 651
    :goto_9
    return-object v1

    .line 647
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 648
    goto :goto_9

    .line 649
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 651
    goto :goto_9
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .registers 3

    .prologue
    .line 1286
    const/4 v0, 0x0

    .line 1289
    .local v0, result:Ljava/util/Map;
    :try_start_1
    const-string/jumbo v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getTelephonyFeature()Ljava/util/Map;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 1294
    :goto_10
    return-object v0

    .line 1291
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public getTimeInfo()Ljava/util/Date;
    .registers 18

    .prologue
    .line 1314
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v13

    if-eqz v13, :cond_8

    .line 1315
    const/4 v13, 0x0

    .line 1344
    :goto_7
    return-object v13

    .line 1318
    :cond_8
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephonyExt;->getTimeInfo()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_f} :catch_23

    move-result-object v9

    .line 1326
    .local v9, nitzString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 1327
    const/4 v13, 0x0

    goto :goto_7

    .line 1319
    .end local v9           #nitzString:Ljava/lang/String;
    :catch_18
    move-exception v13

    move-object v8, v13

    .line 1320
    .local v8, ex:Landroid/os/RemoteException;
    const-string v13, "TelephonyManager"

    const-string v14, "getTimeInfo() - RemoteException"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/4 v13, 0x0

    goto :goto_7

    .line 1322
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v13

    move-object v8, v13

    .line 1323
    .local v8, ex:Ljava/lang/NullPointerException;
    const-string v13, "TelephonyManager"

    const-string v14, "getTimeInfo() - NullPointerException"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v13, 0x0

    goto :goto_7

    .line 1329
    .end local v8           #ex:Ljava/lang/NullPointerException;
    .restart local v9       #nitzString:Ljava/lang/String;
    :cond_2e
    const-string v13, "[/:,+-]"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1332
    .local v10, nitzSubs:[Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_35
    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit16 v1, v13, 0x7d0

    .line 1333
    .local v1, year:I
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1334
    .local v2, month:I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1335
    .local v3, date:I
    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1336
    .local v4, hour:I
    const/4 v13, 0x4

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1337
    .local v5, minute:I
    const/4 v13, 0x5

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1339
    .local v6, second:I
    new-instance v0, Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 1340
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/32 v15, 0x1ee6280

    add-long v11, v13, v15

    .line 1341
    .local v11, time:J
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v11, v12}, Ljava/util/Date;-><init>(J)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_73} :catch_74

    goto :goto_7

    .line 1342
    .end local v0           #dt:Ljava/util/Date;
    .end local v1           #year:I
    .end local v2           #month:I
    .end local v3           #date:I
    .end local v4           #hour:I
    .end local v5           #minute:I
    .end local v6           #second:I
    .end local v11           #time:J
    :catch_74
    move-exception v13

    move-object v7, v13

    .line 1343
    .local v7, e:Ljava/lang/Exception;
    const-string v13, "TelephonyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time is not valid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v13, 0x0

    goto/16 :goto_7
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 757
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 758
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVideoMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 766
    :goto_10
    return-object v1

    .line 761
    :cond_11
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_1e

    move-result-object v1

    goto :goto_10

    .line 762
    :catch_1a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 763
    goto :goto_10

    .line 764
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 766
    goto :goto_10
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 701
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 706
    :goto_9
    return-object v1

    .line 702
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 703
    goto :goto_9

    .line 704
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 706
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 738
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 743
    :goto_9
    return v1

    .line 739
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 740
    goto :goto_9

    .line 741
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 743
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 540
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 546
    :goto_9
    return v1

    .line 541
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 543
    goto :goto_9

    .line 544
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 546
    goto :goto_9
.end method

.method public isNetwork3GRoaming()Z
    .registers 4

    .prologue
    .line 396
    const-string v0, "3G"

    const-string/jumbo v1, "ril.currentsystem"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 382
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRoamingArea()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1272
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRoamingArea()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1276
    :goto_9
    return v1

    .line 1273
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1274
    goto :goto_9

    .line 1275
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1276
    goto :goto_9
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 921
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 923
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 924
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_21} :catch_28

    .line 930
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_21
    return-void

    .line 921
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_22
    const-string v2, "<unknown>"

    move-object v1, v2

    goto :goto_b

    .line 923
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    goto :goto_12

    .line 927
    :catch_28
    move-exception v2

    goto :goto_21

    .line 925
    :catch_2a
    move-exception v2

    goto :goto_21
.end method

.method public notifyMessageWaitingChanged(Z)V
    .registers 4
    .parameter "mwi"

    .prologue
    .line 990
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 995
    :goto_5
    return-void

    .line 991
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 993
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public sendRequestToRIL([B[BI)I
    .registers 8
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    .line 1148
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1151
    :goto_8
    return v1

    .line 1149
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1150
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public setDataConnectionToggleExt()I
    .registers 3

    .prologue
    .line 1257
    const/4 v0, 0x0

    .line 1259
    .local v0, val:I
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setDataConnectionToggleExt()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 1264
    :goto_9
    return v0

    .line 1261
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1260
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .parameter "set"

    .prologue
    .line 1160
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1164
    :goto_7
    return-void

    .line 1162
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1161
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V
    .registers 4
    .parameter "pref"
    .parameter "set"

    .prologue
    .line 1231
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1235
    :goto_7
    return-void

    .line 1233
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1232
    :catch_a
    move-exception v0

    goto :goto_7
.end method
