.class Lcom/sec/android/internal/ims/IMSService$8;
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
    .line 1511
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$8;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1514
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, action:Ljava/lang/String;
    const-string v1, ">>>>>>>>>> BROADCAST EVENT FROM RIL >>>>>>>"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1516
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver  action string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const-string v1, "com.android.server.status.sip_reg_available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1520
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$8;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V
    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$1100(Lcom/sec/android/internal/ims/IMSService;)V

    .line 1530
    :cond_2f
    :goto_2f
    return-void

    .line 1521
    :cond_30
    const-string v1, "com.android.server.status.sip_reg_unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1523
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$8;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 1524
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$8;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v1

    if-ne v1, v4, :cond_2f

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$8;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v1

    if-ne v1, v4, :cond_2f

    .line 1526
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1527
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$8;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_2f
.end method
