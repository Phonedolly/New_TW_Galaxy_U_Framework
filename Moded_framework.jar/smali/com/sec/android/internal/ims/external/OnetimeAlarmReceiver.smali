.class public Lcom/sec/android/internal/ims/external/OnetimeAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnetimeAlarmReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMS-OnetimeAlarmReceiver-Java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "IMS-OnetimeAlarmReceiver-Java"

    .line 28
    const-string v2, "IMS-OnetimeAlarmReceiver-Java"

    const-string v2, "OnetimeAlarmReceiver: Entered"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v2, "com.samsung.ims.framework.tid"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, aTid:I
    const-string v2, "IMS-OnetimeAlarmReceiver-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnetimeAlarmReceiver: The Value of ATid is :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getImsNative()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    .line 35
    .local v1, mNative:Lcom/sec/android/internal/ims/external/NativeInterface;
    if-nez v1, :cond_36

    .line 36
    const-string v2, "IMS-OnetimeAlarmReceiver-Java"

    const-string v2, "OnetimeAlarmReceiver: mNative is NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_35
    return-void

    .line 40
    :cond_36
    invoke-virtual {v1, v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmExpiryCallback(I)V

    goto :goto_35
.end method
