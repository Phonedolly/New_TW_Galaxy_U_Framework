.class public Lcom/sec/android/ims/IMSManager;
.super Ljava/lang/Object;
.source "IMSManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "IMS/IMSManager"

.field private static imsManager:Lcom/sec/android/ims/IMSManager;


# instance fields
.field private mCallId:I

.field private mContext:I

.field private mNearSurface:Landroid/view/Surface;

.field private mService:Lcom/sec/android/internal/ims/IIMSService;

.field private mSurface:Landroid/view/Surface;

.field final myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/internal/ims/IIMSService;)V
    .registers 4
    .parameter "mService"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_d

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMSManager Service Not Avaliable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_d
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/ims/IMSManager;->getVOIPEnabler()Lcom/sec/android/ims/voip/IVOIPEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSManager getting created, mService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/ims/IMSManager;
    .registers 3

    .prologue
    .line 53
    const-class v0, Lcom/sec/android/ims/IMSManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;

    if-nez v1, :cond_19

    .line 54
    new-instance v1, Lcom/sec/android/ims/IMSManager;

    const-string/jumbo v2, "sIMSManager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/ims/IMSManager;-><init>(Lcom/sec/android/internal/ims/IIMSService;)V

    sput-object v1, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;

    .line 58
    :cond_19
    sget-object v1, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 106
    const-string v0, "IMS/IMSManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method


# virtual methods
.method public ResetPreviewDisplay()V
    .registers 5

    .prologue
    .line 118
    :try_start_0
    const-string v1, "IMS/IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside ResetPreviewDisplay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-interface {v1}, Lcom/sec/android/ims/voip/IVOIPEnabler;->resetPreviewDisplay()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 123
    :goto_1f
    return-void

    .line 120
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public SetCameraParams(II)V
    .registers 7
    .parameter "param"
    .parameter "value"

    .prologue
    .line 180
    :try_start_0
    const-string v1, "IMS/IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside SetCameraParams : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/ims/voip/IVOIPEnabler;->setCameraParam(II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 185
    :goto_1f
    return-void

    .line 182
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public StartVTCall(Z)V
    .registers 2
    .parameter "callType"

    .prologue
    .line 172
    return-void
.end method

.method public StopVTCall()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public acceptCall(III)V
    .registers 8
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"

    .prologue
    .line 163
    :try_start_0
    iput p1, p0, Lcom/sec/android/ims/IMSManager;->mCallId:I

    .line 164
    const-string v1, "IMS/IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside acceptCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/ims/voip/IVOIPEnabler;->acceptCall(III)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 169
    :goto_21
    return-void

    .line 166
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method

.method public captureIncomingVideoFrame(Ljava/lang/String;I)V
    .registers 6
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 188
    const-string v0, "IMS/IMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside captureIncomingVideoFrame : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public captureOutgoingVideoFrame(Ljava/lang/String;I)V
    .registers 6
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 193
    const-string v0, "IMS/IMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside captureOutgoingVideoFrame : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public endCall(I)V
    .registers 6
    .parameter "callId"

    .prologue
    .line 154
    :try_start_0
    const-string v1, "IMS/IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside makeCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    iget v2, p0, Lcom/sec/android/ims/IMSManager;->mCallId:I

    invoke-interface {v1, v2}, Lcom/sec/android/ims/voip/IVOIPEnabler;->endCall(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 159
    :goto_21
    return-void

    .line 156
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method

.method public getVOIPEnabler()Lcom/sec/android/ims/voip/IVOIPEnabler;
    .registers 3

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->getVOIPEnabler()Lcom/sec/android/ims/voip/IVOIPEnabler;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 76
    :goto_6
    return-object v1

    .line 73
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public makeCall(Ljava/lang/String;I)I
    .registers 7
    .parameter "remoteNo"
    .parameter "dialType"

    .prologue
    .line 142
    :try_start_0
    const-string v1, "IMS/IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside makeCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/ims/voip/IVOIPEnabler;->makeCall(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/ims/IMSManager;->mCallId:I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_25

    .line 148
    :goto_22
    iget v1, p0, Lcom/sec/android/ims/IMSManager;->mCallId:I

    return v1

    .line 144
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method

.method public register()V
    .registers 4

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/internal/ims/IIMSService;->register(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 68
    :goto_6
    return-void

    .line 64
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 90
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;III)V
    .registers 9
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"

    .prologue
    .line 128
    :try_start_0
    const-string v1, "IMS/IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside setPreviewDisplay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/android/ims/voip/IVOIPEnabler;->setPreviewDisplay(Landroid/view/Surface;III)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 133
    :goto_1f
    return-void

    .line 130
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public startCamera(Landroid/view/Surface;II)V
    .registers 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 137
    return-void
.end method

.method public stopCamera()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public switchCamera()V
    .registers 4

    .prologue
    .line 199
    const-string v0, "IMS/IMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside switchCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager;->myVoipEnabler:Lcom/sec/android/ims/voip/IVOIPEnabler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public unregisterListener(Lcom/sec/android/ims/IMSEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 102
    return-void
.end method
