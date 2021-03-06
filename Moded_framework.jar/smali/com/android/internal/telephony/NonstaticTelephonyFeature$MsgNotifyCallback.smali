.class Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
.super Ljava/lang/Object;
.source "NonstaticTelephonyFeature.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NonstaticTelephonyFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgNotifyCallback"
.end annotation


# instance fields
.field private mDoneLatch:Ljava/util/concurrent/CountDownLatch;

.field private mMsgToNotify:I

.field private mStartLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(ILjava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .parameter "msgToNotify"
    .parameter "startLatch"
    .parameter "doneLatch"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mMsgToNotify:I

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mMsgToNotify:I

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    .line 52
    iput-object p3, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mMsgToNotify:I

    if-ne v0, v1, :cond_12

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 60
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;->mDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_14

    .line 64
    :goto_10
    const/4 v0, 0x1

    .line 67
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 61
    :catch_14
    move-exception v0

    goto :goto_10
.end method
