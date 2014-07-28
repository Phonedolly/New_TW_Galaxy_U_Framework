.class final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$RestoreState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$SelectionCopiedData;,
        Landroid/webkit/WebViewCore$CopyParams;,
        Landroid/webkit/WebViewCore$EditableParams;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$SelectAndClickData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final SCROLL_BITS:I = 0x6

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field static final ZOOM_BITS:I = 0x86

.field private static mRepaintScheduled:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeClass:I

.field private mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

.field private mRestoredScale:I

.field private mRestoredScreenWidthScale:I

.field private mRestoredX:I

.field private mRestoredY:I

.field final mScrollFilter:Landroid/graphics/DrawFilter;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mSplitPictureIsScheduled:Z

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebkitScrollX:I

.field private mWebkitScrollY:I

.field final mZoomFilter:Landroid/graphics/DrawFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 862
    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REQUEST_LABEL"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SCROLL_TEXT_INPUT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LOAD_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "STOP_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RELOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KEY_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KEY_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VIEW_SIZE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GO_BACK_FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SET_SCROLL_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RESTORE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PAUSE_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RESUME_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CLEAR_CACHE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SET_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REPLACE_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PASS_TO_JS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SET_GLOBAL_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SET_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DOC_HAS_IMAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "121"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DELETE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LISTBOX_CHOICES"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SINGLE_LISTBOX_CHOICE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MESSAGE_RELAY"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SET_BACKGROUND_COLOR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_MOVE_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SAVE_DOCUMENT_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "129"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WEBKIT_DRAW"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SYNC_SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "POST_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SPLIT_PICTURE_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CLEAR_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SET_MOVE_MOUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "REQUEST_CURSOR_HREF"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ADD_JS_INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "LOAD_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "TOUCH_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "TOUCH_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "SET_ACTIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ON_PAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ON_RESUME"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "FREE_MEMORY"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "VALID_NODE_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "DELKEY_SIML_FOR_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "GET_TEXT_AROUND_CURSOR"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "SET_SELECTION_FOR_EDITING"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "DELETE_SURROUNDING_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "GET_BODY_HTML"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "GET_SLECTION_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "GET_BODY_PLAIN_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "EXEC_COMMAND"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "COPY_SAVE_IMAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "DRAW_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "GET_EMAIL_MARKUP"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "SET_EDITABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "GET_CARET_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "SET_SELECTION_NONE"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "CAN_UNDO"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "CAN_REDO"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "CLEAR_REDO_UNDO"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "GET_BODY_EMPTY"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "CONTENT_SELECTION_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "RESTORE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "SAVE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "CHECK_SELECTION_AT_BOUNDRY"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "MOVE_SINGLE_CURSOR_HANDLER"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "UPDATE_IM_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "SET_COMPOSING_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "COPY_MOVE_SELECTION"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 2556
    sput-boolean v3, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .registers 14
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const-class v8, Landroid/webkit/WebViewCore;

    const-string/jumbo v3, "webcore"

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 93
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 98
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 103
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 108
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 110
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 119
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 121
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 122
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    .line 123
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 124
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 126
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    .line 127
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    .line 2164
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2165
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2166
    const/high16 v3, 0x3f80

    iput v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2270
    iput-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2344
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v4, 0x86

    const/16 v5, 0x40

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 2347
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 136
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 137
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 138
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 141
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 147
    const-class v3, Landroid/webkit/WebViewCore;

    monitor-enter v8

    .line 148
    :try_start_4e
    sget-object v4, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v4, :cond_6a

    .line 150
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    .local v2, t:Ljava/lang/Thread;
    const-string v4, "WebViewCoreThread"

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_af

    .line 154
    :try_start_65
    const-class v4, Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_af
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6a} :catch_9a

    .line 161
    .end local v2           #t:Ljava/lang/Thread;
    :cond_6a
    :goto_6a
    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_af

    .line 164
    new-instance v3, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v3, p0, v7}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 166
    new-instance v3, Landroid/webkit/WebSettings;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v3, v4, v5}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 169
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 171
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 173
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 175
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, init:Landroid/os/Message;
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void

    .line 155
    .end local v1           #init:Landroid/os/Message;
    .restart local v2       #t:Ljava/lang/Thread;
    :catch_9a
    move-exception v4

    move-object v0, v4

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_9c
    const-string/jumbo v4, "webcore"

    const-string v5, "Caught exception while waiting for thread creation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v4, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 161
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #t:Ljava/lang/Thread;
    :catchall_af
    move-exception v4

    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_9c .. :try_end_b1} :catchall_af

    throw v4
