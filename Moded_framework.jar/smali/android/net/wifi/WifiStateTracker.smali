.class public Landroid/net/wifi/WifiStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$SettingsObserver;,
        Landroid/net/wifi/WifiStateTracker$DhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;,
        Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DISCONNECT_DELAY_MSECS:I = 0x1388

.field private static final DRIVER_HUNG:I = 0x2

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_STARTED:I = 0x0

.field private static final DRIVER_STOPPED:I = 0x1

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0xc368

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0xc365

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0xc369

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc366

.field private static final EVENT_ABOUT_WPS:I = 0xc

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xa

.field private static final EVENT_DEFERRED_RECONNECT:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x9

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0xd

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x6

.field private static final EVENT_MAYBE_START_SCAN_POST_DISCONNECT:I = 0xf

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0xe

.field private static final EVENT_POLL_INTERVAL:I = 0x8

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SHOW_AP_LIST_DIALOG:I = 0x10

.field private static final EVENT_SHOW_EAP_MESSAGE_DIALOG:I = 0x11

.field private static final EVENT_SUPPLICANT_CONNECTION:I = 0x1

.field private static final EVENT_SUPPLICANT_DISCONNECT:I = 0x2

.field private static final EVENT_SUPPLICANT_STATE_CHANGED:I = 0x3

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x10802b1

.field private static final KICKSTART_SCANNING_DELAY_MSECS:I = 0x3a98

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final RECONNECT_DELAY_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field public static final SUPPL_SCAN_HANDLING_LIST_ONLY:I = 0x2

.field public static final SUPPL_SCAN_HANDLING_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DhcpHandler"

.field private static final WPS_FAIL:I = 0x2

.field private static final WPS_OVERLAP:I = 0x3

.field private static final WPS_SUCCESS:I = 0x1

.field private static final WPS_TIMEOUT:I = 0x4

.field private static final WPS_UNDEFINE:I = 0x5

.field private static final mRunStateNames:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

.field protected mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

.field private mDisconnectExpected:Z

.field private mDisconnectPending:Z

.field private mEnableRssiPolling:Z

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsHighPerfEnabled:Z

.field private mIsScanModeActive:Z

.field private mIsScanOnly:Z

.field private mLastBssid:Ljava/lang/String;

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLastSsid:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumAllowedChannels:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumSupplicantLoopIterations:I

.field private mNumSupplicantStateChanges:I

.field private mObtainingIpAddress:Z

.field private mOptimizationsDisabledRefCount:I

.field private mPasswordKeyMayBeIncorrect:Z

.field private mPowerModeRefCount:I

.field private mReconnectCount:I

.field private mReportedRunning:Z

.field private mRunState:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

