.class final Lcom/android/internal/app/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 163
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->disconnect3GData()V

    .line 165
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_8
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 167
    const-string v1, "ShutdownThread"

    const-string v2, "OnClick : shutdown already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v0

    .line 179
    :goto_16
    return-void

    .line 170
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_24

    .line 173
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 174
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$300(Landroid/content/Context;)V

    goto :goto_16

    .line 170
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 176
    :cond_27
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$400(Landroid/content/Context;)V

    goto :goto_16
.end method
