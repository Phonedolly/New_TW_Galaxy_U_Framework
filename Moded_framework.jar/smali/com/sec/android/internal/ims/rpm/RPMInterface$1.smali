.class Lcom/sec/android/internal/ims/rpm/RPMInterface$1;
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
    .line 100
    iput-object p1, p0, Lcom/sec/android/internal/ims/rpm/RPMInterface$1;->this$0:Lcom/sec/android/internal/ims/rpm/RPMInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    const-string v0, ">>>>>>>>>> BROADCAST EVENT for ACTION_BOOT_COMPLETED"

    #calls: Lcom/sec/android/internal/ims/rpm/RPMInterface;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/internal/ims/rpm/RPMInterface;->access$000(Ljava/lang/String;)V

    .line 105
    :cond_11
    return-void
.end method