.field private mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wifi/WifiManager;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 344
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Starting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 359
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 14
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v10, "dhcp."

    .line 423
    const-string v5, "WIFI"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 206
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 211
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 219
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 227
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 251
    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 254
    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 255
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 263
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 322
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 323
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 377
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    .line 382
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 387
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 425
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 426
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 427
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 428
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 429
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    .line 430
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;

    .line 433
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 434
    iput v3, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 437
    iput-object v9, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    .line 438
    iput-object v9, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    .line 440
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/WifiStateTracker$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateTracker$1;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DHCP_RENEW"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 455
    new-instance v0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    .line 456
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->register()V

    .line 458
    new-instance v0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$SettingsObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    .line 460
    const-string/jumbo v0, "wifi.interface"

    const-string v1, "eth0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 461
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 465
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 468
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 469
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v0, "DhcpHandler"

    invoke-virtual {v7, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    const-string v0, "DhcpRenew"

    invoke-virtual {v7, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 473
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->sendAlarmSignaltoDhcp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDhcpRenewAlarm(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    return v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method private cancelDisconnect()V
    .registers 2

    .prologue
    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1642
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->removeMessages(I)V

    .line 1643
    return-void
.end method

.method private checkIsBluetoothPlaying()V
    .registers 7

    .prologue
    .line 880
    const/4 v3, 0x0

    .line 881
    .local v3, isBluetoothPlaying:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    .line 883
    .local v0, connected:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 884
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 885
    const/4 v3, 0x1

    .line 889
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_21
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    .line 890
    return-void
.end method

.method private declared-synchronized checkPollTimer()V
    .registers 4

    .prologue
    .line 741
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 744
    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 746
    :cond_1e
    monitor-exit p0

    return-void

    .line 741
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkUseStaticIp()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2810
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 2811
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2813
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_9
    const-string/jumbo v3, "wifi_use_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_f} :catch_13

    move-result v3

    if-nez v3, :cond_16

    .line 2856
    :cond_12
    :goto_12
    return-void

    .line 2816
    :catch_13
    move-exception v3

    move-object v2, v3

    .line 2817
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_12

    .line 2821
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_16
    :try_start_16
    const-string/jumbo v3, "wifi_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2822
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 2823
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2827
    const-string/jumbo v3, "wifi_static_gateway"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2828
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 2829
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->gateway:I

    .line 2833
    const-string/jumbo v3, "wifi_static_netmask"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2834
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 2835
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->netmask:I

    .line 2839
    const-string/jumbo v3, "wifi_static_dns1"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2840
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 2841
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns1:I

    .line 2845
    const-string/jumbo v3, "wifi_static_dns2"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2846
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8d

    .line 2847
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_89
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_89} :catch_93

    .line 2855
    :goto_89
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    goto :goto_12

    .line 2849
    :cond_8d
    :try_start_8d
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_92
    .catch Ljava/net/UnknownHostException; {:try_start_8d .. :try_end_92} :catch_93

    goto :goto_89

    .line 2851
    .end local v0           #addr:Ljava/lang/String;
    :catch_93
    move-exception v3

    move-object v2, v3

    .line 2852
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v3, "WifiStateTracker"

    const-string v4, "checkUseStaticIp UnknownHostException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method

.method private configureInterface()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 1547
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 1548
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1549
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_1f

    .line 1550
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_1e

    .line 1551
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1552
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1567
    :cond_1e
    :goto_1e
    return-void

    .line 1556
    :cond_1f
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1557
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1558
    const/4 v0, 0x6

    .line 1559
    .local v0, event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :goto_33
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    goto :goto_1e

    .line 1561
    .end local v0           #event:I
    :cond_37
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1562
    const/4 v0, 0x7

    .line 1563
    .restart local v0       #event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private getMaxDhcpRetries()I
    .registers 4

    .prologue
    .line 2877
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .registers 6
    .parameter "newState"
    .parameter "disableInterface"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1577
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    if-eqz v0, :cond_9

    .line 1578
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1580
    :cond_9
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1581
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1582
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1583
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1585
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1586
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1587
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1588
    return-void
.end method

.method private isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z
    .registers 4
    .parameter "newSupplicantState"

    .prologue
    .line 922
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_43

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 924
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    if-eq v0, p1, :cond_35

    .line 925
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 926
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    if-eqz v0, :cond_3c

    .line 928
    const-string v0, "WifiStateTracker"

    const-string v1, "isSupplicantLooping(), will not count mNumSupplicantLoopIterations during WPS connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_33
    :goto_33
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 940
    :cond_35
    :goto_35
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4b

    const/4 v0, 0x1

    :goto_3b
    return v0

    .line 930
    :cond_3c
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    goto :goto_33

    .line 936
    :cond_43
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_35

    .line 937
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto :goto_35

    .line 940
    :cond_4b
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private removeDhcpRenewAlarm()V
    .registers 3

    .prologue
    .line 970
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 971
    const-string v0, "WifiStateTracker"

    const-string v1, "cancelDhcpRenewAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    .line 975
    :cond_19
    return-void
.end method

.method private requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V
    .registers 21
    .parameter "info"

    .prologue
    .line 1668
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->status()Ljava/lang/String;

    move-result-object v14

    .line 1669
    .local v14, reply:Ljava/lang/String;
    if-nez v14, :cond_7

    .line 1730
    :cond_6
    :goto_6
    return-void

    .line 1677
    :cond_7
    const/4 v3, 0x0

    .line 1678
    .local v3, SSID:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1679
    .local v2, BSSID:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1682
    .local v15, suppState:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1685
    .local v7, ipAddress:Ljava/lang/String;
    const/4 v12, -0x1

    .line 1686
    .local v12, netId:I
    const-string v17, "\n"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1687
    .local v10, lines:[Ljava/lang/String;
    move-object v4, v10

    .local v4, arr$:[Ljava/lang/String;
    array-length v8, v4

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_18
    if-ge v6, v8, :cond_86

    aget-object v9, v4, v6

    .line 1688
    .local v9, line:Ljava/lang/String;
    const-string v17, " *= *"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1689
    .local v13, prop:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_34

    .line 1687
    :cond_31
    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 1691
    :cond_34
    const/16 v17, 0x0

    aget-object v11, v13, v17

    .line 1692
    .local v11, name:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v16, v13, v17

    .line 1693
    .local v16, value:Ljava/lang/String;
    const-string v17, "id"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4c

    .line 1694
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_31

    .line 1695
    :cond_4c
    const-string/jumbo v17, "ssid"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5b

    .line 1696
    move-object/from16 v3, v16

    goto :goto_31

    .line 1697
    :cond_5b
    const-string v17, "bssid"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_69

    .line 1698
    move-object/from16 v2, v16

    goto :goto_31

    .line 1699
    :cond_69
    const-string/jumbo v17, "wpa_state"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_78

    .line 1700
    move-object/from16 v15, v16

    goto :goto_31

    .line 1702
    :cond_78
    const-string v17, "ip_address"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_31

    .line 1703
    move-object/from16 v7, v16

    goto :goto_31

    .line 1706
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #prop:[Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_86
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1707
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 1708
    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1711
    if-eqz v7, :cond_a5

    .line 1713
    :try_start_9a
    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V
    :try_end_a5
    .catch Ljava/net/UnknownHostException; {:try_start_9a .. :try_end_a5} :catch_c1

    .line 1728
    :cond_a5
    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v17

    sget-object v18, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    if-eqz v15, :cond_6

    .line 1729
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1714
    :catch_c1
    move-exception v17

    move-object/from16 v5, v17

    .line 1715
    .local v5, e:Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1716
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    goto :goto_a5
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V
    .registers 9
    .parameter "info"
    .parameter "polling"

    .prologue
    const/4 v5, -0x1

    const/16 v4, -0xc8

    .line 1738
    monitor-enter p0

    if-eqz p2, :cond_33

    :try_start_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssiApprox()I

    move-result v3

    move v1, v3

    .line 1739
    .local v1, newRssi:I
    :goto_b
    if-eq v1, v5, :cond_39

    if-ge v4, v1, :cond_39

    const/16 v3, 0x100

    if-ge v1, v3, :cond_39

    .line 1743
    if-lez v1, :cond_17

    add-int/lit16 v1, v1, -0x100

    .line 1744
    :cond_17
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1758
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1759
    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    if-eq v2, v3, :cond_26

    .line 1760
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendRssiChangeBroadcast(I)V

    .line 1762
    :cond_26
    iput v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1766
    .end local v2           #newSignalLevel:I
    :goto_28
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getLinkSpeed()I

    move-result v0

    .line 1767
    .local v0, newLinkSpeed:I
    if-eq v0, v5, :cond_31

    .line 1768
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_3f

    .line 1770
    :cond_31
    monitor-exit p0

    return-void

    .line 1738
    .end local v0           #newLinkSpeed:I
    .end local v1           #newRssi:I
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssi()I

    move-result v3

    move v1, v3

    goto :goto_b

    .line 1764
    .restart local v1       #newRssi:I
    :cond_39
    const/16 v3, -0xc8

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3f

    goto :goto_28

    .line 1738
    .end local v1           #newRssi:I
    :catchall_3f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private resetNotificationTimer()V
    .registers 3

    .prologue
    .line 2651
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2652
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 2653
    return-void
.end method

.method private resetSupplicantLoopState()V
    .registers 2

    .prologue
    .line 947
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 948
    return-void
.end method

.method private scheduleDisconnect()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 1634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1635
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1636
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1638
    :cond_10
    return-void
.end method

.method private sendAlarmSignaltoDhcp()Z
    .registers 8

    .prologue
    const-string v6, "WifiStateTracker"

    .line 978
    const-string v3, "dhcp.eth0.pid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, dhcpPid:Ljava/lang/String;
    const-string v3, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendAlarmSignaltoDhcp dhcpPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 984
    :try_start_29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 985
    .local v2, pId:I
    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_32} :catch_34

    .line 991
    const/4 v3, 0x1

    .end local v2           #pId:I
    :goto_33
    return v3

    .line 986
    :catch_34
    move-exception v3

    move-object v1, v3

    .line 987
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "WifiStateTracker"

    const-string/jumbo v3, "sendAlarmSignaltoDhcp Invalid pId"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v3, 0x0

    goto :goto_33
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "bssid"

    .prologue
    .line 1781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1784
    const-string/jumbo v1, "networkInfo"

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1785
    if-eqz p1, :cond_1b

    .line 1786
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    :cond_1b
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1788
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1773
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1778
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private setDhcpRenewAlarm(I)V
    .registers 10
    .parameter "leasetime"

    .prologue
    const-string v5, "WifiStateTracker"

    .line 952
    const-string v3, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDhcpRenewAlarm leasetime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v3, :cond_2b

    .line 955
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    .line 957
    :cond_2b
    if-gtz p1, :cond_36

    .line 958
    const-string v3, "WifiStateTracker"

    const-string/jumbo v3, "setDhcpRenewAlarm invalid leasetime"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :goto_35
    return-void

    .line 962
    :cond_36
    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long v1, v3, v5

    .line 964
    .local v1, renewtime_millisec:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DHCP_RENEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    .line 966
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_35
.end method

.method private declared-synchronized setPowerMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 2380
    monitor-enter p0

    packed-switch p1, :pswitch_data_32

    .line 2395
    :goto_4
    :try_start_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1c

    move-result v0

    if-eqz v0, :cond_2d

    .line 2400
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 2382
    :pswitch_15
    :try_start_15
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1c

    goto :goto_4

    .line 2380
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2385
    :pswitch_1f
    :try_start_1f
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 2386
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    if-gtz v0, :cond_13

    .line 2390
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    goto :goto_4

    .line 2399
    :cond_2d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_1c

    goto :goto_13

    .line 2380
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_15
    .end packed-switch
.end method

.method private setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 481
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 482
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 483
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 484
    return-void
.end method

.method private setSupplicantState(Ljava/lang/String;)V
    .registers 3
    .parameter "stateName"

    .prologue
    .line 496
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 498
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 499
    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 509
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 510
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 511
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 9
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 2860
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2861
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_18

    .line 2862
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_10} :catch_10

    .line 2871
    .end local v5           #parts:[Ljava/lang/String;
    :catch_10
    move-exception v6

    move-object v4, v6

    .line 2872
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2865
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    :try_start_19
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2866
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 2867
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 2868
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_37} :catch_10

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2870
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 586
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 587
    return-void
.end method

.method private wifiManagerDisableNetwork(I)Z
    .registers 6
    .parameter "networkId"

    .prologue
    const-string v3, "WifiStateTracker"

    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, disabledNetwork:Z
    if-ltz p1, :cond_25

    .line 1530
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 1532
    if-eqz v0, :cond_25

    .line 1533
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_25
    if-nez v0, :cond_3f

    .line 1539
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disable network: invalid network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_3f
    return v0
.end method


# virtual methods
.method public declared-synchronized addNetwork()I
    .registers 3

    .prologue
    .line 2036
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2037
    const/4 v0, -0x1

    .line 2039
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2036
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToBlacklist(Ljava/lang/String;)Z
    .registers 4
    .parameter "bssid"

    .prologue
    .line 2121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2122
    const/4 v0, 0x0

    .line 2124
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2121
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBlacklist()Z
    .registers 3

    .prologue
    .line 2133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2134
    const/4 v0, 0x0

    .line 2136
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2133
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeSupplicantConnection()V
    .registers 2

    .prologue
    .line 1933
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1934
    monitor-exit p0

    return-void

    .line 1933
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectToSupplicant()Z
    .registers 2

    .prologue
    .line 1926
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 2094
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_18

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2095
    const/4 v0, 0x0

    .line 2098
    :goto_b
    monitor-exit p0

    return v0

    .line 2097
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2098
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_b

    .line 2094
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .registers 3

    .prologue
    .line 2012
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2013
    :cond_10
    const/4 v0, 0x0

    .line 2015
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2012
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 6

    .prologue
    const/4 v2, 0x3

    .line 1830
    monitor-enter p0

    const/4 v0, 0x1

    .line 1831
    .local v0, ret:Z
    :try_start_3
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-eq v1, v2, :cond_24

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    .line 1833
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1835
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_26

    .line 1836
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    move-result v0

    .line 1840
    :goto_21
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2b

    .line 1842
    :cond_24
    monitor-exit p0

    return v0

    .line 1838
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    move-result v0

    goto :goto_21

    .line 1830
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableAllNetworks(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2076
    .local p1, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    .line 2085
    :cond_a
    monitor-exit p0

    return-void

    .line 2079
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2080
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2081
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 2082
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2e

    goto :goto_16

    .line 2076
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 2063
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2064
    const/4 v0, 0x0

    .line 2067
    :goto_b
    monitor-exit p0

    return v0

    .line 2066
    :cond_d
    if-eqz p2, :cond_15

    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2067
    :cond_15
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1a

    move-result v0

    goto :goto_b

    .line 2063
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRssiPolling(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 893
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eq v0, p1, :cond_9

    .line 894
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    .line 895
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 897
    :cond_9
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLinkSpeed()I
    .registers 3

    .prologue
    .line 2230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2231
    :cond_10
    const/4 v0, -0x1

    .line 2233
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2230
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2242
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 2243
    const/4 v0, 0x0

    .line 2245
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 2242
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "netId"
    .parameter "name"

    .prologue
    .line 2159
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2160
    const/4 v0, 0x0

    .line 2162
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 2159
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumAllowedChannels()I
    .registers 3

    .prologue
    .line 2447
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2448
    :cond_10
    const/4 v0, -0x1

    .line 2450
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getNumAllowedChannelsCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2447
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPowerMode()I
    .registers 3

    .prologue
    .line 2354
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 2355
    const/4 v0, -0x1

    .line 2357
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2354
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssi()I
    .registers 3

    .prologue
    .line 2206
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2207
    :cond_10
    const/4 v0, -0x1

    .line 2209
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2206
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssiApprox()I
    .registers 3

    .prologue
    .line 2218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2219
    :cond_10
    const/4 v0, -0x1

    .line 2221
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2218
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1650
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 535
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public getWifiState()I
    .registers 2

    .prologue
    .line 1855
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 29
    .parameter "msg"

    .prologue
    .line 999
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_94e

    .line 1525
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 1002
    :pswitch_a
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_ABOUT_WPS: arg1 ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 1004
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1005
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.GET_WPS_EVENT"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v12, intent:Landroid/content/Intent;
    const-string/jumbo v23, "wps_event"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 1014
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_64
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 1020
    :pswitch_7b
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1022
    monitor-enter p0

    .line 1023
    const/16 v23, 0x0

    :try_start_86
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1024
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v13

    .line 1025
    .local v13, macaddr:Ljava/lang/String;
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_1d4

    .line 1026
    if-eqz v13, :cond_a0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1030
    :cond_a0
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    .line 1032
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    .line 1036
    new-instance v7, Landroid/os/HandlerThread;

    const-string v23, "DHCP Handler Thread"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v7, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1038
    new-instance v23, Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 1039
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    .line 1040
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    .line 1041
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 1042
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 1043
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 1044
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1045
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1047
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v20

    .line 1050
    .local v20, supplState:Landroid/net/wifi/SupplicantState;
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Connection to supplicant established, state="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const v23, 0xc369

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1062
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_169

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1065
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1067
    :cond_169
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_191

    .line 1068
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v23, "connected"

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1072
    .end local v12           #intent:Landroid/content/Intent;
    :cond_191
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1d7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d7

    .line 1073
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1082
    :goto_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->initializeMulticastFiltering()Z

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-nez v23, :cond_1cc

    .line 1085
    new-instance v23, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1087
    :cond_1cc
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkIsBluetoothPlaying()V

    .line 1090
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    goto/16 :goto_9

    .line 1025
    .end local v7           #dhcpThread:Landroid/os/HandlerThread;
    .end local v13           #macaddr:Ljava/lang/String;
    .end local v20           #supplState:Landroid/net/wifi/SupplicantState;
    :catchall_1d4
    move-exception v23

    :try_start_1d5
    monitor-exit p0
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    throw v23

    .line 1075
    .restart local v7       #dhcpThread:Landroid/os/HandlerThread;
    .restart local v13       #macaddr:Ljava/lang/String;
    .restart local v20       #supplState:Landroid/net/wifi/SupplicantState;
    :cond_1d7
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1aa

    .line 1094
    .end local v7           #dhcpThread:Landroid/os/HandlerThread;
    .end local v13           #macaddr:Ljava/lang/String;
    .end local v20           #supplState:Landroid/net/wifi/SupplicantState;
    :pswitch_1e3
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1095
    monitor-enter p0

    .line 1096
    const/16 v23, 0x0

    :try_start_1ee
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1097
    monitor-exit p0
    :try_end_1f6
    .catchall {:try_start_1ee .. :try_end_1f6} :catchall_2c1

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2c4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    if-eqz v23, :cond_2c4

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 1100
    .local v8, died:Z
    :goto_218
    if-eqz v8, :cond_2ca

    .line 1101
    const-string v23, "WifiStateTracker"

    const-string v24, "Supplicant died unexpectedly"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :goto_221
    const v23, 0xc369

    if-eqz v8, :cond_2d3

    const/16 v24, 0x2

    :goto_228
    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->closeSupplicantConnection()V

    .line 1112
    if-eqz v8, :cond_239

    .line 1113
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1116
    :cond_239
    monitor-enter p0

    .line 1117
    :try_start_23a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_257

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Looper;->quit()V

    .line 1119
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 1121
    :cond_257
    monitor-exit p0
    :try_end_258
    .catchall {:try_start_23a .. :try_end_258} :catchall_2d7

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1123
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_290

    .line 1124
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v23, "connected"

    const/16 v24, 0x0

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1128
    .end local v12           #intent:Landroid/content/Intent;
    :cond_290
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1129
    sget-object v23, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1130
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1131
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1132
    if-eqz v8, :cond_9

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_9

    .line 1097
    .end local v8           #died:Z
    :catchall_2c1
    move-exception v23

    :try_start_2c2
    monitor-exit p0
    :try_end_2c3
    .catchall {:try_start_2c2 .. :try_end_2c3} :catchall_2c1

    throw v23

    .line 1098
    :cond_2c4
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_218

    .line 1103
    .restart local v8       #died:Z
    :cond_2ca
    const-string v23, "WifiStateTracker"

    const-string v24, "Connection to supplicant lost"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_221

    .line 1109
    :cond_2d3
    const/16 v24, 0x0

    goto/16 :goto_228

    .line 1121
    :catchall_2d7
    move-exception v23

    :try_start_2d8
    monitor-exit p0
    :try_end_2d9
    .catchall {:try_start_2d8 .. :try_end_2d9} :catchall_2d7

    throw v23

    .line 1140
    .end local v8           #died:Z
    :pswitch_2da
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1141
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_9

    .line 1146
    :pswitch_2f7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 1147
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    .line 1149
    .local v21, supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v16, v0

    .line 1150
    .local v16, newState:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 1155
    .local v6, currentState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v23

    and-int/lit8 v10, v23, 0x3f

    .line 1156
    .local v10, eventLogParam:I
    const v23, 0xc366

    move/from16 v0, v23

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1158
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Changing supplicant state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ==> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    move v14, v0

    .line 1168
    .local v14, networkId:I
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_374

    .line 1169
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1175
    :cond_374
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_384

    sget-object v23, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3a5

    .line 1177
    :cond_384
    const/16 v23, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1186
    :cond_3a5
    const/4 v11, 0x0

    .line 1187
    .local v11, failedToAuthenticate:Z
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3b3

    .line 1188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    move v11, v0

    .line 1190
    :cond_3b3
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 1196
    const/4 v9, 0x0

    .line 1197
    .local v9, disabledNetwork:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z

    move-result v23

    if-eqz v23, :cond_3d4

    .line 1199
    const-string v23, "WifiStateTracker"

    const-string v24, "Stop WPA supplicant loop and disable network"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    move-result v9

    .line 1205
    :cond_3d4
    if-eqz v9, :cond_3db

    .line 1209
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto/16 :goto_9

    .line 1210
    :cond_3db
    move-object/from16 v0, v16

    move-object v1, v6

    if-ne v0, v1, :cond_3ee

    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1212
    :cond_3ee
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1213
    sget-object v23, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4ed

    .line 1215
    const/16 v23, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 1216
    .local v17, reconnectMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_425

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4bc

    .line 1217
    :cond_425
    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1221
    .local v15, newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :goto_427
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1229
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4c0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_4c0

    const/16 v23, -0x1

    move v0, v14

    move/from16 v1, v23

    if-eq v0, v1, :cond_4c0

    .line 1230
    const-wide/16 v23, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1257
    .end local v15           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #reconnectMsg:Landroid/os/Message;
    :cond_459
    :goto_459
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1258
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1259
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v23, 0x3000

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1261
    const-string/jumbo v23, "newState"

    move-object v0, v12

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1262
    if-eqz v11, :cond_4ae

    .line 1263
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to authenticate, disabling network "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    .line 1265
    const-string/jumbo v23, "supplicantError"

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1269
    :cond_4ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 1219
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v17       #reconnectMsg:Landroid/os/Message;
    :cond_4bc
    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .restart local v15       #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    goto/16 :goto_427

    .line 1231
    :cond_4c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4d2

    .line 1232
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    goto :goto_459

    .line 1233
    :cond_4d2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_459

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_459

    .line 1234
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_459

    .line 1236
    .end local v15           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #reconnectMsg:Landroid/os/Message;
    :cond_4ed
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_51f

    .line 1237
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v23

    if-nez v23, :cond_50b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_51a

    .line 1239
    :cond_50b
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_459

    .line 1241
    :cond_51a
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_459

    .line 1243
    :cond_51f
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_459

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v23, v0

    if-nez v23, :cond_459

    .line 1248
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v6

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_556

    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_459

    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_459

    sget-object v23, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_459

    sget-object v23, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_459

    .line 1253
    :cond_556
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_459

    .line 1285
    .end local v6           #currentState:Landroid/net/wifi/SupplicantState;
    .end local v9           #disabledNetwork:Z
    .end local v10           #eventLogParam:I
    .end local v11           #failedToAuthenticate:Z
    .end local v14           #networkId:I
    .end local v16           #newState:Landroid/net/wifi/SupplicantState;
    .end local v21           #supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    :pswitch_563
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    .line 1291
    .local v18, result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v23

    and-int/lit8 v10, v23, 0x3f

    .line 1292
    .restart local v10       #eventLogParam:I
    const v23, 0xc365

    move/from16 v0, v23

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1294
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "New network state is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5af

    .line 1300
    const-string v23, "WifiStateTracker"

    const-string v24, "Dropping event in scan-only mode"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1303
    :cond_5af
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5c5

    .line 1309
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 1319
    :cond_5c5
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5ed

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5e8

    .line 1321
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    .line 1324
    :cond_5e8
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->removeDhcpRenewAlarm()V

    goto/16 :goto_9

    .line 1328
    :cond_5ed
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1329
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_618

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_625

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v23, v0

    if-nez v23, :cond_625

    .line 1331
    :cond_618
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1334
    :cond_625
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6ab

    .line 1339
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v22, v0

    .line 1341
    .local v22, wasDisconnectPending:Z
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1347
    if-eqz v22, :cond_66f

    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 1349
    .local v19, saveState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1350
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1353
    .end local v19           #saveState:Landroid/net/NetworkInfo$DetailedState;
    :cond_66f
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1354
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1356
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 1357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6be

    .line 1358
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1363
    .end local v22           #wasDisconnectPending:Z
    :cond_6ab
    :goto_6ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1360
    .restart local v22       #wasDisconnectPending:Z
    :cond_6be
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_6ab

    .line 1367
    .end local v10           #eventLogParam:I
    .end local v18           #result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    .end local v22           #wasDisconnectPending:Z
    :pswitch_6c8
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_6de

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1370
    :cond_6de
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->sendScanResultsAvailable()V

    .line 1375
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setScanMode(Z)Z

    goto/16 :goto_9

    .line 1379
    :pswitch_6ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1381
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    goto/16 :goto_9

    .line 1386
    :pswitch_714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1387
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_9

    .line 1396
    :pswitch_735
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7b2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v5, v23

    .line 1401
    .local v5, BSSID:Ljava/lang/String;
    :goto_749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMaxDhcpRetries()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7ad

    .line 1404
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed reconnect count: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Disabling "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1409
    :cond_7ad
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_9

    .line 1396
    .end local v5           #BSSID:Ljava/lang/String;
    :cond_7b2
    const/16 v23, 0x0

    move-object/from16 v5, v23

    goto :goto_749

    .line 1419
    :pswitch_7b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1422
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    .line 1423
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1424
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1426
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_878

    .line 1428
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1434
    :goto_82a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v23, v0

    if-nez v23, :cond_850

    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IP configuration: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_850
    const v23, 0xc368

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v23, v0

    if-nez v23, :cond_873

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/DhcpInfo;->leaseDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDhcpRenewAlarm(I)V

    .line 1447
    :cond_873
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    goto/16 :goto_9

    .line 1431
    :cond_878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1432
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_82a

    .line 1451
    :pswitch_88e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1455
    const v23, 0xc368

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1456
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1458
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1459
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    goto/16 :goto_9

    .line 1468
    :pswitch_8c8
    const v23, 0xc367

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1470
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_972

    .line 1502
    :goto_8dd
    :pswitch_8dd
    monitor-enter p0

    .line 1503
    const/16 v23, 0x0

    :try_start_8e0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1504
    monitor-exit p0

    goto/16 :goto_9

    :catchall_8ea
    move-exception v23

    monitor-exit p0
    :try_end_8ec
    .catchall {:try_start_8e0 .. :try_end_8ec} :catchall_8ea

    throw v23

    .line 1477
    :pswitch_8ed
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    .line 1478
    monitor-enter p0

    .line 1479
    :try_start_8f1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v13

    .line 1480
    .restart local v13       #macaddr:Ljava/lang/String;
    if-eqz v13, :cond_903

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1483
    :cond_903
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_91b

    .line 1485
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    .line 1491
    :goto_916
    monitor-exit p0

    goto :goto_8dd

    .end local v13           #macaddr:Ljava/lang/String;
    :catchall_918
    move-exception v23

    monitor-exit p0
    :try_end_91a
    .catchall {:try_start_8f1 .. :try_end_91a} :catchall_918

    throw v23

    .line 1489
    .restart local v13       #macaddr:Ljava/lang/String;
    :cond_91b
    const/16 v23, 0x1

    :try_start_91d
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z
    :try_end_924
    .catchall {:try_start_91d .. :try_end_924} :catchall_918

    goto :goto_916

    .line 1494
    .end local v13           #macaddr:Ljava/lang/String;
    :pswitch_925
    const-string v23, "WifiStateTracker"

    const-string v24, "Wifi Driver reports HUNG - reloading."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_8dd

    .line 1508
    :pswitch_943
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    goto/16 :goto_9

    .line 999
    nop

    :pswitch_data_94e
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_1e3
        :pswitch_2f7
        :pswitch_563
        :pswitch_6c8
        :pswitch_7b7
        :pswitch_88e
        :pswitch_6ec
        :pswitch_9
        :pswitch_714
        :pswitch_735
        :pswitch_a
        :pswitch_8c8
        :pswitch_943
        :pswitch_2da
        :pswitch_64
    .end packed-switch

    .line 1470
    :pswitch_data_972
    .packed-switch 0x0
        :pswitch_8ed
        :pswitch_8dd
        :pswitch_925
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public interpretScanResultsAvailable()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2536
    iget-boolean v6, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v6, :cond_7

    .line 2574
    :cond_6
    :goto_6
    return-void

    .line 2538
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2540
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 2541
    .local v5, state:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_17

    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_48

    .line 2545
    :cond_17
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 2546
    .local v4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_48

    .line 2547
    const/4 v2, 0x0

    .line 2548
    .local v2, numOpenNetworks:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v9

    .local v0, i:I
    :goto_24
    if-ltz v0, :cond_39

    .line 2549
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 2551
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2552
    add-int/lit8 v2, v2, 0x1

    .line 2548
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 2556
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_39
    if-lez v2, :cond_48

    .line 2557
    iget v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_6

    .line 2565
    invoke-virtual {p0, v9, v2, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_6

    .line 2573
    .end local v0           #i:I
    .end local v2           #numOpenNetworks:I
    .end local v4           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_48
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_6
.end method

.method public isAnyNetworkDisabled()Z
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 3

    .prologue
    .line 567
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 568
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1c

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1c

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v1

    if-nez v1, :cond_1c

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    monitor-exit p0

    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1a

    .line 567
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public declared-synchronized isDriverStopped()Z
    .registers 3

    .prologue
    .line 757
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listNetworks()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2145
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2146
    const/4 v0, 0x0

    .line 2148
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 2145
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDriver()Z
    .registers 2

    .prologue
    .line 1888
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyDriverHung()V
    .registers 4

    .prologue
    .line 733
    const/16 v0, 0xd

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 734
    return-void
.end method

.method notifyDriverStarted()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 686
    const/16 v0, 0xd

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 687
    return-void
.end method

.method notifyDriverStopped()V
    .registers 4

    .prologue
    .line 674
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 677
    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 678
    return-void
.end method

.method notifyGetWpsEvent(Ljava/lang/String;)V
    .registers 6
    .parameter "wpsEvent"

    .prologue
    .line 710
    const/4 v0, 0x5

    .line 711
    .local v0, arg1:I
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyGetWpsEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string/jumbo v1, "wps_success"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 713
    const/4 v0, 0x1

    .line 724
    :cond_24
    :goto_24
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 725
    return-void

    .line 714
    :cond_2f
    const-string/jumbo v1, "wps_fail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 715
    const/4 v0, 0x2

    goto :goto_24

    .line 716
    :cond_3a
    const-string/jumbo v1, "wps_overlap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 717
    const/4 v0, 0x3

    goto :goto_24

    .line 718
    :cond_45
    const-string/jumbo v1, "wps_timeout"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 719
    const/4 v0, 0x4

    goto :goto_24

    .line 720
    :cond_50
    const-string/jumbo v1, "wps_not_defined"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 721
    const/4 v0, 0x5

    goto :goto_24
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 611
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 612
    return-void
.end method

.method notifyScanResultsAvailable()V
    .registers 2

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 659
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 660
    return-void
.end method

.method notifyShowApListDialog()V
    .registers 2

    .prologue
    .line 691
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 692
    return-void
.end method

.method notifyShowEapMessageDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 696
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyShowEapMessageDialog, message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/16 v0, 0x11

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 699
    return-void
.end method

.method notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .registers 7
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    .line 629
    const/4 v1, 0x3

    new-instance v2, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;-><init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 632
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 633
    return-void
.end method

.method notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .registers 7
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    .line 646
    const/4 v1, 0x4

    new-instance v2, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 650
    return-void
.end method

.method notifySupplicantConnection()V
    .registers 2

    .prologue
    .line 619
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 620
    return-void
.end method

.method notifySupplicantLost()V
    .registers 2

    .prologue
    .line 667
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 668
    return-void
.end method

.method public declared-synchronized ping()Z
    .registers 3

    .prologue
    .line 1942
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 1943
    const/4 v0, 0x0

    .line 1945
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 1942
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reassociate()Z
    .registers 3

    .prologue
    .line 2107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2108
    :cond_10
    const/4 v0, 0x0

    .line 2110
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2107
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnect()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1810
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_13

    .line 1811
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1812
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v2

    .line 1818
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 1815
    goto :goto_10

    :cond_13
    move v0, v2

    .line 1818
    goto :goto_10
.end method

.method public declared-synchronized reconnectCommand()Z
    .registers 3

    .prologue
    .line 2024
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2025
    :cond_10
    const/4 v0, 0x0

    .line 2027
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2024
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseWakeLock()V
    .registers 1

    .prologue
    .line 913
    return-void
.end method

.method public declared-synchronized reloadConfig()Z
    .registers 3

    .prologue
    .line 2501
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2502
    const/4 v0, 0x0

    .line 2504
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->reloadConfigCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2501
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetwork(I)Z
    .registers 4
    .parameter "networkId"

    .prologue
    .line 2049
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2050
    const/4 v0, 0x0

    .line 2052
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_b

    .line 2049
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 1662
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1663
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1664
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public resetConnections(Z)V
    .registers 5
    .parameter "disableInterface"

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    .line 1595
    const-string v0, "WifiStateTracker"

    const-string v0, "Reset connections and stopping DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1597
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1598
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1604
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1608
    :try_start_18
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1609
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_43

    .line 1613
    :goto_25
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1614
    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_34
    if-eqz p1, :cond_42

    .line 1622
    const-string v0, "WifiStateTracker"

    const-string v0, "Disabling interface"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1625
    :cond_42
    return-void

    .line 1610
    :catch_43
    move-exception v0

    goto :goto_25
.end method

.method public declared-synchronized restart()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1846
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1847
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1848
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1849
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startDriver()Z
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_17

    move-result v0

    .line 1851
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    move v0, v1

    goto :goto_13

    .line 1846
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveConfig()Z
    .registers 3

    .prologue
    .line 2489
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2490
    const/4 v0, 0x0

    .line 2492
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2489
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scan(Z)Z
    .registers 4
    .parameter "forceActive"

    .prologue
    .line 1955
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 1956
    :cond_10
    const/4 v0, 0x0

    .line 1958
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1955
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanResults()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1985
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 1986
    :cond_10
    const/4 v0, 0x0

    .line 1988
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1985
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothCoexistenceMode(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 2463
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2464
    :cond_10
    const/4 v0, 0x0

    .line 2466
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2463
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothScanMode(Z)V
    .registers 4
    .parameter "isBluetoothPlaying"

    .prologue
    .line 2477
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    move-result v0

    if-eqz v0, :cond_12

    .line 2481
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 2480
    :cond_12
    :try_start_12
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_10

    .line 2477
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHighPerfMode(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 865
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    if-eq v0, p1, :cond_29

    .line 866
    if-eqz p1, :cond_2b

    .line 867
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    .line 868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V

    .line 873
    :goto_f
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    .line 874
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "high performance mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_34

    .line 876
    :cond_29
    monitor-exit p0

    return-void

    .line 870
    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_f

    .line 865
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "netId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2175
    const/4 v0, 0x0

    .line 2177
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1, p2, p3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2174
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNotificationVisible(ZIZI)V
    .registers 15
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x10802b1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2594
    if-nez p1, :cond_e

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    if-nez v3, :cond_e

    if-nez p3, :cond_e

    .line 2641
    :cond_d
    :goto_d
    return-void

    .line 2599
    :cond_e
    if-eqz p1, :cond_8a

    .line 2602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_d

    .line 2606
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_46

    .line 2610
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    .line 2611
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2612
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 2613
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2614
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2618
    :cond_46
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2620
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2622
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2623
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2627
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2638
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    .local v1, message:Landroid/os/Message;
    :goto_81
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    int-to-long v4, p4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2640
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    goto :goto_d

    .line 2633
    .end local v1           #message:Landroid/os/Message;
    :cond_8a
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2635
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_81
.end method

.method public declared-synchronized setNumAllowedChannels()Z
    .registers 4

    .prologue
    .line 2409
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_32

    move-result v1

    if-eqz v1, :cond_13

    .line 2410
    :cond_10
    const/4 v1, 0x0

    .line 2422
    :goto_11
    monitor-exit p0

    return v1

    .line 2413
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_num_allowed_channels"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_32
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_13 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_11

    .line 2416
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 2417
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_27
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    if-eqz v1, :cond_30

    .line 2418
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_32

    .line 2422
    :cond_30
    const/4 v1, 0x1

    goto :goto_11

    .line 2409
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNumAllowedChannels(I)Z
    .registers 4
    .parameter "numChannels"

    .prologue
    .line 2434
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    move-result v0

    if-eqz v0, :cond_13

    .line 2435
    :cond_10
    const/4 v0, 0x0

    .line 2438
    :goto_11
    monitor-exit p0

    return v0

    .line 2437
    :cond_13
    :try_start_13
    iput p1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 2438
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    move-result v0

    goto :goto_11

    .line 2434
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(Z)Z
    .registers 3
    .parameter "turnOn"

    .prologue
    .line 2508
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setScanMode(Z)Z
    .registers 4
    .parameter "isScanModeActive"

    .prologue
    .line 1997
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_20

    move-result v0

    if-eqz v0, :cond_13

    .line 1998
    :cond_10
    const/4 v0, 0x0

    .line 2003
    :goto_11
    monitor-exit p0

    return v0

    .line 2000
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    if-eq v0, p1, :cond_1e

    .line 2001
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    move-result v0

    goto :goto_11

    .line 2003
    :cond_1e
    const/4 v0, 0x1

    goto :goto_11

    .line 1997
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanOnlyMode(Z)V
    .registers 6
    .parameter "scanOnlyMode"

    .prologue
    .line 800
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    if-eq v1, p1, :cond_3e

    .line 801
    if-eqz p1, :cond_40

    const/4 v1, 0x2

    move v0, v1

    .line 803
    .local v0, scanType:I
    :goto_9
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan-only mode changing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scanType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 805
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    .line 806
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 807
    if-eqz p1, :cond_43

    .line 808
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_47

    .line 815
    .end local v0           #scanType:I
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    .line 801
    :cond_40
    const/4 v1, 0x1

    move v0, v1

    goto :goto_9

    .line 810
    .restart local v0       #scanType:I
    :cond_43
    :try_start_43
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_3e

    .line 800
    .end local v0           #scanType:I
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScanResultHandling(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 1971
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 1972
    const/4 v0, 0x0

    .line 1974
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 1971
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanResultsList(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1655
    monitor-exit p0

    return-void

    .line 1654
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuspendModeOptimizations(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 839
    monitor-enter p0

    if-nez p1, :cond_1a

    .line 840
    :try_start_3
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 851
    :goto_9
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_28

    move-result v0

    if-eqz v0, :cond_2b

    .line 856
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 842
    :cond_1a
    :try_start_1a
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 843
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    if-gtz v0, :cond_18

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_28

    goto :goto_9

    .line 839
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 855
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    goto :goto_18
.end method

.method public setWifiState(I)V
    .registers 3
    .parameter "wifiState"

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1860
    return-void
.end method

.method public declared-synchronized startDriver()Z
    .registers 3

    .prologue
    .line 2254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2255
    const/4 v0, 0x0

    .line 2257
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2254
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 548
    return-void
.end method

.method public startMonitoring()V
    .registers 3

    .prologue
    .line 543
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    .line 544
    return-void
.end method

.method public declared-synchronized startPacketFiltering()Z
    .registers 3

    .prologue
    .line 2331
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2332
    :cond_10
    const/4 v0, 0x0

    .line 2334
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2331
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSupplicant()Z
    .registers 2

    .prologue
    .line 1907
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2518
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized status()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2195
    const/4 v0, 0x0

    .line 2197
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 2194
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDriver()Z
    .registers 3

    .prologue
    .line 2268
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 2269
    :cond_f
    const/4 v0, 0x0

    .line 2271
    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    move-result v0

    goto :goto_10

    .line 2268
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketFiltering()Z
    .registers 3

    .prologue
    .line 2343
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2344
    :cond_10
    const/4 v0, 0x0

    .line 2346
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2343
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()Z
    .registers 2

    .prologue
    .line 1916
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2528
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1794
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v0, :cond_12

    .line 1795
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1796
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v1

    .line 1802
    :goto_f
    return v0

    .line 1799
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_12
    move v0, v1

    .line 1802
    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2657
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2658
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2659
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2660
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-lt v1, v3, :cond_71

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_71

    .line 2661
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2667
    :goto_2b
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", scanModeActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2672
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2663
    :cond_71
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2b
.end method

.method public declared-synchronized unloadDriver()Z
    .registers 2

    .prologue
    .line 1897
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .parameter "newSource"

    .prologue
    .line 762
    if-eqz p1, :cond_7

    .line 763
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 765
    :cond_7
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    .line 766
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_2b

    .line 769
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 770
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 772
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 792
    :cond_2a
    :goto_2a
    return-void

    .line 776
    :cond_2b
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 777
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    goto :goto_2a

    .line 790
    :catch_3d
    move-exception v0

    goto :goto_2a

    .line 780
    :cond_3f
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 781
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_2a

    .line 783
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 784
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_57} :catch_3d

    goto :goto_2a
.end method

.method public declared-synchronized wpsCommandCancel()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2314
    monitor-enter p0

    :try_start_2
    const-string v0, "WifiStateTracker"

    const-string/jumbo v1, "wpsCommandCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2317
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_24

    move-result v0

    if-nez v0, :cond_1f

    move v0, v2

    .line 2320
    :goto_1d
    monitor-exit p0

    return v0

    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_1d

    .line 2314
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsPbcConnect()Z
    .registers 3

    .prologue
    .line 2282
    monitor-enter p0

    :try_start_1
    const-string v0, "WifiStateTracker"

    const-string/jumbo v1, "wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_23

    move-result v0

    if-nez v0, :cond_1b

    .line 2285
    const/4 v0, 0x0

    .line 2288
    :goto_19
    monitor-exit p0

    return v0

    .line 2287
    :cond_1b
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2288
    invoke-static {}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand()Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    move-result v0

    goto :goto_19

    .line 2282
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsPinConnect(Ljava/lang/String;)I
    .registers 5
    .parameter "bssid"

    .prologue
    .line 2298
    monitor-enter p0

    :try_start_1
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wpsPinConnect(), bssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    move-result v0

    if-nez v0, :cond_2c

    .line 2301
    const/4 v0, -0x1

    .line 2304
    :goto_2a
    monitor-exit p0

    return v0

    .line 2303
    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2304
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->startWpsPinCommand(Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_34

    move-result v0

    goto :goto_2a

    .line 2298
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method
