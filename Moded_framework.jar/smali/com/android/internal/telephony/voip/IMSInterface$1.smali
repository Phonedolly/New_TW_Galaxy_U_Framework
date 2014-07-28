.class Lcom/android/internal/telephony/voip/IMSInterface$1;
.super Lcom/sec/android/ims/IMSEventListener;
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
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(IIIILjava/lang/String;)V
    .registers 16
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const-string v2, "VOIPPhone/IMSInterface"

    .line 135
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 136
    .local v8, msg:Landroid/os/Message;
    iput p2, v8, Landroid/os/Message;->what:I

    .line 137
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  VOIPPhone Event callback, eventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 145
    .local v7, message:Landroid/os/Message;
    sparse-switch p2, :sswitch_data_1fa

    .line 265
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsEventListener: Received Event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_8e
    :goto_8e
    :sswitch_8e
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/voip/IMSInterface;->writeErrorData(IIIILjava/lang/String;)V

    .line 274
    return-void

    .line 148
    :sswitch_99
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->stopHiPriNetwork()I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_8e

    .line 153
    :sswitch_ac
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->addVTNotification()V

    goto :goto_8e

    .line 160
    :sswitch_b6
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_8e

    .line 164
    :sswitch_c0
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v0, "IMS_NOT_SUBSCRIBED "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iput-boolean v3, v0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_8e

    .line 170
    :sswitch_d9
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$100(Lcom/android/internal/telephony/voip/IMSInterface;)I

    move-result v1

    #calls: Lcom/android/internal/telephony/voip/IMSInterface;->updateCallsList(II)Z
    invoke-static {v0, p2, v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$200(Lcom/android/internal/telephony/voip/IMSInterface;II)Z

    move-result v0

    if-ne v0, v3, :cond_8e

    .line 173
    iput v4, v7, Landroid/os/Message;->what:I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8e

    .line 181
    :sswitch_f1
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 182
    .local v9, nmsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/voip/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/voip/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    .end local v9           #nmsg:Landroid/os/Message;
    :sswitch_105
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$100(Lcom/android/internal/telephony/voip/IMSInterface;)I

    move-result v1

    #calls: Lcom/android/internal/telephony/voip/IMSInterface;->updateCallsList(II)Z
    invoke-static {v0, p2, v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$200(Lcom/android/internal/telephony/voip/IMSInterface;II)Z

    move-result v0

    if-ne v0, v3, :cond_8e

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/voip/IMSInterface;->notifyVOIPCallChanged(Landroid/os/Message;)V

    .line 190
    iput v4, v7, Landroid/os/Message;->what:I

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8e

    .line 225
    :sswitch_123
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/IMSInterface;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 226
    .local v6, mWifiManager1:Landroid/net/wifi/WifiManager;
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #setter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v0, p3}, Lcom/android/internal/telephony/voip/IMSInterface;->access$102(Lcom/android/internal/telephony/voip/IMSInterface;I)I

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 228
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteFromCallsList    callID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$100(Lcom/android/internal/telephony/voip/IMSInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$100(Lcom/android/internal/telephony/voip/IMSInterface;)I

    move-result v1

    #calls: Lcom/android/internal/telephony/voip/IMSInterface;->deleteFromCallsList(I)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$400(Lcom/android/internal/telephony/voip/IMSInterface;I)Z

    move-result v0

    if-ne v0, v3, :cond_178

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/voip/IMSInterface;->notifyVOIPCallChanged(Landroid/os/Message;)V

    .line 233
    iput v4, v7, Landroid/os/Message;->what:I

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    :cond_178
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    if-ne v3, v0, :cond_8e

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iput-boolean v5, v0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 239
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v0, "WIFI is enabled before making/incoming VT. So enable it now"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_8e

    .line 244
    .end local v6           #mWifiManager1:Landroid/net/wifi/WifiManager;
    :sswitch_196
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v0, "New Incoming Call "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iput p3, v0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/voip/IMSInterface;->access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #calls: Lcom/android/internal/telephony/voip/IMSInterface;->addToCallsList(Ljava/lang/String;IZI)V
    invoke-static {v0, p5, v4, v3, p3}, Lcom/android/internal/telephony/voip/IMSInterface;->access$500(Lcom/android/internal/telephony/voip/IMSInterface;Ljava/lang/String;IZI)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #setter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v0, p3}, Lcom/android/internal/telephony/voip/IMSInterface;->access$102(Lcom/android/internal/telephony/voip/IMSInterface;I)I

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    if-ne p4, v3, :cond_1e5

    move v1, v3

    :goto_1bd
    #setter for: Lcom/android/internal/telephony/voip/IMSInterface;->isVideoCall:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$602(Lcom/android/internal/telephony/voip/IMSInterface;Z)Z

    .line 250
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callid set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    #getter for: Lcom/android/internal/telephony/voip/IMSInterface;->callid:I
    invoke-static {v1}, Lcom/android/internal/telephony/voip/IMSInterface;->access$100(Lcom/android/internal/telephony/voip/IMSInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface$1;->this$0:Lcom/android/internal/telephony/voip/IMSInterface;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/voip/IMSInterface;->notifyVOIPCallChanged(Landroid/os/Message;)V

    goto/16 :goto_8e

    :cond_1e5
    move v1, v5

    .line 249
    goto :goto_1bd

    .line 260
    :sswitch_1e7
    invoke-static {}, Lcom/android/internal/telephony/voip/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/voip/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8e

    .line 145
    :sswitch_data_1fa
    .sparse-switch
        0x66 -> :sswitch_ac
        0x68 -> :sswitch_b6
        0x6a -> :sswitch_99
        0x6b -> :sswitch_99
        0x6d -> :sswitch_b6
        0x6e -> :sswitch_b6
        0x70 -> :sswitch_b6
        0x71 -> :sswitch_c0
        0xca -> :sswitch_196
        0xcb -> :sswitch_d9
        0xcc -> :sswitch_8e
        0xcd -> :sswitch_105
        0xcf -> :sswitch_123
        0xd0 -> :sswitch_f1
        0xd1 -> :sswitch_123
        0xd2 -> :sswitch_123
        0xd4 -> :sswitch_123
        0xd5 -> :sswitch_123
        0xd6 -> :sswitch_123
        0xd7 -> :sswitch_123
        0xd8 -> :sswitch_123
        0xd9 -> :sswitch_123
        0xda -> :sswitch_123
        0xdb -> :sswitch_123
        0xde -> :sswitch_123
        0xe1 -> :sswitch_123
        0xe4 -> :sswitch_123
        0xe5 -> :sswitch_123
        0xe6 -> :sswitch_123
        0xe7 -> :sswitch_123
        0xea -> :sswitch_123
        0xeb -> :sswitch_123
        0xed -> :sswitch_123
        0xee -> :sswitch_123
        0x12a -> :sswitch_1e7
        0x12b -> :sswitch_1e7
        0x12c -> :sswitch_1e7
        0x12d -> :sswitch_1e7
        0x12e -> :sswitch_1e7
        0x12f -> :sswitch_123
        0x130 -> :sswitch_123
        0x131 -> :sswitch_123
        0x132 -> :sswitch_123
        0x133 -> :sswitch_123
        0x134 -> :sswitch_123
        0x135 -> :sswitch_123
        0x136 -> :sswitch_123
        0x137 -> :sswitch_123
    .end sparse-switch
.end method
