.class Lcom/sec/android/ims/IMSEventListener$1;
.super Lcom/sec/android/internal/ims/IIMSEventListener$Stub;
.source "IMSEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/ims/IMSEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/ims/IMSEventListener;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    invoke-direct {p0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(IIIILjava/lang/String;)V
    .registers 9
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/sec/android/ims/IMSEventListener$MessageData;

    iget-object v1, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/sec/android/ims/IMSEventListener$MessageData;-><init>(Lcom/sec/android/ims/IMSEventListener;IILjava/lang/String;)V

    .line 32
    .local v0, msgData:Lcom/sec/android/ims/IMSEventListener$MessageData;
    iget-object v1, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    iget-object v1, v1, Lcom/sec/android/ims/IMSEventListener;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 35
    return-void
.end method
