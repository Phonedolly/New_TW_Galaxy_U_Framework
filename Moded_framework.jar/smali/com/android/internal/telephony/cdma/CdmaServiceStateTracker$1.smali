.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "0"

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isLocaleChnaged:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 212
    :cond_19
    :goto_19
    return-void

    .line 190
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v2, "0"

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHandset_Reg:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$102(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_19

    .line 194
    :cond_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v2, "0"

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHandset_Auth:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_19

    .line 198
    :cond_42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.status.sid_changed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, msg1:Landroid/os/Message;
    const/16 v1, 0x27

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_19
.end method
