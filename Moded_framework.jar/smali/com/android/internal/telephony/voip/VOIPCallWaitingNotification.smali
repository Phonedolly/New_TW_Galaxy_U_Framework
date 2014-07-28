.class public Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;
.super Ljava/lang/Object;
.source "VOIPCallWaitingNotification.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field public alertPitch:I

.field public isPresent:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public signal:I

.field public signalType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->number:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->numberPresentation:I

    .line 7
    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->name:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->namePresentation:I

    .line 9
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->isPresent:I

    .line 10
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->signalType:I

    .line 11
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->alertPitch:I

    .line 12
    iput v0, p0, Lcom/android/internal/telephony/voip/VOIPCallWaitingNotification;->signal:I

    return-void
.end method
