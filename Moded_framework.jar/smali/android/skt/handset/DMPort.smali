.class public Landroid/skt/handset/DMPort;
.super Ljava/lang/Object;
.source "DMPort.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "DMPort"

.field static final RIL_MAX_COMMAND_BYTES:I = 0x1000

.field static final SOCKET_NAME_DMPORT:Ljava/lang/String; = "DMPort"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static sInstance:Landroid/skt/handset/DMPort;


# instance fields
.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/skt/handset/DMPort;->sInstance:Landroid/skt/handset/DMPort;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    .line 37
    return-void
.end method

.method public static changeUARFCN(I)Z
    .registers 6
    .parameter "num"

    .prologue
    .line 289
    const-string v2, "DMPort"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeUARFCN() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, ret:Z
    :try_start_19
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 293
    .local v0, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2a

    .line 294
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ITelephony;->changeUARFCN(I)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_29} :catch_2b

    move-result v1

    .line 301
    .end local v0           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_2a
    :goto_2a
    return v1

    .line 296
    :catch_2b
    move-exception v2

    goto :goto_2a
.end method

.method private createDMPortSocket()Landroid/net/LocalSocket;
    .registers 10

    .prologue
    const/16 v8, 0x8

    const-string v7, "DMPort"

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, retryCount:I
    const/4 v3, 0x0

    .line 52
    .local v3, s:Landroid/net/LocalSocket;
    const-string v5, "DMPort"

    const-string v5, "[DMPort] createDMPortSocket() +"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 56
    .end local v3           #s:Landroid/net/LocalSocket;
    .local v4, s:Landroid/net/LocalSocket;
    :goto_e
    :try_start_e
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_27

    .line 57
    .end local v4           #s:Landroid/net/LocalSocket;
    .restart local v3       #s:Landroid/net/LocalSocket;
    :try_start_13
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v5, "DMPort"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 59
    .local v1, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v3, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 60
    const-string v5, "DMPort"

    const-string v6, "[DMPort] createDMPortSocket() - connected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_26} :catch_68

    .line 94
    return-object v3

    .line 62
    .end local v1           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #s:Landroid/net/LocalSocket;
    .restart local v4       #s:Landroid/net/LocalSocket;
    :catch_27
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .line 64
    .end local v4           #s:Landroid/net/LocalSocket;
    .local v0, ex:Ljava/io/IOException;
    .restart local v3       #s:Landroid/net/LocalSocket;
    :goto_2a
    if-eqz v3, :cond_2f

    .line 65
    :try_start_2c
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_64

    .line 74
    :cond_2f
    :goto_2f
    if-ne v2, v8, :cond_58

    .line 75
    const-string v5, "DMPort"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find \'DMPort\' socket after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times, continuing to retry silently"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4f
    :goto_4f
    const-wide/16 v5, 0xfa0

    :try_start_51
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_66

    .line 90
    :goto_54
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .line 91
    .end local v3           #s:Landroid/net/LocalSocket;
    .restart local v4       #s:Landroid/net/LocalSocket;
    goto :goto_e

    .line 79
    .end local v4           #s:Landroid/net/LocalSocket;
    .restart local v3       #s:Landroid/net/LocalSocket;
    :cond_58
    if-lez v2, :cond_4f

    if-ge v2, v8, :cond_4f

    .line 80
    const-string v5, "DMPort"

    const-string v5, "Couldn\'t find \'DMPort\' socket; retrying after timeout"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 67
    :catch_64
    move-exception v5

    goto :goto_2f

    .line 87
    :catch_66
    move-exception v5

    goto :goto_54

    .line 62
    .end local v0           #ex:Ljava/io/IOException;
    :catch_68
    move-exception v5

    move-object v0, v5

    goto :goto_2a
.end method

