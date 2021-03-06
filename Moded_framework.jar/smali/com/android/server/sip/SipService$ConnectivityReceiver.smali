.class Lcom/android/server/sip/SipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .registers 3
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 995
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTimer:Ljava/util/Timer;

    .line 1092
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 994
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/sip/SipService$ConnectivityReceiver;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/sip/SipService$ConnectivityReceiver;Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    return-object p1
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1063
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private onChanged(Ljava/lang/String;Z)V
    .registers 8
    .parameter "type"
    .parameter "connected"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1072
    if-eqz p2, :cond_36

    .line 1073
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    if-eqz v1, :cond_19

    .line 1074
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->cancel()Z

    .line 1075
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1077
    :cond_19
    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    .line 1078
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1081
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1089
    :goto_34
    monitor-exit v0

    .line 1090
    return-void

    .line 1083
    :cond_36
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    #getter for: Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->access$1600(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1084
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->cancel()Z

    .line 1085
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1087
    :cond_56
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/sip/SipService;->onConnectivityChanged(Ljava/lang/String;Z)V
    invoke-static {v1, p1, v2}, Lcom/android/server/sip/SipService;->access$1700(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V

    goto :goto_34

    .line 1089
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 1009
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1011
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1012
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_32

    .line 1013
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1015
    .local v3, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 1016
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1018
    .local v4, state:Landroid/net/NetworkInfo$State;
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mWifiOnly:Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v8, :cond_33

    .line 1058
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    .end local v5           #type:Ljava/lang/String;
    :cond_32
    :goto_32
    return-void

    .line 1027
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    .restart local v5       #type:Ljava/lang/String;
    :cond_33
    invoke-direct {p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1038
    .local v1, activeNetInfo:Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_47

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v6, v7, :cond_32

    .line 1046
    :cond_47
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_4f

    .line 1048
    invoke-direct {p0, v5, v8}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onChanged(Ljava/lang/String;Z)V

    goto :goto_32

    .line 1049
    :cond_4f
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_32

    .line 1051
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onChanged(Ljava/lang/String;Z)V

    goto :goto_32
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1006
    return-void
.end method
