.class public Lcom/sec/android/internal/ims/voip/VOIPEnabler;
.super Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;
.source "VOIPEnabler.java"


# static fields
.field private static nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

.field private static voipEnabler:Lcom/sec/android/internal/ims/voip/VOIPEnabler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;-><init>()V

    .line 24
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/internal/ims/voip/VOIPEnabler;
    .registers 2

    .prologue
    .line 28
    const-class v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->voipEnabler:Lcom/sec/android/internal/ims/voip/VOIPEnabler;

    if-nez v1, :cond_e

    .line 29
    new-instance v1, Lcom/sec/android/internal/ims/voip/VOIPEnabler;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/voip/VOIPEnabler;-><init>()V

    sput-object v1, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->voipEnabler:Lcom/sec/android/internal/ims/voip/VOIPEnabler;

    .line 31
    :cond_e
    sget-object v1, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->voipEnabler:Lcom/sec/android/internal/ims/voip/VOIPEnabler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acceptCall(III)V
    .registers 5
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->acceptVoipCall(III)Z

    .line 48
    return-void
.end method

.method public endCall(I)V
    .registers 3
    .parameter "callId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    .line 43
    return-void
.end method

.method public makeCall(Ljava/lang/String;I)I
    .registers 5
    .parameter "remoteNo"
    .parameter "dialType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->makeVoipCall(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public resetPreviewDisplay()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->resetPreviewDisplay()V

    .line 75
    return-void
.end method

.method public sendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .registers 12
    .parameter "displayName"
    .parameter "remoteURI"
    .parameter "contentType"
    .parameter "dataType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendSMS(Ljava/lang/String;[B)V
    .registers 5
    .parameter "remoteNo"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    array-length v1, p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendSMS(Ljava/lang/String;[BI)I

    .line 52
    return-void
.end method

.method public setCameraParam(II)V
    .registers 4
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setCameraParam(II)V

    .line 80
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;III)V
    .registers 8
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "IMS_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOIPEnabler surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/sec/android/internal/ims/voip/VOIPEnabler;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/internal/ims/external/NativeInterface;->setPreviewDisplay(Landroid/view/Surface;III)Z

    .line 70
    return-void
.end method
