.class public Landroid/lgt/handset/HandsetProperty;
.super Ljava/lang/Object;
.source "HandsetProperty.java"


# static fields
.field public static final BASEID:Ljava/lang/String; = "BASEID"

.field public static final BASELAT:Ljava/lang/String; = "BASELAT"

.field public static final BASELONG:Ljava/lang/String; = "BASELONG"

.field public static final BILL_GW_IP:Ljava/lang/String; = "BILL_GW_IP"

.field public static final DEFAULT_BROWSER:Ljava/lang/String; = "DEFAULT_BROWSER"

.field public static final DEVICE_GROUP:Ljava/lang/String; = "DEVICE_GROUP"

.field public static final DNS1:Ljava/lang/String; = "DNS1"

.field public static final DNS2:Ljava/lang/String; = "DNS2"

.field public static final LGT_DATA_NETWORK_3G_STATE:Ljava/lang/String; = "LGT_DATA_NETWORK_3G_STATE"

.field public static final LGT_OZ_STARTPAGE:Ljava/lang/String; = "LGT_OZ_STARTPAGE"

.field public static final NID:Ljava/lang/String; = "NID"

.field public static final PREFERRED_DATA_NETWORK_MODE:Ljava/lang/String; = "PREFERRED_DATA_NETWORK_MODE"

.field public static final PROCESSOR_INFO:Ljava/lang/String; = "PROCESSOR_INFO"

.field public static final ROAMING_AREA:Ljava/lang/String; = "ROAMING_AREA"

.field public static final SID:Ljava/lang/String; = "SID"

.field public static final UNKNOWN_VALUE:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LGUP_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "NID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNID()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_c
    return-object v0

    .line 52
    :cond_d
    const-string v0, "SID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 53
    :cond_1a
    const-string v0, "BASEID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASEID()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 54
    :cond_27
    const-string v0, "BASELAT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASELAT()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 55
    :cond_34
    const-string v0, "BASELONG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASELONG()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 56
    :cond_41
    const-string v0, "DNS1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDNS1()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 57
    :cond_4e
    const-string v0, "DNS2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDNS2()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 58
    :cond_5b
    const-string v0, "ROAMING_AREA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getROAMING_AREA()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 59
    :cond_68
    const-string v0, "BILL_GW_IP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBILL_GW_IP()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 60
    :cond_75
    const-string v0, "DEVICE_GROUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDEVICE_GROUP()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 61
    :cond_82
    const-string v0, "PROCESSOR_INFO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getPROCESSOR_INFO()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 63
    :cond_90
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "REG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "CURRENTCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "ESN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "BESTPN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "NETWORK_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "WIPINET_VAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 66
    :cond_d0
    invoke-static {p0}, Landroid/lgt/handset/HandsetProperty;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 67
    :cond_d6
    const-string v0, "NETWORK_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 68
    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNetworkTime()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 69
    :cond_e4
    const-string v0, "PREFERRED_DATA_NETWORK_MODE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getPREFERRED_DATA_NETWORK_MODE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 70
    :cond_f2
    const-string v0, "LGT_DATA_NETWORK_3G_STATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLGT_DATA_NETWORK_3G_STATE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 71
    :cond_100
    const-string v0, "LGT_OZ_STARTPAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLGT_OZ_STARTPAGE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 73
    :cond_10e
    const-string v0, "DEFAULT_BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDEFAULT_BROWSER()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 74
    :cond_11c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static getBASEID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string/jumbo v0, "ril.cdma.baseid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBASELAT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string/jumbo v0, "ril.cdma.baselat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBASELONG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const-string/jumbo v0, "ril.cdma.baselong"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBILL_GW_IP()Ljava/lang/String;
    .registers 1

    .prologue
    .line 191
    const-string/jumbo v0, "wipigw.ez-i.co.kr:20000"

    return-object v0
.end method

.method private static getDEFAULT_BROWSER()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    const-string v0, "lgt.default.browser"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDEVICE_GROUP()Ljava/lang/String;
    .registers 1

    .prologue
    .line 196
    const-string v0, "3426"

    return-object v0
.end method

.method private static getDNS1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    const-string/jumbo v0, "net.dns1"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDNS2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string/jumbo v0, "net.dns2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 205
    const-string v0, ""

    .line 207
    .local v0, mode:Ljava/lang/String;
    :try_start_2
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 208
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 209
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_36

    move-result-object v0

    .line 215
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    :goto_13
    const-string v2, "HandsetProperty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandsetInfo() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v0

    .line 211
    :catch_36
    move-exception v2

    goto :goto_13
.end method

.method private static getLGT_DATA_NETWORK_3G_STATE()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    const-string v0, ""

    .line 237
    .local v0, mode:Ljava/lang/String;
    :try_start_2
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 238
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 239
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getLgt3GDataStatus(I)Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v0

    .line 245
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_14
    :goto_14
    return-object v0

    .line 241
    :catch_15
    move-exception v2

    goto :goto_14