.method public static dial(Ljava/lang/String;)V
    .registers 6
    .parameter "number"

    .prologue
    const-string v4, "DMPort"

    .line 345
    :try_start_2
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 347
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 348
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;)V

    .line 357
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_12
    return-void

    .line 350
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    const-string v2, "DMPort"

    const-string v3, "failed to get ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_12

    .line 353
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 354
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "DMPort"

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public static endCall()V
    .registers 5

    .prologue
    const-string v4, "DMPort"

    .line 327
    :try_start_2
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 329
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 330
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 339
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_12
    return-void

    .line 332
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    const-string v2, "DMPort"

    const-string v3, "failed to get ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_12

    .line 335
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 336
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "DMPort"

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public static getInstance()Landroid/skt/handset/DMPort;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Landroid/skt/handset/DMPort;->sInstance:Landroid/skt/handset/DMPort;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Landroid/skt/handset/DMPort;

    invoke-direct {v0}, Landroid/skt/handset/DMPort;-><init>()V

    sput-object v0, Landroid/skt/handset/DMPort;->sInstance:Landroid/skt/handset/DMPort;

    .line 43
    :cond_b
    sget-object v0, Landroid/skt/handset/DMPort;->sInstance:Landroid/skt/handset/DMPort;

    return-object v0
.end method

