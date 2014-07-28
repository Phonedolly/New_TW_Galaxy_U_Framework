.class Lcom/sec/android/internal/ims/IMSDaemonThread;
.super Ljava/lang/Thread;
.source "IMSService.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1972
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1977
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1979
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1982
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->init2()V

    .line 1984
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1986
    const-string v0, "Exit com.sec.android.ims.IMSDaemonThread"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1987
    return-void
.end method