.end method

.method private static getLGT_OZ_STARTPAGE()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    const-string v1, ""

    .line 252
    .local v1, startpage:Ljava/lang/String;
    :try_start_2
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 253
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 254
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getLgtOzStartPage()Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_14

    move-result-object v1

    .line 260
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    :goto_13
    return-object v1

    .line 256
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method private static getNID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string/jumbo v0, "ril.cdma.nid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkTime()Ljava/lang/String;
    .registers 11

    .prologue
    .line 270
    const-string v0, ""

    .line 272
    .local v0, nitzString:Ljava/lang/String;
    :try_start_2
    const-string/jumbo v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 273
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_b8

    .line 274
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getTimeInfo()Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_93

    move-result-object v0

    move-object v4, v0

    .line 282
    .end local v0           #nitzString:Ljava/lang/String;
    .local v4, nitzString:Ljava/lang/String;
    :goto_14
    const/4 v6, 0x0

    .line 283
    .local v6, ret:Ljava/lang/String;
    const-string v0, "[/:,+-]"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, nitzSubs:[Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_1c
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v7, v0, 0x7d0

    .line 287
    .local v7, year:I
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 288
    .local v3, month:I
    const/4 v0, 0x2

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, date:I
    const/4 v1, 0x3

    aget-object v1, v5, v1

    .end local v1           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 290
    .local v1, hour:I
    const/4 v2, 0x4

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 291
    .local v2, minute:I
    const/4 v8, 0x5

    aget-object v5, v5, v8

    .end local v5           #nitzSubs:[Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 298
    .local v5, second:I
    const-string v8, "%04d%02d%02dT%02d%02d%02d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .end local v7           #year:I
    aput-object v7, v9, v10

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v3           #month:I
    aput-object v3, v9, v7

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #date:I
    aput-object v0, v9, v3

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #hour:I
    aput-object v1, v9, v0

    const/4 v0, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_79} :catch_9d

    move-result-object v0

    .line 302
    .end local v2           #minute:I
    .end local v5           #second:I
    .end local v6           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    :goto_7a
    const-string v1, "HandsetProperty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkTime() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0           #ret:Ljava/lang/String;
    .end local v4           #nitzString:Ljava/lang/String;
    :goto_92
    return-object v0

    .line 276
    .local v0, nitzString:Ljava/lang/String;
    :catch_93
    move-exception v0

    .line 278
    .local v0, ex:Landroid/os/RemoteException;
    const-string v0, "HandsetProperty"

    .end local v0           #ex:Landroid/os/RemoteException;
    const-string v1, "getNetworkTime()-RemoteException :"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    goto :goto_92

    .line 299
    .restart local v4       #nitzString:Ljava/lang/String;
    .restart local v6       #ret:Ljava/lang/String;
    :catch_9d
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v0, "HandsetProperty"

    .end local v0           #e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .end local v6           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_7a

    .end local v4           #nitzString:Ljava/lang/String;
    .local v0, nitzString:Ljava/lang/String;
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_b8
    move-object v4, v0

    .end local v0           #nitzString:Ljava/lang/String;
    .restart local v4       #nitzString:Ljava/lang/String;
    goto/16 :goto_14
.end method

.method private static getPREFERRED_DATA_NETWORK_MODE()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    const-string v0, ""

    .line 223
    .local v0, mode:Ljava/lang/String;
    :try_start_2
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 224
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 225
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getLgt3GDataStatus(I)Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v0

    .line 230
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_14
    :goto_14
    return-object v0

    .line 227
    :catch_15
    move-exception v2

    goto :goto_14
.end method

.method private static getPROCESSOR_INFO()Ljava/lang/String;
    .registers 1

    .prologue
    .line 201
    const-string v0, "CORTEX A8/1GHz"

    return-object v0
.end method

.method private static getROAMING_AREA()Ljava/lang/String;
    .registers 6

    .prologue
    .line 158
    const/4 v1, 0x1

    .line 161
    .local v1, nCurrSVC:I
    :try_start_1
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 162
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_12

    .line 163
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v1

    .line 165
    :cond_12
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v2

    .line 166
    .local v2, network_type:I
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isEvdoOnly()Z

    move-result v0

    .line 167
    .local v0, evdo_only:Z
    const/4 v4, 0x6

    if-ne v2, v4, :cond_23

    if-eqz v0, :cond_23

    .line 168
    const-string v4, "0"
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_21} :catch_22

    .line 178
    .end local v0           #evdo_only:Z
    .end local v2           #network_type:I
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_21
    return-object v4

    .line 170
    :catch_22
    move-exception v4

    .line 175
    :cond_23
    if-eqz v1, :cond_28

    .line 176
    const-string v4, "-1"

    goto :goto_21

    .line 178
    :cond_28
    const-string/jumbo v4, "ril.cdma.roamingarea"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_21
.end method

.method private static getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string/jumbo v0, "ril.cdma.sid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
