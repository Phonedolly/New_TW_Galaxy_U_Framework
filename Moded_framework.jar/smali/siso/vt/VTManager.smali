.class public Lsiso/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsiso/vt/VTManager$EventHandler;,
        Lsiso/vt/VTManager$VTStackStateListener;,
        Lsiso/vt/VTManager$StackState;
    }
.end annotation


# static fields
.field public static final H324M_IC_START_FAILURE:I = 0x16

.field public static final H324M_IC_START_SUCESS:I = 0x15

.field public static final H324M_IC_STOP_FAILURE:I = 0x18

.field public static final H324M_IC_STOP_SUCESS:I = 0x17

.field public static final H324M_REC_CANCEL_SUCCESS:I = 0x36

.field public static final H324M_REC_FAIL:I = 0x3a

.field public static final H324M_REC_NO_DISKSPACE:I = 0x38

.field public static final H324M_REC_PROTOCOL_ERROR:I = 0x37

.field public static final H324M_REC_START_FAILURE:I = 0x33

.field public static final H324M_REC_START_SUCCESS:I = 0x32

.field public static final H324M_REC_STOP_FAILED:I = 0x35

.field public static final H324M_REC_STOP_SUCCESS:I = 0x34

.field public static final H324M_REC_SUCCESS:I = 0x39

.field public static final H324M_VT_CALL_DISCONNECTED:I = 0xf

.field public static final H324M_VT_END_CALL_REQUEST:I = 0xd

.field public static final H324M_VT_PROTOCOL_ERR_IND:I = 0xe

.field public static final H324M_VT_SESSION_STOP_FAILED:I = 0xc

.field public static final H324M_VT_SESSION_STOP_SUCCESS:I = 0xb

.field public static final H324M_VT_START_CALL_FAILURE:I = 0xa

.field public static final H324M_VT_START_CALL_SUCCESS:I = 0x9

.field public static final H324M_VT_VIDEO_TX_OLC_ESTABLISHED:I = 0x3

.field public static final VTMNGR_CAMERA_START_FAILURE:I = 0x67

.field public static final VTMNGR_DECODE_JPEG_FAILURE:I = 0x65

.field public static final VTMNGR_FIRST_FRAME_INDICATION:I = 0x64

.field public static final VTMNGR_SURFACE_INIT_FAILURE:I = 0x66

.field public static final VTMNGR_USER_INDICATION:I = 0x68

.field public static final VTMNGR_VMS_MODE:I = 0x69

.field public static final VT_ORIENTATION_LANDSCAPE_BOTTOM:I = 0x4

.field public static final VT_ORIENTATION_LANDSCAPE_TOP:I = 0x2

.field public static final VT_ORIENTATION_PORTAIT_BOTTOM:I = 0x3

.field public static final VT_ORIENTATION_PORTAIT_TOP:I = 0x1

.field private static vtInstance:Lsiso/vt/VTManager;


# instance fields
.field private mContext:I

.field public mEventHandler:Lsiso/vt/VTManager$EventHandler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mListenerContext:I

.field private mNearSurface:Landroid/view/Surface;

.field public mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private mSurface:Landroid/view/Surface;

.field public mUserIndiData:Lsiso/vt/VideoTelephonyData;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Inside Static Block"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "vtmanager"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 107
    :goto_d
    return-void

    .line 104
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_19

    .line 113
    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    .line 119
    :goto_10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lsiso/vt/VTManager;->native_setup(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 114
    :cond_19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 115
    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto :goto_10

    .line 117
    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto :goto_10
.end method

.method public static getInstance()Lsiso/vt/VTManager;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    if-nez v0, :cond_b

    .line 129
    new-instance v0, Lsiso/vt/VTManager;

    invoke-direct {v0}, Lsiso/vt/VTManager;-><init>()V

    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    .line 130
    :cond_b
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    return-object v0
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 14
    .parameter "vt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v4, "postEventFromNative"

    .line 345
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsiso/vt/VTManager;

    .line 346
    .local v7, c:Lsiso/vt/VTManager;
    if-nez v7, :cond_17

    .line 347
    const-string/jumbo v1, "postEventFromNative"

    const-string v1, "Object reference is NULL"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local p4
    :cond_16
    :goto_16
    return-void

    .line 350
    .restart local p4
    :cond_17
    iget-object v1, v7, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    if-eqz v1, :cond_16

    .line 351
    const-string/jumbo v1, "postEventFromNative"

    const-string/jumbo v1, "posting message"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string/jumbo v1, "postEventFromNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg1 :: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v1, "postEventFromNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg2 :: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz p4, :cond_6a

    .line 357
    iget-object v1, v7, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    if-nez v1, :cond_76

    .line 358
    new-instance v1, Lsiso/vt/VideoTelephonyData;

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v3, v2

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lsiso/vt/VideoTelephonyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, v7, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    .line 365
    .end local p4
    :cond_6a
    :goto_6a
    iget-object v1, v7, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v1, p1, p2, p3, v7}, Lsiso/vt/VTManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 366
    .local v8, m:Landroid/os/Message;
    iget-object v1, v7, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v1, v8}, Lsiso/vt/VTManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 360
    .end local v8           #m:Landroid/os/Message;
    .restart local p4
    :cond_76
    iget-object v1, v7, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {v1, p4}, Lsiso/vt/VideoTelephonyData;->setUserData(Ljava/lang/String;)V

    .line 361
    iget-object v1, v7, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-virtual {v1, p3}, Lsiso/vt/VideoTelephonyData;->setDataLen(I)V

    .line 362
    iget-object v1, v7, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-virtual {v1, p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode(I)V

    goto :goto_6a
.end method


# virtual methods
.method public final native CancelRecording()V
.end method

.method public final native CaptureImage(Ljava/lang/String;Z)V
.end method

.method public final native FreezeVideo()V
.end method

.method public final native GetCameraParams(I)I
.end method

.method public final native ResetNearEndDisplay()V
.end method

.method public final native ResetPreviewDisplay()V
.end method

.method public final native SetCameraParams(II)I
.end method

.method public final native StartRecording(Ljava/lang/String;)V
.end method

.method public final native StartVTCall(Z)V
.end method

.method public final native StopRecording(Z)V
.end method

.method public final native StopVTCall()V
.end method

.method public final native cleanupCall()V
.end method

.method public deinitVTManager()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    .line 139
    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 140
    iput-object v0, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    .line 141
    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    .line 142
    iput-object v0, p0, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    .line 143
    return-void
.end method

.method public final native releaseVTManager()V
.end method

.method public final native sendDTMF(Ljava/lang/String;I)V
.end method

.method public final native sendLiveVideo()V
.end method

.method public final native sendStillImage(Ljava/lang/String;)V
.end method

.method public final native sendVideo(Ljava/lang/String;)V
.end method

.method public final native setOrientation(I)V
.end method

.method public final native setPreviewDisplay(Landroid/view/Surface;II)V
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .registers 5
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 153
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    .line 154
    return-void
.end method

.method public final native setSKTInfo(II)V
.end method

.method public setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 326
    const-string/jumbo v0, "setStackStateListener"

    const-string v1, "Setting mStackStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput-object p1, p0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 328
    return-void
.end method

.method public final native startCamera(Landroid/view/Surface;II)V
.end method

.method public final startCamera(Landroid/view/SurfaceHolder;II)V
    .registers 5
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    .line 297
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 298
    return-void
.end method

.method public final native stopCamera()V
.end method
