.class Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;
.super Landroid/os/Handler;
.source "VOIPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/voip/VOIPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/voip/VOIPConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/voip/VOIPConnection;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "l"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 132
    :goto_5
    return-void

    .line 126
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->processNextPostDialChar()V

    goto :goto_5

    .line 129
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPConnection$MyHandler;->this$0:Lcom/android/internal/telephony/voip/VOIPConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->releaseWakeLock()V

    goto :goto_5

    .line 122
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
