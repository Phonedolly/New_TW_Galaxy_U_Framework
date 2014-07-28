.class final Lcom/android/internal/telephony/voip/VOIPCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "VOIPCallTracker.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DBG:Z = false

.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "VOIP"

.field static final MAX_CONNECTIONS:I = 0x1

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/voip/VOIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

.field hangupPendingMO:Z

.field private mFailCause:I

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

.field phone:Lcom/android/internal/telephony/voip/VOIPPhone;

.field ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 68
    new-array v0, v2, [Lcom/android/internal/telephony/voip/VOIPConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;-><init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;-><init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;-><init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingCallInEcm:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mIsInEmergencyCall:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->desiredMute:Z

    .line 92
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 94
    iput-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mIsEcmTimerCanceled:Z

    .line 95
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/voip/VOIPPhone;)V
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 68
    new-array v0, v1, [Lcom/android/internal/telephony/voip/VOIPConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;-><init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;-><init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;-><init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 85
    iput-boolean v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingCallInEcm:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mIsInEmergencyCall:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->desiredMute:Z

    .line 92
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mIsEcmTimerCanceled:Z

    .line 95
    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    .line 104
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/voip/IMSInterface;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/voip/IMSInterface;->registerForVOIPCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/IMSInterface;->registerCallTrackerHandler(Landroid/os/Handler;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/voip/VOIPCall;->setGeneric(Z)V

    .line 112
    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    .line 113
    return-void
.end method

.method private canDial()Z
    .registers 6

    .prologue
    .line 1037
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1038
    .local v2, serviceState:I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_50

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4d

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_50

    :cond_4d
    const/4 v3, 0x1

    move v1, v3

    .line 1049
    .local v1, ret:Z
    :goto_4f
    return v1

    .line 1041
    .end local v1           #ret:Z
    :cond_50
    const/4 v3, 0x0

    move v1, v3

    goto :goto_4f
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "dialString"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1019
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/voip/VOIPConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/voip/VOIPCallTracker;Lcom/android/internal/telephony/voip/VOIPCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 1029
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .registers 2
    .parameter "dialString"

    .prologue
    .line 1012
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .registers 1

    .prologue
    .line 1089
    return-void
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_10

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCall;->setGeneric(Z)V

    .line 579
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCall;->setGeneric(Z)V

    .line 580
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/voip/VOIPConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;Lcom/android/internal/telephony/voip/VOIPCallTracker;Lcom/android/internal/telephony/voip/VOIPCall;)V

    .line 581
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPPhoneState()V

    .line 584
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;)V

    .line 585
    return-void
.end method

.method private handleRadioNotAvailable()V
    .registers 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pollCallsWhenSafe()V

    .line 600
    return-void
.end method

.method private hangupAllConnections(Lcom/android/internal/telephony/voip/VOIPCall;)V
    .registers 9
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1172
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1173
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v1, :cond_3b

    .line 1174
    iget-object v4, p1, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 1175
    .local v0, cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->getVOIPIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_1e
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_1e} :catch_21

    .line 1173
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1177
    .end local v0           #cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_21
    move-exception v4

    move-object v2, v4

    .line 1178
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "VOIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_3b
    return-void
.end method

.method private hangupForegroundResumeBackground()V
    .registers 3

    .prologue
    .line 1186
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1189
    return-void
.end method

.method private hangupWaitingOrBackground()V
    .registers 3

    .prologue
    .line 1164
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1166
    return-void
.end method

