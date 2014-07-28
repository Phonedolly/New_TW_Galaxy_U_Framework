.class Landroid/net/wifi/WifiStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 444
    const-string v0, "WifiStateTracker"

    const-string v1, "DHCP_RENEW"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->sendAlarmSignaltoDhcp()Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 446
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/DhcpInfo;->leaseDuration:I

    #calls: Landroid/net/wifi/WifiStateTracker;->setDhcpRenewAlarm(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;I)V

    .line 448
    :cond_24
    return-void
.end method
