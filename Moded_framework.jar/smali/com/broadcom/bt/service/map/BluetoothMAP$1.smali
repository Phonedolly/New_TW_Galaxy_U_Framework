.class Lcom/broadcom/bt/service/map/BluetoothMAP$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/BluetoothMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/BluetoothMAP;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$1;->this$0:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 269
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$1;->this$0:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->registerDSProvider()I

    .line 271
    :cond_11
    return-void
.end method
