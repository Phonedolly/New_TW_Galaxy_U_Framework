.class public Lcom/sec/android/internal/ims/rpm/RPMInterface;
.super Ljava/lang/Object;
.source "RPMInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMS/RPMInterface"

.field private static rpmInterface:Lcom/sec/android/internal/ims/rpm/RPMInterface;


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->rpmInterface:Lcom/sec/android/internal/ims/rpm/RPMInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/sec/android/internal/ims/rpm/RPMInterface$1;

    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/rpm/RPMInterface$1;-><init>(Lcom/sec/android/internal/ims/rpm/RPMInterface;)V

    iput-object v0, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Lcom/sec/android/internal/ims/rpm/RPMInterface$2;

    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/rpm/RPMInterface$2;-><init>(Lcom/sec/android/internal/ims/rpm/RPMInterface;)V

    iput-object v0, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/internal/ims/rpm/RPMInterface;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/internal/ims/rpm/RPMInterface;
    .registers 2

    .prologue
    .line 53
    const-class v0, Lcom/sec/android/internal/ims/rpm/RPMInterface;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/internal/ims/rpm/RPMInterface;->rpmInterface:Lcom/sec/android/internal/ims/rpm/RPMInterface;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/sec/android/internal/ims/rpm/RPMInterface;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/rpm/RPMInterface;-><init>()V

    sput-object v1, Lcom/sec/android/internal/ims/rpm/RPMInterface;->rpmInterface:Lcom/sec/android/internal/ims/rpm/RPMInterface;

    .line 56
    :cond_e
    sget-object v1, Lcom/sec/android/internal/ims/rpm/RPMInterface;->rpmInterface:Lcom/sec/android/internal/ims/rpm/RPMInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 150
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 151
    const-string v0, "IMS/RPMInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_9
    return-void
.end method

.method private registerForBroadcastEvents()V
    .registers 10

    .prologue
    .line 76
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "here....1"

    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Context2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    const-string v4, "Registered for radio events with ConnectivityManager"

    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 98
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :goto_39
    return-void

    .line 88
    :catch_3a
    move-exception v4

    move-object v0, v4

    .line 89
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception got..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 91
    .local v1, elems:[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5b
    array-length v4, v1

    if-ge v2, v4, :cond_8d

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  line no: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 95
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private unregisterForBroadcastEvents()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    return-void
.end method


# virtual methods
.method public deinit()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->unregisterForBroadcastEvents()V

    .line 70
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    const-string v0, "Init RPMInterface"

    invoke-static {v0}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->registerForBroadcastEvents()V

    .line 66
    return-void
.end method
