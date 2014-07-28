.class Lcom/android/internal/telephony/voip/IMSInterface$2;
.super Landroid/os/Handler;
.source "IMSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/voip/IMSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/voip/IMSInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/voip/IMSInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v4, "  Call End Event Being Simulated"

    const-string v3, "VOIPPhone/IMSInterface"

    .line 929
    invoke-virtual {p0}, Lcom/android/internal/telephony/voip/IMSInterface$2;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 930
    .local v7, message:Landroid/os/Message;
    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 931
    .local v6, ar:Landroid/os/AsyncResult;
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_9e

    .line 951
    :goto_14
    return-void

    .line 933
    :sswitch_15
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v0, "  IMS_GET_CURRENT_CALLS"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v7, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    iput-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 936
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 940
    :sswitch_2f
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Call End Event Being Simulated"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$700(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xcf

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto :goto_14

    .line 944
    :sswitch_58
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Call End Event Being Simulated"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8e

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$700(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xd4

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto :goto_14

    .line 948
    :cond_8e
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$2;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$700(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xde

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto/16 :goto_14

    .line 931
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_15
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_58
    .end sparse-switch
.end method