.end method

.method private HttpEquivhandle(Ljava/lang/String;)V
    .registers 4
    .parameter "Url"

    .prologue
    .line 2615
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2617
    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;FI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClick(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;IIIFIIZZII)V
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p10}, Landroid/webkit/WebViewCore;->viewSizeChanged(IIIFIIZZII)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;IIIIIFII)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->nativeUpdatePlugins(IIIIIFII)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(III)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentSelectionType()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanUndo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveSingleCursorHandler(II)V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetComposingRegion(II)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetComposingSelectionNone()V

    return-void
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V

    return-void
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeUpdateIMSelection(II)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;IIIII)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;IIII)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewCore;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewCore;[ZI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$8202(Landroid/webkit/WebViewCore;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    return p1
.end method

.method static synthetic access$8302(Landroid/webkit/WebViewCore;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    return p1
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSplitContent()V

    return-void
.end method

.method static synthetic access$8502(Landroid/webkit/WebViewCore;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$8700(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$9000(Landroid/webkit/WebViewCore;IIF)Landroid/graphics/Rect;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGetBlockBounds(IIF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkit/WebViewCore;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMouseClick(II)V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebViewCore;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSelectAndClick(IIII)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkit/WebViewCore;IIIZZFI)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkit/WebViewCore;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V

    return-void
.end method

.method static synthetic access$9500(Landroid/webkit/WebViewCore;IIFZ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V

    return-void
.end method

.method static synthetic access$9702(Landroid/webkit/WebViewCore;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .registers 11
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 3010
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_7

    move-object v2, v4

    .line 3028
    :goto_6
    return-object v2

    .line 3014
    :cond_7
    if-nez p1, :cond_13

    .line 3015
    const-string/jumbo v2, "webcore"

    const-string v3, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 3016
    goto :goto_6

    .line 3020
    :cond_13
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3022
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_23

    .line 3023
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 3025
    :cond_23
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v1

    .line 3026
    .local v1, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    .line 3027
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    move-object v2, v1

    .line 3028
    goto :goto_6
.end method

.method private centerFitRect(IIII)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3093
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 3098
    :goto_4
    return-void

    .line 3096
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private clearCache(Z)V
    .registers 3
    .parameter "includeDiskFiles"

    .prologue
    .line 2110
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2111
    if-eqz p1, :cond_a

    .line 2112
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2114
    :cond_a
    return-void
.end method

.method private clearTextEntry()V
    .registers 3

    .prologue
    .line 2865
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 2868
    :goto_4
    return-void

    .line 2866
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private contentScrollBy(IIZ)V
    .registers 8
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"

    .prologue
    .line 2468
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2482
    :cond_8
    :goto_8
    return-void

    .line 2472
    :cond_9
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_8

    .line 2473
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2475
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2d

    .line 2476
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_8

    .line 2479
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method private contentScrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2486
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2492
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2493
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2506
    :cond_c
    :goto_c
    return-void

    .line 2496
    :cond_d
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_c

    .line 2497
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2499
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2c

    .line 2500
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_c

    .line 2503
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c
.end method

.method private contentSpawnScrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2510
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2516
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2517
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2530
    :cond_c
    :goto_c
    return-void

    .line 2520
    :cond_d
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_c

    .line 2521
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2523
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2c

    .line 2524
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_c

    .line 2527
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .registers 2
    .parameter "childView"

    .prologue
    .line 3037
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 3038
    return-void
.end method

.method private didFirstLayout(Z)V
    .registers 5
    .parameter "standardLoad"

    .prologue
    const/4 v2, 0x0

    .line 2595
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 2597
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_b

    .line 2611
    :goto_a
    return-void

    .line 2599
    :cond_b
    if-nez p1, :cond_11

    iget v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v1, :cond_2c

    :cond_11
    const/4 v1, 0x1

    move v0, v1

    .line 2600
    .local v0, updateRestoreState:Z
    :goto_13
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2604
    if-nez v0, :cond_1f

    .line 2605
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 2609
    :cond_1f
    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    goto :goto_a

    .end local v0           #updateRestoreState:Z
    :cond_2c
    move v0, v2

    .line 2599
    goto :goto_13
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 2954
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 11
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, ")"

    const-string/jumbo v6, "webcore"

    .line 2960
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v3, :cond_c

    move-object v3, v5

    .line 2981
    :goto_b
    return-object v3

    .line 2964
    :cond_c
    invoke-static {v5}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 2966
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2967
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_37

    .line 2968
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to a plugin APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 2969
    goto :goto_b

    .line 2973
    :cond_37
    :try_start_37
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_3a} :catch_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3a} :catch_5e

    move-result-object v3

    goto :goto_b

    .line 2974
    :catch_3c
    move-exception v0

    .line 2975
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5c
    move-object v3, v5

    .line 2981
    goto :goto_b

    .line 2976
    :catch_5e
    move-exception v0

    .line 2977
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin class ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method private getUsedQuota()J
    .registers 9

    .prologue
    .line 2246
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 2247
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 2249
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_d

    .line 2250
    const-wide/16 v6, 0x0

    .line 2256
    :goto_c
    return-wide v6

    .line 2252
    :cond_d
    const-wide/16 v2, 0x0

    .line 2253
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 2254
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_13

    .end local v5           #website:Landroid/webkit/WebStorage$Origin;
    :cond_25
    move-wide v6, v2

    .line 2256
    goto :goto_c
.end method

.method private hideFullScreenPlugin()V
    .registers 3

    .prologue
    .line 2999
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 3004
    :goto_4
    return-void

    .line 3002
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private initialize()V
    .registers 7

    .prologue
    .line 187
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 191
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 193
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 195
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 197
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 200
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 204
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_48

    .line 205
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_48
    return-void
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .registers 11
    .parameter "evt"
    .parameter "isDown"

    .prologue
    .line 2126
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2127
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 2129
    .local v2, unicodeChar:I
    if-nez v1, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 2132
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2135
    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_62

    const/16 v0, 0x42

    if-eq v1, v0, :cond_62

    .line 2138
    const/16 v0, 0x13

    if-lt v1, v0, :cond_63

    const/16 v0, 0x16

    if-gt v1, v0, :cond_63

    .line 2143
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2144
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2154
    :cond_62
    :goto_62
    return-void

    .line 2152
    :cond_63
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_62
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2118
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2119
    return-void
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCheckSelectionAtBoundry()I
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClearTextSelection(II)V
.end method

.method private native nativeClick(II)V
.end method

.method private native nativeContentSelectionType()I
.end method

.method private native nativeCopyAndSaveImage(Ljava/lang/String;)Z
.end method

.method private native nativeCopyContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCopyMoveSelection(IIIZZFI)V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDeleteSurroundingText(II)V
.end method

.method private native nativeDrawContent(Landroid/graphics/Canvas;I)Z
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method private native nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetBlockBounds(IIF)Landroid/graphics/Rect;
.end method

.method private native nativeGetBodyEmpty()Z
.end method

.method private native nativeGetBodyHTML()Ljava/lang/String;
.end method

.method private native nativeGetBodyText()Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetCursorRect(Z)Landroid/graphics/Rect;
.end method

.method private native nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSelectionGranularity()I
.end method

.method private native nativeGetSelectionOffset()Landroid/graphics/Point;
.end method

.method private native nativeGetTextAroundCursor(IZ)Ljava/lang/String;
.end method

.method private native nativeHandleTouchEvent(IIII)Z
.end method

.method private native nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeMouseClick(II)V
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativeMoveSingleCursorHandler(II)V
.end method

.method private native nativePause()V
.end method

.method private native nativePictureReady()Z
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z
.end method

.method private native nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeRestorePreviousSelectionController()V
.end method

.method private native nativeResume()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSaveSelectionController()V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeSelectAndClick(IIII)V
.end method

.method private native nativeSelectClosestWord(IIFZ)Z
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetComposingRegion(II)V
.end method

.method private native nativeSetComposingSelectionNone()V
.end method

.method private native nativeSetEditable(Z)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private static native nativeSetPluginRefreshDelay(I)V
.end method

.method private native nativeSetScrollOffset(III)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSelectionEditable(II)V
.end method

.method private native nativeSetSelectionNone()V
.end method

.method private native nativeSetSize(IIIFIIIIZZII)V
.end method

.method private native nativeSimulateDelKeyForCount(I)V
.end method

.method private native nativeSplitContent()V
.end method

.method private native nativeTouchUp(IIIII)V
.end method

.method private native nativeUndoRedoStateReset()V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeUpdateIMSelection(II)V
.end method

.method private native nativeUpdatePlugins(IIIIIFII)V
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private native nativeWebTextSelectionAll(IIII)V
.end method

.method private needTouchEvents(ZZ)V
    .registers 8
    .parameter "need"
    .parameter "isPlugin"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2833
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_19

    .line 2834
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    if-eqz p1, :cond_1a

    move v2, v4

    :goto_f
    if-eqz p2, :cond_12

    move v3, v4

    :cond_12
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2838
    :cond_19
    return-void

    :cond_1a
    move v2, v3

    .line 2834
    goto :goto_f
.end method

.method private openFileChooser()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->openFileChooser()Landroid/net/Uri;

    move-result-object v1

    .line 303
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_d

    const-string v0, ""

    .line 324
    :goto_c
    return-object v0

    .line 308
    :cond_d
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 315
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_32

    .line 317
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 318
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_4e

    move-result-object v7

    .line 321
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 321
    :catchall_4e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .registers 2

    .prologue
    .line 238
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_c

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_c
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 243
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .registers 3
    .parameter "core"

    .prologue
    .line 2407
    if-eqz p0, :cond_12

    .line 2408
    monitor-enter p0

    .line 2409
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2410
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_11

    .line 2411
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v1, 0x82

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$10100(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2413
    :cond_11
    monitor-exit p0

    .line 2416
    :cond_12
    return-void

    .line 2413
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method static reducePriority()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 2389
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2390
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2391
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2393
    return-void
.end method

.method private requestKeyboard(Z)V
    .registers 7
    .parameter "showKeyboard"

    .prologue
    const/4 v4, 0x0

    .line 2943
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_19

    .line 2945
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    if-eqz p1, :cond_1a

    const/4 v2, 0x1

    :goto_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2949
    :cond_19
    return-void

    :cond_1a
    move v2, v4

    .line 2945
    goto :goto_e
.end method

.method private requestKeyboardWithSelection(IIII)V
    .registers 8
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 2933
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    .line 2934
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2939
    :cond_16
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[III)V
    .registers 10
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "pointer"

    .prologue
    const/4 v3, 0x0

    .line 2912
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_28

    .line 2913
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p4, v1, v3

    .line 2914
    .local v1, selectedArray:[I
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 2915
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 2916
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 2917
    iput-object v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 2918
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 2919
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 2920
    iput-boolean v3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 2922
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x84

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2927
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    .end local v1           #selectedArray:[I
    :cond_28
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[I[II)V
    .registers 9
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "pointer"

    .prologue
    .line 2893
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_23

    .line 2894
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 2895
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 2896
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 2897
    iput-object p4, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 2898
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 2899
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 2900
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 2903
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x84

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2907
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    :cond_23
    return-void
.end method

.method private restoreScale(I)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 2814
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2815
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 2817
    :cond_a
    return-void
.end method

.method private restoreScreenWidthScale(I)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 2821
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2828
    :cond_8
    :goto_8
    return-void

    .line 2825
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2826
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    goto :goto_8
.end method

.method private restoreState(I)V
    .registers 7
    .parameter "index"

    .prologue
    .line 2433
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 2434
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 2435
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_1b

    .line 2436
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 2435
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2438
    :cond_1b
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2439
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 2440
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2441
    return-void
.end method

.method static resumePriority()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 2397
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2398
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2399
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2401
    return-void
.end method

.method public static resumeTimers()V
    .registers 2

    .prologue
    .line 249
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_c

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_c
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 254
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .registers 2
    .parameter "core"

    .prologue
    .line 2419
    if-eqz p0, :cond_11

    .line 2420
    monitor-enter p0

    .line 2421
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2422
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_10

    .line 2423
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2424
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2426
    :cond_10
    monitor-exit p0

    .line 2428
    :cond_11
    return-void

    .line 2426
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private sendFindAgain()V
    .registers 3

    .prologue
    .line 2872
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 2875
    :goto_4
    return-void

    .line 2873
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private sendImmediateRepaint()V
    .registers 3

    .prologue
    .line 2567
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_18

    sget-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    if-nez v0, :cond_18

    .line 2568
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2569
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2572
    :cond_18
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .registers 3

    .prologue
    const/16 v1, 0x6e

    .line 2534
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 2537
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 2539
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 2541
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2542
    return-void
.end method

.method private sendUpdateTextEntry()V
    .registers 3

    .prologue
    .line 2237
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 2238
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2241
    :cond_11
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2549
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    .line 2550
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2554
    :cond_16
    return-void
.end method

.method static setPluginRefreshDelay(I)V
    .registers 1
    .parameter "ms"

    .prologue
    .line 3111
    invoke-static {p0}, Landroid/webkit/WebViewCore;->nativeSetPluginRefreshDelay(I)V

    .line 3112
    return-void
.end method

.method private setRootLayer(I)V
    .registers 5
    .parameter "layer"

    .prologue
    .line 2576
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    .line 2577
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2581
    :cond_12
    return-void
.end method

.method private setScrollbarModes(II)V
    .registers 5
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 3102
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 3107
    :goto_4
    return-void

    .line 3105
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setupViewport(Z)V
    .registers 12
    .parameter "updateRestoreState"

    .prologue
    .line 2634
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 2637
    const/high16 v0, 0x3f80

    .line 2638
    .local v0, adjust:F
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a8

    .line 2639
    sget v6, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_17

    .line 2640
    sget v6, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v0, v6, v7

    .line 2646
    :cond_17
    :goto_17
    const/high16 v6, 0x42c8

    mul-float/2addr v6, v0

    float-to-int v2, v6

    .line 2648
    .local v2, defaultScale:I
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v6, :cond_26

    .line 2649
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2651
    :cond_26
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v6, :cond_31

    .line 2652
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2654
    :cond_31
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v6, :cond_3c

    .line 2655
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2659
    :cond_3c
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v6, :cond_46

    .line 2660
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v6, :cond_46

    .line 2661
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2664
    :cond_46
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v6, :cond_50

    .line 2665
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2666
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2667
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2669
    :cond_50
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v6, v7, :cond_5e

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v6, :cond_5e

    .line 2671
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2673
    :cond_5e
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v6, :cond_6c

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v6, v7, :cond_6c

    .line 2675
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2677
    :cond_6c
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v6, :cond_77

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v6, v2, :cond_77

    .line 2678
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 2682
    :cond_77
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v6, :cond_c0

    if-nez p1, :cond_c0

    .line 2683
    new-instance v3, Landroid/webkit/WebViewCore$RestoreState;

    invoke-direct {v3}, Landroid/webkit/WebViewCore$RestoreState;-><init>()V

    .line 2684
    .local v3, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    .line 2685
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    .line 2686
    iput v0, v3, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    .line 2688
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    .line 2690
    const/4 v6, 0x0

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    .line 2691
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x6d

    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2810
    .end local v3           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :cond_a7
    :goto_a7
    return-void

    .line 2642
    .end local v2           #defaultScale:I
    :cond_a8
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v6, :cond_17

    .line 2643
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v7, v7

    div-float v0, v6, v7

    goto/16 :goto_17

    .line 2700
    .restart local v2       #defaultScale:I
    :cond_c0
    iget v4, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2701
    .local v4, viewportWidth:I
    if-nez v4, :cond_165

    .line 2705
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    .line 2706
    .local v5, webViewWidth:I
    int-to-float v6, v5

    div-float/2addr v6, v0

    float-to-int v4, v6

    .line 2707
    if-nez v4, :cond_d7

    .line 2708
    const-string/jumbo v6, "webcore"

    const-string v7, "Can\'t get the viewWidth after the first layout"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_d7
    :goto_d7
    new-instance v6, Landroid/webkit/WebViewCore$RestoreState;

    invoke-direct {v6}, Landroid/webkit/WebViewCore$RestoreState;-><init>()V

    iput-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2714
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    .line 2715
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    .line 2716
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput v0, v6, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    .line 2717
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    .line 2718
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    .line 2719
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v7, :cond_16f

    const/4 v7, 0x1

    :goto_109
    iput-boolean v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    .line 2720
    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v6, :cond_17a

    .line 2721
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    .line 2722
    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    if-lez v6, :cond_171

    .line 2723
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    .line 2742
    :goto_127
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v6, v6, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v6, :cond_1ae

    .line 2748
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2751
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2752
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2753
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2756
    iget v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2757
    const/high16 v6, -0x4080

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2758
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2759
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2766
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v7, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$10100(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2767
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x69

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_a7

    .line 2711
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v5           #webViewWidth:I
    :cond_165
    int-to-float v6, v4

    iget v7, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .restart local v5       #webViewWidth:I
    goto/16 :goto_d7

    .line 2719
    :cond_16f
    const/4 v7, 0x0

    goto :goto_109

    .line 2726
    :cond_171
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, v7, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    goto :goto_127

    .line 2729
    :cond_17a
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v6, :cond_18d

    .line 2730
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v8, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    iput v8, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    iput v8, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_127

    .line 2732
    :cond_18d
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v6, :cond_1a3

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v6, v5, :cond_1a3

    .line 2733
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    int-to-float v8, v5

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    iput v8, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_127

    .line 2736
    :cond_1a3
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput v0, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    .line 2738
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto/16 :goto_127

    .line 2769
    :cond_1ae
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 2770
    if-nez v4, :cond_1bf

    .line 2773
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_a7

    .line 2775
    :cond_1bf
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2779
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_225

    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v6, :cond_220

    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    :goto_1d7
    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2790
    int-to-float v6, v5

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2796
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v6, :cond_22a

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_1f5
    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2799
    int-to-float v6, v5

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2801
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2802
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2805
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v7, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$10100(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2806
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x69

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_a7

    .line 2779
    :cond_220
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    goto :goto_1d7

    :cond_225
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_1d7

    .line 2796
    :cond_22a
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    mul-int/2addr v6, v7

    div-int/2addr v6, v4

    goto :goto_1f5
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;I)V
    .registers 6
    .parameter "childView"
    .parameter "npp"

    .prologue
    .line 2987
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_5

    .line 2995
    :goto_4
    return-void

    .line 2991
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2992
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2993
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2994
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private showRect(IIIIIIFFFFZIIII)V
    .registers 21
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"
    .parameter "hasAnchorDiff"
    .parameter "oldAnchorX"
    .parameter "oldAnchorY"
    .parameter "newAnchorX"
    .parameter "newAnchorY"

    .prologue
    .line 3067
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_43

    .line 3068
    new-instance v2, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3069
    .local v2, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v2, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3070
    iput p2, v2, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3071
    iput p3, v2, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3072
    iput p4, v2, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3073
    iput p5, v2, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3074
    iput p6, v2, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3075
    iput p7, v2, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3076
    iput p8, v2, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3077
    iput p9, v2, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3078
    iput p10, v2, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3080
    move/from16 v0, p11

    move-object v1, v2

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    .line 3081
    move/from16 v0, p12

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorX:I

    .line 3082
    move/from16 v0, p13

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorY:I

    .line 3083
    move/from16 v0, p14

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorX:I

    .line 3084
    move/from16 v0, p15

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorY:I

    .line 3086
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x71

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3089
    .end local v2           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_43
    return-void
.end method

.method static supportsMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 271
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .registers 6
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3033
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3034
    return-void
.end method

.method private updateTextSelection(IIII)V
    .registers 8
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    .line 2856
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    .line 2857
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2861
    :cond_16
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .registers 8
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 2844
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1b

    .line 2845
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2848
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2849
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2851
    .end local v0           #msg:Landroid/os/Message;
    :cond_1b
    return-void
.end method

.method private updateViewport()V
    .registers 2

    .prologue
    .line 2627
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2628
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2630
    :cond_c
    return-void
.end method

.method private viewSizeChanged(IIIFIIZZII)V
    .registers 27
    .parameter "w"
    .parameter "h"
    .parameter "textwrapWidth"
    .parameter "scale"
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "ignoreHeight"
    .parameter "needAnchorDiff"
    .parameter "viewportLeft"
    .parameter "viewportTop"

    .prologue
    .line 2178
    if-nez p1, :cond_c

    .line 2179
    const-string/jumbo v2, "webcore"

    const-string/jumbo v3, "skip viewSizeChanged as w is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_b
    :goto_b
    return-void

    .line 2182
    :cond_c
    move/from16 v3, p1

    .line 2183
    .local v3, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2184
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    move v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_ac

    .line 2202
    .end local v3           #width:I
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    const/16 v3, 0x320

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, p1

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2212
    .restart local v3       #width:I
    :cond_38
    :goto_38
    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_c5

    move/from16 v4, p2

    :goto_3f
    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZZII)V

    .line 2219
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    move v2, v0

    if-nez v2, :cond_d7

    const/4 v2, 0x1

    move v15, v2

    .line 2220
    .local v15, needInvalidate:Z
    :goto_61
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2221
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2222
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2223
    if-eqz v15, :cond_78

    .line 2227
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2229
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x75

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .end local v3           #width:I
    move-result-object v3

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2231
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    move-object v2, v0

    iget-object v2, v2, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v2, :cond_b

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    move-object v2, v0

    iget-object v2, v2, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    goto/16 :goto_b

    .line 2206
    .end local v15           #needInvalidate:Z
    :cond_ac
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    move v2, v0

    if-lez v2, :cond_c1

    .line 2207
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    move v2, v0

    move/from16 v0, p1

    move v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #width:I
    goto/16 :goto_38

    .line 2209
    .end local v3           #width:I
    :cond_c1
    move/from16 v3, p3

    .restart local v3       #width:I
    goto/16 :goto_38

    .line 2212
    :cond_c5
    int-to-float v2, v3

    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    mul-float/2addr v2, v4

    move/from16 v0, p1

    int-to-float v0, v0

    move v4, v0

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v4, v2

    goto/16 :goto_3f

    .line 2219
    :cond_d7
    const/4 v2, 0x0

    move v15, v2

    goto :goto_61
.end method

.method private webkitDraw()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2298
    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2299
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 2301
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2333
    :cond_12
    :goto_12
    return-void

    .line 2306
    :cond_13
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_12

    .line 2309
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v1

    iput-boolean v1, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 2310
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    .line 2311
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2312
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_77

    const/16 v1, 0x320

    :goto_37
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 2318
    :cond_41
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    if-eqz v1, :cond_4c

    .line 2319
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2320
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2323
    :cond_4c
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2325
    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    if-nez v1, :cond_61

    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    if-eqz v1, :cond_12

    .line 2327
    :cond_61
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    iget v3, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    iget v4, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2330
    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    goto :goto_12

    .line 2312
    :cond_77
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v1, :cond_7e

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_37

    :cond_7e
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_37
.end method

.method private webkitSelectionControlDraw(I)V
    .registers 8
    .parameter "selectionController"

    .prologue
    const/16 v5, 0x8c

    .line 832
    new-instance v0, Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$SelectionCopiedData;-><init>()V

    .line 837
    .local v0, Data:Landroid/webkit/WebViewCore$SelectionCopiedData;
    iget-object v1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 839
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "webkitSelctionControlDraw Selection unable to select"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 859
    :cond_2a
    :goto_2a
    return-void

    .line 844
    :cond_2b
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionGranularity()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    .line 845
    iput p1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    .line 847
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2a

    .line 856
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2a
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 283
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 284
    return-void
.end method

.method contentDraw()V
    .registers 4

    .prologue
    .line 2451
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_9

    .line 2464
    :cond_8
    :goto_8
    return-void

    .line 2454
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2458
    monitor-enter p0

    .line 2459
    :try_start_12
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_1b

    monitor-exit p0

    goto :goto_8

    .line 2463
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_18

    throw v0

    .line 2460
    :cond_1b
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2461
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-eqz v0, :cond_24

    monitor-exit p0

    goto :goto_8

    .line 2462
    :cond_24
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2463
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_18

    goto :goto_8
.end method

.method declared-synchronized copyContentPicture()Landroid/graphics/Picture;
    .registers 3

    .prologue
    .line 2373
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 2374
    .local v0, result:Landroid/graphics/Picture;
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-eqz v1, :cond_d

    .line 2375
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeCopyContentToPicture(Landroid/graphics/Picture;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 2377
    :cond_d
    monitor-exit p0

    return-object v0

    .line 2373
    .end local v0           #result:Landroid/graphics/Picture;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method destroy()V
    .registers 7

    .prologue
    .line 2084
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v2

    .line 2088
    :try_start_3
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x6e

    #calls: Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$10300(Landroid/webkit/WebViewCore$EventHub;I)Z

    move-result v1

    .line 2089
    .local v1, hasResume:Z
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x6d

    #calls: Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$10300(Landroid/webkit/WebViewCore$EventHub;I)Z

    move-result v0

    .line 2090
    .local v0, hasPause:Z
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$10200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2091
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2093
    if-eqz v0, :cond_32

    .line 2094
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0x6d

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2097
    :cond_32
    if-eqz v1, :cond_40

    .line 2098
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0x6e

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2101
    :cond_40
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$10400(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2102
    monitor-exit v2

    .line 2103
    return-void

    .line 2102
    .end local v0           #hasPause:Z
    .end local v1           #hasResume:Z
    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v3
.end method

.method drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .registers 8
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    .line 2353
    const/4 v0, 0x0

    .line 2354
    .local v0, df:Landroid/graphics/DrawFilter;
    if-eqz p3, :cond_1f

    .line 2355
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 2359
    :cond_5
    :goto_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2360
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDrawContent(Landroid/graphics/Canvas;I)Z

    move-result v1

    .line 2361
    .local v1, tookTooLong:Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2362
    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v2, :cond_1e

    .line 2363
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 2364
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2366
    :cond_1e
    return-void

    .line 2356
    .end local v1           #tookTooLong:Z
    :cond_1f
    if-eqz p4, :cond_5

    .line 2357
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_5
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 17
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 342
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 349
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 399
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .registers 4
    .parameter "origin"

    .prologue
    .line 381
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 392
    return-void
.end method

.method getBrowserFrame()Landroid/webkit/BrowserFrame;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method declared-synchronized getSelectedText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2382
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectedText()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    .line 2383
    .local v0, str:Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 2382
    .end local v0           #str:Ljava/lang/String;
    :catchall_7
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 2584
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method initializeSubwindow()V
    .registers 3

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 220
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 221
    return-void
.end method

.method public isEditableSupport()Z
    .registers 2

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 407
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 429
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method native nativeGetWebFeedLinks()[Landroid/webkit/WebFeedLink;
.end method

.method declared-synchronized pictureReady()Z
    .registers 2

    .prologue
    .line 2369
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePictureReady()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result v0

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected populateVisitedLinks()V
    .registers 3

    .prologue
    .line 366
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 371
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 372
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .registers 9
    .parameter "spaceNeeded"

    .prologue
    .line 357
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 363
    return-void
.end method

.method removeMessages()V
    .registers 2

    .prologue
    .line 2073
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$10200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2074
    return-void
.end method

.method removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 2069
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$10100(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2070
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 2160
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sendMessage(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 2034
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2035
    return-void
.end method

.method sendMessage(II)V
    .registers 6
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2043
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2044
    return-void
.end method

.method sendMessage(III)V
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2047
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2048
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2056
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2057
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 2052
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2053
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2038
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2039
    return-void
.end method

.method sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2030
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2031
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2060
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2062
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2065
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$10000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2066
    return-void
.end method

.method signalRepaintDone()V
    .registers 2

    .prologue
    .line 2562
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2563
    return-void
.end method

.method stopLoading()V
    .registers 2

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_9

    .line 2019
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 2021
    :cond_9
    return-void
.end method
