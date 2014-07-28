.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 2000
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2000
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2003
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2031
    :cond_c
    const-string v10, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 2032
    const-string v10, "android.intent.extra.DOCK_STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2035
    .local v5, dockState:I
    packed-switch v5, :pswitch_data_374

    .line 2045
    const/16 v10, 0x1000

    const/4 v11, 0x0

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2048
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x1000

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    .end local v5           #dockState:I
    .end local p1
    :cond_35
    :goto_35
    return-void

    .line 2038
    .restart local v5       #dockState:I
    .restart local p1
    :pswitch_36
    const/16 v10, 0x1000

    const/4 v11, 0x1

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2041
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x1000

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 2051
    .end local v5           #dockState:I
    :cond_51
    const-string v10, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 2052
    const-string v10, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2054
    .local v9, state:I
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2055
    .local v3, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2056
    .local v1, address:Ljava/lang/String;
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ae

    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ae

    const/4 v10, 0x1

    move v6, v10

    .line 2059
    .local v6, isConnected:Z
    :goto_98
    if-eqz v6, :cond_b8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_b8

    .line 2061
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v10

    if-eqz v10, :cond_b1

    .line 2062
    if-nez v9, :cond_35

    .line 2066
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v10, v1}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_35

    .line 2056
    .end local v6           #isConnected:Z
    :cond_ae
    const/4 v10, 0x0

    move v6, v10

    goto :goto_98

    .line 2070
    .restart local v6       #isConnected:Z
    :cond_b1
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v10, v1}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 2072
    :cond_b8
    if-nez v6, :cond_35

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_35

    .line 2075
    :cond_c0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v10

    if-eqz v10, :cond_d7

    .line 2077
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static {v10}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 2078
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v10, v1}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2087
    :cond_d0
    :goto_d0
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v10, v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 2082
    :cond_d7
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static {v10}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 2083
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static {v10}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 2084
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    iget-object v11, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_d0

    .line 2089
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #isConnected:Z
    .end local v9           #state:I
    .restart local p1
    :cond_f0
    const-string v10, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_190

    .line 2090
    const-string v10, "android.bluetooth.headset.extra.STATE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2092
    .restart local v9       #state:I
    const/16 v4, 0x10

    .line 2093
    .local v4, device:I
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2094
    .restart local v3       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v1, 0x0

    .line 2095
    .restart local v1       #address:Ljava/lang/String;
    if-eqz v3, :cond_11d

    .line 2096
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2097
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 2098
    .local v2, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v2, :cond_11d

    .line 2099
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v10

    sparse-switch v10, :sswitch_data_37c

    .line 2111
    .end local v2           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_11d
    :goto_11d
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16e

    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16e

    const/4 v10, 0x1

    move v6, v10

    .line 2114
    .restart local v6       #isConnected:Z
    :goto_145
    if-eqz v6, :cond_171

    const/4 v10, 0x2

    if-eq v9, v10, :cond_171

    .line 2115
    const/4 v10, 0x0

    invoke-static {v4, v10, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2118
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v11, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v10, v11}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2120
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v10}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_35

    .line 2102
    .end local v6           #isConnected:Z
    .restart local v2       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_168
    const/16 v4, 0x20

    .line 2103
    goto :goto_11d

    .line 2105
    :sswitch_16b
    const/16 v4, 0x40

    goto :goto_11d

    .line 2111
    .end local v2           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_16e
    const/4 v10, 0x0

    move v6, v10

    goto :goto_145

    .line 2121
    .restart local v6       #isConnected:Z
    :cond_171
    if-nez v6, :cond_35

    const/4 v10, 0x2

    if-ne v9, v10, :cond_35

    .line 2122
    const/4 v10, 0x1

    invoke-static {v4, v10, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2125
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v11, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v10, v11}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_35

    .line 2128
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #device:I
    .end local v6           #isConnected:Z
    .end local v9           #state:I
    .restart local p1
    :cond_190
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_240

    .line 2129
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2130
    .restart local v9       #state:I
    const-string v10, "microphone"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2132
    .local v7, microphone:I
    if-eqz v7, :cond_1f2

    .line 2133
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 2134
    .restart local v6       #isConnected:Z
    if-nez v9, :cond_1d3

    if-eqz v6, :cond_1d3

    .line 2135
    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2138
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2139
    :cond_1d3
    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    if-nez v6, :cond_35

    .line 2140
    const/4 v10, 0x4

    const/4 v11, 0x1

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2143
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2146
    .end local v6           #isConnected:Z
    :cond_1f2
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 2147
    .restart local v6       #isConnected:Z
    if-nez v9, :cond_21f

    if-eqz v6, :cond_21f

    .line 2148
    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2151
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2152
    :cond_21f
    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    if-nez v6, :cond_35

    .line 2153
    const/16 v10, 0x8

    const/4 v11, 0x1

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2156
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x8

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2159
    .end local v6           #isConnected:Z
    .end local v7           #microphone:I
    .end local v9           #state:I
    :cond_240
    const-string v10, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_288

    .line 2160
    const-string v10, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2162
    .restart local v9       #state:I
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v10}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10

    .line 2163
    :try_start_256
    iget-object v11, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_27e

    .line 2164
    packed-switch v9, :pswitch_data_38a

    .line 2172
    const/4 v9, -0x1

    .line 2175
    :goto_266
    const/4 v11, -0x1

    if-eq v9, v11, :cond_27e

    .line 2176
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v8, newIntent:Landroid/content/Intent;
    const-string v11, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2178
    iget-object v11, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2181
    .end local v8           #newIntent:Landroid/content/Intent;
    :cond_27e
    monitor-exit v10

    goto/16 :goto_35

    :catchall_281
    move-exception v11

    monitor-exit v10
    :try_end_283
    .catchall {:try_start_256 .. :try_end_283} :catchall_281

    throw v11

    .line 2166
    :pswitch_284
    const/4 v9, 0x1

    .line 2167
    goto :goto_266

    .line 2169
    :pswitch_286
    const/4 v9, 0x0

    .line 2170
    goto :goto_266

    .line 2184
    .end local v9           #state:I
    :cond_288
    const-string v10, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2fe

    .line 2185
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2186
    .restart local v9       #state:I
    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TVOUT_PLUG evt state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x800

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 2189
    .restart local v6       #isConnected:Z
    if-nez v9, :cond_2dd

    if-eqz v6, :cond_2dd

    .line 2190
    const/16 v10, 0x800

    const/4 v11, 0x0

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2193
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x800

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2194
    :cond_2dd
    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    if-nez v6, :cond_35

    .line 2195
    const/16 v10, 0x800

    const/4 v11, 0x1

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2198
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x800

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2201
    .end local v6           #isConnected:Z
    .end local v9           #state:I
    :cond_2fe
    const-string v10, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 2202
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2203
    .restart local v9       #state:I
    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x1000

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 2206
    .restart local v6       #isConnected:Z
    if-nez v9, :cond_353

    if-eqz v6, :cond_353

    .line 2207
    const/16 v10, 0x1000

    const/4 v11, 0x0

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2210
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v11, 0x1000

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2211
    :cond_353
    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    if-nez v6, :cond_35

    .line 2212
    const/16 v10, 0x1000

    const/4 v11, 0x1

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2215
    iget-object v10, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x1000

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 2035
    :pswitch_data_374
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
    .end packed-switch

    .line 2099
    :sswitch_data_37c
    .sparse-switch
        0x404 -> :sswitch_168
        0x408 -> :sswitch_168
        0x420 -> :sswitch_16b
    .end sparse-switch

    .line 2164
    :pswitch_data_38a
    .packed-switch 0x0
        :pswitch_286
        :pswitch_284
    .end packed-switch
.end method