.method private internalClearDisconnected()V
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->clearDisconnected()V

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->clearDisconnected()V

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->clearDisconnected()V

    .line 884
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_f

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 592
    :cond_f
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized obtainCompleteMessage(I)Landroid/os/Message;
    .registers 4
    .parameter "what"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainMessage(I)Landroid/os/Message;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_38

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 200
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNewVOIPRingingCall(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 380
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, p0

    check-cast v0, Landroid/os/Message;

    move-object v1, v0

    .line 381
    .local v1, msg:Landroid/os/Message;
    return-void
.end method

.method private declared-synchronized operationComplete()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 213
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_44

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_53

    .line 226
    :cond_42
    :goto_42
    monitor-exit p0

    return-void

    .line 221
    :cond_44
    :try_start_44
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_42

    .line 223
    const-string v0, "VOIP"

    const-string v1, "VOIPCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_42

    .line 213
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVTCallState(I)V
    .registers 9
    .parameter "intValue"

    .prologue
    .line 384
    const-string v4, "VOIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setVTCallState() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 389
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 390
    .local v3, size:I
    const/16 v4, 0xb

    :try_start_25
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 391
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 392
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 393
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_33} :catch_3e

    .line 397
    :goto_33
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/voip/VOIPPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 398
    return-void

    .line 394
    :catch_3e
    move-exception v4

    move-object v2, v4

    .line 395
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33
.end method

.method private updatePhoneState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 234
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 235
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 243
    :goto_f
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_4b

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_4b

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 251
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_2c

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPhoneStateChanged()V

    .line 254
    :cond_2c
    return-void

    .line 236
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_46

    .line 238
    :cond_41
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_f

    .line 240
    :cond_46
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_f

    .line 246
    :cond_4b
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_23

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_23
.end method

