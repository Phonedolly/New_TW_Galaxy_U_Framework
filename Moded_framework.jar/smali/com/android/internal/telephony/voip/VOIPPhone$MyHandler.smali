.class Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;
.super Landroid/os/Handler;
.source "VOIPPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/voip/VOIPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/voip/VOIPPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/voip/VOIPPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 995
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/voip/VOIPPhone;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "l"

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    .line 998
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 999
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const-string v6, "VOIP"

    .line 1006
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_d0

    .line 1077
    :pswitch_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "unexpected event not handled"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1008
    :pswitch_10
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1010
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x15

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1080
    .end local p0
    :cond_29
    :goto_29
    return-void

    .line 1015
    .restart local p0
    :pswitch_2a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1017
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_29

    .line 1021
    const-string v4, "VOIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Baseband version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    const-string v5, "gsm.version.baseband"

    iget-object p0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lcom/android/internal/telephony/voip/VOIPPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1027
    .end local v1           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_58
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1029
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_29

    .line 1032
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 1033
    .local v3, respId:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    #setter for: Lcom/android/internal/telephony/voip/VOIPPhone;->mEsn:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/voip/VOIPPhone;->access$002(Lcom/android/internal/telephony/voip/VOIPPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 1034
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    #setter for: Lcom/android/internal/telephony/voip/VOIPPhone;->mMeid:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/voip/VOIPPhone;->access$102(Lcom/android/internal/telephony/voip/VOIPPhone;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_29

    .line 1038
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #respId:[Ljava/lang/String;
    :pswitch_79
    const-string v4, "VOIP"

    const-string v4, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1043
    :pswitch_81
    const-string v4, "VOIP"

    const-string v4, "Event EVENT_RADIO_ON Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1048
    :pswitch_89
    const-string v4, "VOIP"

    const-string v4, "Event EVENT_SSN Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1053
    :pswitch_91
    const-string v4, "VOIP"

    const-string v4, "Event EVENT_CALL_RING Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1058
    :pswitch_99
    const-string v4, "VOIP"

    const-string v4, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1063
    :pswitch_a1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1064
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-class v4, Lcom/android/internal/telephony/IccException;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 1065
    iget-object v4, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/voip/VOIPPhone$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPPhone;

    #getter for: Lcom/android/internal/telephony/voip/VOIPPhone;->mVmNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/voip/VOIPPhone;->access$200(Lcom/android/internal/telephony/voip/VOIPPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/voip/VOIPPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1066
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1068
    :cond_bd
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1069
    .local v2, onComplete:Landroid/os/Message;
    if-eqz v2, :cond_29

    .line 1070
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1071
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_29

    .line 1006
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_89
        :pswitch_7
        :pswitch_7
        :pswitch_81
        :pswitch_2a
        :pswitch_7
        :pswitch_79
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_91
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_99
        :pswitch_a1
        :pswitch_58
    .end packed-switch
.end method
