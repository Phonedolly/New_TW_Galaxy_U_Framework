.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$BondState;,
        Landroid/server/BluetoothService$EnableThread;,
        Landroid/server/BluetoothService$RemoteService;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final BRCM_PROPERTY_AVRCP_PASS_THROUGH_ACTIVE:Ljava/lang/String; = "service.brcm.bt.avrcp_pass_thru"

.field private static final BRCM_PROPERTY_BTLD_ACTIVE:Ljava/lang/String; = "service.brcm.bt.btld"

.field private static final BRCM_PROPERTY_BT_ACTIVATION:Ljava/lang/String; = "service.brcm.bt.activation"

.field private static final BRCM_PROPERTY_SOFT_ONOFF_ENABLE:Ljava/lang/String; = "service.brcm.bt.soft_onoff"

.field private static final BT_BOOTUP_MAX_DELAY:I = 0x3c

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final DTUN_PROPERTY_HCID_ACTIVE:Ljava/lang/String; = "service.brcm.bt.hcid_active"

.field private static final DTUN_PROPERTY_SERVER_ACTIVE:Ljava/lang/String; = "service.brcm.bt.srv_active"

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field public static final INTENT_MSG_DCMO_BT:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

.field private static final IN_CALL_ACTIVE_AVRCP_PASS_THROUGH_TIMEOUT:J = 0x1388L

.field private static final IN_CALL_INACTIVE_AVRCP_PASS_THROUGH_TIMEOUT:J = 0x1388L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x5

.field private static final MESSAGE_AVRCP_PASS_THROUGH_TIMEOUT:I = 0x7

.field private static final MESSAGE_BT_BOOTUP:I = 0x6

.field private static final MESSAGE_BT_IT_POLICY:I = 0x9

.field private static final MESSAGE_DISCOVERABLE_TIMEOUT:I = 0x4

.field private static final MESSAGE_FINISH_DISABLE:I = 0x2

.field private static final MESSAGE_MOBILE_OFFICE_BT_ON:I = 0xa

.field private static final MESSAGE_PROFILE_DISCONNECT_TIMEOUT:I = 0x8

.field private static final MESSAGE_REGISTER_SDP_RECORDS:I = 0x1

.field private static final MESSAGE_UUID_INTENT:I = 0x3

.field private static final REMOTE_NAME_CACHE_TIMEOUT:J = 0x1f4L

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mDockAddress:Ljava/lang/String;

.field private static mPolicy:I


# instance fields
.field private final DEFAULT_IMEI:Ljava/lang/String;

.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAclLinkCount:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAdapterProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothState:I

.field private final mBondState:Landroid/server/BluetoothService$BondState;

.field private mBtOnRetryCount:I

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisableSaveSetting:Z

.field private mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

.field private mDockPin:Ljava/lang/String;

.field private mEnableThread:Landroid/server/BluetoothService$EnableThread;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private final mHandler:Landroid/os/Handler;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mIsDiscovering:Z

.field private mLastRemoteAddress:Ljava/lang/String;

.field private mLastRemoteMs:J

.field private mLastRemoteName:Ljava/lang/String;

.field private mNativeData:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForA2dpDisconnected:Z

.field private mWaitingForAclDisconnected:Z

.field private mWaitingForHeadsetDisconnected:Z

.field private mWaitingForHidDisconnected:Z