.method private updateVOIPCallFailCause(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    .line 402
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object v1, v0

    .line 403
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    .line 404
    .local v2, presentCall:Lcom/android/internal/telephony/voip/VOIPCall;
    const-string v3, "VOIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateVOIPCallFailCause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v3, v1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_a4

    .line 484
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->setVTCallState(I)V

    .line 485
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    .line 489
    :goto_30
    return-void

    .line 408
    :sswitch_31
    const/16 v3, 0x22

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 411
    :sswitch_36
    const/16 v3, 0x3fc

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 414
    :sswitch_3b
    const/16 v3, 0x3fd

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 417
    :sswitch_40
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->setVTCallState(I)V

    goto :goto_30

    .line 422
    :sswitch_45
    const/16 v3, 0x40d

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 425
    :sswitch_4a
    const/16 v3, 0x3fe

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 428
    :sswitch_4f
    const/16 v3, 0x400

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 431
    :sswitch_54
    const/16 v3, 0x3ff

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 434
    :sswitch_59
    const/16 v3, 0x11

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 437
    :sswitch_5e
    const/16 v3, 0x401

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 440
    :sswitch_63
    const/16 v3, 0x402

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 443
    :sswitch_68
    const/16 v3, 0x403

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 446
    :sswitch_6d
    const/16 v3, 0x404

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 449
    :sswitch_72
    const/16 v3, 0x405

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 452
    :sswitch_77
    const/16 v3, 0x406

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 455
    :sswitch_7c
    const/16 v3, 0x407

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 458
    :sswitch_81
    const/16 v3, 0x408

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 461
    :sswitch_86
    const/16 v3, 0x409

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 464
    :sswitch_8b
    const/16 v3, 0x40a

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 467
    :sswitch_90
    const/16 v3, 0x40b

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 470
    :sswitch_95
    const/16 v3, 0x40c

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 473
    :sswitch_9a
    const/16 v3, 0x40f

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 476
    :sswitch_9f
    const/16 v3, 0x410

    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    goto :goto_30

    .line 405
    :sswitch_data_a4
    .sparse-switch
        0xca -> :sswitch_40
        0xd2 -> :sswitch_54
        0xd4 -> :sswitch_45
        0xd5 -> :sswitch_45
        0xd6 -> :sswitch_45
        0xd7 -> :sswitch_4f
        0xd8 -> :sswitch_4a
        0xd9 -> :sswitch_59
        0xda -> :sswitch_63
        0xdb -> :sswitch_5e
        0xde -> :sswitch_31
        0xe4 -> :sswitch_68
        0xe5 -> :sswitch_6d
        0xe6 -> :sswitch_72
        0xe7 -> :sswitch_77
        0xea -> :sswitch_3b
        0xeb -> :sswitch_36
        0xee -> :sswitch_7c
        0x12f -> :sswitch_9f
        0x130 -> :sswitch_8b
        0x131 -> :sswitch_90
        0x132 -> :sswitch_9a
        0x134 -> :sswitch_95
        0x135 -> :sswitch_86
        0x136 -> :sswitch_81
        0x137 -> :sswitch_31
    .end sparse-switch
.end method

.method private updateVOIPPhoneState()V
    .registers 5

    .prologue
    const-string v3, "VOIP"

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 541
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    const-string v1, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  updateVOIPPhoneState oldstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 543
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 560
    :goto_2a
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_4d

    .line 561
    const-string v1, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  updateVOIPPhoneState newstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPhoneStateChanged()V

    .line 564
    :cond_4d
    return-void

    .line 544
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_67

    .line 546
    :cond_62
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_2a

    .line 548
    :cond_67
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_2a
.end method


# virtual methods
.method public acceptCall()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 898
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_20

    .line 899
    const-string/jumbo v2, "phone"

    const-string v3, "acceptCall: incoming..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->setMute(Z)V

    .line 902
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 918
    :goto_1f
    return-void

    .line 903
    :cond_20
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_47

    .line 904
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/voip/VOIPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object v1, v0

    .line 910
    .local v1, cwConn:Lcom/android/internal/telephony/voip/VOIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/voip/VOIPConnection;->updateParent(Lcom/android/internal/telephony/voip/VOIPCall;Lcom/android/internal/telephony/voip/VOIPCall;)V

    .line 911
    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->onConnectedInOrOut()V

    .line 912
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPPhoneState()V

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_1f

    .line 915
    .end local v1           #cwConn:Lcom/android/internal/telephony/voip/VOIPConnection;
    :cond_47
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clearDisconnected()V
    .registers 2

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->internalClearDisconnected()V

    .line 925
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPPhoneState()V

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    .line 928
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 932
    sget-boolean v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->DBG:Z

    if-eqz v0, :cond_1c

    .line 933
    const-string v0, "VoipCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside dial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .registers 10
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 941
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_f

    .line 942
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 945
    :cond_f
    const-string v3, "VOIP"

    const-string v4, "[VOIPCallTracker]: VT can be dial...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->clearDisconnected()V

    .line 948
    const-string/jumbo v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 950
    .local v2, isPhoneInEcmMode:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 961
    .local v1, isEmergencyCall:Z
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/voip/VOIPCall;->setGeneric(Z)V

    .line 966
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_41

    .line 967
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1005
    :goto_40
    return-object v3

    .line 970
    :cond_41
    new-instance v3, Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/voip/VOIPPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/voip/VOIPConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/voip/VOIPCallTracker;Lcom/android/internal/telephony/voip/VOIPCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 971
    iput-boolean v6, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupPendingMO:Z

    .line 973
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_82

    .line 976
    :cond_6e
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pollCallsWhenSafe()V

    .line 1002
    :cond_77
    :goto_77
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPPhoneState()V

    .line 1003
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    .line 1005
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    goto :goto_40

    .line 983
    :cond_82
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->setMute(Z)V

    .line 986
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 989
    if-eqz v2, :cond_8e

    if-eqz v2, :cond_77

    if-eqz v1, :cond_77

    .line 990
    :cond_8e
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_77
.end method

.method public dispose()V
    .registers 9

    .prologue
    const-string/jumbo v7, "unexpected error on hangup during dispose"

    const-string v6, "VOIP"

    .line 119
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 121
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 122
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/voip/IMSInterface;->unregisterForVOIPCallChanged(Landroid/os/Handler;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/voip/VOIPConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1f
    if-ge v3, v4, :cond_35

    aget-object v1, v0, v3

    .line 125
    .local v1, c:Lcom/android/internal/telephony/voip/VOIPConnection;
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangup(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    :try_end_28
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_25 .. :try_end_28} :catch_2b

    .line 123
    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 126
    :catch_2b
    move-exception v2

    .line 127
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "VOIP"

    const-string/jumbo v5, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 132
    .end local v1           #c:Lcom/android/internal/telephony/voip/VOIPConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_35
    :try_start_35
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangup(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    :try_end_3e
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_35 .. :try_end_3e} :catch_42

    .line 137
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->clearDisconnected()V

    .line 139
    return-void

    .line 133
    :catch_42
    move-exception v5

    move-object v2, v5

    .line 134
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "VOIP"

    const-string/jumbo v5, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 258
    const-string v0, "VOIP"

    const-string v1, "VOIPCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->desiredMute:Z

    return v0
.end method

.method public getVOIPCallFailCause()I
    .registers 2

    .prologue
    .line 493
    iget v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mFailCause:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-string v7, "VOIP"

    .line 262
    const-string v5, "VOIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  VOIPCallTracker handle message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_c0

    .line 372
    :pswitch_21
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "unexpected event not handled"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    :pswitch_2a
    const-string v5, "VOIP"

    const-string v5, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v5, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 272
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 273
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 274
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 376
    :goto_43
    :pswitch_43
    return-void

    .line 279
    :pswitch_44
    const-string v5, "VOIP"

    const-string v5, "Event EVENT_OPERATION_COMPLETE Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->operationComplete()V

    goto :goto_43

    .line 291
    :pswitch_4f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 293
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->operationComplete()V

    .line 295
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_92

    .line 298
    const/16 v1, 0x10

    .line 299
    .local v1, causeCode:I
    const-string v5, "VOIP"

    const-string v5, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_63
    const-string v5, "VOIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastCallFailCause, normal disconnect sent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 307
    .local v4, s:I
    :goto_82
    if-ge v3, v4, :cond_97

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 311
    .local v2, conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->onRemoteDisconnect(I)V

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 302
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    .end local v3           #i:I
    .end local v4           #s:I
    :cond_92
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getVOIPCallFailCause()I

    move-result v1

    .restart local v1       #causeCode:I
    goto :goto_63

    .line 314
    .restart local v3       #i:I
    .restart local v4       #s:I
    :cond_97
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updatePhoneState()V

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    .line 317
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_43

    .line 328
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v3           #i:I
    .end local v4           #s:I
    :pswitch_a5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPCallFailCause(Landroid/os/AsyncResult;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pollCallsWhenSafe()V

    goto :goto_43

    .line 333
    :pswitch_b0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->onNewVOIPRingingCall(Landroid/os/AsyncResult;)V

    .line 336
    :pswitch_b7
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->handleRadioAvailable()V

    goto :goto_43

    .line 340
    :pswitch_bb
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->handleRadioNotAvailable()V

    goto :goto_43

    .line 264
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_21
        :pswitch_a5
        :pswitch_44
        :pswitch_4f
        :pswitch_21
        :pswitch_21
        :pswitch_43
        :pswitch_b7
        :pswitch_bb
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_a5
        :pswitch_b0
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .registers 27
    .parameter "ar"

    .prologue
    .line 611
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_15a

    .line 612
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .line 624
    .local v19, polledCalls:Ljava/util/List;
    :goto_10
    const/16 v18, 0x0

    .line 625
    .local v18, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    .line 627
    .local v14, hasNonHangupStateChanged:Z
    const/16 v17, 0x0

    .line 628
    .local v17, needsPollDelay:Z
    const/16 v20, 0x0

    .line 630
    .local v20, unknownConnectionAppeared:Z
    const/4 v15, 0x0

    .local v15, i:I
    const/4 v10, 0x0

    .local v10, curDC:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v12

    .line 631
    .local v12, dcSize:I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_36f

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    aget-object v8, v21, v15

    .line 633
    .local v8, conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    const/4 v11, 0x0

    .line 636
    .local v11, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v10, v12, :cond_7b

    .line 637
    move-object/from16 v0, v19

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v11, Lcom/android/internal/telephony/DriverCall;

    .line 638
    .restart local v11       #dc:Lcom/android/internal/telephony/DriverCall;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "index is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v11

    iget v0, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dc is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 639
    move-object v0, v11

    iget v0, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v15

    if-eq v0, v1, :cond_79

    if-eqz v11, :cond_175

    .line 640
    :cond_79
    add-int/lit8 v10, v10, 0x1

    .line 647
    :cond_7b
    :goto_7b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "poll: conn[i="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", dc="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 650
    if-nez v8, :cond_28f

    if-eqz v11, :cond_28f

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_184

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v21

    if-eqz v21, :cond_184

    .line 654
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "poll: pendingMO="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v22, v0

    aput-object v22, v21, v15

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    move v0, v15

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 660
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupPendingMO:Z

    move/from16 v21, v0

    if-eqz v21, :cond_240

    .line 664
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupPendingMO:Z

    .line 673
    :try_start_12c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangup(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    :try_end_159
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_12c .. :try_end_159} :catch_178

    .line 877
    .end local v8           #conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    .end local v10           #curDC:I
    .end local v11           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v12           #dcSize:I
    .end local v14           #hasNonHangupStateChanged:Z
    .end local v15           #i:I
    .end local v17           #needsPollDelay:Z
    .end local v18           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v19           #polledCalls:Ljava/util/List;
    .end local v20           #unknownConnectionAppeared:Z
    :cond_159
    :goto_159
    return-void

    .line 613
    :cond_15a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v21

    if-eqz v21, :cond_171

    .line 616
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .restart local v19       #polledCalls:Ljava/util/List;
    goto/16 :goto_10

    .line 620
    .end local v19           #polledCalls:Ljava/util/List;
    :cond_171
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pollCallsAfterDelay()V

    goto :goto_159

    .line 643
    .restart local v8       #conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    .restart local v10       #curDC:I
    .restart local v11       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v12       #dcSize:I
    .restart local v14       #hasNonHangupStateChanged:Z
    .restart local v15       #i:I
    .restart local v17       #needsPollDelay:Z
    .restart local v18       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v19       #polledCalls:Ljava/util/List;
    .restart local v20       #unknownConnectionAppeared:Z
    :cond_175
    const/4 v11, 0x0

    goto/16 :goto_7b

    .line 676
    :catch_178
    move-exception v21

    move-object/from16 v13, v21

    .line 677
    .local v13, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v21, "VOIP"

    const-string/jumbo v22, "unexpected error on hangup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 685
    .end local v13           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/voip/VOIPPhone;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v11

    move-object/from16 v3, p0

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/voip/VOIPConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/voip/VOIPCallTracker;I)V

    aput-object v22, v21, v15

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/voip/VOIPConnection;->getCall()Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_245

    .line 689
    const-string v21, "VOIP"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PHone State on Incoming Call : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_238

    .line 695
    :try_start_1e7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->rejectCall()V

    .line 696
    const-string v21, "VOIP"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Incoming Call .... Rejecting: PendingMo"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/voip/VOIPConnection;->onLocalDisconnect()V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v21, v0

    if-eqz v21, :cond_159

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;
    :try_end_229
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1e7 .. :try_end_229} :catch_22b

    goto/16 :goto_159

    .line 701
    :catch_22b
    move-exception v21

    move-object/from16 v13, v21

    .line 702
    .restart local v13       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v21, "VOIP"

    const-string/jumbo v22, "unexpected error on hangup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 707
    .end local v13           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    aget-object v18, v21, v15

    .line 727
    :cond_240
    :goto_240
    const/4 v14, 0x1

    .line 631
    :cond_241
    :goto_241
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1d

    .line 714
    :cond_245
    const-string v21, "VOIP"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Phantom call appeared "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_28c

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_28c

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTime:J

    .line 724
    :cond_28c
    const/16 v20, 0x1

    goto :goto_240

    .line 728
    :cond_28f
    if-eqz v8, :cond_358

    if-nez v11, :cond_358

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 730
    .local v9, count:I
    if-nez v9, :cond_2fa

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getVOIPCallFailCause()I

    move-result v21

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d7

    .line 735
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object v1, v8

    iput-object v0, v1, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 736
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "1. Disconnect cause  Set to : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 738
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/voip/VOIPCall;->setGeneric(Z)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->connections:[Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, v15

    goto/16 :goto_241

    .line 742
    :cond_2fa
    const/16 v16, 0x0

    .local v16, n:I
    :goto_2fc
    move/from16 v0, v16

    move v1, v9

    if-ge v0, v1, :cond_2e3

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 744
    .local v7, cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getVOIPCallFailCause()I

    move-result v21

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_349

    .line 746
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 747
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "2. Disconnect cause  Set to : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 749
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v16, v16, 0x1

    goto :goto_2fc

    .line 765
    .end local v7           #cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    .end local v9           #count:I
    .end local v16           #n:I
    :cond_358
    if-eqz v8, :cond_241

    if-eqz v11, :cond_241

    .line 767
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/voip/VOIPConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v6

    .line 768
    .local v6, changed:Z
    if-nez v14, :cond_364

    if-eqz v6, :cond_36a

    :cond_364
    const/16 v21, 0x1

    move/from16 v14, v21

    :goto_368
    goto/16 :goto_241

    :cond_36a
    const/16 v21, 0x0

    move/from16 v14, v21

    goto :goto_368

    .line 794
    .end local v6           #changed:Z
    .end local v8           #conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    .end local v11           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3c8

    .line 795
    const-string v21, "VOIP"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 800
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupPendingMO:Z

    .line 801
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingCallInEcm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3c8

    .line 802
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingCallInEcm:Z

    .line 805
    :cond_3c8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "newringing is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 806
    if-eqz v18, :cond_400

    .line 808
    const-string/jumbo v21, "notifying the app about new call"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyNewVoipCall(Lcom/android/internal/telephony/Connection;)V

    .line 815
    :cond_400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    sub-int v15, v21, v22

    :goto_40e
    if-ltz v15, :cond_522

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 817
    .restart local v8       #conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 818
    .local v5, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Inside DroppedCall Poll List...................cause : ........................."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 819
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Inside DroppedCall Poll List...................conn.isIncoming() :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "conn.getConnectTime() :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Lcom/android/internal/telephony/voip/VOIPConnection;->getConnectTime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v8}, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming()Z

    move-result v21

    if-eqz v21, :cond_4de

    invoke-virtual {v8}, Lcom/android/internal/telephony/voip/VOIPConnection;->getConnectTime()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_4de

    .line 824
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4db

    .line 825
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 831
    :goto_48b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "missed/rejected call, conn.cause="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 832
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setting cause to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 835
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/voip/VOIPConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 815
    :cond_4d7
    :goto_4d7
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_40e

    .line 827
    :cond_4db
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_48b

    .line 836
    :cond_4de
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_500

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 839
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_4d7

    .line 840
    :cond_500
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4d7

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 842
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_4d7

    .line 847
    .end local v5           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v8           #conn:Lcom/android/internal/telephony/voip/VOIPConnection;
    :cond_522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_541

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 852
    :cond_541
    if-eqz v17, :cond_546

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pollCallsAfterDelay()V

    .line 861
    :cond_546
    if-nez v18, :cond_54a

    if-eqz v14, :cond_54d

    .line 862
    :cond_54a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->internalClearDisconnected()V

    .line 865
    :cond_54d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updatePhoneState()V

    .line 867
    if-eqz v20, :cond_55b

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyUnknownConnection()V

    .line 871
    :cond_55b
    if-nez v14, :cond_55f

    if-eqz v18, :cond_159

    .line 872
    :cond_55f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_159
.end method

.method public hangup(Lcom/android/internal/telephony/voip/VOIPCall;)V
    .registers 5
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 1127
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    if-ne p1, v0, :cond_2b

    .line 1131
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1157
    :goto_25
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    .line 1159
    return-void

    .line 1133
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    if-ne p1, v0, :cond_4f

    .line 1134
    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1136
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    check-cast v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangup(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    goto :goto_25

    .line 1140
    :cond_4b
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_25

    .line 1142
    :cond_4f
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    if-ne p1, v0, :cond_68

    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1145
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 1147
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/voip/VOIPCall;)V

    goto :goto_25

    .line 1149
    :cond_64
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupWaitingOrBackground()V

    goto :goto_25

    .line 1152
    :cond_68
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    .registers 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v0, p1, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    if-eq v0, p0, :cond_28

    .line 146
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOIPConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to VOIPCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    if-ne p1, v0, :cond_44

    .line 154
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->log(Ljava/lang/String;)V

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangupPendingMO:Z

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 180
    :goto_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->onHangupLocal()V

    .line 183
    :goto_43
    return-void

    .line 159
    :cond_44
    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->getCall()Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_62

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->onLocalDisconnect()V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPPhoneState()V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    goto :goto_43

    .line 177
    :cond_62
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->getVOIPIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_40
.end method

.method public isInEmergencyCall()Z
    .registers 2

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 892
    const-string v0, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOIPCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method public rejectCall()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 1102
    return-void

    .line 1099
    :cond_16
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public separate(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    .registers 6
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v1, p1, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    if-eq v1, p0, :cond_27

    .line 1108
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOIPConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->getVOIPIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_36
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_27 .. :try_end_36} :catch_37

    .line 1121
    :goto_36
    return-void

    .line 1114
    :catch_37
    move-exception v1

    move-object v0, v1

    .line 1117
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "VOIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOIPCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public setMute(Z)V
    .registers 5
    .parameter "mute"

    .prologue
    .line 1065
    iput-boolean p1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->desiredMute:Z

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1067
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_12

    .line 1073
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 1075
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->flashAndSetGenericTrue()V

    .line 1084
    :cond_22
    return-void
.end method

.method public updateVOIPCallState(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const-string v6, "VOIP"

    .line 498
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object v1, v0

    .line 499
    .local v1, msg:Landroid/os/Message;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 500
    .local v2, newState:Lcom/android/internal/telephony/Call$State;
    const/4 v3, 0x0

    .line 501
    .local v3, presentCall:Lcom/android/internal/telephony/voip/VOIPCall;
    const-string v4, "VOIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateVOIPCallState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget v4, v1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_80

    .line 528
    :goto_2c
    :pswitch_2c
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    if-eqz v4, :cond_5d

    .line 529
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/voip/VOIPConnection;->getCall()Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v3

    .line 530
    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_5d

    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v4, v2, :cond_5d

    .line 531
    const-string v4, "VOIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateVOIPCallState : newstate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->pendingMO:Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/voip/VOIPCall;->attachFake(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 535
    :cond_5d
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->updateVOIPPhoneState()V

    .line 536
    invoke-virtual {v3}, Lcom/android/internal/telephony/voip/VOIPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v4, v2, :cond_6f

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_6f

    .line 537
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyPreciseCallStateChanged()V

    .line 538
    :cond_6f
    return-void

    .line 504
    :pswitch_70
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 505
    goto :goto_2c

    .line 509
    :pswitch_73
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    .line 510
    goto :goto_2c

    .line 512
    :pswitch_76
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 513
    goto :goto_2c

    .line 516
    :pswitch_79
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 517
    goto :goto_2c

    .line 519
    :pswitch_7c
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .line 521
    goto :goto_2c

    .line 502
    nop

    :pswitch_data_80
    .packed-switch 0xca
        :pswitch_7c
        :pswitch_70
        :pswitch_2c
        :pswitch_73
        :pswitch_2c
        :pswitch_79
        :pswitch_76
        :pswitch_2c
        :pswitch_79
    .end packed-switch
.end method
