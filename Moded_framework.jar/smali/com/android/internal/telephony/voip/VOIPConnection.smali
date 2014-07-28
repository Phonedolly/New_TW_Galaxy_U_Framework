.class final Lcom/android/internal/telephony/voip/VOIPConnection;
.super Lcom/android/internal/telephony/Connection;
.source "VOIPConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/voip/VOIPConnection$1;,
        Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DBG:Z = false

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "VOIP"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field mCallFailCause:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

.field parent:Lcom/android/internal/telephony/voip/VOIPCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/voip/VOIPConnection;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 95
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    .line 387
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/voip/VOIPCallTracker;I)V
    .registers 8
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 95
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 98
    iput v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->createWakeLock(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->acquireWakeLock()V

    .line 147
    iput-object p3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;-><init>(Lcom/android/internal/telephony/voip/VOIPConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    .line 150
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    .line 152
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->createTime:J

    .line 154
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    .line 155
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 156
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 158
    iput p4, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    .line 160
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/voip/VOIPCall;->attach(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 162
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 163
    iput v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    .line 164
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;Lcom/android/internal/telephony/voip/VOIPCallTracker;Lcom/android/internal/telephony/voip/VOIPCall;)V
    .registers 7
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 95
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->createWakeLock(Landroid/content/Context;)V

    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->acquireWakeLock()V

    .line 368
    iput-object p3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    .line 369
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;-><init>(Lcom/android/internal/telephony/voip/VOIPConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    .line 370
    iget-object v0, p2, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    .line 371
    iget v0, p2, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 372
    iget-object v0, p2, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    .line 373
    iget v0, p2, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->createTime:J

    .line 377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTime:J

    .line 378
    iput-object p4, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 379
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/voip/VOIPCall;->attachFake(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 380
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/voip/VOIPCallTracker;Lcom/android/internal/telephony/voip/VOIPCall;)V
    .registers 9
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const-string v2, "VOIP"

    .line 317
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 95
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 98
    iput v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    .line 318
    const-string v0, "VOIP"

    const-string v0, "[VOIPConn]  VOIPConnection construction  "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->createWakeLock(Landroid/content/Context;)V

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->acquireWakeLock()V

    .line 322
    iput-object p3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    .line 323
    new-instance v0, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;-><init>(Lcom/android/internal/telephony/voip/VOIPConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    .line 325
    iput-object p2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->dialString:Ljava/lang/String;

    .line 326
    sget-boolean v0, Lcom/android/internal/telephony/voip/VOIPConnection;->DBG:Z

    if-eqz v0, :cond_52

    .line 327
    const-string v0, "VOIP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOIPConn] VOIPConnection: dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_52
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/voip/VOIPConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 329
    sget-boolean v0, Lcom/android/internal/telephony/voip/VOIPConnection;->DBG:Z

    if-eqz v0, :cond_72

    .line 330
    const-string v0, "VOIP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOIPConn] VOIPConnection:formated dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_72
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    .line 333
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    .line 337
    iput-boolean v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    .line 339
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 340
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->createTime:J

    .line 343
    if-eqz p4, :cond_a3

    .line 344
    iput-object p4, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 347
    iget-object v0, p4, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_a4

    .line 348
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/voip/VOIPCall;->attachFake(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 355
    :cond_a3
    :goto_a3
    return-void

    .line 351
    :cond_a4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/voip/VOIPCall;->attachFake(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 352
    const-string v0, "VOIP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOIPConn]  parent call state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 305
    const-string v0, "acquireWakeLock"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->log(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 307
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 311
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 312
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "VOIP"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 313
    return-void
.end method

.method private disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 5
    .parameter "causeCode"

    .prologue
    .line 718
    sparse-switch p1, :sswitch_data_38

    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    .line 733
    .local v0, phone:Lcom/android/internal/telephony/voip/VOIPPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 734
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 735
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 749
    .end local v0           #phone:Lcom/android/internal/telephony/voip/VOIPPhone;
    .end local v1           #serviceState:I
    :goto_14
    return-object v2

    .line 720
    :sswitch_15
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 722
    :sswitch_18
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 724
    :sswitch_1b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 726
    :sswitch_1e
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 728
    :sswitch_21
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 736
    .restart local v0       #phone:Lcom/android/internal/telephony/voip/VOIPPhone;
    .restart local v1       #serviceState:I
    :cond_24
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 738
    :cond_2a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 746
    :cond_2d
    const/16 v2, 0x10

    if-ne p1, v2, :cond_34

    .line 747
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 749
    :cond_34
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 718
    nop

    :sswitch_data_38
    .sparse-switch
        0x11 -> :sswitch_15
        0x22 -> :sswitch_18
        0x44 -> :sswitch_1b
        0xf0 -> :sswitch_1e
        0xf1 -> :sswitch_21
    .end sparse-switch
.end method

.method private doDisconnect()V
    .registers 5

    .prologue
    .line 667
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnectTime:J

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->duration:J

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnected:Z

    .line 672
    return-void
.end method

.method private equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 798
    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "dialString2"

    .prologue
    .line 359
    return-object p1
.end method

.method private isConnectingInOrOut()Z
    .registers 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private onStartedHolding()V
    .registers 3

    .prologue
    .line 872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->holdingStartTime:J

    .line 873
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/voip/VOIPCall;
    .registers 5
    .parameter "state"

    .prologue
    .line 281
    sget-object v0, Lcom/android/internal/telephony/voip/VOIPConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->foregroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 294
    :goto_28
    return-object v0

    .line 289
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->backgroundCall:Lcom/android/internal/telephony/voip/VOIPCall;

    goto :goto_28

    .line 294
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->ringingCall:Lcom/android/internal/telephony/voip/VOIPCall;

    goto :goto_28

    .line 281
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public cancelPostDial()V
    .registers 2

    .prologue
    .line 395
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 396
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 6
    .parameter "dc"

    .prologue
    const/4 v3, 0x1

    .line 785
    iget-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v1, :cond_b

    move v1, v3

    .line 791
    :goto_a
    return v1

    .line 790
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v3

    goto :goto_a

    :cond_23
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 383
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->getCall()Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/voip/VOIPCall;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .registers 2

    .prologue
    .line 876
    iget v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    return v0
.end method

.method public getConnectTime()J
    .registers 3

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .registers 3

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 458
    iget-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTimeReal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    move-wide v0, v2

    .line 463
    :goto_9
    return-wide v0

    .line 460
    :cond_a
    iget-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_9

    .line 463
    :cond_18
    iget-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->duration:J

    goto :goto_9
.end method

.method public getHoldDurationMillis()J
    .registers 5

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_b

    .line 475
    const-wide/16 v0, 0x0

    .line 477
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getNumberPresentation()I
    .registers 2

    .prologue
    .line 487
    iget v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    if-gt v3, v4, :cond_1e

    .line 510
    :cond_1b
    const-string v3, ""

    .line 524
    :goto_1d
    return-object v3

    .line 513
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, subStr:Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 515
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 516
    .local v2, wIndex:I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 518
    .local v0, pIndex:I
    if-lez v2, :cond_40

    if-lt v2, v0, :cond_3a

    if-gtz v0, :cond_40

    .line 519
    :cond_3a
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v0           #pIndex:I
    .end local v2           #wIndex:I
    :cond_3e
    :goto_3e
    move-object v3, v1

    .line 524
    goto :goto_1d

    .line 520
    .restart local v0       #pIndex:I
    .restart local v2       #wIndex:I
    :cond_40
    if-lez v0, :cond_3e

    .line 521
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnected:Z

    if-eqz v0, :cond_7

    .line 572
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 574
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_6
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 2

    .prologue
    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVOIPIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 677
    iget v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    if-ltz v0, :cond_9

    .line 678
    iget v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 680
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "VOIP connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnected:Z

    if-nez v0, :cond_a

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangup(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    .line 539
    return-void

    .line 537
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .registers 2

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 275
    const-string v0, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOIPConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public onConnectedInOrOut()V
    .registers 6

    .prologue
    const-string/jumbo v4, "onConnectedInOrOut: connectTime="

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTime:J

    .line 758
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTimeReal:J

    .line 759
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->duration:J

    .line 761
    const-string v0, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->log(Ljava/lang/String;)V

    .line 769
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->isIncoming:Z

    if-nez v0, :cond_4e

    .line 771
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->processNextPostDialChar()V

    .line 773
    :cond_4e
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->releaseWakeLock()V

    .line 775
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .registers 6
    .parameter "disconnectCauseFromCode"

    .prologue
    const-string v3, "[VOIPConn] onDisconnect: cause="

    const-string v2, "VOIP"

    .line 698
    const-string v0, "VOIP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOIPConn] onDisconnect: cause="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 702
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnected:Z

    if-nez v0, :cond_4f

    .line 703
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->doDisconnect()V

    .line 704
    const-string v0, "VOIP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOIPConn] onDisconnect: cause="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eqz v0, :cond_4f

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;->connectionDisconnected(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    .line 713
    :cond_4f
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->releaseWakeLock()V

    .line 714
    return-void
.end method

.method public onHangupLocal()V
    .registers 2

    .prologue
    .line 688
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 690
    return-void
.end method

.method public onLocalDisconnect()V
    .registers 4

    .prologue
    const-string v2, "[VOIPConn] onLoalDisconnect"

    const-string v1, "VOIP"

    .line 649
    const-string v0, "VOIP"

    const-string v0, "[VOIPConn] onLoalDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnected:Z

    if-nez v0, :cond_22

    .line 652
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->doDisconnect()V

    .line 653
    const-string v0, "VOIP"

    const-string v0, "[VOIPConn] onLoalDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eqz v0, :cond_22

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCall;->detach(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    .line 660
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->releaseWakeLock()V

    .line 662
    return-void
.end method

.method public onRemoteDisconnect(I)V
    .registers 3
    .parameter "causeCode"

    .prologue
    .line 693
    iput p1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mCallFailCause:I

    .line 694
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 695
    return-void
.end method

.method public proceedAfterWaitChar()V
    .registers 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_21

    .line 558
    const-string v0, "VOIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_20
    return-void

    .line 563
    :cond_21
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->processNextPostDialChar()V

    goto :goto_20
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_21

    .line 586
    const-string v1, "VOIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_20
    return-void

    .line 591
    :cond_21
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    .line 621
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->log(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->processNextPostDialChar()V

    goto :goto_20
.end method

.method public processNextPostDialChar()V
    .registers 10

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_8

    .line 229
    :cond_7
    :goto_7
    return-void

    .line 187
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_3a

    .line 189
    :cond_16
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 192
    const/4 v1, 0x0

    .line 211
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/voip/VOIPPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 215
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_7

    .line 218
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 219
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 220
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 221
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 224
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 226
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    .line 196
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3a
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 198
    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/voip/VOIPConnection;->processPostDialChar(C)Z

    move-result v2

    .line 202
    .local v2, isValid:Z
    if-nez v2, :cond_1c

    .line 204
    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 206
    const-string v6, "VOIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public processPostDialChar(C)Z
    .registers 7
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 234
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :goto_14
    move v0, v4

    .line 252
    :goto_15
    return v0

    .line 236
    :cond_16
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_2e

    .line 237
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 244
    :cond_2e
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_38

    .line 245
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_14

    .line 246
    :cond_38
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_42

    .line 247
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_14

    .line 249
    :cond_42
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public releaseWakeLock()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 169
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 170
    const-string v1, "VOIP"

    const-string/jumbo v2, "releaseWakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 173
    :cond_18
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public separate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->disconnected:Z

    if-nez v0, :cond_a

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->separate(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    .line 645
    return-void

    .line 642
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .registers 6
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1f

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1f

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->acquireWakeLock()V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 263
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    .end local v0           #msg:Landroid/os/Message;
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 271
    return-void

    .line 264
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_1c

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->releaseWakeLock()V

    goto :goto_1c
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 11
    .parameter "dc"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 808
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_e2

    move v4, v8

    .line 810
    .local v4, wasHolding:Z
    :goto_10
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/voip/VOIPConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/voip/VOIPCall;

    move-result-object v1

    .line 812
    .local v1, newParent:Lcom/android/internal/telephony/voip/VOIPCall;
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/voip/VOIPConnection;->equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 813
    const-string/jumbo v5, "update: phone # changed!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPConnection;->log(Ljava/lang/String;)V

    .line 814
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->address:Ljava/lang/String;

    .line 815
    const/4 v0, 0x1

    .line 819
    :cond_2b
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 820
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 821
    const/4 v0, 0x1

    .line 822
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    .line 829
    :cond_40
    :goto_40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--dssds----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPConnection;->log(Ljava/lang/String;)V

    .line 830
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapNamePresentation:I

    .line 831
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->numberPresentation:I

    .line 833
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eq v1, v5, :cond_f6

    .line 834
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eqz v5, :cond_6d

    .line 835
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/voip/VOIPCall;->detach(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    .line 837
    :cond_6d
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/voip/VOIPCall;->attach(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 838
    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 839
    const/4 v0, 0x1

    .line 848
    :goto_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: parent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasNewParent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    if-eq v1, v6, :cond_105

    move v6, v8

    :goto_90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPConnection;->log(Ljava/lang/String;)V

    .line 857
    if-eqz v3, :cond_d2

    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_d2

    .line 858
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->onConnectedInOrOut()V

    .line 861
    :cond_d2
    if-eqz v0, :cond_e1

    if-nez v4, :cond_e1

    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_e1

    .line 863
    invoke-direct {p0}, Lcom/android/internal/telephony/voip/VOIPConnection;->onStartedHolding()V

    .line 866
    :cond_e1
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/voip/VOIPCall;
    .end local v4           #wasHolding:Z
    :cond_e2
    move v4, v7

    .line 808
    goto/16 :goto_10

    .line 824
    .restart local v1       #newParent:Lcom/android/internal/telephony/voip/VOIPCall;
    .restart local v4       #wasHolding:Z
    :cond_e5
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 825
    const/4 v0, 0x1

    .line 826
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_40

    .line 842
    :cond_f6
    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/voip/VOIPCall;->update(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 843
    .local v2, parentStateChange:Z
    if-nez v0, :cond_100

    if-eqz v2, :cond_103

    :cond_100
    move v0, v8

    :goto_101
    goto/16 :goto_73

    :cond_103
    move v0, v7

    goto :goto_101

    .end local v2           #parentStateChange:Z
    :cond_105
    move v6, v7

    .line 848
    goto :goto_90
.end method

.method public updateParent(Lcom/android/internal/telephony/voip/VOIPCall;Lcom/android/internal/telephony/voip/VOIPCall;)V
    .registers 4
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 888
    if-eq p2, p1, :cond_e

    .line 889
    if-eqz p1, :cond_7

    .line 890
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/voip/VOIPCall;->detach(Lcom/android/internal/telephony/voip/VOIPConnection;)V

    .line 892
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/voip/VOIPCall;->attachFake(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 893
    iput-object p2, p0, Lcom/android/internal/telephony/voip/VOIPConnection;->parent:Lcom/android/internal/telephony/voip/VOIPCall;

    .line 895
    :cond_e
    return-void
.end method
