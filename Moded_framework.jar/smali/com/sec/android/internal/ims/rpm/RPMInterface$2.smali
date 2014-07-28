.class Lcom/sec/android/internal/ims/rpm/RPMInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "RPMInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/rpm/RPMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/rpm/RPMInterface;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/rpm/RPMInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface$2;->this$0:Lcom/sec/android/internal/ims/rpm/RPMInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    const-string v6, ">>>>>>>>>> BROADCAST EVENT FROM CONNECTIVITY MANAGER"

    #calls: Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->access$000(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_49

    .line 120
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 122
    .local v0, a:Landroid/net/NetworkInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connectivity alert for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, info:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 124
    .local v5, state:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_4a

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    #calls: Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->access$000(Ljava/lang/String;)V

    .line 146
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v4           #info:Ljava/lang/String;
    .end local v5           #state:Landroid/net/NetworkInfo$State;
    :cond_49
    :goto_49
    return-void

    .line 127
    .restart local v0       #a:Landroid/net/NetworkInfo;
    .restart local v4       #info:Ljava/lang/String;
    .restart local v5       #state:Landroid/net/NetworkInfo$State;
    :cond_4a
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_49

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DISCONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    const-string/jumbo v6, "otherNetwork"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #a:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 131
    .restart local v0       #a:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_ab

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (OTHER CONNECTED)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    iget-object v6, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface$2;->this$0:Lcom/sec/android/internal/ims/rpm/RPMInterface;

    #getter for: Lcom/sec/android/internal/ims/rpm/RPMInterface;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->access$100(Lcom/sec/android/internal/ims/rpm/RPMInterface;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 135
    .local v2, cm:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_49

    .line 136
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 137
    .local v3, i:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_49

    .line 138
    :cond_a5
    const-string v6, "CM says we\'re connected, but no active info?"

    #calls: Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->access$000(Ljava/lang/String;)V

    goto :goto_49

    .line 142
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #i:Landroid/net/NetworkInfo;
    :cond_ab
    #calls: Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->access$000(Ljava/lang/String;)V

    goto :goto_49
.end method
