.class public final Lcom/android/internal/telephony/voip/VOIPPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "VOIPPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field static final LOG_TAG:Ljava/lang/String; = "VOIP"

.field static final RESTART_ECM_TIMER:I = 0x0

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_NUMBER_IMS:Ljava/lang/String; = "vm_number_key_ims"


# instance fields
.field h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

.field mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field private mEsn:Ljava/lang/String;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field mPostDialHandler:Landroid/os/Registrant;

.field mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

.field mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .registers 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/voip/VOIPPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .registers 9
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 84
    iput-object v3, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mVmNumber:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;-><init>(Lcom/android/internal/telephony/voip/VOIPPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    .line 144
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 147
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;-><init>(Lcom/android/internal/telephony/voip/VOIPPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;-><init>(Lcom/android/internal/telephony/voip/VOIPPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->registerForNetworkAttach(Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/voip/VOIPPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mEsn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/voip/VOIPPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mMeid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/voip/VOIPPhone;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mVmNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->acceptCall()V

    .line 298
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 4
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 306
    return-void
.end method

.method public canConference()Z
    .registers 3

    .prologue
    .line 313
    const-string v0, "VOIP"

    const-string v1, "canConference: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .registers 3

    .prologue
    .line 322
    const-string v0, "VOIP"

    const-string v1, "canTransfer: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 7
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 1145
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->clearDisconnected()V

    .line 332
    return-void
.end method

.method public conference()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v0, "VOIP"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1253
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in IMS PHONE!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1151
    const-string v1, "VoipPhone"

    const-string v2, "dialVideoCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableDataConnectivity()Z
    .registers 3

    .prologue
    .line 366
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->disableLocationUpdates()V

    .line 377
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    .line 180
    sget-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->unregisterForNetworkAttach(Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->dispose()V

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->dispose()V

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;->dispose()V

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public enableDataConnectivity()Z
    .registers 3

    .prologue
    .line 384
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->enableLocationUpdates()V

    .line 394
    return-void
.end method

.method public explicitCallTransfer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 401
    const-string v0, "VOIP"

    const-string v1, "explicitCallTransfer: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 409
    const-string v0, "VOIP"

    const-string v1, "getAvailableNetworks: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->getBackgroundCall()Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/voip/VOIPCall;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    return-object v0
.end method

.method public getCBEnableConfig()Z
    .registers 3

    .prologue
    .line 746
    const-string v0, "VOIP"

    const-string v1, "VOIPgetCBEnableConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPavailable()Z
    .registers 2

    .prologue
    .line 1217
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPtable()Lcom/android/internal/telephony/gsm/simCSPtable;
    .registers 2

    .prologue
    .line 1221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 1161
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .registers 3

    .prologue
    .line 425
    const-string v0, "VOIP"

    const-string v1, "getCallForwardingIndicator: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .registers 5
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 435
    const-string v0, "VOIP"

    const-string v1, "getCallForwardingOption: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .registers 4
    .parameter "onComplete"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 447
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 456
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone getCurrentDataConnectionList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .registers 3

    .prologue
    .line 483
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone getDataActivityState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 493
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone getDataCallList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .registers 3

    .prologue
    .line 501
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone getDataConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState([Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "apnTypes"

    .prologue
    .line 1166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataNetworkDisable()Z
    .registers 2

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .registers 3

    .prologue
    .line 510
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone getDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 528
    const-string v0, "VOIP"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v0, "0"

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getFDNavailable()Z
    .registers 2

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->h:Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ID"

    .prologue
    .line 1227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 2

    .prologue
    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .prologue
    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .registers 2

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 577
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 3

    .prologue
    .line 601
    const-string v0, "VOIP"

    const-string v1, "getLine1AlphaTag: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineId(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1237
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .registers 2

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getMobileQualityInfo()Lcom/android/internal/telephony/MobileQualityInfo;
    .registers 2

    .prologue
    .line 755
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnavailable()Z
    .registers 2

    .prologue
    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiSmsState()Z
    .registers 2

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 636
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 4
    .parameter "onComplete"

    .prologue
    .line 643
    const-string v0, "VOIP"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/voip/VOIPPhone;->getDataCallList(Landroid/os/Message;)V

    .line 654
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    const-string v0, "VOIP"

    const-string v1, "method getPendingMmiCodes is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    const-string v0, "VOIP"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .registers 3

    .prologue
    .line 1130
    const-string v0, "VoipPhone"

    const-string v1, "getPhoneType = PHONE_TYPE_IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->getRingingCall()Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/voip/VOIPCall;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    return-object v0
.end method

.method public getSMSavailable()Z
    .registers 2

    .prologue
    .line 1244
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    .line 725
    const-string v0, ""

    .line 727
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 728
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const v2, 0x10400b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    :goto_17
    return-object v1

    :cond_18
    move-object v1, v0

    goto :goto_17
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 719
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 776
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 4
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 785
    const-string v0, "VOIP"

    const-string v1, "method handleInCallMmiCommands is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 4
    .parameter "dialString"

    .prologue
    .line 794
    const-string v0, "VOIP"

    const-string v1, "method handlePinMmi is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public initiateFakecall()V
    .registers 1

    .prologue
    .line 1179
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .registers 3

    .prologue
    .line 803
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone isDataConnectivityPossible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v0, 0x1

    return v0
.end method

.method public isRoamingArea()Z
    .registers 2

    .prologue
    .line 1233
    const/4 v0, 0x0

    return v0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "cn"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1125
    return-void
.end method

.method public notifyNewVoipCall(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .parameter "newRinging"

    .prologue
    .line 1115
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewIMSCallP(Lcom/android/internal/telephony/Connection;)V

    .line 1117
    return-void
.end method

.method notifyPhoneStateChanged()V
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1112
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .registers 1

    .prologue
    .line 1106
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1107
    return-void
.end method

.method public notifyUnknownConnection()V
    .registers 1

    .prologue
    .line 1122
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 813
    const-string v0, "VOIP"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void
.end method

.method public rejectCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->rejectCall()V

    .line 822
    return-void
.end method

.method public removeReferences()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    .line 201
    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 202
    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    .line 203
    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    .line 204
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1102
    return-void
.end method

.method public sendDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 833
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_26

    .line 834
    const-string v0, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_25
    :goto_25
    return-void

    .line 837
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_25

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_25
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .registers 4
    .parameter "ussdMessge"

    .prologue
    .line 848
    const-string v0, "VOIP"

    const-string/jumbo v1, "sendUssdResponse: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method public setCBMessage(ZCI[S)V
    .registers 7
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"

    .prologue
    .line 736
    const-string v0, "VOIP"

    const-string v1, "VOIPsetCBMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method public setCSCCbConfig(Z)Z
    .registers 4
    .parameter "cbEnable"

    .prologue
    .line 741
    const-string v0, "VOIP"

    const-string v1, "VOIPsetCSCCbConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .registers 7
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 6
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1203
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 8
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 858
    const-string v0, "VOIP"

    const-string/jumbo v1, "setCallForwardingOption: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 866
    const-string v0, "VOIP"

    const-string v1, "method setCallWaiting is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 4
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSMS:Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/voip/VOIPSMSDispatcher;->setCellBroadcastConfig([ILandroid/os/Message;)V

    .line 876
    return-void
.end method

.method public setDataConnectionToggleExt()I
    .registers 2

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 883
    const-string v0, "VOIP"

    const-string/jumbo v1, "not needed for VOIP phone setDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 892
    const-string v0, "VOIP"

    const-string/jumbo v1, "setLine1Number: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .registers 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1240
    return-void
.end method

.method public setMultiSmsState(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 767
    return-void
.end method

.method public setMute(Z)V
    .registers 3
    .parameter "muted"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->setMute(Z)V

    .line 902
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 909
    const-string v0, "VOIP"

    const-string v1, "method setNetworkSelectionModeAutomatic is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 917
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 918
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 5
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 926
    const-string v0, "VOIP"

    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in VOIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void
.end method

.method public setRadioPower(Z)V
    .registers 3
    .parameter "power"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->setRadioPower(Z)V

    .line 935
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/Phone$State;)V
    .registers 3
    .parameter "st"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iput-object p1, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 1214
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 945
    return-void
.end method

.method public startDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 952
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_26

    .line 953
    const-string v0, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_25
    return-void

    .line 956
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_25
.end method

.method public stopDtmf()V
    .registers 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 966
    return-void
.end method

.method public storeVoiceMailNumber(Ljava/lang/String;)V
    .registers 5
    .parameter "number"

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1091
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1092
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1093
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1095
    return-void
.end method

.method public switchHoldingAndActive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mCT:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 974
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 981
    const-string v0, "VOIP"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in VOIP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method public updateServiceLocation()V
    .registers 1

    .prologue
    .line 1209
    return-void
.end method

.method public updateServiceLocation(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPPhone;->mSST:Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->getLacAndCid(Landroid/os/Message;)V

    .line 990
    return-void
.end method
