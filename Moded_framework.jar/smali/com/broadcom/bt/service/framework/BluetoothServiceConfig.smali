.class public Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.super Ljava/lang/Object;
.source "BluetoothServiceConfig.java"


# static fields
.field public static final BLUETOOTH_HID_SERVICE_ENABLED:Z = true

.field public static final D:Z = true

.field public static final DISABLE_SCAN_ON_PHONECALL:Z = false

.field public static final HF_AUTOCONNECT_BITMAP_PROPERTY:Ljava/lang/String; = "service.brcm.bt.autoconnect"

.field public static final HID_TEST_MODE_ENABLED:Z = true

.field private static IS_STANDALONE_PROCESS:Z = false

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field static final SERVICES:[Ljava/lang/String; = null

.field static final SERVICES_AVAILABLE:[Z = null

.field static final SERVICES_STARTUP_ENABLED:[Z = null

.field public static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BluetoothServiceConfig"

.field public static final V:Z = true

.field public static dualhf_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 69
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "bluetooth_bpp_service"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_fm_receiver_service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_map"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth_avrcp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bluetooth_flick"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 99
    new-array v0, v4, [Z

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 124
    new-array v0, v4, [Z

    fill-array-data v0, :array_66

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    .line 185
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 190
    const-string v0, "com.brcm.bt.dualhf"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 191
    return-void

    .line 99
    nop

    :array_5c
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 124
    :array_66
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccessRequestEnabled()Z
    .registers 3

    .prologue
    .line 286
    const-string/jumbo v1, "service.brcm.bt.secure_mode"

    const-string/jumbo v2, "property not found"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, mSecureModeProperty:Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static isBluetoothSupported()Z
    .registers 1

    .prologue
    .line 216
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isScanAllowed(Landroid/content/Context;)Z
    .registers 2
    .parameter "ctx"

    .prologue
    .line 260
    if-eqz p0, :cond_2

    .line 273
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "BluetoothServiceConfig"

    .line 227
    if-eqz p0, :cond_76

    if-eqz p1, :cond_76

    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, result_bt:I
    const-string v3, "BluetoothServiceConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceEnabled result_bt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 239
    .local v2, result_fm:I
    const-string v3, "BluetoothServiceConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceEnabled result_fm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eq v1, v6, :cond_74

    if-ne v2, v6, :cond_76

    :cond_74
    move v3, v6

    .line 251
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #result_bt:I
    .end local v2           #result_fm:I
    :goto_75
    return v3

    :cond_76
    move v3, v5

    goto :goto_75
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .registers 3
    .parameter "svcName"

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 202
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 203
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v1, v0

    .line 206
    :goto_14
    return v1

    .line 201
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static isSoftOnOffEnabled()Z
    .registers 3

    .prologue
    .line 277
    const-string/jumbo v1, "service.brcm.bt.soft_onoff"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, softOnOff:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static final isStandaloneProcess()Z
    .registers 4

    .prologue
    .line 293
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    if-nez v1, :cond_15

    const-string v1, "1"

    const-string/jumbo v2, "service.brcm.bt.is_sta"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_15
    const/4 v1, 0x1

    move v0, v1

    .line 295
    .local v0, isStandalone:Z
    :goto_17
    return v0

    .line 293
    .end local v0           #isStandalone:Z
    :cond_18
    const/4 v1, 0x0

    move v0, v1

    goto :goto_17
.end method
