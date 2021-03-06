.class Landroid/webkit/BrowserFrame$ConfigCallback;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/BrowserFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigCallback"
.end annotation


# instance fields
.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;)V
    .registers 3
    .parameter "wm"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    .line 117
    iput-object p1, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mWindowManager:Landroid/view/WindowManager;

    .line 118
    return-void
.end method


# virtual methods
.method public declared-synchronized addHandler(Landroid/os/Handler;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    .line 129
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 169
    :goto_8
    return-void

    .line 132
    :cond_9
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v3

    .line 134
    .local v3, orientation:I
    packed-switch v3, :pswitch_data_74

    .line 150
    :goto_16
    monitor-enter p0

    .line 153
    :try_start_17
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v1, handlersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 156
    .local v5, wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 157
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_57

    .line 158
    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_28

    .line 168
    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #handlersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :catchall_49
    move-exception v6

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw v6

    .line 136
    :pswitch_4c
    const/16 v3, 0x5a

    .line 137
    goto :goto_16

    .line 139
    :pswitch_4f
    const/16 v3, 0xb4

    .line 140
    goto :goto_16

    .line 142
    :pswitch_52
    const/16 v3, -0x5a

    .line 143
    goto :goto_16

    .line 145
    :pswitch_55
    const/4 v3, 0x0

    .line 146
    goto :goto_16

    .line 161
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #handlersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_57
    :try_start_57
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 165
    .end local v0           #h:Landroid/os/Handler;
    .end local v5           #wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_5b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 166
    .local v4, weak:Ljava/lang/ref/WeakReference;
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 168
    .end local v4           #weak:Ljava/lang/ref/WeakReference;
    :cond_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_57 .. :try_end_72} :catchall_49

    goto :goto_8

    .line 134
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_55
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
    .end packed-switch
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method