.method private readMessage(Ljava/io/InputStream;)[B
    .registers 12
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "DMPort"

    .line 201
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 204
    .local v1, buffer:[B
    const/4 v4, 0x0

    .line 205
    .local v4, offset:I
    const/4 v5, 0x4

    .line 207
    .local v5, remaining:I
    :cond_8
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 209
    .local v2, countRead:I
    if-gez v2, :cond_17

    .line 210
    const-string v6, "DMPort"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 240
    :goto_16
    return-object v6

    .line 214
    :cond_17
    add-int/2addr v4, v2

    .line 215
    sub-int/2addr v5, v2

    .line 216
    if-gtz v5, :cond_8

    .line 218
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v3, v6, v7

    .line 224
    .local v3, messageLength:I
    const/4 v4, 0x0

    .line 225
    move v5, v3

    .line 226
    new-array v0, v3, [B

    .line 228
    .local v0, buf:[B
    :cond_3d
    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 230
    if-gez v2, :cond_67

    .line 231
    const-string v6, "DMPort"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 233
    goto :goto_16

    .line 236
    :cond_67
    add-int/2addr v4, v2

    .line 237
    sub-int/2addr v5, v2

    .line 238
    if-gtz v5, :cond_3d

    move-object v6, v0

    .line 240
    goto :goto_16
.end method

.method private setDMPort(Ljava/lang/String;)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, ret:Z
    :try_start_1
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 103
    .local v0, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 104
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDMPort(Ljava/lang/String;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-result v1

    .line 112
    .end local v0           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    :goto_12
    return v1

    .line 106
    :catch_13
    move-exception v2

    goto :goto_12
.end method

.method public static setSpeaker(Z)V
    .registers 6
    .parameter "onoff"

    .prologue
    const-string v4, "DMPort"

    .line 312
    :try_start_2
    const-string/jumbo v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 314
    .local v1, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_18

    .line 315
    if-nez p0, :cond_16

    const/4 v2, 0x1

    :goto_12
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyExt;->turnOnSpeaker(Z)V

    .line 322
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_15
    return-void

    .line 315
    .restart local v1       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_16
    const/4 v2, 0x0

    goto :goto_12

    .line 317
    :cond_18
    const-string v2, "DMPort"

    const-string v3, "failed to get ITelephonyExt interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_15

    .line 319
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 320
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "DMPort"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get ITelephonyExt interface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    const-string v4, "DMPort"

    .line 139
    const-string v2, "close"

    invoke-direct {p0, v2}, Landroid/skt/handset/DMPort;->setDMPort(Ljava/lang/String;)Z

    .line 141
    const-wide/16 v2, 0x12c

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_48

    .line 145
    :goto_c
    iget-object v2, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_11

    .line 166
    :goto_10
    return-void

    .line 149
    :cond_11
    :try_start_11
    iget-object v2, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_20} :catch_3e

    .line 157
    :goto_20
    const-wide/16 v2, 0x64

    :try_start_22
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_4a

    .line 161
    :goto_25
    :try_start_25
    iget-object v2, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_2e

    .line 162
    iget-object v2, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 163
    :cond_2e
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_32

    goto :goto_10

    .line 164
    :catch_32
    move-exception v2

    goto :goto_10

    .line 150
    :catch_34
    move-exception v2

    move-object v0, v2

    .line 151
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "DMPort"

    const-string v2, "IOException"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 152
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3e
    move-exception v2

    move-object v1, v2

    .line 153
    .local v1, exc:Ljava/lang/RuntimeException;
    const-string v2, "DMPort"

    const-string v2, "Uncaught exception "

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 142
    .end local v1           #exc:Ljava/lang/RuntimeException;
    :catch_48
    move-exception v2

    goto :goto_c

    .line 158
    :catch_4a
    move-exception v2

    goto :goto_25
.end method

.method public open()Z
    .registers 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, ret:Z
    invoke-direct {p0}, Landroid/skt/handset/DMPort;->createDMPortSocket()Landroid/net/LocalSocket;

    move-result-object v1

    iput-object v1, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    .line 127
    iget-object v1, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_11

    .line 128
    const-string v1, "init"

    invoke-direct {p0, v1}, Landroid/skt/handset/DMPort;->setDMPort(Ljava/lang/String;)Z

    move-result v0

    .line 130
    :cond_11
    return v0
.end method

.method public read()[B
    .registers 10

    .prologue
    const-string v8, "DMPort"

    .line 253
    const/4 v4, -0x1

    .line 254
    .local v4, ret:I
    const/4 v0, 0x0

    .line 255
    .local v0, buf:[B
    iget-object v6, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    if-nez v6, :cond_a

    move-object v1, v0

    .line 278
    .end local v0           #buf:[B
    .local v1, buf:[B
    :goto_9
    return-object v1

    .line 260
    .end local v1           #buf:[B
    .restart local v0       #buf:[B
    :cond_a
    :try_start_a
    iget-object v6, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 262
    .local v3, is:Ljava/io/InputStream;
    invoke-direct {p0, v3}, Landroid/skt/handset/DMPort;->readMessage(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 263
    if-nez v0, :cond_1d

    .line 265
    const-string v6, "DMPort"

    const-string v7, "Hit EOS reading message length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1d} :catch_29

    .end local v3           #is:Ljava/io/InputStream;
    :cond_1d
    :goto_1d
    move-object v1, v0

    .line 278
    .end local v0           #buf:[B
    .restart local v1       #buf:[B
    goto :goto_9

    .line 268
    .end local v1           #buf:[B
    .restart local v0       #buf:[B
    :catch_1f
    move-exception v6

    move-object v2, v6

    .line 269
    .local v2, ex:Ljava/io/IOException;
    const-string v6, "DMPort"

    const-string v6, "\'DMPort\' socket closed"

    invoke-static {v8, v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 270
    .end local v2           #ex:Ljava/io/IOException;
    :catch_29
    move-exception v6

    move-object v5, v6

    .line 271
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "DMPort"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uncaught exception - Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public write([B)I
    .registers 8
    .parameter "cmd"

    .prologue
    const-string v5, "DMPort"

    .line 175
    const/4 v2, -0x1

    .line 177
    .local v2, ret:I
    iget-object v4, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_9

    move v3, v2

    .line 190
    .end local v2           #ret:I
    .local v3, ret:I
    :goto_8
    return v3

    .line 181
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_9
    :try_start_9
    iget-object v4, p0, Landroid/skt/handset/DMPort;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 182
    array-length v2, p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_13} :catch_1f

    :goto_13
    move v3, v2

    .line 190
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_8

    .line 183
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :catch_15
    move-exception v4

    move-object v0, v4

    .line 184
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "DMPort"

    const-string v4, "IOException"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 185
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1f
    move-exception v4

    move-object v1, v4

    .line 186
    .local v1, exc:Ljava/lang/RuntimeException;
    const-string v4, "DMPort"

    const-string v4, "Uncaught exception "

    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
