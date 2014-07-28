.class Lcom/android/internal/telephony/MobileQualityInfo$1;
.super Landroid/os/Handler;
.source "MobileQualityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileQualityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MobileQualityInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MobileQualityInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/MobileQualityInfo$1;->this$0:Lcom/android/internal/telephony/MobileQualityInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 51
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4c

    .line 68
    :goto_5
    return-void

    .line 53
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 54
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/MobileQualityInfo$1;->this$0:Lcom/android/internal/telephony/MobileQualityInfo;

    #getter for: Lcom/android/internal/telephony/MobileQualityInfo;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileQualityInfo;->access$000(Lcom/android/internal/telephony/MobileQualityInfo;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 55
    :try_start_11
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_35

    .line 56
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    .line 57
    .local v2, buf:[B
    iget-object v3, p0, Lcom/android/internal/telephony/MobileQualityInfo$1;->this$0:Lcom/android/internal/telephony/MobileQualityInfo;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/android/internal/telephony/MobileQualityInfo;->mMobileInfo:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/MobileQualityInfo;->access$102(Lcom/android/internal/telephony/MobileQualityInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .end local v2           #buf:[B
    :cond_27
    :goto_27
    iget-object v3, p0, Lcom/android/internal/telephony/MobileQualityInfo$1;->this$0:Lcom/android/internal/telephony/MobileQualityInfo;

    #getter for: Lcom/android/internal/telephony/MobileQualityInfo;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileQualityInfo;->access$000(Lcom/android/internal/telephony/MobileQualityInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v4

    goto :goto_5

    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw v3

    .line 60
    :cond_35
    :try_start_35
    const-string v3, "PHONE"

    const-string v5, "cannot get mobile info"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Lcom/android/internal/telephony/MobileQualityInfo$1;->this$0:Lcom/android/internal/telephony/MobileQualityInfo;

    #getter for: Lcom/android/internal/telephony/MobileQualityInfo;->mMobileInfo:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileQualityInfo;->access$100(Lcom/android/internal/telephony/MobileQualityInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 62
    iget-object v3, p0, Lcom/android/internal/telephony/MobileQualityInfo$1;->this$0:Lcom/android/internal/telephony/MobileQualityInfo;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/MobileQualityInfo;->mMobileInfo:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/MobileQualityInfo;->access$102(Lcom/android/internal/telephony/MobileQualityInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_32

    goto :goto_27

    .line 51
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
