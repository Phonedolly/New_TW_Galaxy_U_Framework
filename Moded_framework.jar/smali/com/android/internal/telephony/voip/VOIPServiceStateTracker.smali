.class final Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "VOIPServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private VOIPDataConnectionState:I

.field private mDefaultRoamingIndicator:I

.field private mIsInPrl:Z

.field private mRegistrationState:I

.field private mRoamingIndicator:I

.field private mVOIPRoaming:Z

.field private networkType:I

.field private newNetworkType:I

.field private newVOIPDataConnectionState:I

.field phone:Lcom/android/internal/telephony/voip/VOIPPhone;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->networkType:I

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->newNetworkType:I

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->mVOIPRoaming:Z

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->VOIPDataConnectionState:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->newVOIPDataConnectionState:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->mRegistrationState:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/voip/VOIPPhone;)V
    .registers 4
    .parameter "voipPhone"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->networkType:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->newNetworkType:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->mVOIPRoaming:Z

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->VOIPDataConnectionState:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->newVOIPDataConnectionState:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->mRegistrationState:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPServiceStateTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    .line 79
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 80
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 81
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public getCurrentVOIPDataConnectionState()I
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLacAndCid(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 156
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 93
    return-void
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .registers 3
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 102
    return-void
.end method

.method public isConcurrentVoiceAndData()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected powerOffRadioSafely()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public registerForNetworkAttach(Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "eventRegisteredToNetwork"
    .parameter "object"

    .prologue
    .line 126
    return-void
.end method

.method protected setPowerStateToDesired()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public unregisterForNetworkAttach(Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 131
    return-void
.end method

.method protected updateSpnDisplay()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method
