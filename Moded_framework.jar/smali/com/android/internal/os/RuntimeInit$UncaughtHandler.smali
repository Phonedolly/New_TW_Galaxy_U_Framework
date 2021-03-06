.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "t"
    .parameter "e"

    .prologue
    const/16 v4, 0xa

    const-string v1, "AndroidRuntime"

    .line 66
    :try_start_4
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_7d

    move-result v1

    if-eqz v1, :cond_15

    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 93
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 95
    :goto_14
    return-void

    .line 67
    :cond_15
    const/4 v1, 0x1

    :try_start_16
    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 69
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_60

    .line 70
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const-string v1, "-k -z -d -o /data/log/dumpstate_sys_error"

    invoke-static {v1}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_40} :catch_7d

    .line 75
    const-wide/16 v1, 0x2710

    :try_start_42
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_91
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_9d
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_7d

    .line 82
    :goto_45
    :try_start_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v3, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_55} :catch_7d

    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 93
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_14

    .line 78
    :cond_60
    :try_start_60
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_7c} :catch_7d

    goto :goto_45

    .line 84
    :catch_7d
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, t2:Ljava/lang/Throwable;
    :try_start_7f
    const-string v1, "AndroidRuntime"

    const-string v2, "Error reporting crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_86} :catch_9f

    .line 92
    :goto_86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 93
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_14

    .line 92
    .end local v0           #t2:Ljava/lang/Throwable;
    :catchall_91
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 93
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v1

    .line 76
    :catch_9d
    move-exception v1

    goto :goto_45

    .line 87
    .restart local v0       #t2:Ljava/lang/Throwable;
    :catch_9f
    move-exception v1

    goto :goto_86
.end method
