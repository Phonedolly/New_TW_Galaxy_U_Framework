.class Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;
.super Landroid/os/Handler;
.source "DMBFrmwrks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dmb/DMBFrmwrks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMBFrmwrksEventHandler"
.end annotation


# instance fields
.field private dmbfrmwrks:Landroid/dmb/DMBFrmwrks;

.field private listener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

.field final synthetic this$0:Landroid/dmb/DMBFrmwrks;


# direct methods
.method public constructor <init>(Landroid/dmb/DMBFrmwrks;Landroid/dmb/DMBFrmwrks;Landroid/os/Looper;)V
    .registers 5
    .parameter
    .parameter "dmb"
    .parameter "looper"

    .prologue
    .line 315
    iput-object p1, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->this$0:Landroid/dmb/DMBFrmwrks;

    .line 316
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 317
    iput-object p2, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->dmbfrmwrks:Landroid/dmb/DMBFrmwrks;

    .line 318
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->dmbfrmwrks:Landroid/dmb/DMBFrmwrks;

    iget-object v0, v0, Landroid/dmb/DMBFrmwrks;->mdmbserverListener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    iput-object v0, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->listener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    .line 319
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 323
    const-string v2, "EventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message is :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 325
    .local v0, data:Ljava/lang/String;
    iget-object v2, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->dmbfrmwrks:Landroid/dmb/DMBFrmwrks;

    iget-object v2, v2, Landroid/dmb/DMBFrmwrks;->mdmbserverListener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    iput-object v2, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->listener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    .line 327
    iget-object v2, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->listener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    if-eqz v2, :cond_3b

    .line 331
    :try_start_28
    iget-object v2, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->listener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    iget-object v3, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->this$0:Landroid/dmb/DMBFrmwrks;

    #getter for: Landroid/dmb/DMBFrmwrks;->DMBEventStrings:[Ljava/lang/String;
    invoke-static {v3}, Landroid/dmb/DMBFrmwrks;->access$000(Landroid/dmb/DMBFrmwrks;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/dmb/DMBFrmwrks$Event;->valueOf(Ljava/lang/String;)Landroid/dmb/DMBFrmwrks$Event;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/dmb/DMBFrmwrks$DMBServerListener;->onEventReceived(Landroid/dmb/DMBFrmwrks$Event;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_3b} :catch_3c

    .line 338
    :cond_3b
    :goto_3b
    return-void

    .line 333
    :catch_3c
    move-exception v2

    move-object v1, v2

    .line 335
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Invalid String used on DMB Event"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enum is :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->this$0:Landroid/dmb/DMBFrmwrks;

    #getter for: Landroid/dmb/DMBFrmwrks;->DMBEventStrings:[Ljava/lang/String;
    invoke-static {v4}, Landroid/dmb/DMBFrmwrks;->access$000(Landroid/dmb/DMBFrmwrks;)[Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