.field private prevScanMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 155
    sput v3, Landroid/server/BluetoothService;->mPolicy:I

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 262
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 265
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 113
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 130
    new-instance v0, Landroid/server/BluetoothService$BondState;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$BondState;-><init>(Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    .line 191
    const-string v0, "357858010034783"

    iput-object v0, p0, Landroid/server/BluetoothService;->DEFAULT_IMEI:Ljava/lang/String;

    .line 839
    new-instance v0, Landroid/server/BluetoothService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 2579
    new-instance v0, Landroid/server/BluetoothService$2;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 272
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 274
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 276
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v0

    if-ne v0, v4, :cond_42

    .line 277
    const-string v0, "BluetoothService"

    const-string v1, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 281
    :cond_42
    const/16 v0, 0xa

    iput v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    .line 282
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 292
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 293
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 296
    iput v2, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    .line 297
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    .line 298
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    .line 299
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    .line 300
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    .line 302
    iput-object v3, p0, Landroid/server/BluetoothService;->mLastRemoteAddress:Ljava/lang/String;

    .line 303
    iput-object v3, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/BluetoothService;->mLastRemoteMs:J

    .line 308
    iput-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    .line 309
    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 312
    iget-object v0, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 313
    iget-object v0, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 323
    return-void
.end method

.method private declared-synchronized _setScanMode(II)Z
    .registers 12
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v6, 0x0

    const-string v3, "BluetoothService"

    .line 1610
    monitor-enter p0

    const/4 v2, 0x0

    .line 1611
    .local v2, pairable:Z
    const/4 v0, 0x0

    .line 1612
    .local v0, discoverable:Z
    :try_start_6
    invoke-direct {p0}, Landroid/server/BluetoothService;->setAlarmService()V

    .line 1613
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScanMode is called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    packed-switch p1, :pswitch_data_d4

    .line 1659
    :pswitch_25
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested invalid scan mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_d1

    move v3, v6

    .line 1668
    :goto_3e
    monitor-exit p0

    return v3

    .line 1618
    :pswitch_40
    :try_start_40
    iget-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_4e

    .line 1619
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1620
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1623
    :cond_4e
    const/4 v2, 0x0

    .line 1624
    const/4 v0, 0x0

    .line 1662
    :goto_50
    const-string v3, "Pairable"

    invoke-direct {p0, v3, v2}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1663
    const-string v3, "Discoverable"

    invoke-direct {p0, v3, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1665
    if-nez v2, :cond_64

    if-nez v0, :cond_64

    .line 1666
    const-string v3, "Powered"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1668
    :cond_64
    const/4 v3, 0x1

    goto :goto_3e

    .line 1628
    :pswitch_66
    iget-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_74

    .line 1629
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1630
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1633
    :cond_74
    const/4 v2, 0x1

    .line 1634
    const/4 v0, 0x0

    .line 1635
    goto :goto_50

    .line 1639
    :pswitch_77
    iget-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_85

    .line 1640
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1641
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1644
    :cond_85
    if-eqz p2, :cond_ad

    .line 1645
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1647
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1648
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/lit16 v7, p2, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget-object v7, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1652
    .end local v1           #intent:Landroid/content/Intent;
    :cond_ad
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService;->setDiscoverableTimeout(I)Z

    .line 1653
    const/4 v2, 0x1

    .line 1654
    const/4 v0, 0x1

    .line 1655
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BT Discoverable for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_40 .. :try_end_d0} :catchall_d1

    goto :goto_50

    .line 1610
    :catchall_d1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1615
    :pswitch_data_d4
    .packed-switch 0x14
        :pswitch_40
        :pswitch_66
        :pswitch_25
        :pswitch_77
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$1108(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$1110(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 103
    sget v0, Landroid/server/BluetoothService;->mPolicy:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput p0, Landroid/server/BluetoothService;->mPolicy:I

    return p0
.end method

.method static synthetic access$1300(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-static {p0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/server/BluetoothService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V

    return-void
.end method

.method static synthetic access$1902(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    return p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mDisableSaveSetting:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/server/BluetoothService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    return-void
.end method

.method static synthetic access$2200(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/server/BluetoothService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/server/BluetoothService;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->_setScanMode(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->finishDisable(Z)V

    return-void
.end method

.method static synthetic access$3000(Landroid/server/BluetoothService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/server/BluetoothService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3502(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$402(Landroid/server/BluetoothService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/server/BluetoothService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$500(Landroid/server/BluetoothService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/server/BluetoothService;->mBtOnRetryCount:I

    return v0
.end method

.method static synthetic access$602(Landroid/server/BluetoothService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Landroid/server/BluetoothService;->mBtOnRetryCount:I

    return p1
.end method

.method static synthetic access$608(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/server/BluetoothService;->mBtOnRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/server/BluetoothService;->mBtOnRetryCount:I

    return v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    return v0
.end method

.method static synthetic access$702(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    return p1
.end method

.method static synthetic access$800(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    return v0
.end method

.method static synthetic access$802(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    return p1
.end method

.method static synthetic access$900(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    return v0
.end method

.method static synthetic access$902(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    return p1
.end method

.method private native addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    .registers 6
    .parameter "address"

    .prologue
    .line 3010
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3011
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 3016
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    .local v1, state:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 3013
    .end local v1           #state:Ljava/lang/Object;
    .restart local v0       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_c
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-direct {v0, v2, p1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;)V

    .line 3014
    .restart local v0       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3015
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    move-object v1, v0

    .line 3016
    .restart local v1       #state:Ljava/lang/Object;
    goto :goto_b
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private native authorizeServiceNative(Ljava/lang/String;II)Z
.end method

.method static bluezStringToScanMode(ZZ)I
    .registers 3
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 2884
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 2885
    const/16 v0, 0x17

    .line 2889
    :goto_6
    return v0

    .line 2886
    :cond_7
    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    .line 2887
    const/16 v0, 0x15

    goto :goto_6

    .line 2889
    :cond_e
    const/16 v0, 0x14

    goto :goto_6
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .registers 7
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 2554
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2555
    .local v0, handleInt:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2556
    .local v1, owner:Ljava/lang/Integer;
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_42

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2559
    iget-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2560
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 2562
    :cond_42
    monitor-exit p0

    return-void

    .line 2554
    .end local v0           #handleInt:Ljava/lang/Integer;
    .end local v1           #owner:Ljava/lang/Integer;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .registers 5

    .prologue
    .line 3085
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3086
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3088
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 3093
    :cond_10
    :goto_10
    return-void

    .line 3089
    :catch_11
    move-exception v0

    .line 3090
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private native disableNative()I
.end method

.method private native enableNative()I
.end method

.method private native fetchRemoteDiInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized finishDisable(Z)V
    .registers 12
    .parameter "saveSetting"

    .prologue
    const-string v7, "BluetoothService"

    .line 522
    monitor-enter p0

    :try_start_3
    const-string v7, "BluetoothService"

    const-string v8, "finishDisable..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v7, 0x0

    iput v7, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    .line 527
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    .line 528
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    .line 529
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    .line 530
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    .line 533
    iget v7, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    const/16 v8, 0xd

    if-eq v7, v8, :cond_3b

    .line 534
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops: finishDisable BT in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_aa

    .line 576
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 537
    :cond_3b
    :try_start_3b
    iget-object v7, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 538
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z

    .line 539
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 542
    iget-object v7, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_50
    if-ge v2, v6, :cond_5f

    aget-object v0, v1, v2

    .line 543
    .local v0, address:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v8, 0xa

    const/4 v9, 0x3

    invoke-virtual {v7, v0, v8, v9}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 548
    .end local v0           #address:Ljava/lang/String;
    :cond_5f
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v8, 0x14

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string v7, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    iget v8, p0, Landroid/server/BluetoothService;->prevScanMode:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    iget-object v7, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 553
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 554
    iget-object v7, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 555
    iget-object v7, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 557
    if-eqz p1, :cond_8e

    .line 558
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V

    .line 561
    :cond_8e
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_96
    .catchall {:try_start_3b .. :try_end_96} :catchall_aa

    move-result-wide v3

    .line 566
    .local v3, ident:J
    :try_start_97
    iget-object v7, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_ad
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9c} :catch_b2

    .line 569
    :try_start_9c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    :goto_9f
    iget-boolean v7, p0, Landroid/server/BluetoothService;->mRestart:Z

    if-eqz v7, :cond_39

    .line 573
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 574
    invoke-virtual {p0}, Landroid/server/BluetoothService;->enable()Z
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_aa

    goto :goto_39

    .line 522
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #ident:J
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #len$:I
    :catchall_aa
    move-exception v7

    monitor-exit p0

    throw v7

    .line 569
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #ident:J
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #len$:I
    :catchall_ad
    move-exception v7

    :try_start_ae
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 567
    :catch_b2
    move-exception v7

    .line 569
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_aa

    goto :goto_9f
.end method

.method private native getAdapterPathNative()Ljava/lang/String;
.end method

.method private native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native getHidInfoNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 7
    .parameter "address"

    .prologue
    .line 2215
    const-string v4, "UUIDs"

    invoke-virtual {p0, p1, v4}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2216
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_a

    const/4 v4, 0x0

    .line 2226
    :goto_9
    return-object v4

    .line 2218
    :cond_a
    const/4 v1, 0x0

    .line 2220
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2221
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 2223
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v4, v1

    if-ge v0, v4, :cond_23

    .line 2224
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2223
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_23
    move-object v4, v2

    .line 2226
    goto :goto_9
.end method

.method private initProfileState()V
    .registers 9

    .prologue
    .line 3020
    const/4 v2, 0x0

    .line 3021
    .local v2, bonds:[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3022
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 3023
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3025
    :cond_f
    if-nez v2, :cond_12

    .line 3039
    :cond_11
    return-void

    .line 3029
    :cond_12
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_15
    if-ge v3, v4, :cond_11

    aget-object v5, v1, v3

    .line 3030
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3031
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3029
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private native initializeNativeDataNative()V
.end method

.method private final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2745
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_12

    move v0, v3

    :goto_11
    return v0

    :cond_12
    move v0, v2

    goto :goto_11
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1845
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v3

    .line 1874
    :goto_11
    return v0

    .line 1849
    :cond_12
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v3

    .line 1850
    goto :goto_11

    .line 1852
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1854
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1855
    const-string v0, "Ignoring createBond(): another device is bonding"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1857
    goto :goto_11

    .line 1862
    :cond_2d
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_46

    .line 1864
    const-string v0, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1865
    goto :goto_11

    .line 1868
    :cond_46
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1869
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1870
    const-string v0, "Error while writing Pin for the dock"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1871
    goto :goto_11

    .line 1874
    :cond_5b
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private isEnabledInternal()Z
    .registers 3

    .prologue
    .line 445
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private native isEnabledNative()I
.end method

.method private native listHidInfoNative()Ljava/lang/String;
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 3236
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .registers 13
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 1140
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 1141
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1b

    .line 1143
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1159
    :goto_1a
    return-void

    .line 1148
    :cond_1b
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1149
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1150
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 1152
    .local v2, postResult:Z
    if-nez v2, :cond_37

    .line 1153
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_1a

    .line 1158
    :cond_37
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private persistBluetoothOnSetting(Z)V
    .registers 7
    .parameter "bluetoothOn"

    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1092
    .local v0, origCallerIdentityToken:J
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    if-eqz p1, :cond_16

    const/4 v4, 0x1

    :goto_f
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    return-void

    .line 1092
    :cond_16
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 326
    const-class v5, Landroid/server/BluetoothService;

    monitor-enter v5

    :try_start_4
    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v6, :cond_c

    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_78

    .line 356
    :cond_a
    :goto_a
    monitor-exit v5

    return-object v6

    .line 328
    :cond_c
    const/4 v3, 0x0

    .line 331
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_d
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_5c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_6b

    .line 332
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v6, 0x11

    :try_start_1b
    new-array v0, v6, [B

    .line 333
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 334
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 335
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 337
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 338
    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_33} :catch_8d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_89

    .line 347
    if-eqz v4, :cond_a

    .line 349
    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_78
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_a

    .line 350
    :catch_39
    move-exception v7

    goto :goto_a

    .line 340
    :cond_3b
    :try_start_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckBluetoothAddress failed for car dock address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_51} :catch_8d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_51} :catch_89

    .line 347
    if-eqz v4, :cond_56

    .line 349
    :try_start_53
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_78
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_84

    :cond_56
    :goto_56
    move-object v3, v4

    .line 355
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_57
    :goto_57
    const/4 v6, 0x0

    :try_start_58
    sput-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_78

    move-object v6, v8

    .line 356
    goto :goto_a

    .line 342
    :catch_5c
    move-exception v6

    move-object v2, v6

    .line 343
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5e
    :try_start_5e
    const-string v6, "FileNotFoundException while trying to read dock address"

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_7b

    .line 347
    if-eqz v3, :cond_57

    .line 349
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_78
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_57

    .line 350
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_69
    move-exception v6

    goto :goto_57

    .line 344
    :catch_6b
    move-exception v6

    move-object v2, v6

    .line 345
    .local v2, e:Ljava/io/IOException;
    :goto_6d
    :try_start_6d
    const-string v6, "IOException while trying to read dock address"

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_7b

    .line 347
    if-eqz v3, :cond_57

    .line 349
    :try_start_74
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_69

    goto :goto_57

    .line 326
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/BufferedInputStream;
    :catchall_78
    move-exception v6

    monitor-exit v5

    throw v6

    .line 347
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :catchall_7b
    move-exception v6

    :goto_7c
    if-eqz v3, :cond_81

    .line 349
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_78
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 347
    :cond_81
    :goto_81
    :try_start_81
    throw v6
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_78

    .line 350
    :catch_82
    move-exception v7

    goto :goto_81

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_84
    move-exception v6

    goto :goto_56

    .line 347
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catchall_86
    move-exception v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_7c

    .line 344
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_89
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_6d

    .line 342
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_8d
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_5e
.end method

.method private readIncomingConnectionState()V
    .registers 13

    .prologue
    .line 3105
    iget-object v9, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v9

    .line 3106
    const/4 v2, 0x0

    .line 3108
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    const-string v10, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_b9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_7d

    .line 3109
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3110
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3112
    .local v1, file:Ljava/io/BufferedReader;
    :cond_1a
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_76

    .line 3113
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3114
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 3115
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3116
    .local v8, value:[Ljava/lang/String;
    if-eqz v8, :cond_1a

    array-length v10, v8

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1a

    .line 3117
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3118
    .local v7, val1:Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3119
    .local v6, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v10, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_51} :catch_b5

    goto :goto_1a

    .line 3122
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #val1:Ljava/lang/Integer;
    .end local v8           #value:[Ljava/lang/String;
    :catch_52
    move-exception v10

    move-object v0, v10

    move-object v2, v3

    .line 3123
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_55
    :try_start_55
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_a1

    .line 3127
    if-eqz v2, :cond_74

    .line 3129
    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_9f

    .line 3135
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_74
    :goto_74
    :try_start_74
    monitor-exit v9
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_a8

    .line 3136
    return-void

    .line 3127
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_76
    if-eqz v3, :cond_7b

    .line 3129
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_af
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_ad

    :cond_7b
    :goto_7b
    move-object v2, v3

    .line 3134
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_74

    .line 3124
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_7d
    move-exception v10

    move-object v0, v10

    .line 3125
    .local v0, e:Ljava/io/IOException;
    :goto_7f
    :try_start_7f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: readIncomingConnectionState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_7f .. :try_end_99} :catchall_a1

    .line 3127
    if-eqz v2, :cond_74

    .line 3129
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_74

    .line 3130
    .end local v0           #e:Ljava/io/IOException;
    :catch_9f
    move-exception v10

    goto :goto_74

    .line 3127
    :catchall_a1
    move-exception v10

    :goto_a2
    if-eqz v2, :cond_a7

    .line 3129
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_ab

    .line 3127
    :cond_a7
    :goto_a7
    :try_start_a7
    throw v10

    .line 3135
    :catchall_a8
    move-exception v10

    :goto_a9
    monitor-exit v9
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_a8

    throw v10

    .line 3130
    :catch_ab
    move-exception v11

    goto :goto_a7

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_ad
    move-exception v10

    goto :goto_7b

    .line 3135
    :catchall_af
    move-exception v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_a9

    .line 3127
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catchall_b2
    move-exception v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_a2

    .line 3124
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_b5
    move-exception v10

    move-object v0, v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_7f

    .line 3122
    :catch_b9
    move-exception v10

    move-object v0, v10

    goto :goto_55
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 2893
    packed-switch p0, :pswitch_data_10

    .line 2901
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2895
    :pswitch_5
    const-string/jumbo v0, "off"

    goto :goto_4

    .line 2897
    :pswitch_9
    const-string v0, "connectable"

    goto :goto_4

    .line 2899
    :pswitch_c
    const-string v0, "discoverable"

    goto :goto_4

    .line 2893
    nop

    :pswitch_data_10
    .packed-switch 0x14
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private setAddress()V
    .registers 16

    .prologue
    .line 580
    const-string/jumbo v8, "ril.bt_macaddr"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, bdAddr:Ljava/lang/String;
    const-string v8, "001247012345"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 583
    const-string/jumbo v8, "persist.service.brcm.bt.mac"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1247"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 601
    :goto_28
    return-void

    .line 587
    :cond_29
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 588
    .local v2, random:Ljava/util/Random;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 589
    .local v3, random2:Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 590
    .local v4, rannum:J
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 592
    .local v6, rannum2:J
    const-string v8, "%02X%02X%02X%02X%02X%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x47

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x8

    shr-long v11, v4, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-wide/16 v11, 0xff

    and-long/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/16 v11, 0x8

    shr-long v11, v6, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, newbdAddr:Ljava/lang/String;
    const-string/jumbo v8, "persist.service.brcm.bt.mac"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v8, "BluetoothService"

    const-string/jumbo v9, "new bluetooth address = "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 599
    .end local v1           #newbdAddr:Ljava/lang/String;
    .end local v2           #random:Ljava/util/Random;
    .end local v3           #random2:Ljava/util/Random;
    .end local v4           #rannum:J
    .end local v6           #rannum2:J
    :cond_a5
    const-string v8, "BluetoothService"

    const-string v9, "keep current bluetooth address = "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28
.end method

.method private setAlarmService()V
    .registers 3

    .prologue
    .line 1562
    iget-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 1563
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    .line 1565
    :cond_10
    return-void
.end method

.method private declared-synchronized setBluetoothState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 823
    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4b

    if-ne p1, v1, :cond_7

    .line 837
    :goto_5
    monitor-exit p0

    return-void

    .line 827
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 834
    iput p1, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    .line 836
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    goto :goto_5

    .line 823
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 1541
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v3

    .line 1543
    :goto_11
    return v0

    :cond_12
    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_15
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_11

    :cond_1a
    move v0, v3

    goto :goto_15
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1537
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1531
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setServiceTrustNative(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryByCodNative(I)Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "bondState"

    .prologue
    .line 1453
    packed-switch p0, :pswitch_data_10

    .line 1461
    const-string v0, "??????"

    :goto_5
    return-object v0

    .line 1455
    :pswitch_6
    const-string/jumbo v0, "not bonded"

    goto :goto_5

    .line 1457
    :pswitch_a
    const-string v0, "bonding"

    goto :goto_5

    .line 1459
    :pswitch_d
    const-string v0, "bonded"

    goto :goto_5

    .line 1453
    :pswitch_data_10
    .packed-switch 0xa
        :pswitch_6
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .registers 6

    .prologue
    .line 3139
    const/4 v1, 0x0

    .line 3141
    .local v1, r:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_3b

    .line 3142
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .local v2, r:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_d
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_68
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_6f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_6b

    .line 3148
    if-eqz v2, :cond_15

    .line 3150
    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_66

    :cond_15
    :goto_15
    move-object v1, v2

    .line 3156
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    :cond_16
    :goto_16
    return-void

    .line 3143
    :catch_17
    move-exception v3

    move-object v0, v3

    .line 3144
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_19
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_5d

    .line 3148
    if-eqz v1, :cond_16

    .line 3150
    :try_start_35
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_16

    .line 3151
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_39
    move-exception v3

    goto :goto_16

    .line 3145
    :catch_3b
    move-exception v3

    move-object v0, v3

    .line 3146
    .local v0, e:Ljava/io/IOException;
    :goto_3d
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_5d

    .line 3148
    if-eqz v1, :cond_16

    .line 3150
    :try_start_59
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_39

    goto :goto_16

    .line 3148
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5d
    move-exception v3

    :goto_5e
    if-eqz v1, :cond_63

    .line 3150
    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 3148
    :cond_63
    :goto_63
    throw v3

    .line 3151
    :catch_64
    move-exception v4

    goto :goto_63

    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_66
    move-exception v3

    goto :goto_15

    .line 3148
    :catchall_68
    move-exception v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_5e

    .line 3145
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6b
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_3d

    .line 3143
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6f
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_19
.end method

.method private native updateRemoteNameNative(Ljava/lang/String;)V
.end method

.method private declared-synchronized writeDockPin()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 360
    monitor-enter p0

    const/4 v1, 0x0

    .line 362
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_3f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_50

    .line 366
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_10
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 368
    .local v3, pin:I
    const-string v4, "%04d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 369
    iget-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_36} :catch_74
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_36} :catch_70

    .line 376
    if-eqz v2, :cond_3b

    .line 378
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_78
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_6b

    :cond_3b
    :goto_3b
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    move v4, v9

    .line 385
    .end local v3           #pin:I
    :goto_3d
    monitor-exit p0

    return v4

    .line 371
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 372
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    const-string v4, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_5f

    .line 376
    if-eqz v1, :cond_4b

    .line 378
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_66
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_5d

    .line 384
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4b
    :goto_4b
    const/4 v4, 0x0

    :try_start_4c
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_66

    move v4, v8

    .line 385
    goto :goto_3d

    .line 373
    :catch_50
    move-exception v4

    move-object v0, v4

    .line 374
    .local v0, e:Ljava/io/IOException;
    :goto_52
    :try_start_52
    const-string v4, "IOException while while trying to write dock pairing pin"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_5f

    .line 376
    if-eqz v1, :cond_4b

    .line 378
    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4b

    .line 379
    .end local v0           #e:Ljava/io/IOException;
    :catch_5d
    move-exception v4

    goto :goto_4b

    .line 376
    :catchall_5f
    move-exception v4

    :goto_60
    if-eqz v1, :cond_65

    .line 378
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_69

    .line 376
    :cond_65
    :goto_65
    :try_start_65
    throw v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 360
    :catchall_66
    move-exception v4

    :goto_67
    monitor-exit p0

    throw v4

    .line 379
    :catch_69
    move-exception v5

    goto :goto_65

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_6b
    move-exception v4

    goto :goto_3b

    .line 376
    .end local v3           #pin:I
    :catchall_6d
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_60

    .line 373
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_70
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_52

    .line 371
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_74
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_41

    .line 360
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_78
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_67
.end method


# virtual methods
.method public addHidInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "address"
    .parameter "info"

    .prologue
    .line 3223
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    return-void
.end method

.method declared-synchronized addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 2051
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2052
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_10

    .line 2053
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2056
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v7, p2

    if-ge v0, v7, :cond_7f

    .line 2057
    aget-object v3, p2, v0

    .line 2058
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2060
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_3a

    .line 2061
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Remote Device Property at index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2064
    :cond_3a
    const-string v7, "UUIDs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "Nodes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 2065
    :cond_4a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2066
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2067
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5c
    if-ge v1, v2, :cond_6d

    .line 2068
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 2071
    :cond_6d
    if-lez v2, :cond_73

    .line 2072
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2078
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_73
    :goto_73
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_77

    goto :goto_37

    .line 2051
    .end local v0           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_77
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2075
    .restart local v0       #i:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    :try_start_7c
    aget-object v4, p2, v0

    goto :goto_73

    .line 2080
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_7f
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_77

    .line 2085
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .registers 15
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    const/4 v9, -0x1

    .line 2518
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_75

    move-result v0

    if-nez v0, :cond_14

    move v0, v9

    .line 2544
    :goto_12
    monitor-exit p0

    return v0

    .line 2521
    :cond_14
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1f

    const/16 v0, 0x1e

    if-le p3, v0, :cond_21

    :cond_1f
    move v0, v9

    .line 2523
    goto :goto_12

    .line 2531
    :cond_21
    :try_start_21
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v7

    .line 2534
    .local v7, handle:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2535
    if-ne v7, v9, :cond_57

    move v0, v9

    .line 2536
    goto :goto_12

    .line 2539
    :cond_57
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2540
    .local v8, pid:I
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_21 .. :try_end_6a} :catchall_75

    .line 2542
    :try_start_6a
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    invoke-direct {v0, p0, v7, v8}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_75
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_78

    :goto_73
    move v0, v7

    .line 2544
    goto :goto_12

    .line 2518
    .end local v7           #handle:I
    .end local v8           #pid:I
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2543
    .restart local v7       #handle:I
    .restart local v8       #pid:I
    :catch_78
    move-exception v0

    goto :goto_73
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1098
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1100
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    .line 1101
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    .line 1102
    const/4 v0, 0x1

    .line 1104
    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20

    .line 1098
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authorizeService(Ljava/lang/String;ZZ)Z
    .registers 10
    .parameter "address"
    .parameter "authorized"
    .parameter "always"

    .prologue
    const/4 v5, 0x0

    .line 2144
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2148
    .local v1, data:Ljava/lang/Integer;
    if-eqz p2, :cond_3e

    const/4 v2, 0x1

    move v0, v2

    .line 2149
    .local v0, auth_code:I
    :goto_1b
    if-nez v1, :cond_40

    .line 2150
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorizeService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_49

    move v2, v5

    .line 2157
    :goto_3c
    monitor-exit p0

    return v2

    .end local v0           #auth_code:I
    :cond_3e
    move v0, v5

    .line 2148
    goto :goto_1b

    .line 2157
    .restart local v0       #auth_code:I
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Landroid/server/BluetoothService;->authorizeServiceNative(Ljava/lang/String;II)Z
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_49

    move-result v2

    goto :goto_3c

    .line 2144
    .end local v0           #auth_code:I
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_49
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1936
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_39

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 1951
    :goto_12
    monitor-exit p0

    return v0

    .line 1940
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v3

    .line 1941
    goto :goto_12

    .line 1943
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1944
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2c

    move v0, v3

    .line 1945
    goto :goto_12

    .line 1948
    :cond_2c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 1950
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_39

    .line 1951
    const/4 v0, 0x1

    goto :goto_12

    .line 1936
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .registers 4

    .prologue
    .line 1822
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1831
    :goto_11
    monitor-exit p0

    return v0

    .line 1830
    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    .line 1831
    const/4 v0, 0x1

    goto :goto_11

    .line 1822
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2422
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_6b

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2439
    :goto_12
    monitor-exit p0

    return v1

    .line 2426
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v4

    .line 2427
    goto :goto_12

    .line 2429
    :cond_1c
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, v3}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 2431
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2432
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2433
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_62

    .line 2434
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelUserInputNative("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "available, ignoring. Maybe the PasskeyAgent Request was already cancelled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "by the remote or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2437
    goto :goto_12

    .line 2439
    :cond_62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_6b

    move-result v1

    goto :goto_12

    .line 2422
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_6b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    .line 2962
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2963
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 2964
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2965
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2966
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2967
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 2970
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public connectSink(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 2986
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2987
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 2988
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2989
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2990
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2991
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2992
    const/4 v2, 0x1

    .line 2994
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1878
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 1887
    :goto_9
    monitor-exit p0

    return v0

    .line 1880
    :cond_b
    const v0, 0xea60

    :try_start_e
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 1881
    goto :goto_9

    .line 1884
    :cond_16
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    #calls: Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/server/BluetoothService$BondState;->access$3200(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V

    .line 1885
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_24

    .line 1887
    const/4 v0, 0x1

    goto :goto_9

    .line 1878
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .registers 6
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v1, 0x0

    .line 1892
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_27

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 1902
    :goto_9
    monitor-exit p0

    return v0

    .line 1894
    :cond_b
    const v0, 0xea60

    :try_start_e
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 1895
    goto :goto_9

    .line 1898
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1899
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    #calls: Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/server/BluetoothService$BondState;->access$3200(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V

    .line 1900
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    .line 1902
    const/4 v0, 0x1

    goto :goto_9

    .line 1892
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disable()Z
    .registers 2

    .prologue
    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disable(Z)Z
    .registers 8
    .parameter "saveSetting"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v0, "BluetoothService"

    .line 467
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "BluetoothService"

    const-string v1, "disable..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    packed-switch v0, :pswitch_data_92

    .line 478
    :pswitch_1a
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops: disable BT in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_8f

    move v0, v3

    .line 517
    :goto_35
    monitor-exit p0

    return v0

    .line 473
    :pswitch_37
    :try_start_37
    const-string v0, "BluetoothService"

    const-string v1, "Oops: disable BT when BT is OFF..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 474
    goto :goto_35

    .line 481
    :pswitch_40
    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    invoke-virtual {v0}, Landroid/server/BluetoothService$EnableThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 482
    const-string v0, "BluetoothService"

    const-string v1, "Oops: disable BT when enable thread is still alive..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 483
    goto :goto_35

    .line 487
    :cond_55
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mDisableSaveSetting:Z

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    .line 495
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v0

    iput v0, p0, Landroid/server/BluetoothService;->prevScanMode:I

    .line 496
    const/16 v0, 0x14

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothService;->_setScanMode(II)Z

    .line 499
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 500
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p1, :cond_83

    move v3, v5

    :cond_83
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8d
    .catchall {:try_start_37 .. :try_end_8d} :catchall_8f

    move v0, v5

    .line 517
    goto :goto_35

    .line 467
    :catchall_8f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 471
    :pswitch_data_92
    .packed-switch 0xa
        :pswitch_37
        :pswitch_1a
        :pswitch_40
    .end packed-switch
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 2974
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2975
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 2976
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2977
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2978
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2979
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2980
    const/4 v2, 0x1

    .line 2982
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 2998
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2999
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 3000
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3001
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3002
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3003
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3004
    const/4 v2, 0x1

    .line 3006
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2792
    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_334

    .line 2806
    :goto_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mIsAirplaneSensitive = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mIsAirplaneToggleable = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Local address = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Local name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isDiscovering() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2813
    new-instance v10, Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    .line 2815
    .local v10, headset:Landroid/bluetooth/BluetoothHeadset;
    const-string v19, "\n--Known devices--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_cc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2817
    .local v3, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v5

    .line 2818
    .local v5, bondState:I
    const-string v19, "%s %10s (%d) %s\n"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    invoke-static {v5}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 2824
    .local v17, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v17, :cond_1af

    .line 2825
    const-string v19, "\tuuids = null"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    :cond_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_14c
    :goto_14c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_cc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/server/BluetoothService$RemoteService;

    .line 2837
    .local v15, service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v15

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14c

    .line 2838
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\tPENDING CALLBACK: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v15

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14c

    .line 2794
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #bondState:I
    .end local v10           #headset:Landroid/bluetooth/BluetoothHeadset;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #service:Landroid/server/BluetoothService$RemoteService;
    .end local v17           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :pswitch_186
    const-string v19, "Bluetooth OFF\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    :cond_18f
    :goto_18f
    return-void

    .line 2797
    :pswitch_190
    const-string v19, "Bluetooth TURNING ON\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18f

    .line 2800
    :pswitch_19a
    const-string v19, "Bluetooth TURNING OFF\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18f

    .line 2803
    :pswitch_1a4
    const-string v19, "Bluetooth ON\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2827
    .restart local v3       #address:Ljava/lang/String;
    .restart local v5       #bondState:I
    .restart local v10       #headset:Landroid/bluetooth/BluetoothHeadset;
    .restart local v17       #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_1af
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_1b7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .line 2828
    .local v16, uuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2829
    .local v6, channel:Ljava/lang/Integer;
    if-nez v6, :cond_1ee

    .line 2830
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b7

    .line 2832
    :cond_1ee
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " RFCOMM channel = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b7

    .line 2843
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #bondState:I
    .end local v6           #channel:Ljava/lang/Integer;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #uuid:Landroid/os/ParcelUuid;
    .end local v17           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_21a
    const-string v19, "Devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2844
    .local v18, value:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2845
    .local v8, devicesObjectPath:[Ljava/lang/String;
    if-eqz v18, :cond_22d

    .line 2846
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2848
    :cond_22d
    const-string v19, "\n--ACL connected devices--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    if-eqz v8, :cond_250

    .line 2850
    move-object v4, v8

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_23b
    if-ge v11, v13, :cond_250

    aget-object v7, v4, v11

    .line 2851
    .local v7, device:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    add-int/lit8 v11, v11, 0x1

    goto :goto_23b

    .line 2857
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #device:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_250
    const-string v19, "\n--Headset Service--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    packed-switch v19, :pswitch_data_340

    .line 2873
    :goto_267
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\ngetCurrentHeadset() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getBatteryUsageHint() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 2876
    const-string v19, "\n--Application Service Records--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2bd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_18f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2878
    .local v9, handle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2879
    .local v14, pid:Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\tpid "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " handle "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2bd

    .line 2860
    .end local v9           #handle:Ljava/lang/Integer;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #pid:Ljava/lang/Integer;
    :pswitch_308
    const-string v19, "getState() = STATE_DISCONNECTED"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2863
    :pswitch_313
    const-string v19, "getState() = STATE_CONNECTING"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2866
    :pswitch_31e
    const-string v19, "getState() = STATE_CONNECTED"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2869
    :pswitch_329
    const-string v19, "getState() = STATE_ERROR"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2792
    :pswitch_data_334
    .packed-switch 0xa
        :pswitch_186
        :pswitch_190
        :pswitch_1a4
        :pswitch_19a
    .end packed-switch

    .line 2858
    :pswitch_data_340
    .packed-switch -0x1
        :pswitch_329
        :pswitch_308
        :pswitch_313
        :pswitch_31e
    .end packed-switch
.end method

.method public enable()Z
    .registers 2

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .registers 21
    .parameter "saveSetting"

    .prologue
    .line 619
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "bluetooth_enabled"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_21

    .line 621
    const-string v15, "BT is Disabled"

    invoke-static {v15}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_311
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c

    .line 622
    const/4 v15, 0x0

    .line 808
    :goto_1a
    monitor-exit p0

    return v15

    .line 624
    :catch_1c
    move-exception v15

    move-object v8, v15

    .local v8, e:Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    .end local v8           #e:Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v15, v0

    const-string v16, "android.permission.BLUETOOTH_ADMIN"

    const-string v17, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v15, "BluetoothService"

    const-string v16, "enable..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-direct/range {p0 .. p0}, Landroid/server/BluetoothService;->setAddress()V

    .line 637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    move v15, v0

    if-eqz v15, :cond_54

    invoke-direct/range {p0 .. p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v15

    if-eqz v15, :cond_54

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    move v15, v0

    if-nez v15, :cond_54

    .line 638
    const-string v15, "BluetoothService"

    const-string v16, "Oops: enable BT in Airplane mode..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v15, 0x0

    goto :goto_1a

    .line 641
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move v15, v0

    const/16 v16, 0xa

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_80

    .line 642
    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Oops: enable BT in state "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v15, 0x0

    goto :goto_1a

    .line 645
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v15, v0

    if-eqz v15, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/server/BluetoothService$EnableThread;->isAlive()Z

    move-result v15

    if-eqz v15, :cond_9b

    .line 646
    const-string v15, "BluetoothService"

    const-string v16, "Oops: enable BT when enable thread is alive..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v15, 0x0

    goto :goto_1a

    .line 650
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v15, v0

    const-string v16, "device_policy"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 652
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v15

    if-nez v15, :cond_f2

    .line 654
    const-string v15, "BluetoothService"

    const-string v16, "Exchange IT Policy has disabled Bluetooth. Cannot enable"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v15, 0x0

    sput v15, Landroid/server/BluetoothService;->mPolicy:I

    .line 656
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v9, intent:Landroid/content/Intent;
    const-string v15, "android.bluetooth.adapter.extra.STATE"

    const/16 v16, 0xa

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v15, v0

    const-string v16, "android.permission.BLUETOOTH"

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v17, 0x64

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    const/4 v15, 0x0

    goto/16 :goto_1a

    .line 668
    .end local v9           #intent:Landroid/content/Intent;
    :cond_f2
    const-string/jumbo v15, "service.brcm.bt.soft_onoff"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 669
    .local v14, soft_onoff_prop:Ljava/lang/String;
    const-string/jumbo v15, "service.brcm.bt.hcid_active"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 673
    .local v11, prop:Ljava/lang/String;
    if-eqz v11, :cond_139

    const-string v15, "1"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_139

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v15, v0

    const-string v16, "bluetooth_fm_receiver_service"

    invoke-static/range {v15 .. v16}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_139

    .line 675
    const/16 v15, 0xb

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 676
    new-instance v15, Landroid/server/BluetoothService$EnableThread;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothService$EnableThread;-><init>(Landroid/server/BluetoothService;Z)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/server/BluetoothService$EnableThread;->start()V

    .line 678
    const/4 v15, 0x1

    goto/16 :goto_1a

    .line 681
    :cond_139
    if-eqz v11, :cond_192

    const-string v15, "1"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_192

    .line 682
    const-string v15, "BluetoothService"

    const-string v16, "Oops: bluetoothd is still active. Stop it now..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v15, "ctl.stop"

    const-string v16, "bluetoothd"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v3, 0x1

    .line 689
    .local v3, bluetoothdRunning:Z
    :goto_152
    if-eqz v14, :cond_194

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_159
    .catchall {:try_start_1e .. :try_end_159} :catchall_311

    move-result v15

    if-eqz v15, :cond_194

    .line 692
    const/4 v6, 0x0

    .line 704
    .local v6, btldRunning:Z
    :goto_15d
    const/4 v12, 0x4

    .local v12, retryCnt:I
    move v13, v12

    .line 705
    .end local v12           #retryCnt:I
    .local v13, retryCnt:I
    :goto_15f
    if-nez v3, :cond_163

    if-eqz v6, :cond_1b7

    :cond_163
    add-int/lit8 v12, v13, -0x1

    .end local v13           #retryCnt:I
    .restart local v12       #retryCnt:I
    if-lez v13, :cond_1b8

    .line 707
    const-wide/16 v15, 0xfa

    :try_start_169
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_311
    .catch Ljava/lang/InterruptedException; {:try_start_169 .. :try_end_16c} :catch_30b

    .line 710
    :goto_16c
    if-eqz v3, :cond_17e

    :try_start_16e
    const-string/jumbo v15, "service.brcm.bt.hcid_active"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17e

    .line 712
    const/4 v3, 0x0

    .line 714
    :cond_17e
    if-eqz v6, :cond_317

    const-string/jumbo v15, "service.brcm.bt.srv_active"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_317

    .line 716
    const/4 v6, 0x0

    move v13, v12

    .end local v12           #retryCnt:I
    .restart local v13       #retryCnt:I
    goto :goto_15f

    .line 687
    .end local v3           #bluetoothdRunning:Z
    .end local v6           #btldRunning:Z
    .end local v13           #retryCnt:I
    :cond_192
    const/4 v3, 0x0

    .restart local v3       #bluetoothdRunning:Z
    goto :goto_152

    .line 694
    :cond_194
    const-string/jumbo v15, "service.brcm.bt.srv_active"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 695
    if-eqz v11, :cond_1b5

    const-string v15, "1"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b5

    .line 696
    const-string v15, "BluetoothService"

    const-string v16, "Oops: btld is still active. Stop it now..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v15, "ctl.stop"

    const-string v16, "btld"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v6, 0x1

    .restart local v6       #btldRunning:Z
    goto :goto_15d

    .line 701
    .end local v6           #btldRunning:Z
    :cond_1b5
    const/4 v6, 0x0

    .restart local v6       #btldRunning:Z
    goto :goto_15d

    .restart local v13       #retryCnt:I
    :cond_1b7
    move v12, v13

    .line 719
    .end local v13           #retryCnt:I
    .restart local v12       #retryCnt:I
    :cond_1b8
    if-nez v3, :cond_1bc

    if-eqz v6, :cond_1de

    .line 720
    :cond_1bc
    if-eqz v3, :cond_1cd

    .line 721
    const-string/jumbo v15, "service.brcm.bt.hcid_active"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v15, "BluetoothService"

    const-string v16, "Oops: bluetoothd stop timed out. Give up..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1cd
    if-eqz v6, :cond_1de

    .line 725
    const-string/jumbo v15, "service.brcm.bt.srv_active"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v15, "BluetoothService"

    const-string v16, "Oops: btld stop timed out. Give up..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1de
    const-string/jumbo v15, "persist.sys.bt_lock"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 732
    .local v7, dev_btlock_state:Ljava/lang/String;
    const-string v15, "bt_lock.enabled"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20b

    .line 733
    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Oops: enable BT dev_btlock_state "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v15, 0x0

    goto/16 :goto_1a

    .line 741
    :cond_20b
    if-eqz v14, :cond_292

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_292

    .line 744
    const/4 v5, 0x0

    .line 755
    .local v5, btldActive:Z
    :goto_216
    const-string/jumbo v15, "service.brcm.bt.activation"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b6

    .line 756
    const-string v15, "BluetoothService"

    const-string v16, "Oops: service.brcm.bt.activation is set. Clear it now!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string/jumbo v15, "service.brcm.bt.activation"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_234
    .catchall {:try_start_16e .. :try_end_234} :catchall_311

    .line 758
    const/4 v4, 0x1

    .line 765
    .local v4, btActivation:Z
    :goto_235
    const/4 v12, 0x5

    move v13, v12

    .line 766
    .end local v12           #retryCnt:I
    .restart local v13       #retryCnt:I
    :goto_237
    if-nez v3, :cond_23f

    if-nez v6, :cond_23f

    if-nez v5, :cond_23f

    if-eqz v4, :cond_2b9

    :cond_23f
    add-int/lit8 v12, v13, -0x1

    .end local v13           #retryCnt:I
    .restart local v12       #retryCnt:I
    if-lez v13, :cond_2ba

    .line 768
    const-wide/16 v15, 0xfa

    :try_start_245
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_311
    .catch Ljava/lang/InterruptedException; {:try_start_245 .. :try_end_248} :catch_30e

    .line 771
    :goto_248
    if-eqz v3, :cond_25a

    :try_start_24a
    const-string/jumbo v15, "service.brcm.bt.hcid_active"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_25a

    .line 773
    const/4 v3, 0x0

    .line 775
    :cond_25a
    if-eqz v6, :cond_26c

    const-string/jumbo v15, "service.brcm.bt.srv_active"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26c

    .line 777
    const/4 v6, 0x0

    .line 779
    :cond_26c
    if-eqz v5, :cond_27e

    const-string/jumbo v15, "service.brcm.bt.btld"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_27e

    .line 781
    const/4 v5, 0x0

    .line 783
    :cond_27e
    if-eqz v4, :cond_314

    const-string/jumbo v15, "service.brcm.bt.activation"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_314

    .line 785
    const/4 v4, 0x0

    move v13, v12

    .end local v12           #retryCnt:I
    .restart local v13       #retryCnt:I
    goto :goto_237

    .line 746
    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v13           #retryCnt:I
    .restart local v12       #retryCnt:I
    :cond_292
    const-string/jumbo v15, "service.brcm.bt.btld"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b3

    .line 747
    const-string v15, "BluetoothService"

    const-string v16, "Oops: service.brcm.bt.btld is set. Clear it now!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string/jumbo v15, "service.brcm.bt.btld"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v5, 0x1

    .restart local v5       #btldActive:Z
    goto/16 :goto_216

    .line 751
    .end local v5           #btldActive:Z
    :cond_2b3
    const/4 v5, 0x0

    .restart local v5       #btldActive:Z
    goto/16 :goto_216

    .line 761
    :cond_2b6
    const/4 v4, 0x0

    .restart local v4       #btActivation:Z
    goto/16 :goto_235

    .end local v12           #retryCnt:I
    .restart local v13       #retryCnt:I
    :cond_2b9
    move v12, v13

    .line 788
    .end local v13           #retryCnt:I
    .restart local v12       #retryCnt:I
    :cond_2ba
    if-nez v3, :cond_2c2

    if-nez v6, :cond_2c2

    if-nez v5, :cond_2c2

    if-eqz v4, :cond_2e9

    .line 789
    :cond_2c2
    if-eqz v3, :cond_2cb

    .line 790
    const-string v15, "BluetoothService"

    const-string v16, "Oops: Reset property service.brcm.bt.hcid_active timed out. Give up..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_2cb
    if-eqz v6, :cond_2d4

    .line 793
    const-string v15, "BluetoothService"

    const-string v16, "Oops: Reset property service.brcm.bt.srv_active timed out. Give up..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_2d4
    if-eqz v5, :cond_2dd

    .line 796
    const-string v15, "BluetoothService"

    const-string v16, "Oops: Reset property service.brcm.bt.btld timed out. Give up..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_2dd
    if-nez v4, :cond_2e6

    .line 799
    const-string v15, "BluetoothService"

    const-string v16, "Oops: Reset property service.brcm.bt.activation timed out. Give up..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_2e6
    const/4 v15, 0x0

    goto/16 :goto_1a

    .line 805
    :cond_2e9
    const/16 v15, 0xb

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 806
    new-instance v15, Landroid/server/BluetoothService$EnableThread;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothService$EnableThread;-><init>(Landroid/server/BluetoothService;Z)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/server/BluetoothService$EnableThread;->start()V
    :try_end_308
    .catchall {:try_start_24a .. :try_end_308} :catchall_311

    .line 808
    const/4 v15, 0x1

    goto/16 :goto_1a

    .line 708
    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v7           #dev_btlock_state:Ljava/lang/String;
    :catch_30b
    move-exception v15

    goto/16 :goto_16c

    .line 769
    .restart local v4       #btActivation:Z
    .restart local v5       #btldActive:Z
    .restart local v7       #dev_btlock_state:Ljava/lang/String;
    :catch_30e
    move-exception v15

    goto/16 :goto_248

    .line 619
    .end local v3           #bluetoothdRunning:Z
    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v6           #btldRunning:Z
    .end local v7           #dev_btlock_state:Ljava/lang/String;
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #prop:Ljava/lang/String;
    .end local v12           #retryCnt:I
    .end local v14           #soft_onoff_prop:Ljava/lang/String;
    :catchall_311
    move-exception v15

    monitor-exit p0

    throw v15

    .restart local v3       #bluetoothdRunning:Z
    .restart local v4       #btActivation:Z
    .restart local v5       #btldActive:Z
    .restart local v6       #btldRunning:Z
    .restart local v7       #dev_btlock_state:Ljava/lang/String;
    .restart local v10       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v11       #prop:Ljava/lang/String;
    .restart local v12       #retryCnt:I
    .restart local v14       #soft_onoff_prop:Ljava/lang/String;
    :cond_314
    move v13, v12

    .end local v12           #retryCnt:I
    .restart local v13       #retryCnt:I
    goto/16 :goto_237

    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v7           #dev_btlock_state:Ljava/lang/String;
    .end local v13           #retryCnt:I
    .restart local v12       #retryCnt:I
    :cond_317
    move v13, v12

    .end local v12           #retryCnt:I
    .restart local v13       #retryCnt:I
    goto/16 :goto_15f
.end method

.method public declared-synchronized fetchRemoteDiInfo(Ljava/lang/String;)V
    .registers 6
    .parameter "remoteAddress"

    .prologue
    const-string v1, "BluetoothService"

    .line 3200
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 3203
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Remote address invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5d

    .line 3220
    :goto_2a
    monitor-exit p0

    return-void

    .line 3207
    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3e

    .line 3208
    const-string v1, "BluetoothService"

    const-string v2, "Device not bonded - Creating first"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    .line 3212
    :cond_3e
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3213
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_60

    .line 3214
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Object path not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_5d

    goto :goto_2a

    .line 3200
    .end local v0           #path:Ljava/lang/String;
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3218
    .restart local v0       #path:Ljava/lang/String;
    :cond_60
    :try_start_60
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchRemoteDiInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->fetchRemoteDiInfoNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_5d

    goto :goto_2a
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .registers 12
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 2240
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_8e

    move-result v4

    if-nez v4, :cond_14

    move v4, v7

    .line 2300
    :goto_12
    monitor-exit p0

    return v4

    .line 2243
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v7

    .line 2244
    goto :goto_12

    .line 2247
    :cond_1c
    new-instance v3, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v3, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 2248
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_2d

    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    move v4, v7

    .line 2251
    goto :goto_12

    .line 2254
    :cond_2d
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2257
    if-eqz p2, :cond_41

    .line 2258
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    :cond_41
    const/4 v4, 0x1

    goto :goto_12

    .line 2278
    :cond_43
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_52

    .line 2279
    :cond_4f
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    .line 2282
    :cond_52
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2283
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_5a

    move v4, v7

    goto :goto_12

    .line 2285
    :cond_5a
    if-nez p2, :cond_85

    .line 2287
    const-string v4, "GET_ALL_SERVICES"

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2292
    .local v2, ret:Z
    :goto_62
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2293
    if-eqz p2, :cond_73

    .line 2294
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    :cond_73
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2298
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2299
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1770

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v4, v2

    .line 2300
    goto :goto_12

    .line 2289
    .end local v0           #message:Landroid/os/Message;
    .end local v2           #ret:Z
    :cond_85
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8c
    .catchall {:try_start_14 .. :try_end_8c} :catchall_8e

    move-result v2

    .restart local v2       #ret:Z
    goto :goto_62

    .line 2240
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #ret:Z
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_8e
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    :try_start_7
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 435
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 437
    return-void

    .line 435
    :catchall_e
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1685
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v0, "Address"

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1685
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "objectPath"

    .prologue
    const/4 v4, 0x0

    const-string v6, "getAddressFromObjectPath: AdapterObjectPath:"

    const-string v5, "BluetoothService"

    .line 2905
    const-string v2, "ObjectPath"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2906
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_f

    if-nez p1, :cond_39

    .line 2907
    :cond_f
    const-string v2, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  or deviceObjectPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2921
    :goto_38
    return-object v2

    .line 2911
    :cond_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 2912
    const-string v2, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bluetoothd crashed ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2915
    goto :goto_38

    .line 2917
    :cond_69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2918
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_7c

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    .line 2920
    :cond_7c
    const-string v2, "BluetoothService"

    const-string v2, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2921
    goto :goto_38
.end method

.method declared-synchronized getAllProperties()V
    .registers 14

    .prologue
    const-string v9, "BluetoothService"

    .line 1471
    monitor-enter p0

    :try_start_3
    iget-object v9, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    const-string v11, "Need BLUETOOTH permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 1474
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAdapterPropertiesNative()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 1476
    .local v7, properties:[Ljava/lang/String;
    if-nez v7, :cond_26

    .line 1477
    const-string v9, "BluetoothService"

    const-string v10, "*Error*: GetAdapterProperties returned NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_8f

    .line 1509
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 1481
    :cond_26
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    :try_start_27
    array-length v9, v7

    if-ge v2, v9, :cond_97

    .line 1482
    aget-object v5, v7, v2

    .line 1483
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1485
    .local v6, newValue:Ljava/lang/String;
    if-nez v5, :cond_50

    .line 1486
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error:Adapter Property at index"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1489
    :cond_50
    const-string v9, "Devices"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 1490
    :cond_60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1491
    .local v8, str:Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1492
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_72
    if-ge v3, v4, :cond_83

    .line 1493
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 1496
    :cond_83
    if-lez v4, :cond_89

    .line 1497
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1502
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_89
    :goto_89
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_27 .. :try_end_8e} :catchall_8f

    goto :goto_4d

    .line 1471
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    .end local v7           #properties:[Ljava/lang/String;
    :catchall_8f
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1500
    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #newValue:Ljava/lang/String;
    .restart local v7       #properties:[Ljava/lang/String;
    :cond_92
    add-int/lit8 v2, v2, 0x1

    :try_start_94
    aget-object v6, v7, v2

    goto :goto_89

    .line 1506
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    :cond_97
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAdapterPathNative()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, adapterPath:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 1508
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    const-string v10, "ObjectPath"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dev_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catchall {:try_start_94 .. :try_end_b7} :catchall_8f

    goto/16 :goto_24
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .parameter "address"

    .prologue
    .line 3070
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3071
    .local v0, data:Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .registers 4

    .prologue
    .line 449
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 1987
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    move-result v0

    if-nez v0, :cond_14

    .line 1989
    const/high16 v0, -0x8000

    .line 1991
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1f

    move-result v0

    goto :goto_12

    .line 1987
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .registers 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1923
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public declared-synchronized getDiscoverableTimeout()I
    .registers 5

    .prologue
    .line 1782
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string v1, "DiscoverableTimeout"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, timeout:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 1785
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1e

    move-result v1

    .line 1787
    :goto_1a
    monitor-exit p0

    return v1

    :cond_1c
    const/4 v1, -0x1

    goto :goto_1a

    .line 1782
    .end local v0           #timeout:Ljava/lang/String;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHidInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "address"

    .prologue
    .line 3227
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getHidInfoNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .registers 3
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3097
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3098
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 3099
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 3101
    :cond_e
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const-string v3, "Name"

    .line 1690
    monitor-enter p0

    :try_start_5
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1698
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Landroid/server/BluetoothService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1702
    const-string v3, "Name"

    invoke-virtual {p0, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1704
    if-nez v2, :cond_2a

    .line 1705
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1708
    :cond_2a
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1710
    iget-object v3, p0, Landroid/server/BluetoothService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_70

    .line 1714
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/server/BluetoothService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1715
    .local v1, cid:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_72

    .line 1716
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, buffer:Ljava/lang/String;
    const-string v3, "%s(%s**)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1723
    .end local v0           #buffer:Ljava/lang/String;
    :goto_69
    if-eqz v2, :cond_70

    .line 1724
    const-string v3, "Name"

    invoke-direct {p0, v3, v2}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_70
    .catchall {:try_start_5 .. :try_end_70} :catchall_7f

    .line 1729
    .end local v1           #cid:Ljava/lang/String;
    :cond_70
    monitor-exit p0

    return-object v2

    .line 1720
    .restart local v1       #cid:Ljava/lang/String;
    :cond_72
    :try_start_72
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_7f

    move-result-object v2

    goto :goto_69

    .line 1690
    .end local v1           #cid:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_7f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "address"

    .prologue
    .line 2925
    const-string v1, "ObjectPath"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2926
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2927
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    const/4 v1, 0x0

    .line 2931
    :goto_10
    return-object v1

    .line 2930
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2931
    goto :goto_10
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1673
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1674
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_8

    .line 1673
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1678
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1679
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1f

    .line 1681
    :goto_11
    monitor-exit p0

    return-object v0

    .line 1680
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 1681
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 1678
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .registers 7
    .parameter "address"

    .prologue
    const/high16 v4, -0x100

    .line 2188
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2189
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    move v1, v4

    .line 2196
    :goto_13
    monitor-exit p0

    return v1

    .line 2192
    :cond_15
    :try_start_15
    const-string v1, "Class"

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2193
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1f

    move v1, v4

    .line 2194
    goto :goto_13

    .line 2196
    :cond_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_28

    move-result v1

    goto :goto_13

    .line 2188
    .end local v0           #val:Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 2016
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 2019
    .end local p0
    :goto_7
    return-object v1

    .line 2018
    .restart local p0
    :cond_8
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2019
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v1, p0

    goto :goto_7
.end method

.method declared-synchronized getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "address"
    .parameter "property"

    .prologue
    .line 2023
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2024
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    .line 2025
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3f

    .line 2035
    :goto_11
    monitor-exit p0

    return-object v1

    .line 2030
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2031
    invoke-virtual {p0, p1, p2}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 2034
    :cond_1e
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "not present:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3f

    .line 2035
    const/4 v1, 0x0

    goto :goto_11

    .line 2023
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_3f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "address"

    .prologue
    .line 1747
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3b

    move-result v2

    if-nez v2, :cond_13

    .line 1749
    const/4 v2, 0x0

    .line 1769
    :goto_11
    monitor-exit p0

    return-object v2

    .line 1755
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1756
    .local v0, ms:J
    iget-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1757
    iget-wide v2, p0, Landroid/server/BluetoothService;->mLastRemoteMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2e

    .line 1759
    iget-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;

    goto :goto_11

    .line 1763
    :cond_2c
    iput-object p1, p0, Landroid/server/BluetoothService;->mLastRemoteAddress:Ljava/lang/String;

    .line 1766
    :cond_2e
    const-string v2, "Name"

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;

    .line 1767
    iput-wide v0, p0, Landroid/server/BluetoothService;->mLastRemoteMs:J

    .line 1769
    iget-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3b

    goto :goto_11

    .line 1747
    .end local v0           #ms:J
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .registers 8
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v4, -0x1

    .line 2314
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v4

    .line 2329
    .end local p0
    :goto_11
    return v1

    .line 2317
    .restart local p0
    :cond_12
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2318
    const/high16 v1, -0x8000

    goto :goto_11

    .line 2321
    :cond_1b
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2322
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    move v1, v4

    .line 2323
    goto :goto_11

    .line 2326
    :cond_2b
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2327
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_46

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2328
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    .restart local p0
    :cond_46
    move v1, v4

    .line 2329
    goto :goto_11
.end method

.method public declared-synchronized getRemoteServices(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2936
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_33

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2950
    :goto_12
    monitor-exit p0

    return v1

    .line 2941
    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_24

    .line 2942
    const-string v1, "getRemoteServices()...Device not bonded... Creating first..."

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2943
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    .line 2946
    :cond_24
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2947
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_2c

    move v1, v4

    goto :goto_12

    .line 2949
    :cond_2c
    const-string v1, "GET_ALL_SERVICES"

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_33

    .line 2950
    const/4 v1, 0x1

    goto :goto_12

    .line 2936
    .end local v0           #path:Ljava/lang/String;
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 5
    .parameter "address"

    .prologue
    .line 2207
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 2209
    const/4 v0, 0x0

    .line 2211
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 2207
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanMode()I
    .registers 6

    .prologue
    const-string/jumbo v2, "true"

    .line 1791
    monitor-enter p0

    :try_start_4
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_36

    move-result v2

    if-nez v2, :cond_17

    .line 1793
    const/16 v2, 0x14

    .line 1797
    :goto_15
    monitor-exit p0

    return v2

    .line 1795
    :cond_17
    :try_start_17
    const-string v2, "Pairable"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1796
    .local v1, pairable:Z
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1797
    .local v0, discoverable:Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_36

    move-result v2

    goto :goto_15

    .line 1791
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2129
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2130
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2b

    move v1, v4

    .line 2138
    :goto_12
    monitor-exit p0

    return v1

    .line 2134
    :cond_14
    :try_start_14
    const-string v1, "Trusted"

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2135
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1e

    move v1, v4

    .line 2136
    goto :goto_12

    .line 2138
    :cond_1e
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_2b

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_12

    :cond_29
    move v1, v4

    goto :goto_12

    .line 2129
    .end local v0           #val:Ljava/lang/String;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initAfterRegistration()V
    .registers 8

    .prologue
    const-string v4, "bluetooth"

    .line 393
    monitor-enter p0

    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 394
    new-instance v4, Landroid/server/BluetoothEventLoop;

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v4, v5, v6, p0}, Landroid/server/BluetoothEventLoop;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    .line 397
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v4, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v4, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v4, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 408
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_6c

    const/4 v4, 0x1

    :goto_4e
    iput-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 415
    if-nez v3, :cond_73

    const/4 v4, 0x0

    :goto_53
    iput-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 418
    iget-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v4, :cond_5e

    .line 419
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    :cond_5e
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_7a

    .line 427
    monitor-exit p0

    return-void

    .line 413
    :cond_6c
    :try_start_6c
    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_4e

    .line 415
    :cond_73
    const-string v4, "bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_7a

    move-result v4

    goto :goto_53

    .line 393
    .end local v0           #airplaneModeRadios:Ljava/lang/String;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #toggleableRadios:Ljava/lang/String;
    :catchall_7a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized isAdapterPropertiesEmpty()Z
    .registers 2

    .prologue
    .line 1466
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 2005
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2008
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    move-result v1

    monitor-exit p0

    return v1

    .line 2005
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isDiscovering()Z
    .registers 4

    .prologue
    .line 1836
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 1836
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 440
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 2012
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1978
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1978
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public listHidInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3231
    invoke-direct {p0}, Landroid/server/BluetoothService;->listHidInfoNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 1983
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .registers 12
    .parameter "address"

    .prologue
    const-string v6, " "

    .line 2763
    monitor-enter p0

    :try_start_3
    iget-object v6, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2764
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 2765
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 2770
    .local v5, service:Landroid/server/BluetoothService$RemoteService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v5, Landroid/server/BluetoothService$RemoteService;->timestamp:J

    sub-long v0, v6, v8

    .line 2771
    .local v0, age:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeServiceChannelCallbacks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "address"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "service age : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2774
    iget-object v6, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-wide/16 v6, 0x1770

    cmp-long v6, v0, v6

    if-ltz v6, :cond_d

    .line 2776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2778
    iget-object v6, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothCallback;
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_a1

    .line 2779
    .local v2, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v2, :cond_9c

    .line 2781
    const/4 v6, -0x1

    :try_start_99
    invoke-interface {v2, v6}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9c} :catch_a4

    .line 2785
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a1

    goto/16 :goto_d

    .line 2763
    .end local v0           #age:J
    .end local v2           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_a1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2782
    .restart local v0       #age:J
    .restart local v2       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v5       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_a4
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    :try_start_a5
    const-string v6, "BluetoothService"

    const-string v7, ""

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_a1

    goto :goto_9c

    .line 2788
    .end local v0           #age:J
    .end local v2           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_ad
    monitor-exit p0

    return-void
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3054
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3056
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_17

    .line 3057
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3058
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3059
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3060
    const/4 v2, 0x1

    .line 3062
    .end local v0           #msg:Landroid/os/Message;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public notifyIncomingConnection(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3042
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3044
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_17

    .line 3045
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3046
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3047
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3048
    const/4 v2, 0x1

    .line 3050
    .end local v0           #msg:Landroid/os/Message;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1108
    monitor-enter p0

    if-nez p2, :cond_18

    .line 1109
    const/16 v0, 0xc

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 1110
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1111
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_2b

    .line 1126
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 1113
    :cond_18
    if-ne p2, v1, :cond_2e

    :try_start_1a
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 1115
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 1116
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2b

    goto :goto_16

    .line 1108
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1117
    :cond_2e
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3d

    :try_start_31
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1119
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_16

    .line 1121
    :cond_3d
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1122
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1123
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_2b

    goto :goto_16
.end method

.method public declared-synchronized readOutOfBandData()[B
    .registers 4

    .prologue
    .line 1928
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1932
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1928
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1955
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_2f

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 1967
    :goto_12
    monitor-exit p0

    return v1

    .line 1959
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v4

    .line 1960
    goto :goto_12

    .line 1962
    :cond_1c
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1963
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_2d

    .line 1964
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2f

    .line 1965
    const/4 v1, 0x1

    goto :goto_12

    :cond_2d
    move v1, v4

    .line 1967
    goto :goto_12

    .line 1955
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1973
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1974
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 1973
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeRemoteDeviceProperties(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    return-void
.end method

.method public removeServiceRecord(I)V
    .registers 5
    .parameter "handle"

    .prologue
    .line 2548
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    .line 2551
    return-void
.end method

.method declared-synchronized restart()V
    .registers 3

    .prologue
    .line 813
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    .line 820
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 816
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mRestart:Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    goto :goto_7

    .line 813
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendProfileStateMessage(II)V
    .registers 5
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 3075
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3076
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3077
    if-nez p1, :cond_f

    .line 3078
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3082
    :cond_e
    :goto_e
    return-void

    .line 3079
    :cond_f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 3080
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 2751
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2752
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bleutooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2753
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2754
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2755
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2757
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2758
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 2760
    :cond_30
    monitor-exit p0

    return-void

    .line 2751
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .parameter "a2dpService"

    .prologue
    .line 3066
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 3067
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1995
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .registers 6
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1999
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 2001
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1999
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .registers 8
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const-string v1, ":"

    .line 1907
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_53

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    .line 1919
    :goto_13
    monitor-exit p0

    return v1

    .line 1911
    :cond_15
    :try_start_15
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1914
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting out of band data for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1918
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_53

    .line 1919
    const/4 v1, 0x1

    goto :goto_13

    .line 1907
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v0, "DiscoverableTimeout"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 1556
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setIsDiscovering(Z)V
    .registers 2
    .parameter "isDiscovering"

    .prologue
    .line 1841
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 1842
    return-void
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 2955
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2956
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 2958
    .local v1, result:Z
    if-nez v1, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Link Timeout to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slots failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2959
    :cond_26
    return-void
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 1516
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    .line 1518
    if-nez p1, :cond_f

    .line 1519
    const/4 v0, 0x0

    .line 1521
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 1516
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .registers 8
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x0

    .line 2380
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_5c

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2392
    :goto_12
    monitor-exit p0

    return v1

    .line 2384
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2385
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2386
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_53

    .line 2387
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2390
    goto :goto_12

    .line 2392
    :cond_53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_5a
    .catchall {:try_start_14 .. :try_end_5a} :catchall_5c

    move-result v1

    goto :goto_12

    .line 2380
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .registers 8
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v4, 0x0

    .line 2361
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_6b

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2376
    :goto_12
    monitor-exit p0

    return v1

    .line 2365
    :cond_14
    if-ltz p2, :cond_21

    const v1, 0xf423f

    if-gt p2, v1, :cond_21

    :try_start_1b
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_21
    move v1, v4

    .line 2366
    goto :goto_12

    .line 2368
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2369
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2370
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_62

    .line 2371
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2374
    goto :goto_12

    .line 2376
    :cond_62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_69
    .catchall {:try_start_1b .. :try_end_69} :catchall_6b

    move-result v1

    goto :goto_12

    .line 2361
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_6b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .registers 10
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v6, 0x0

    const-string v3, "BluetoothService"

    .line 2333
    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_82

    move-result v3

    if-nez v3, :cond_16

    move v3, v6

    .line 2357
    :goto_14
    monitor-exit p0

    return v3

    .line 2337
    :cond_16
    if-eqz p2, :cond_26

    :try_start_18
    array-length v3, p2

    if-lez v3, :cond_26

    array-length v3, p2

    const/16 v4, 0x10

    if-gt v3, v4, :cond_26

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    move v3, v6

    .line 2339
    goto :goto_14

    .line 2341
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2342
    iget-object v3, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v3}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2343
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_67

    .line 2344
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or by bluez.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_18 .. :try_end_65} :catchall_82

    move v3, v6

    .line 2347
    goto :goto_14

    .line 2352
    :cond_67
    :try_start_67
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v1, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_6e} :catch_77

    .line 2357
    .local v1, pinString:Ljava/lang/String;
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_14

    .line 2353
    .end local v1           #pinString:Ljava/lang/String;
    :catch_77
    move-exception v3

    move-object v2, v3

    .line 2354
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "BluetoothService"

    const-string v4, "UTF8 not supported?!?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_82

    move v3, v6

    .line 2355
    goto :goto_14

    .line 2333
    .end local v0           #data:Ljava/lang/Integer;
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :catchall_82
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1512
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1513
    monitor-exit p0

    return-void

    .line 1512
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2093
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2094
    .local v0, propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 2095
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1e

    .line 2101
    :goto_13
    monitor-exit p0

    return-void

    .line 2099
    :cond_15
    :try_start_15
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "setRemoteDeviceProperty for a device not in cache:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 2093
    .end local v0           #propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .registers 10
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    .line 2396
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_77

    move-result v4

    if-nez v4, :cond_14

    move v4, v7

    .line 2418
    :goto_12
    monitor-exit p0

    return v4

    .line 2399
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2400
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2401
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_53

    .line 2402
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRemoteOobData("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 2405
    goto :goto_12

    .line 2408
    :cond_53
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2410
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_6e

    .line 2412
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 2413
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 2418
    .local v2, randomizer:[B
    :goto_65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_12

    .line 2415
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_6e
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 2416
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_76
    .catchall {:try_start_14 .. :try_end_76} :catchall_77

    .restart local v2       #randomizer:[B
    goto :goto_65

    .line 2396
    .end local v0           #data:Ljava/lang/Integer;
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    .end local v3           #val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_77
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setScanMode(II)Z
    .registers 6
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 1568
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->_setScanMode(II)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 1568
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServiceTrust(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .parameter "address"
    .parameter "service"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2162
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2163
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2b

    move v0, v3

    .line 2172
    :goto_13
    monitor-exit p0

    return v0

    .line 2168
    :cond_15
    :try_start_15
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v3

    goto :goto_13

    .line 2170
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_29

    move v1, v2

    :goto_24
    invoke-direct {p0, v0, p2, v1}, Landroid/server/BluetoothService;->setServiceTrustNative(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2b

    move v0, v2

    .line 2172
    goto :goto_13

    :cond_29
    move v1, v3

    .line 2170
    goto :goto_24

    .line 2162
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 2109
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2110
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2c

    move v0, v3

    .line 2117
    :goto_12
    monitor-exit p0

    return v0

    .line 2115
    :cond_14
    :try_start_14
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v3

    goto :goto_12

    .line 2117
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trusted"

    if-eqz p2, :cond_2a

    const/4 v2, 0x1

    :goto_25
    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    move-result v0

    goto :goto_12

    :cond_2a
    move v2, v3

    goto :goto_25

    .line 2109
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .registers 4

    .prologue
    .line 1801
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1805
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1801
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscoveryByCod(I)Z
    .registers 5
    .parameter "cod"

    .prologue
    .line 1811
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_31

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1817
    :goto_11
    monitor-exit p0

    return v0

    .line 1815
    :cond_13
    :try_start_13
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscoveryByCod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->startDiscoveryByCodNative(I)Z
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_31

    move-result v0

    goto :goto_11

    .line 1811
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .registers 21
    .parameter "address"

    .prologue
    .line 2443
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 2448
    .local v8, deviceUuids:[Landroid/os/ParcelUuid;
    const-string/jumbo v16, "updateDeviceServiceChannelCache"

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2450
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2452
    .local v4, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 2453
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_48

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/server/BluetoothService$RemoteService;

    .line 2454
    .local v13, service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 2455
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 2458
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_45
    move-exception v16

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_45

    throw v16

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 2460
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2463
    .local v15, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    sget-object v5, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v5, arr$:[Landroid/os/ParcelUuid;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_52
    if-ge v10, v12, :cond_a6

    aget-object v14, v5, v10

    .line 2464
    .local v14, uuid:Landroid/os/ParcelUuid;
    invoke-static {v8, v14}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v16

    if-eqz v16, :cond_a3

    .line 2465
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 2467
    .local v7, channel:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tuuid(system): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2468
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    .end local v7           #channel:I
    :cond_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 2472
    .end local v14           #uuid:Landroid/os/ParcelUuid;
    :cond_a6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_aa
    :goto_aa
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_104

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelUuid;

    .line 2473
    .restart local v14       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v8, v14}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v16

    if-eqz v16, :cond_aa

    .line 2474
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 2476
    .restart local v7       #channel:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tuuid(application): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2477
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    .line 2481
    .end local v7           #channel:I
    .end local v14           #uuid:Landroid/os/ParcelUuid;
    :cond_104
    monitor-enter p0

    .line 2483
    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2484
    .end local v4           #applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_113
    :goto_113
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a1

    .line 2485
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/server/BluetoothService$RemoteService;

    .line 2486
    .restart local v13       #service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_113

    .line 2487
    const/4 v7, -0x1

    .line 2488
    .restart local v7       #channel:I
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_149

    .line 2489
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2491
    :cond_149
    const/16 v16, -0x1

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_113

    .line 2492
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Making callback for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " with result "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/IBluetoothCallback;
    :try_end_187
    .catchall {:try_start_105 .. :try_end_187} :catchall_190

    .line 2495
    .local v6, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v6, :cond_18c

    .line 2497
    :try_start_189
    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_190
    .catch Landroid/os/RemoteException; {:try_start_189 .. :try_end_18c} :catch_193

    .line 2501
    :cond_18c
    :goto_18c
    :try_start_18c
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_113

    .line 2508
    .end local v6           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v7           #channel:I
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_190
    move-exception v16

    monitor-exit p0
    :try_end_192
    .catchall {:try_start_18c .. :try_end_192} :catchall_190

    throw v16

    .line 2498
    .restart local v6       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v7       #channel:I
    .restart local v11       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v13       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_193
    move-exception v9

    .local v9, e:Landroid/os/RemoteException;
    :try_start_194
    const-string v16, "BluetoothService"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18c

    .line 2507
    .end local v6           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v7           #channel:I
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    monitor-exit p0
    :try_end_1b0
    .catchall {:try_start_194 .. :try_end_1b0} :catchall_190

    .line 2509
    return-void
.end method

.method declared-synchronized updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 2039
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2041
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 2042
    const/4 v1, 0x1

    .line 2044
    :goto_b
    monitor-exit p0

    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 2039
    .end local v0           #propValues:[Ljava/lang/String;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateRemoteName(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 3196
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->updateRemoteNameNative(Ljava/lang/String;)V

    .line 3197
    return-void
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .registers 14
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, data:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v7, ","

    .line 3160
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 3161
    :try_start_5
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 3164
    const/4 v3, 0x0

    .line 3165
    .local v3, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_c0

    .line 3167
    .local v6, value:Ljava/lang/StringBuilder;
    :try_start_13
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_20} :catch_ce
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_20} :catch_95

    .line 3168
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_20
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3169
    .local v0, devAddress:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3170
    .local v5, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3171
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3172
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catchall {:try_start_20 .. :try_end_62} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_62} :catch_ca

    goto :goto_2a

    .line 3178
    .end local v0           #devAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_63
    move-exception v7

    move-object v1, v7

    move-object v3, v4

    .line 3179
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_66
    :try_start_66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_b9

    .line 3183
    if-eqz v3, :cond_85

    .line 3185
    :try_start_82
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_b7

    .line 3191
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_85
    :goto_85
    :try_start_85
    monitor-exit v8
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_c0

    .line 3192
    return-void

    .line 3177
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_87
    :try_start_87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8e} :catch_63
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8e} :catch_ca

    .line 3183
    if-eqz v4, :cond_93

    .line 3185
    :try_start_90
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_c5

    :cond_93
    :goto_93
    move-object v3, v4

    .line 3190
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_85

    .line 3180
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_95
    move-exception v7

    move-object v1, v7

    .line 3181
    .local v1, e:Ljava/io/IOException;
    :goto_97
    :try_start_97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_b9

    .line 3183
    if-eqz v3, :cond_85

    .line 3185
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_85

    .line 3186
    .end local v1           #e:Ljava/io/IOException;
    :catch_b7
    move-exception v7

    goto :goto_85

    .line 3183
    :catchall_b9
    move-exception v7

    :goto_ba
    if-eqz v3, :cond_bf

    .line 3185
    :try_start_bc
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c3

    .line 3183
    :cond_bf
    :goto_bf
    :try_start_bf
    throw v7

    .line 3191
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v6           #value:Ljava/lang/StringBuilder;
    :catchall_c0
    move-exception v7

    monitor-exit v8
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c0

    throw v7

    .line 3186
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v6       #value:Ljava/lang/StringBuilder;
    :catch_c3
    move-exception v9

    goto :goto_bf

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_c5
    move-exception v7

    goto :goto_93

    .line 3183
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_c7
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_ba

    .line 3180
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_ca
    move-exception v7

    move-object v1, v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_97

    .line 3178
    :catch_ce
    move-exception v7

    move-object v1, v7

    goto :goto_66
.end method
