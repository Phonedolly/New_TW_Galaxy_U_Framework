.class final Lcom/android/internal/os/SamplingProfilerIntegration$1;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/os/SamplingProfilerIntegration$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v0, "/sdcard/snapshots"

    .line 100
    .local v0, dir:Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/os/SamplingProfilerIntegration;->dirMade:Z

    if-nez v1, :cond_1d

    .line 101
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/SamplingProfilerIntegration;->dirMade:Z

    .line 110
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/os/SamplingProfilerIntegration$1;->val$name:Ljava/lang/String;

    #calls: Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_44

    .line 112
    sput-boolean v2, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Z

    .line 114
    :goto_24
    return-void

    .line 105
    :cond_25
    const-string v1, "SamplingProfilerIntegration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 112
    :catchall_44
    move-exception v1

    sput-boolean v2, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Z

    throw v1
.end method
