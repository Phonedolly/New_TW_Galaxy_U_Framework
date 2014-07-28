.class public Lcom/sec/android/internal/ims/IMSService;
.super Lcom/sec/android/internal/ims/IIMSService$Stub;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IMSService$13;,
        Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "IMS/IMSService"

.field public static final REG_AVAIL_INTENT_ACTION:Ljava/lang/String; = "com.android.server.status.sip_reg_available"

.field public static final REG_UNAVAIL_INTENT_ACTION:Ljava/lang/String; = "com.android.server.status.sip_reg_unavailable"

.field public static final SERVICE_KEY:Ljava/lang/String; = "sIMSManager"

.field private static SISOTest:Z = false

.field private static final VT_BATTERY_WARNING_LEVEL:I = 0xa

.field private static glocalIp:Ljava/lang/String; = null

.field private static imsService:Lcom/sec/android/internal/ims/IMSService; = null

.field private static isDNSQueryInProgss:Z = false

.field private static isImsInited:Z = false

.field private static isImsRegistered:Z = false

.field private static isRegAvailRecvd:Z = false

.field private static startUsingHiPri:Z = false

.field public static final svcNotification:Ljava/lang/String; = "notification"


# instance fields
.field public AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

.field public HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final batteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final flightModeReceiver:Landroid/content/BroadcastReceiver;

.field private hiddenMenu_filter:Landroid/content/IntentFilter;

.field public imsCallId:I

.field imsListener:Lcom/sec/android/ims/IMSEventListener;

.field info:Landroid/net/NetworkInfo;

.field public isImsForbidden:Z

.field public isWifiEnabled:Z

.field private mCallId:I

.field private mContext:Landroid/content/Context;

.field private mNearSurface:Landroid/view/Surface;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

.field private mSurface:Landroid/view/Surface;

.field private myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

.field notificationManager:Landroid/app/NotificationManager;

.field notificationRef:I

.field private regEventReceiver:Landroid/content/BroadcastReceiver;

.field private final roamingAreaReceiver:Landroid/content/BroadcastReceiver;

.field public vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

.field vtNotification:Landroid/app/Notification;

.field private wifiEventReceiver:Landroid/content/BroadcastReceiver;

