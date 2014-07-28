.class Lsiso/vt/VTManager$EventHandler;
.super Landroid/os/Handler;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsiso/vt/VTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private listener:Lsiso/vt/VTManager$VTStackStateListener;

.field final synthetic this$0:Lsiso/vt/VTManager;

.field private vtmanager:Lsiso/vt/VTManager;


# direct methods
.method public constructor <init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V
    .registers 5
    .parameter
    .parameter "vt"
    .parameter "looper"

    .prologue
    .line 390
    iput-object p1, p0, Lsiso/vt/VTManager$EventHandler;->this$0:Lsiso/vt/VTManager;

    .line 391
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    iput-object p2, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    .line 393
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v0, v0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const-string v2, "EventHandler"

    .line 400
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lsiso/vt/VTManager;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    .line 401
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v0, v0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 402
    const-string v0, "EventHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener is :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "EventHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vtmanager.mStackStateListener is :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v1, v1, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, "EventHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    if-eqz v0, :cond_82

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_12c

    .line 483
    const-string v0, "Default case "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_82
    :goto_82
    return-void

    .line 408
    :sswitch_83
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 411
    :sswitch_8b
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 414
    :sswitch_93
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 417
    :sswitch_9b
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 420
    :sswitch_a3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_FAILED:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 423
    :sswitch_ab
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 426
    :sswitch_b3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 429
    :sswitch_bb
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_CALL_DISCONNECTED:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 437
    :sswitch_c3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_FAIL:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 440
    :sswitch_cb
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 446
    :sswitch_d3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_CANCEL_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 453
    :sswitch_db
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 456
    :sswitch_e3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_SUCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 459
    :sswitch_eb
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 462
    :sswitch_f3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 465
    :sswitch_fb
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_FIRST_FRAME_INDICATION:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_82

    .line 468
    :sswitch_103
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_SURFACE_INIT_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto/16 :goto_82

    .line 471
    :sswitch_10c
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto/16 :goto_82

    .line 475
    :sswitch_115
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_VMS_MODE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto/16 :goto_82

    .line 479
    :sswitch_11e
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_USER_INDICATION:Lsiso/vt/VTManager$StackState;

    iget-object v2, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v2, v2, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-interface {v0, v1, v2}, Lsiso/vt/VTManager$VTStackStateListener;->onUserIndication(Lsiso/vt/VTManager$StackState;Lsiso/vt/VideoTelephonyData;)V

    goto/16 :goto_82

    .line 406
    nop

    :sswitch_data_12c
    .sparse-switch
        0x3 -> :sswitch_83
        0x9 -> :sswitch_8b
        0xa -> :sswitch_93
        0xb -> :sswitch_9b
        0xc -> :sswitch_a3
        0xd -> :sswitch_ab
        0xe -> :sswitch_b3
        0xf -> :sswitch_bb
        0x15 -> :sswitch_f3
        0x16 -> :sswitch_db
        0x17 -> :sswitch_e3
        0x18 -> :sswitch_eb
        0x33 -> :sswitch_c3
        0x34 -> :sswitch_cb
        0x35 -> :sswitch_c3
        0x36 -> :sswitch_d3
        0x37 -> :sswitch_c3
        0x64 -> :sswitch_fb
        0x65 -> :sswitch_db
        0x66 -> :sswitch_103
        0x67 -> :sswitch_10c
        0x68 -> :sswitch_11e
        0x69 -> :sswitch_115
    .end sparse-switch
.end method
