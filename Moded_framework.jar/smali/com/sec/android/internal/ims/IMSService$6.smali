.class Lcom/sec/android/internal/ims/IMSService$6;
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
    .line 971
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const-string v2, "IMS/IMSService"

    .line 976
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 978
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_28

    .line 980
    const-string v0, "IMS/IMSService"

    const-string v0, " WiFi Event BroadReceiver:onReceive()::WIFI_STATE_CHANGED_ACTION event:::WIFI ENABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_20
    const-string v0, "IMS/IMSService"

    const-string v0, "WiFi Event BroadReceiver:onReceive():: WIFI_STATE_CHANGED_ACTION event handled..."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_27
    :goto_27
    return-void

    .line 983
    :cond_28
    const-string v0, "IMS/IMSService"

    const-string v0, "WiFi Event BroadReceiver:onReceive()::WIFI_STATE_CHANGED_ACTION event:::WIFI DISABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 992
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 994
    const-string v0, "IMS/IMSService"

    const-string v0, "===== NETWORK_STATE_CHANGED_ACTION event happened..."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_92

    .line 997
    const-string v0, "IMS/IMSService"

    const-string v0, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION;wifi_status:::WIFI ENABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    .line 1000
    const-string v0, "IMS/IMSService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WiFi Event BroadReceiver:onReceive():TypeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v1, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v1, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$900(Lcom/sec/android/internal/ims/IMSService;Landroid/net/NetworkInfo;)V

    .line 1013
    :goto_8a
    const-string v0, "IMS/IMSService"

    const-string v0, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION event handled..."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1006
    :cond_92
    const-string v0, "IMS/IMSService"

    const-string v0, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION;wifi_status:::WIFI DISABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method