.field wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    .line 114
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    .line 130
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 131
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    .line 132
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z

    .line 133
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z

    .line 134
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 135
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    .line 139
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->vtNotification:Landroid/app/Notification;

    .line 119
    const/16 v1, 0x6f

    iput v1, p0, Lcom/sec/android/internal/ims/IMSService;->notificationRef:I

    .line 124
    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 144
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    .line 145
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 155
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;-><init>(Lcom/sec/android/internal/ims/IMSService;Lcom/sec/android/internal/ims/IMSService$1;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    .line 258
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$1;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$1;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->roamingAreaReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$2;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 366
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$3;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$3;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->batteryChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$4;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$4;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->flightModeReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$5;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$5;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 971
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$6;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$6;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->wifiEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1511
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$8;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$8;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->regEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1533
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$9;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$9;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1716
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$11;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$11;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

    .line 1781
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$12;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$12;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->SetNativeContex(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->setHiddenMenuDataAlwaysOnTrue()V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 169
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->initVTErrorTableUpdateListener(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->ImsInitAlwaysOnSMSRecvListener(Landroid/content/Context;)V

    .line 179
    const-string v1, "0"

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a3

    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 181
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 182
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 183
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 187
    :cond_a3
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcNwkEvtInit(Landroid/content/Context;)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->notificationManager:Landroid/app/NotificationManager;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, newFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForBatteryLowEvent()V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForFlightModeEvent()V

    .line 204
    const-string v1, "IMS/IMSService"

    const-string v2, "Inside registerForRoamingArea"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForRoamingArea()V

    .line 207
    const-string/jumbo v1, "stack init done"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private ImsSvcEvdoInit(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const-string v5, "IMS/IMSService"

    .line 1459
    const-string v3, "IMS/IMSService"

    const-string v3, "ImsSvcEvdoInit called"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :try_start_9
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1467
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1468
    .local v1, intentConnectivity:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.status.sip_reg_available"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    const-string v3, "com.android.server.status.sip_reg_unavailable"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1470
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->regEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1472
    const-string v3, "Registered for radio events with ConnectivityManager"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_38

    .line 1477
    .end local v1           #intentConnectivity:Landroid/content/IntentFilter;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :goto_30
    const-string v3, "IMS/IMSService"

    const-string v3, "ImsSvcEvdoInit exiting"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    return-void

    .line 1473
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 1474
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method private ImsSvcWiFiMgrEvtInit(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const-string v3, "IMS/IMSService"

    .line 951
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 954
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 956
    .local v0, wifi_filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 958
    const-string v1, "IMS/IMSService"

    const-string v1, "WIFI ENABLED"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_22
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->wifiEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 969
    return-void

    .line 961
    :cond_34
    const-string v1, "IMS/IMSService"

    const-string v1, "WIFI DISABLED"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method static synthetic access$100(Lcom/sec/android/internal/ims/IMSService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/internal/ims/IMSService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput-boolean p0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/internal/ims/IMSService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/internal/ims/IMSService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/internal/ims/IMSService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;
    .registers 3
    .parameter "context"

    .prologue
    .line 825
    const-class v0, Lcom/sec/android/internal/ims/IMSService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    if-nez v1, :cond_e

    .line 826
    new-instance v1, Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    .line 828
    :cond_e
    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 825
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "IMS/IMSService"

    .line 427
    const-string v4, "IMS/IMSService"

    const-string v4, "handleBatteryChanged"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string/jumbo v4, "status"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 430
    .local v2, battStatus:I
    const-string/jumbo v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, battScale:I
    const-string v4, "level"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 433
    .local v0, battLevel:I
    const-string v4, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v4, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  WARNING LEVEL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-gt v0, v9, :cond_bf

    const/4 v4, 0x2

    if-eq v2, v4, :cond_bf

    .line 438
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/internal/ims/external/NativeInterface;->setBatteryState(Z)V

    .line 444
    :goto_73
    const/4 v4, 0x3

    if-ne v2, v4, :cond_be

    .line 446
    const-string v4, "health"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 447
    .local v3, batteryHealth:I
    const-string v4, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Battery Health:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v4, 0x4

    if-ne v3, v4, :cond_be

    .line 451
    sget-boolean v4, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-eqz v4, :cond_be

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 453
    const-string v4, "IMS/IMSService"

    const-string v4, "Deiniting the IMS Stack because of battery dead"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 456
    sput-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 460
    .end local v3           #batteryHealth:I
    :cond_be
    return-void

    .line 440
    :cond_bf
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->setBatteryState(Z)V

    goto :goto_73
.end method

.method private handleEVDONetworkConneted(Ljava/lang/String;)V
    .registers 13
    .parameter "nwkType"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "IMS/IMSService"

    .line 1074
    const-string v5, "IMS/IMSService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEVDONetworkConneted nwkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isImsRegistered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v5, :cond_4a

    .line 1078
    const-string v5, "IMS/IMSService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEVDONetworkConneted return! isImsForbidden = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 1164
    :goto_49
    return-void

    .line 1083
    :cond_4a
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_128

    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v5

    if-nez v5, :cond_128

    .line 1085
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v5, :cond_73

    .line 1087
    const-string v5, "IMS/IMSService"

    const-string v5, "===== Init IMS as INIT Flag is False...."

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 1089
    sput-boolean v9, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1090
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1094
    :cond_73
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, localIP:Ljava/lang/String;
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-eqz v5, :cond_81

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-eqz v5, :cond_87

    :cond_81
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 1098
    :cond_87
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 1099
    .local v1, domName:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1100
    .local v0, dnsFlag:I
    if-ne v0, v9, :cond_d3

    .line 1102
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v5

    if-eq v5, v9, :cond_100

    .line 1116
    :try_start_9b
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1117
    .local v4, pcscfAddr:Ljava/net/InetAddress;
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v5, :cond_bf

    .line 1118
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ip address string = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_bf
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 1121
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_d3} :catch_ef

    .line 1140
    .end local v4           #pcscfAddr:Ljava/net/InetAddress;
    :cond_d3
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v5

    if-ne v5, v9, :cond_10c

    .line 1142
    const-string v5, "IMS/IMSService"

    const-string v5, "Start IMS Register"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1144
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 1145
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 1163
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_ea
    :goto_ea
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_49

    .line 1123
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    :catch_ef
    move-exception v5

    move-object v2, v5

    .line 1125
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1126
    const-string v5, "IMS/IMSService"

    const-string v5, "DNS Query failed!!!!"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_49

    .line 1135
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_100
    const-string v5, "IMS/IMSService"

    const-string v5, "Invalid DNS name!!!!"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_49

    .line 1150
    :cond_10c
    const-string v5, "IMS/IMSService"

    const-string v5, "Received Reg_unAvailable while were in DNS query thread.."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v5, v9, :cond_ea

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-ne v5, v9, :cond_ea

    .line 1153
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_ea

    .line 1161
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_128
    const-string v5, "IMS/IMSService"

    const-string v5, "handleEVDONetworkConneted: AlwaysOn is off.."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 9
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const-string v6, "MOBILE"

    .line 1168
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, nwkType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, nwkSubType:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/internal/ims/IMSService$13;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_70

    .line 1229
    :cond_1a
    :goto_1a
    return-void

    .line 1174
    :pswitch_1b
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    if-ne v3, v5, :cond_47

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1177
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, localIP:Ljava/lang/String;
    const-string v3, "IMS/IMSService"

    const-string v4, "===== Init IMS as INIT Flag is False...."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 1180
    sput-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1181
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->setConfigParams()V

    .line 1184
    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    goto :goto_1a

    .line 1186
    .end local v0           #localIP:Ljava/lang/String;
    :cond_47
    const-string v3, "MOBILE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1188
    invoke-direct {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    goto :goto_1a

    .line 1195
    :pswitch_53
    const-string v3, "MOBILE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1198
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v3, v5, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v5, :cond_1a

    .line 1200
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_1a

    .line 1170
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method private handleRegAvailEvent()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "IMS/IMSService"

    .line 1482
    const-string v2, "IMS/IMSService"

    const-string v2, "handleRegAvailEvent: Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 1485
    const-string v2, "MOBILE"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1487
    .local v1, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1489
    :cond_25
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 1491
    :try_start_28
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/internal/ims/IMSService$7;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$7;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_36

    .line 1508
    :goto_35
    return-void

    .line 1498
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 1499
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1500
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_35

    .line 1506
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_40
    const-string v2, "IMS/IMSService"

    const-string v2, "handleRegAvailEvent:  DNS Query is in progress "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private hasService()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_12

    .line 307
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 312
    :pswitch_e
    const/4 v0, 0x1

    .line 315
    :goto_f
    return v0

    :pswitch_10
    move v0, v1

    .line 310
    goto :goto_f

    :cond_12
    move v0, v1

    .line 315
    goto :goto_f

    .line 307
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public static init1()V
    .registers 2

    .prologue
    .line 907
    new-instance v0, Lcom/sec/android/internal/ims/IMSDaemonThread;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IMSDaemonThread;-><init>()V

    .line 908
    .local v0, th:Ljava/lang/Thread;
    const-string v1, "com.sec.android.ims.IMSDaemonThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 910
    return-void
.end method

.method public static init2()V
    .registers 2

    .prologue
    .line 913
    const-string v0, "Enter init2"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 916
    const-string/jumbo v0, "sIMSManager"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 918
    const-string v0, "Exit init2"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method private initContext()V
    .registers 4

    .prologue
    .line 923
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 924
    .local v0, at:Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method private isEvdo()Z
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "ipAddr"

    .prologue
    .line 1056
    move-object v1, p1

    .line 1057
    .local v1, sIpAddr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1058
    .local v2, sNewIpAddr:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1059
    .local v0, index:I
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v3, :cond_32

    .line 1060
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIpObtainedOk() : Index =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_32
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3c

    .line 1064
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1065
    move-object v1, v2

    .line 1067
    :cond_3c
    return-object v1
.end method

.method private isRoamingAreaLGT()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 284
    const/4 v1, 0x0

    .line 287
    .local v1, isRoamingArea:Z
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_roaming_area"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_2d

    move-result v2

    if-ne v2, v4, :cond_2a

    move v1, v4

    .line 292
    :goto_11
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingAreaLGT: isRoamingArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v1

    .line 287
    :cond_2a
    const/4 v2, 0x0

    move v1, v2

    goto :goto_11

    .line 289
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 290
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1443
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1444
    const-string v0, "IMS/IMSService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_9
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 1450
    const-string v0, "Enter main"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1451
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->initProc()V

    .line 1452
    const-string v0, "Exit main"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method private registerForBatteryLowEvent()V
    .registers 4

    .prologue
    .line 464
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 465
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->batteryChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    return-void
.end method

.method private registerForFlightModeEvent()V
    .registers 4

    .prologue
    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 473
    .local v0, intentFilterFlight:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->flightModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 475
    return-void
.end method

.method private registerForRoamingArea()V
    .registers 4

    .prologue
    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, intentFilterRoaming:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->roamingAreaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method private validateIpWithRegExp(Ljava/lang/String;)Z
    .registers 4
    .parameter "iPaddress"

    .prologue
    .line 817
    const-string v1, "b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 820
    .local v0, IP_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public DisableWifi()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "IMS/IMSService"

    .line 930
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    if-nez v1, :cond_4a

    .line 932
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 934
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string v1, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DisableWifi wifi State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eq v1, v3, :cond_4a

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v1

    if-ne v3, v1, :cond_3d

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->stopHiPriNetwork()I

    .line 939
    :cond_3d
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 940
    const-string v1, "IMS/IMSService"

    const-string v1, "makeCall : Disable Wifi Forcefully"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 944
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_4a
    return-void
.end method

.method public ImsInitAlwaysOnSMSRecvListener(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1768
    const-string v0, "ImsInitAlwaysOnSMSRecvListener"

    .line 1769
    .local v0, FN_TAG:Ljava/lang/String;
    const-string v2, "FN_TAG Entering ---"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1771
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1772
    .local v1, sms_recv_filter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_18

    .line 1774
    const-string v2, "com.android.receiver.action.ALWAYS_ON_STATUS_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1777
    :cond_18
    const-string v2, "FN_TAG Exiting ---"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1778
    return-void
.end method

.method public ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 532
    const-string v0, "Inside ImsInitHiddenMenuChangeListener"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 534
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    .line 535
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.receiver.activities.PREFERENCE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 539
    const-string v0, "Broadcast Reciever registered"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public ImsSvcNwkEvtInit(Landroid/content/Context;)V
    .registers 5
    .parameter "mContext"

    .prologue
    .line 480
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 483
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcWiFiMgrEvtInit(Landroid/content/Context;)V

    .line 496
    :goto_8
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 502
    return-void

    .line 488
    :cond_19
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcEvdoInit(Landroid/content/Context;)V

    goto :goto_8
.end method

.method public ResetPreviewDisplay()V
    .registers 3

    .prologue
    .line 1274
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside ResetPreviewDisplay :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->resetPreviewDisplay()V

    .line 1276
    return-void
.end method

.method public SetCameraParams(II)V
    .registers 7
    .parameter "param"
    .parameter "value"

    .prologue
    .line 1350
    sget-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 1352
    move v0, p1

    .line 1353
    .local v0, mParam:I
    move v1, p2

    .line 1362
    .local v1, mValue:I
    const-string v2, "IMS/IMSService"

    const-string v3, "This is inside SetCameraParams : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setCameraParam(II)V

    .line 1365
    .end local v0           #mParam:I
    .end local v1           #mValue:I
    :cond_15
    return-void
.end method

.method public StartVTCall(Z)V
    .registers 2
    .parameter "callType"

    .prologue
    .line 1343
    return-void
.end method

.method public StopVTCall()V
    .registers 1

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->ResetPreviewDisplay()V

    .line 1347
    return-void
.end method

.method public acceptCall(III)V
    .registers 6
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"

    .prologue
    .line 1333
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1335
    iput p1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 1336
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside acceptCall : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->acceptVoipCall(III)Z

    .line 1339
    :cond_15
    return-void
.end method

.method public addVTNotification()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1039
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.internal.ims.vt_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "Enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1042
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1043
    return-void
.end method

.method public addVideoEventListener(Landroid/os/Handler;)V
    .registers 2
    .parameter "VTHandler"

    .prologue
    .line 1943
    invoke-static {p1}, Lcom/android/internal/telephony/voip/IMSInterface;->registerVideoEventListener(Landroid/os/Handler;)V

    .line 1944
    return-void
.end method

.method public broadcastEvent(IIIILjava/lang/String;)V
    .registers 12
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 877
    const-string v0, "Entry broadcasting event to all IMS Apps"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    .line 892
    const-string v0, "Exit broadcasting event to all IMS Apps"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public cancelVTNotification()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1048
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.internal.ims.vt_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "Enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1051
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1052
    return-void
.end method

.method public captureImage(Ljava/lang/String;II)V
    .registers 6
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "frameType"

    .prologue
    .line 1379
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1381
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureImage : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->captureImage(Ljava/lang/String;II)V

    .line 1385
    :cond_13
    return-void
.end method

.method public captureIncomingVideoFrame(Ljava/lang/String;I)V
    .registers 5
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 1368
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureIncomingVideoFrame : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void
.end method

.method public captureOutgoingVideoFrame(Ljava/lang/String;I)V
    .registers 5
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 1373
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureOutgoingVideoFrame : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void
.end method

.method public deRegisterImsOnFlightModeEnabled()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1252
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    if-ne v0, v1, :cond_15

    .line 1254
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1262
    :cond_15
    return-void
.end method

.method public endCall(I)V
    .registers 4
    .parameter "callId"

    .prologue
    .line 1322
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1324
    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    .line 1325
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    .line 1330
    :cond_11
    :goto_11
    return-void

    .line 1327
    :cond_12
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    goto :goto_11
.end method

.method public declared-synchronized getDNSQueryInProgessState()Z
    .registers 2

    .prologue
    .line 1912
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIMSRegisterState()Z
    .registers 2

    .prologue
    .line 1902
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIsIMSAutoTestEnabled()Z
    .registers 4

    .prologue
    const-string v2, "IMS/IMSService"

    .line 676
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    if-eqz v0, :cond_3e

    .line 678
    const-string v0, "IMS/IMSService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIsIMSAutoTestEnabled value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v0, "Enable"

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 681
    const-string v0, "IMS/IMSService"

    const-string v0, " getIsIMSAutoTestEnabled = true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x1

    .line 687
    :goto_36
    return v0

    .line 685
    :cond_37
    const-string v0, "IMS/IMSService"

    const-string v0, " getIsIMSAutoTestEnabled = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_3e
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "nwkType"

    .prologue
    const-string v9, "IMS/IMSService"

    .line 1674
    const/4 v5, 0x0

    .line 1675
    .local v5, nwkIntfName:Ljava/lang/String;
    const-string v6, "WIFI"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 1676
    const-string v5, "eth0"

    .line 1681
    :cond_d
    :goto_d
    :try_start_d
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 1682
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1683
    .local v4, intf:Ljava/net/NetworkInterface;
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v6, :cond_39

    .line 1684
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++++++++++NetworkInterface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_39
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1686
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1687
    .local v3, inetAddress:Ljava/net/InetAddress;
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v6, :cond_65

    .line 1688
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++++++++inetAddress :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_65
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1690
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v6, :cond_99

    .line 1691
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++++++++inetAddress IP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_99
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_a0
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_a0} :catch_b7

    move-result-object v6

    .line 1699
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_a1
    return-object v6

    .line 1677
    :cond_a2
    const-string v6, "MOBILE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b2

    const-string v6, "MOBILE_HIPRI"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1678
    :cond_b2
    const-string/jumbo v5, "ppp0"

    goto/16 :goto_d

    .line 1696
    :catch_b7
    move-exception v6

    move-object v2, v6

    .line 1697
    .local v2, ex:Ljava/net/SocketException;
    const-string v6, "IMS/IMSService"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    .end local v2           #ex:Ljava/net/SocketException;
    :cond_c2
    const/4 v6, 0x0

    goto :goto_a1
.end method

.method public declared-synchronized getRegAvailRecvdState()Z
    .registers 2

    .prologue
    .line 1932
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartUsingHiPriState()Z
    .registers 2

    .prologue
    .line 1927
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSvcState()I
    .registers 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getVOIPEnabler()Lcom/sec/android/ims/voip/IVOIPEnabler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 861
    const-string v0, "Inside IMSService -> getVOIPEnabler"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->getInstance()Lcom/sec/android/internal/ims/voip/VOIPEnabler;

    move-result-object v0

    return-object v0
.end method

.method public handleAlwaysOnChangefromSMS(Z)Z
    .registers 10
    .parameter "isAlwaysOn"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "0"

    .line 1820
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 1821
    .local v0, hOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    if-nez v0, :cond_d

    move v3, v7

    .line 1897
    :goto_c
    return v3

    .line 1824
    :cond_d
    if-ne p1, v5, :cond_a3

    .line 1826
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v3, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1831
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v3, :cond_89

    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v3

    if-nez v3, :cond_89

    .line 1833
    const-string v3, "Initing IMS after change from Cancel to Setup"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1835
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 1836
    sput-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1837
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1839
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1841
    .local v2, nwkTypeName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telephony Manager Network Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1842
    const-string v3, "CDMA - EvDo rev. A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1845
    const-string/jumbo v3, "registering after enabling in hidden app"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1846
    const-string v3, "MOBILE"

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1847
    .local v1, localIP:Ljava/lang/String;
    if-eqz v1, :cond_9d

    .line 1849
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 1850
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v3, :cond_89

    .line 1851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local IP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1862
    .end local v1           #localIP:Ljava/lang/String;
    .end local v2           #nwkTypeName:Ljava/lang/String;
    :cond_89
    :goto_89
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v4, "1"

    iput-object v4, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 1865
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    :cond_9a
    :goto_9a
    move v3, v5

    .line 1897
    goto/16 :goto_c

    .line 1855
    .restart local v1       #localIP:Ljava/lang/String;
    .restart local v2       #nwkTypeName:Ljava/lang/String;
    :cond_9d
    const-string v3, "local IP = null"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_89

    .line 1875
    .end local v1           #localIP:Ljava/lang/String;
    .end local v2           #nwkTypeName:Ljava/lang/String;
    :cond_a3
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v3, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1882
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v3, v5, :cond_bf

    .line 1884
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 1885
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1886
    sput-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1890
    :cond_bf
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v4, "0"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 1893
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    goto :goto_9a
.end method

.method public handleHiPriNWConnect()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const-string v7, "IMS/IMSService"

    .line 1564
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1565
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string/jumbo v7, "pcscf.lgtims.co.kr"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1566
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1567
    .local v6, vtIP:Ljava/lang/String;
    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v7, :cond_34

    .line 1568
    const-string v7, "IMS/IMSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===== startUsingHiPri : vtIP==>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_34
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->ipToInt(Ljava/net/InetAddress;)I

    move-result v3

    .line 1570
    .local v3, inetAddr:I
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v3}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v7

    if-ne v10, v7, :cond_78

    .line 1572
    const-string v7, "IMS/IMSService"

    const-string v8, "===== handleHiPriNWConnect : requestRouteToHost SUCCESS...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_80

    .line 1584
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #inetAddr:I
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v6           #vtIP:Ljava/lang/String;
    :goto_46
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1586
    .local v5, mWifiManager:Landroid/net/wifi/WifiManager;
    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v7, v10, :cond_77

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-ne v10, v7, :cond_77

    .line 1588
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 1589
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1590
    const/4 v7, 0x0

    sput-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1594
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1595
    .local v2, h:Landroid/os/Handler;
    new-instance v7, Lcom/sec/android/internal/ims/IMSService$10;

    invoke-direct {v7, p0}, Lcom/sec/android/internal/ims/IMSService$10;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1604
    .end local v2           #h:Landroid/os/Handler;
    :cond_77
    return-void

    .line 1576
    .end local v5           #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #inetAddr:I
    .restart local v4       #inetAddress:Ljava/net/InetAddress;
    .restart local v6       #vtIP:Ljava/lang/String;
    :cond_78
    :try_start_78
    const-string v7, "IMS/IMSService"

    const-string v8, "===== handleHiPriNWConnect : requestRouteToHost FAILED...."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_46

    .line 1579
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #inetAddr:I
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v6           #vtIP:Ljava/lang/String;
    :catch_80
    move-exception v7

    move-object v1, v7

    .line 1581
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method public handleIPChangeEvent()V
    .registers 3

    .prologue
    .line 1235
    const-string v0, "IMS/IMSService"

    const-string v1, "handleIPChangeEvent: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V

    .line 1238
    return-void
.end method

.method public initVTErrorTableUpdateListener(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 1704
    const-string v0, "initVTErrorTableUpdateListener"

    .line 1705
    .local v0, FN_TAG:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Entering ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1707
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1708
    .local v1, vt_error_update_filter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_29

    .line 1710
    const-string v2, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1711
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1713
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exiting ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public ipToInt(Ljava/net/InetAddress;)I
    .registers 6
    .parameter "inetAddress"

    .prologue
    .line 1609
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1610
    .local v1, addrBytes:[B
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1614
    .local v0, addr:I
    return v0
.end method

.method public declared-synchronized isLocalIpChanged(Ljava/lang/String;)Z
    .registers 5
    .parameter "newLocalIp"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1953
    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v0, :cond_a

    move v0, v2

    .line 1967
    :goto_8
    monitor-exit p0

    return v0

    .line 1956
    :cond_a
    if-nez p1, :cond_e

    move v0, v1

    .line 1957
    goto :goto_8

    .line 1959
    :cond_e
    :try_start_e
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1961
    const-string v0, "isLocalIpChanged: IPs are Diffrent.. Try Re-Register"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1962
    goto :goto_8

    .line 1965
    :cond_1d
    const-string v0, "isLocalIpChanged: IP is not changed from previous one"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_24

    move v0, v1

    .line 1967
    goto :goto_8

    .line 1953
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public makeCall(Ljava/lang/String;I)I
    .registers 6
    .parameter "remoteNo"
    .parameter "dialType"

    .prologue
    const/4 v2, 0x1

    .line 1299
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v2, :cond_20

    .line 1302
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 1303
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside makeCall : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->makeVoipCall(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 1305
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 1306
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 1311
    :goto_1f
    return v0

    :cond_20
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public onPowerOff()V
    .registers 3

    .prologue
    .line 1435
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1437
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside onPowerOff : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 1440
    :cond_13
    return-void
.end method

.method public printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .registers 5
    .parameter "myObject"

    .prologue
    const-string v2, "================================================="

    .line 792
    const-string v0, "================================================="

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 793
    if-eqz p1, :cond_192

    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_192

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfDnsVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfIpVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfDomainVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfPortVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefXdmDnsVal= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefXdmIpVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefAudioCodecVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefVideoCodecVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mLoopbackVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mAlwaysOnVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mEnableQosVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mVideoProfileVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mAudioFirstVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mQosAwareVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mVTDebuggingVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mAutoTestVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 811
    const-string v0, "================================================="

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 813
    :cond_192
    return-void
.end method

.method public readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .registers 5

    .prologue
    .line 748
    const-string v3, "Inside readHiddenMenuDataFromDB"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 749
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 750
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v1, 0x0

    .line 752
    .local v1, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 753
    .local v2, r1:Landroid/content/ContentResolver;
    if-eqz v0, :cond_15

    if-nez v2, :cond_17

    .line 754
    :cond_15
    const/4 v3, 0x0

    .line 776
    :goto_16
    return-object v3

    .line 756
    :cond_17
    invoke-virtual {v0, v2}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    .line 758
    if-nez v1, :cond_2c

    .line 760
    const-string v3, "The object is null this means that the DB does not have any default value"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 761
    const-string v3, "Database read failed"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 763
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v1           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 768
    .restart local v1       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 769
    if-eqz v1, :cond_36

    .line 772
    const-string v3, "Printing the DB data"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    :cond_36
    move-object v3, v1

    .line 776
    goto :goto_16
.end method

.method public register(Ljava/lang/String;)V
    .registers 7
    .parameter "ipAddr"

    .prologue
    .line 832
    const-string v3, "Inside IMSService -> register"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 834
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 836
    .local v2, telephonyMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 837
    .local v1, state:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 839
    .local v0, networkType:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register : state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v3

    if-nez v3, :cond_53

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4a

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4a

    const/16 v3, 0xc

    if-ne v0, v3, :cond_53

    .line 845
    :cond_4a
    if-eqz p1, :cond_53

    .line 846
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkEvent(Ljava/lang/String;)Z

    .line 848
    :cond_53
    return-void
.end method

.method public registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    .registers 4
    .parameter "imsListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 867
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside IMSService -> registerCallback, imsCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public removeVideoEventListener(Landroid/os/Handler;)V
    .registers 2
    .parameter "VTHandler"

    .prologue
    .line 1948
    invoke-static {p1}, Lcom/android/internal/telephony/voip/IMSInterface;->unregisterVideoEventListener(Landroid/os/Handler;)V

    .line 1949
    return-void
.end method

.method public resetRegAvailEvent()V
    .registers 2

    .prologue
    .line 856
    const-string v0, "Inside IMSService -> resetRegAvailEvent"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->ResetRegAvailEvent()V

    .line 858
    return-void
.end method

.method public sendDTMF(I)V
    .registers 4
    .parameter "dtmfChr"

    .prologue
    .line 1425
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1427
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside sendDTMF : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendDTMF(II)V

    .line 1430
    :cond_15
    return-void
.end method

.method public sendLiveVideo()V
    .registers 3

    .prologue
    .line 1398
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1400
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside sendLiveVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendLiveVideo()V

    .line 1403
    :cond_13
    return-void
.end method

.method public sendStillImage(Ljava/lang/String;I)V
    .registers 6
    .parameter "filePath"
    .parameter "imageFormat"

    .prologue
    .line 1389
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 1391
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside sendStillImage: filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "imageFormat ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendStillImage(Ljava/lang/String;I)V

    .line 1394
    :cond_2e
    return-void
.end method

.method public setConfigParams()V
    .registers 6

    .prologue
    .line 516
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 517
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v1, 0x0

    .line 519
    .local v1, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 520
    .local v3, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    .line 522
    if-nez v1, :cond_17

    .line 523
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v1           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 526
    .restart local v1       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_17
    const-string v4, "Obj not null-inside set SETCONFIGPARAMS "

    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    .line 528
    .local v2, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v2, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 529
    return-void
.end method

.method public declared-synchronized setDNSQueryInProgessState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1917
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1918
    monitor-exit p0

    return-void

    .line 1917
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHiddenMenuDataAlwaysOnTrue()V
    .registers 7

    .prologue
    .line 711
    const-string v5, "Inside setHiddenMenuDataAlwaysOnTrue"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 714
    :try_start_5
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 715
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v3, 0x0

    .line 717
    .local v3, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 721
    .local v4, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v3

    .line 722
    if-nez v3, :cond_22

    .line 724
    const-string v5, "The object is null this means that the DB does not have any default value"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 725
    const-string v5, "Database read failed"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 744
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v4           #r1:Landroid/content/ContentResolver;
    :goto_21
    return-void

    .line 732
    .restart local v0       #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .restart local v3       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .restart local v4       #r1:Landroid/content/ContentResolver;
    :cond_22
    const-string v5, "1"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 735
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    move-result v1

    .line 738
    .local v1, del:I
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_21

    .line 740
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v1           #del:I
    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v4           #r1:Landroid/content/ContentResolver;
    :catch_2e
    move-exception v5

    move-object v2, v5

    .line 741
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public declared-synchronized setIMSRegisterState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1907
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1908
    monitor-exit p0

    return-void

    .line 1907
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewDisplay(Landroid/view/Surface;III)Z
    .registers 11
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"

    .prologue
    .line 1280
    move-object v2, p1

    .line 1281
    .local v2, mSurface:Landroid/view/Surface;
    move v3, p2

    .line 1282
    .local v3, mWidth:I
    move v0, p3

    .line 1283
    .local v0, mHeight:I
    move v1, p4

    .line 1290
    .local v1, mIsNearEnd:I
    const-string v4, "IMS/IMSService"

    const-string v5, "This is inside setPreviewDisplay : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/android/internal/ims/external/NativeInterface;->setPreviewDisplay(Landroid/view/Surface;III)Z

    move-result v4

    return v4
.end method

.method public declared-synchronized setRegAvailRecvdState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1937
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1938
    monitor-exit p0

    return-void

    .line 1937
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartUsingHiPriState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1922
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1923
    monitor-exit p0

    return-void

    .line 1922
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startCamera(Landroid/view/Surface;II)V
    .registers 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1296
    return-void
.end method

.method public startHiPriNetwork()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "IMS/IMSService"

    .line 1618
    const/4 v3, -0x1

    .line 1619
    .local v3, retVal:I
    const-string v4, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startHiPriNetwork Called. startUsingHiPri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v4

    if-nez v4, :cond_93

    .line 1622
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1623
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1625
    .local v0, HiPriNW:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1627
    const-string v4, "IMS/IMSService"

    const-string/jumbo v4, "startUsingNetworkFeature is already Active - may be another application started HiPri feature"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 1653
    .end local v0           #HiPriNW:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_46
    return v4

    .line 1632
    .restart local v0       #HiPriNW:Landroid/net/NetworkInfo;
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    :cond_47
    const/4 v4, 0x0

    :try_start_48
    const-string v5, "enableHIPRI"

    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_75

    move-result v3

    .line 1637
    :goto_4e
    const-string v4, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUsingNetworkFeature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    packed-switch v3, :pswitch_data_96

    .line 1648
    const/4 v3, -0x1

    .line 1649
    const-string v4, "IMS/IMSService"

    const-string/jumbo v4, "startUsingNetworkFeature is failed = "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    move v4, v3

    .line 1651
    goto :goto_46

    .line 1633
    :catch_75
    move-exception v4

    move-object v2, v4

    .line 1634
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e

    .line 1640
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_7b
    const-string v4, "IMS/IMSService"

    const-string/jumbo v4, "startUsingNetworkFeature is already Active "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setStartUsingHiPriState(Z)V

    goto :goto_73

    .line 1644
    :pswitch_87
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setStartUsingHiPriState(Z)V

    .line 1645
    const-string v4, "IMS/IMSService"

    const-string/jumbo v4, "startUsingNetworkFeature is Success = "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .end local v0           #HiPriNW:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_93
    move v4, v7

    .line 1653
    goto :goto_46

    .line 1638
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_87
    .end packed-switch
.end method

.method public stopCamera()V
    .registers 1

    .prologue
    .line 1248
    return-void
.end method

.method public stopHiPriNetwork()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "IMS/IMSService"

    .line 1659
    const/4 v1, -0x1

    .line 1660
    .local v1, retVal:I
    const-string v2, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopHiPriNetwork Called. startUsingHiPri= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v3

    if-ne v2, v3, :cond_56

    .line 1663
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1664
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v4, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 1665
    const-string v2, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopUsingNetworkFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->setStartUsingHiPriState(Z)V

    move v2, v1

    .line 1669
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_55
    return v2

    :cond_56
    move v2, v4

    goto :goto_55
.end method

.method public stopRegAvailEvent()V
    .registers 2

    .prologue
    .line 851
    const-string v0, "Inside IMSService -> stopRegAvailEvent"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 852
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->StopRegAvailEvent()V

    .line 853
    return-void
.end method

.method public switchCamera()V
    .registers 3

    .prologue
    .line 1408
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1418
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside switchCamera : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->switchCamera()V

    .line 1421
    :cond_13
    return-void
.end method

.method public unregisterListener(Lcom/sec/android/ims/IMSEventListener;)V
    .registers 4
    .parameter "imsListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside IMSService -> unregisterCallback, imsCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    .line 904
    return-void
.end method

.method public updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .registers 4
    .parameter "myObject"

    .prologue
    .line 786
    const-string v1, "Inside updateConfigParamsToIMS"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    .line 788
    .local v0, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 789
    return-void
.end method

.method public updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .registers 3
    .parameter "myObject"

    .prologue
    .line 780
    const-string v0, "Inside updateHiddenMenuLocalCopy"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 781
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 782
    return-void
.end method
