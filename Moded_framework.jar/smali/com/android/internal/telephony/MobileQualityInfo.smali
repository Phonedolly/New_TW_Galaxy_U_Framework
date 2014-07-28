.class public Lcom/android/internal/telephony/MobileQualityInfo;
.super Lcom/android/internal/telephony/IMobileQualityInfo$Stub;
.source "MobileQualityInfo.java"


# static fields
.field protected static final EVENT_GET_MOBILE_QUALITY_INFO:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMobileInfo:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/MobileQualityInfo$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MobileQualityInfo$1;-><init>(Lcom/android/internal/telephony/MobileQualityInfo;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/MobileQualityInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MobileQualityInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mMobileInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/MobileQualityInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mMobileInfo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 81
    const-string v0, "PHONE"

    const-string v1, "MobileQualityInfo finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public getInfo()Ljava/lang/String;
    .registers 10

    .prologue
    const-string v8, "PHONE"

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v5, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_PHONE_STATE"

    const-string v7, "Requires READ_PHONE_STATE"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x3

    .line 97
    .local v3, fileSize:I
    const/16 v5, 0x12

    :try_start_18
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 99
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_41

    .line 107
    iget-object v5, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 109
    .local v4, response:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 110
    :try_start_2f
    iget-object v6, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_56

    .line 112
    :try_start_38
    iget-object v6, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3d} :catch_4c

    .line 116
    :goto_3d
    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_56

    .line 117
    iget-object v5, p0, Lcom/android/internal/telephony/MobileQualityInfo;->mMobileInfo:Ljava/lang/String;

    .end local v4           #response:Landroid/os/Message;
    :goto_40
    return-object v5

    .line 101
    :catch_41
    move-exception v5

    move-object v2, v5

    .line 103
    .local v2, e:Ljava/io/IOException;
    const-string v5, "PHONE"

    const-string v5, "IOException in getMobileQualityInfo"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v5, 0x0

    goto :goto_40

    .line 113
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #response:Landroid/os/Message;
    :catch_4c
    move-exception v6

    move-object v2, v6

    .line 114
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_4e
    const-string v6, "PHONE"

    const-string v7, "interrupted while getMobileQualityInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 116
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_56
    move-exception v6

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v6
.end method
