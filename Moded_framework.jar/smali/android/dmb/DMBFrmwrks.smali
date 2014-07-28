.class public Landroid/dmb/DMBFrmwrks;
.super Ljava/lang/Object;
.source "DMBFrmwrks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;,
        Landroid/dmb/DMBFrmwrks$DMBServerListener;,
        Landroid/dmb/DMBFrmwrks$EventListener;,
        Landroid/dmb/DMBFrmwrks$Event;
    }
.end annotation


# instance fields
.field private DMBEventStrings:[Ljava/lang/String;

.field private eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

.field private mContext:I

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mdmbserverListener:Landroid/dmb/DMBFrmwrks$DMBServerListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    const-string v0, "dmb_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v5, p0, Landroid/dmb/DMBFrmwrks;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DMB_SERVER_DIED"

    aput-object v3, v1, v2

    const-string v2, "DMB_POWERON_SUCCESS"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "DMB_POWERON_FAIL"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DMB_POWEROFF_SUCCESS"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "DMB_POWEROFF_FAIL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "DMB_SEARCHING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DMB_SEARCHING_DONE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DMB_SEARCHING_FAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "DMB_SEARCHING_CANCEL_DONE"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "DMB_SEARCHING_CANCEL_FAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DMB_BUFFERING"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "DMB_SETCHANNEL_FAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "DMB_PLAYING"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "DMB_STOP"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "DMB_LOCALPLAY_PLAYING"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DMB_LOCALPLAY_TICKUPDATE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "DMB_LOCALPLAY_STOP"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "DMB_LOCALPLAY_SEEK"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "DMB_LOCALPLAY_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "DMB_LOCALPLAY_GETINFO"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "DMB_REC_START_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "DMB_REC_START_FAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "DMB_REC_STOP"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "DMB_CAPTURE_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DMB_CAPTURE_FAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DMB_DM_MONITOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DMB_ANTENNA_LEVEL"

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/dmb/DMBFrmwrks;->DMBEventStrings:[Ljava/lang/String;

    .line 150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_be

    .line 151
    new-instance v1, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;-><init>(Landroid/dmb/DMBFrmwrks;Landroid/dmb/DMBFrmwrks;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    .line 160
    :goto_b3
    iput-boolean v4, p0, Landroid/dmb/DMBFrmwrks;->mScreenOnWhilePlaying:Z

    .line 161
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/dmb/DMBFrmwrks;->nativeSetup(Ljava/lang/Object;)V

    .line 163
    return-void

    .line 153
    :cond_be
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 154
    new-instance v1, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;-><init>(Landroid/dmb/DMBFrmwrks;Landroid/dmb/DMBFrmwrks;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    goto :goto_b3

    .line 157
    :cond_cc
    iput-object v5, p0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    goto :goto_b3
.end method

.method static synthetic access$000(Landroid/dmb/DMBFrmwrks;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->DMBEventStrings:[Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeRelease()V
.end method

.method private static native nativeSetup(Ljava/lang/Object;)V
.end method

.method private native native_DMMonitor(I)V
.end method

.method private native native_FactoryTest(II)I
.end method

.method private native native_MakeThumbnail(Ljava/lang/String;)V
.end method

.method private native native_StartAudio()V
.end method

.method private native native_StopAudio()V
.end method

.method private native native_cancelChannel()V
.end method

.method private native native_clearDisplay()V
.end method

.method private native native_destroyDisplay()V
.end method

.method private native native_getInfoLocalClip(Ljava/lang/String;)V
.end method

.method private native native_pauseLocalClip(I)V
.end method

.method private native native_playLocalClip(Ljava/lang/String;)V
.end method

.method private native native_powerOffTDMB()V
.end method

.method private native native_powerOnTDMB()V
.end method

.method private native native_scanChannel(I)Z
.end method

.method private native native_seekLocalClip(I)V
.end method

.method private native native_setAudioState(I)V
.end method

.method private native native_setChannel(III)Z
.end method

.method private native native_setFactoryTest()V
.end method

.method private native native_setVideoDisplay(II)V
.end method

.method private native native_startCapture()V
.end method

.method private native native_startRecord(Ljava/lang/String;II)V
.end method

.method private native native_stopDisplay()V
.end method

.method private native native_stopLocalClip()V
.end method

.method private native native_stopRecord()V
.end method

.method private static postDMBFrmwrksEventFromNative(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 6
    .parameter "DMBFrmwrks_ref"
    .parameter "what"
    .parameter "str"

    .prologue
    .line 344
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dmb/DMBFrmwrks;

    .line 345
    .local v0, dmb:Landroid/dmb/DMBFrmwrks;
    if-nez v0, :cond_b

    .line 353
    :cond_a
    :goto_a
    return-void

    .line 349
    :cond_b
    iget-object v2, v0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    if-eqz v2, :cond_a

    .line 350
    iget-object v2, v0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    invoke-virtual {v2, p1, p2}, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 351
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    invoke-virtual {v2, v1}, Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12

    .line 295
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/dmb/DMBFrmwrks;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/dmb/DMBFrmwrks;->mStayAwake:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 297
    :cond_12
    return-void

    .line 295
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public DMMonitor(I)V
    .registers 2
    .parameter "OnOff"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_DMMonitor(I)V

    .line 197
    return-void
.end method

.method public DeInitDMBFrmwrks()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-static {}, Landroid/dmb/DMBFrmwrks;->nativeRelease()V

    .line 167
    iput-object v0, p0, Landroid/dmb/DMBFrmwrks;->eventHandler:Landroid/dmb/DMBFrmwrks$DMBFrmwrksEventHandler;

    .line 168
    iput-object v0, p0, Landroid/dmb/DMBFrmwrks;->mSurface:Landroid/view/Surface;

    .line 169
    iput-object v0, p0, Landroid/dmb/DMBFrmwrks;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 170
    iput-object v0, p0, Landroid/dmb/DMBFrmwrks;->mdmbserverListener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    .line 171
    return-void
.end method

.method public FactoryTest(II)I
    .registers 4
    .parameter "cmd"
    .parameter "arg"

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Landroid/dmb/DMBFrmwrks;->native_FactoryTest(II)I

    move-result v0

    return v0
.end method

.method public MakeThumbnail(Ljava/lang/String;)V
    .registers 2
    .parameter "fileName"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_MakeThumbnail(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public StartAudio()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_StartAudio()V

    .line 259
    return-void
.end method

.method public StopAudio()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_StopAudio()V

    .line 262
    return-void
.end method

.method public cancelChannel()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_cancelChannel()V

    .line 188
    return-void
.end method

.method public clearDisplay()V
    .registers 1

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_clearDisplay()V

    .line 203
    return-void
.end method

.method public destroyDisplay()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_destroyDisplay()V

    .line 200
    return-void
.end method

.method public getInfoLocalClip(Ljava/lang/String;)V
    .registers 2
    .parameter "fileName"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_getInfoLocalClip(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public pauseLocalClip(I)V
    .registers 2
    .parameter "Type"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_pauseLocalClip(I)V

    .line 237
    return-void
.end method

.method public playLocalClip(Ljava/lang/String;)V
    .registers 2
    .parameter "fileName"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_playLocalClip(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public powerOffTDMB()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_powerOffTDMB()V

    .line 179
    return-void
.end method

.method public powerOnTDMB()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_powerOnTDMB()V

    .line 175
    return-void
.end method

.method public scanChannel(I)Z
    .registers 3
    .parameter "freq"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_scanChannel(I)Z

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public seekLocalClip(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_seekLocalClip(I)V

    .line 229
    return-void
.end method

.method public setAudioState(I)V
    .registers 2
    .parameter "State"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Landroid/dmb/DMBFrmwrks;->native_setAudioState(I)V

    .line 266
    return-void
.end method

.method public setChannel(III)Z
    .registers 5
    .parameter "Freq"
    .parameter "SubChID"
    .parameter "Type"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/dmb/DMBFrmwrks;->native_setChannel(III)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public setDMBServerListener(Landroid/dmb/DMBFrmwrks$DMBServerListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 301
    const-string/jumbo v0, "setDMBServerListener"

    const-string v1, "Setting mdmbserverListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-object p1, p0, Landroid/dmb/DMBFrmwrks;->mdmbserverListener:Landroid/dmb/DMBFrmwrks$DMBServerListener;

    .line 303
    return-void
.end method

.method public setFactoryTest()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_setFactoryTest()V

    .line 270
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 3
    .parameter "screenOn"

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/dmb/DMBFrmwrks;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_9

    .line 277
    iput-boolean p1, p0, Landroid/dmb/DMBFrmwrks;->mScreenOnWhilePlaying:Z

    .line 278
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->updateSurfaceScreenOn()V

    .line 280
    :cond_9
    return-void
.end method

.method public setVideoDisplay(Landroid/view/SurfaceHolder;II)I
    .registers 5
    .parameter "sh"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 209
    iput-object p1, p0, Landroid/dmb/DMBFrmwrks;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 210
    if-eqz p1, :cond_12

    .line 212
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/dmb/DMBFrmwrks;->mSurface:Landroid/view/Surface;

    .line 217
    :goto_a
    invoke-direct {p0, p2, p3}, Landroid/dmb/DMBFrmwrks;->native_setVideoDisplay(II)V

    .line 218
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->updateSurfaceScreenOn()V

    .line 220
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/dmb/DMBFrmwrks;->mSurface:Landroid/view/Surface;

    goto :goto_a
.end method

.method public startCapture()V
    .registers 1

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_startCapture()V

    .line 255
    return-void
.end method

.method public startRecord(Ljava/lang/String;II)V
    .registers 4
    .parameter "fileName"
    .parameter "type"
    .parameter "Maxsize"

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/dmb/DMBFrmwrks;->native_startRecord(Ljava/lang/String;II)V

    .line 248
    return-void
.end method

.method public stayAwake(Z)V
    .registers 3
    .parameter "awake"

    .prologue
    .line 282
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 283
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_19

    .line 284
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 289
    :cond_13
    :goto_13
    iput-boolean p1, p0, Landroid/dmb/DMBFrmwrks;->mStayAwake:Z

    .line 290
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->updateSurfaceScreenOn()V

    .line 291
    return-void

    .line 285
    :cond_19
    if-nez p1, :cond_13

    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Landroid/dmb/DMBFrmwrks;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method

.method public stopDisplay()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_stopDisplay()V

    .line 206
    return-void
.end method

.method public stopLocalClip()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_stopLocalClip()V

    .line 233
    return-void
.end method

.method public stopRecord()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/dmb/DMBFrmwrks;->native_stopRecord()V

    .line 252
    return-void
.end method
