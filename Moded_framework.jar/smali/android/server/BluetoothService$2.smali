.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 2579
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2582
    if-nez p2, :cond_3

    .line 2721
    :cond_2
    :goto_2
    return-void

    .line 2584
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2586
    .local v3, action:Ljava/lang/String;
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 2589
    const-string v13, "BluetoothService"

    const-string v14, " Received BOOT_COMPLETED message"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0xbb8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 2591
    :cond_33
    const-string v13, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a5

    .line 2592
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 2593
    .local v7, extras:Landroid/os/Bundle;
    const-string v13, "broadcom.android.bluetooth.intent.CALL_STATE"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 2594
    .local v11, state:I
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got Call State change - new call state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    const-string/jumbo v13, "service.brcm.bt.call_active"

    const/4 v14, 0x1

    if-ne v11, v14, :cond_9f

    const-string v14, "1"

    :goto_66
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2598
    const-string/jumbo v13, "service.brcm.bt.avrcp_pass_thru"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v11, v15, :cond_a2

    const-wide/16 v15, 0x1388

    :goto_9a
    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2595
    :cond_9f
    const-string v14, "0"

    goto :goto_66

    .line 2599
    :cond_a2
    const-wide/16 v15, 0x1388

    goto :goto_9a

    .line 2607
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v11           #state:I
    :cond_a5
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e2

    .line 2608
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2611
    .local v10, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$2700(Landroid/server/BluetoothService;)Z

    move-result v13

    if-nez v13, :cond_d4

    const/4 v13, 0x1

    move v6, v13

    .line 2613
    .local v6, enabled:Z
    :goto_be
    const-string v13, "bluetooth_on"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_2

    .line 2614
    if-eqz v6, :cond_d7

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_2

    .line 2611
    .end local v6           #enabled:Z
    :cond_d4
    const/4 v13, 0x0

    move v6, v13

    goto :goto_be

    .line 2617
    .restart local v6       #enabled:Z
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_2

    .line 2620
    .end local v6           #enabled:Z
    .end local v10           #resolver:Landroid/content/ContentResolver;
    :cond_e2
    const-string v13, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15a

    .line 2621
    const-string v13, "android.intent.extra.DOCK_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2623
    .restart local v11       #state:I
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    if-nez v11, :cond_11e

    .line 2625
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/server/BluetoothService;->access$3402(Ljava/lang/String;)Ljava/lang/String;

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$3502(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 2628
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2631
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dock_bluetooth_address"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/server/BluetoothService;->access$3400()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2632
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 2636
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #state:I
    :cond_15a
    const-string v13, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18d

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1108(Landroid/server/BluetoothService;)I

    .line 2638
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACL connected, mAclLinkCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2640
    :cond_18d
    const-string v13, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_200

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1110(Landroid/server/BluetoothService;)I

    .line 2642
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACL disconnected, mAclLinkCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v13

    if-nez v13, :cond_2

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0xc8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2649
    :cond_200
    const-string v13, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2be

    .line 2650
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 2651
    .restart local v7       #extras:Landroid/os/Bundle;
    const-string v13, "android.bluetooth.device.extra.PROFILE"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2652
    .local v9, profile:I
    const/4 v12, 0x0

    .line 2654
    .local v12, waitingForThisProfile:Z
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received profile "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " disconnected intent."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    packed-switch v9, :pswitch_data_3f2

    .line 2671
    :goto_235
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v13

    if-nez v13, :cond_2

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mDisableSaveSetting:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v14

    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_2

    .line 2658
    :pswitch_284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v12

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$702(Landroid/server/BluetoothService;Z)Z

    goto :goto_235

    .line 2662
    :pswitch_297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v12

    .line 2663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Z)Z

    goto :goto_235

    .line 2666
    :pswitch_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v12

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$902(Landroid/server/BluetoothService;Z)Z

    goto/16 :goto_235

    .line 2682
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #profile:I
    .end local v12           #waitingForThisProfile:Z
    :cond_2be
    const-string v13, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2da

    .line 2683
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/16 v14, 0x15

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_2

    .line 2689
    :cond_2da
    const-string v13, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_397

    .line 2690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "device_policy"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 2691
    .local v8, mDPM:Landroid/app/admin/DevicePolicyManager;
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Intent IT Policy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v13

    if-nez v13, :cond_34e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_34e

    .line 2693
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1202(I)I

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService;->disable(Z)Z

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x64

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2696
    :cond_34e
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_381

    .line 2697
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1202(I)I

    .line 2698
    const-string/jumbo v13, "service.bt.security.policy.mode"

    const-string v14, "1"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x64

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2700
    :cond_381
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 2701
    const/4 v13, 0x2

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1202(I)I

    .line 2702
    const-string/jumbo v13, "service.bt.security.policy.mode"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2707
    .end local v8           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_397
    const-string v13, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2708
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2709
    .restart local v10       #resolver:Landroid/content/ContentResolver;
    const-string v13, "BLUETOOTH_ON"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2710
    .local v4, controlValue:I
    const-string v13, "bluetooth_on"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_2

    .line 2711
    const/4 v13, 0x1

    if-ne v4, v13, :cond_3e4

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v13}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v14, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2715
    :cond_3e4
    if-nez v4, :cond_2

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_2

    .line 2656
    nop

    :pswitch_data_3f2
    .packed-switch 0x1
        :pswitch_284
        :pswitch_297
        :pswitch_2aa
    .end packed-switch
.end method
