.class Lcom/sec/android/internal/ims/IMSService$4;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v5, "IMS/IMSService"

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, action:Ljava/lang/String;
    const-string v3, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver  action string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 389
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->access$500(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 390
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v3

    if-ne v3, v6, :cond_69

    .line 392
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-ne v6, v3, :cond_82

    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v6, :cond_82

    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget v3, v3, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    if-ne v3, v7, :cond_82

    .line 394
    const/4 v2, -0x1

    .line 396
    .local v2, retVal:I
    const-string v3, "IMS/IMSService"

    const-string v3, "Received FLIGHT_MODE Intent Due to Wifi-on"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->startHiPriNetwork()I

    move-result v2

    .line 398
    if-ne v2, v7, :cond_6a

    .line 401
    const-string v3, "IMS/IMSService"

    const-string/jumbo v3, "startHiPriNetwork() is failed"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v1           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v2           #retVal:I
    :cond_69
    :goto_69
    return-void

    .line 403
    .restart local v1       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v2       #retVal:I
    :cond_6a
    if-nez v2, :cond_79

    .line 405
    const-string v3, "IMS/IMSService"

    const-string v3, "HiPri Network is already active...Try sending Dereg"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->handleHiPriNWConnect()V

    goto :goto_69

    .line 410
    :cond_79
    const-string v3, "IMS/IMSService"

    const-string/jumbo v3, "startHiPriNetwork() is Started Successfully"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 416
    .end local v2           #retVal:I
    :cond_82
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 417
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 418
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->access$202(Z)Z

    goto :goto_69
.end method
