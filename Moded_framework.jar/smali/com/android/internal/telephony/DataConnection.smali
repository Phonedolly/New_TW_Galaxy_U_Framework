.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$DisconnectResult;,
        Lcom/android/internal/telephony/DataConnection$FailResult;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$State;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;,
        Lcom/android/internal/telephony/DataConnection$LinkStateResult;,
        Lcom/android/internal/telephony/DataConnection$SetupResult;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x2

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x5

.field protected static final EVENT_DISCONNECT:I = 0x6

.field protected static final EVENT_FORCE_RETRY:I = 0x8

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x4

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x7

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_RESET:I = 0x1

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x3

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected dnsServers:[Ljava/lang/String;

.field protected gatewayAddress:Ljava/lang/String;

.field protected interfaceName:Ljava/lang/String;

.field protected ipAddress:Ljava/lang/String;

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field protected mTag:I

.field public onConnectCompleted:Landroid/os/Message;

.field protected onConnectParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field protected onDisconnect:Landroid/os/Message;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected state:Lcom/android/internal/telephony/DataConnection$State;

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .registers 5
    .parameter "phone"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-direct {p0, p2}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    .line 666
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    .line 794
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    .line 853
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    .line 892
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    .line 944
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    .line 409
    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 410
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    .line 413
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->onConnectParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 414
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    .line 425
    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .registers 7
    .parameter "dp"

    .prologue
    .line 492
    const-string v1, "NotifyDisconnectCompleted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 494
    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_33

    .line 495
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 496
    .local v0, msg:Landroid/os/Message;
    const-string v2, "msg.what=%d msg.obj=%s"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :goto_24
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 509
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 511
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 515
    .end local v0           #msg:Landroid/os/Message;
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 517
    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    if-eqz v1, :cond_43

    .line 518
    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    monitor-enter v1

    .line 519
    :try_start_3d
    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 520
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_47

    .line 523
    :cond_43
    return-void

    .line 496
    .restart local v0       #msg:Landroid/os/Message;
    :cond_44
    const-string v1, "<no-reason>"

    goto :goto_24

    .line 520
    .end local v0           #msg:Landroid/os/Message;
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .registers 6
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 435
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 436
    const-string/jumbo v1, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    .line 443
    :goto_23
    return-void

    .line 439
    :cond_24
    const-string/jumbo v1, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 440
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 441
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_23
.end method


# virtual methods
.method protected clearSettings()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 529
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 531
    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 532
    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 533
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 534
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 535
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    .line 536
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 537
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 540
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->onConnectParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 541
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 543
    return-void
.end method

.method public connect(Landroid/os/Message;)V
    .registers 5
    .parameter "onCompletedMsg"

    .prologue
    .line 998
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 999
    const/4 v0, 0x2

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1000
    return-void
.end method

.method public connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V
    .registers 5
    .parameter "onCompletedMsg"
    .parameter "apn"

    .prologue
    .line 986
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 987
    const/4 v0, 0x2

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 988
    return-void
.end method

.method public disconnect(Landroid/os/Message;)V
    .registers 4
    .parameter "onCompletedMsg"

    .prologue
    .line 1009
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1010
    return-void
.end method

.method public getConnectionTime()J
    .registers 3

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    return-wide v0
.end method

.method public getDnsServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
.end method

.method public getGatewayAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method

.method public getLastFailTime()J
    .registers 3

    .prologue
    .line 1095
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    return-wide v0
.end method

.method public getStateAsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, retVal:Ljava/lang/String;
    return-object v0
.end method

.method public isActivating()Z
    .registers 4

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    if-eq v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    if-ne v1, v2, :cond_13

    :cond_10
    const/4 v1, 0x1

    move v0, v1

    .line 1039
    .local v0, retVal:Z
    :goto_12
    return v0

    .line 1038
    .end local v0           #retVal:Z
    :cond_13
    const/4 v1, 0x0

    move v0, v1

    goto :goto_12
.end method

.method public isActive()Z
    .registers 4

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    move v0, v1

    .line 1033
    .local v0, retVal:Z
    :goto_a
    return v0

    .line 1032
    .end local v0           #retVal:Z
    :cond_b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method

.method public isDisconnecting()Z
    .registers 4

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    move v0, v1

    .line 1044
    .local v0, retVal:Z
    :goto_a
    return v0

    .line 1043
    .end local v0           #retVal:Z
    :cond_b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isInactive()Z
    .registers 4

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    move v0, v1

    .line 1022
    .local v0, retVal:Z
    :goto_a
    return v0

    .line 1021
    .end local v0           #retVal:Z
    :cond_b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .registers 8
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 452
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 453
    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_5

    .line 484
    :goto_4
    return-void

    .line 457
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 458
    .local v1, timeStamp:J
    iget v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 460
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p2, v3, :cond_3b

    .line 461
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 467
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 481
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyConnection at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 470
    :cond_3b
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 471
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 478
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_16
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method protected abstract onDisconnect(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
.end method

.method protected abstract onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;
.end method

.method protected abstract onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
.end method

.method public reset(Landroid/os/Message;)V
    .registers 4
    .parameter "onCompletedMsg"

    .prologue
    .line 955
    const/4 v0, 0x1

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 956
    return-void
.end method

.method public resetSynchronously()V
    .registers 5

    .prologue
    .line 964
    new-instance v1, Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    .line 965
    .local v1, lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;
    monitor-enter v1

    .line 966
    const/4 v2, 0x1

    :try_start_7
    new-instance v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 968
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_18

    .line 972
    :goto_16
    :try_start_16
    monitor-exit v1

    .line 973
    return-void

    .line 969
    :catch_18
    move-exception v0

    .line 970
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "blockingReset: unexpected interrupted of wait()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_16

    .line 972
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
