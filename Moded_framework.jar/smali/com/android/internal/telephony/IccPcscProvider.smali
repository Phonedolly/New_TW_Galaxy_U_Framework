.class public Lcom/android/internal/telephony/IccPcscProvider;
.super Ljava/lang/Object;
.source "IccPcscProvider.java"


# static fields
.field public static final CONNECT:I = 0x4

.field public static final DISCONNECT:I = 0x5

.field public static final INIT:I = 0x1

.field private static final OEM_DOMESTIC_PCSC_POWERDOWN:I = 0x28

.field private static final OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field private static final OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field private static final OEM_FUNCTION_ID_DOMESTIC:I = 0x12

.field public static final POWERDOWN:I = 0x3

.field public static final POWERUP:I = 0x2

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final TRANSMIT:I = 0x6

.field static final mLogTag:Ljava/lang/String; = "IccPcscProvider"

.field private static scInstance:Lcom/android/internal/telephony/IccPcscProvider;


# instance fields
.field private NUM_OF_CHANNEL:I

.field private _atr:[B

.field private cardStatus:I

.field private channel:[I

.field private isInitiated:Z

.field private mSimState:I

.field private final scLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->NUM_OF_CHANNEL:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->scLock:Ljava/lang/Object;

    .line 40
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->mSimState:I

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .parameter "bytes"

    .prologue
    const-string v4, "0123456789abcdef"

    .line 317
    if-nez p0, :cond_6

    const/4 v3, 0x0

    .line 333
    :goto_5
    return-object v3

    .line 319
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_31

    .line 324
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 326
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 330
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 333
    .end local v0           #b:I
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5
.end method

.method private connectToRIL()I
    .registers 11

    .prologue
    const/4 v9, -0x1

    const-string v8, "IccPcscProvider"

    .line 157
    const-string v5, "IccPcscProvider"

    const-string v5, "connectToRIL"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .line 164
    .local v3, fileSize:I
    const/16 v5, 0x12

    :try_start_18
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 165
    const/16 v5, 0x27

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 166
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 167
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 168
    const/16 v5, 0x70

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 169
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 170
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 171
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_38} :catch_50

    .line 178
    const/4 v5, 0x1

    :try_start_39
    new-array v4, v5, [B

    .line 180
    .local v4, response:[B
    const-string/jumbo v5, "phoneext"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v5, v6, v4, v7}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4e} :catch_5b

    move-result v5

    .line 183
    .end local v4           #response:[B
    :goto_4f
    return v5

    .line 172
    :catch_50
    move-exception v5

    move-object v2, v5

    .line 173
    .local v2, e:Ljava/io/IOException;
    const-string v5, "IccPcscProvider"

    const-string v5, "IOException - connect"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 174
    goto :goto_4f

    .line 181
    .end local v2           #e:Ljava/io/IOException;
    :catch_5b
    move-exception v5

    move-object v2, v5

    .line 182
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "IccPcscProvider"

    const-string v5, "Exception - connect"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 183
    goto :goto_4f
.end method

.method private disconnectFromRIL(I)I
    .registers 11
    .parameter "channel"

    .prologue
    const/4 v8, -0x1

    const-string v6, "IccPcscProvider"

    .line 258
    const-string v5, "IccPcscProvider"

    const-string v5, "disconnectFromRIL"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 264
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .line 265
    .local v3, fileSize:I
    const/16 v5, 0x12

    :try_start_18
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    const/16 v5, 0x27

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 267
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 268
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 269
    const/16 v5, 0x70

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 270
    const/16 v5, 0x80

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 271
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 272
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_38} :catch_50

    .line 280
    const/4 v5, 0x1

    :try_start_39
    new-array v4, v5, [B

    .line 282
    .local v4, response:[B
    const-string/jumbo v5, "phoneext"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v5, v6, v4, v7}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4e} :catch_5b

    move-result v5

    .line 285
    .end local v4           #response:[B
    :goto_4f
    return v5

    .line 274
    :catch_50
    move-exception v5

    move-object v2, v5

    .line 275
    .local v2, e:Ljava/io/IOException;
    const-string v5, "IccPcscProvider"

    const-string v5, "IO Exception - Disconnect"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 276
    goto :goto_4f

    .line 283
    .end local v2           #e:Ljava/io/IOException;
    :catch_5b
    move-exception v5

    move-object v2, v5

    .line 284
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v8

    .line 285
    goto :goto_4f
.end method

.method private pcscPowerdown()V
    .registers 9

    .prologue
    .line 113
    const-string v5, "IccPcscProvider"

    const-string/jumbo v6, "pcscPowerdown"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 120
    .local v3, fileSize:I
    const/16 v5, 0x12

    :try_start_15
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_37

    .line 128
    const/4 v5, 0x1

    :try_start_21
    new-array v4, v5, [B

    .line 130
    .local v4, response:[B
    const-string/jumbo v5, "phoneext"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v5, v6, v4, v7}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_3a

    .line 134
    .end local v4           #response:[B
    :goto_36
    return-void

    .line 123
    :catch_37
    move-exception v5

    move-object v2, v5

    .line 124
    .local v2, e:Ljava/io/IOException;
    goto :goto_36

    .line 131
    .end local v2           #e:Ljava/io/IOException;
    :catch_3a
    move-exception v5

    move-object v2, v5

    .line 132
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private pscsPowerup()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const-string v7, "IccPcscProvider"

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, atrLength:I
    const-string v6, "IccPcscProvider"

    const-string/jumbo v6, "pscsPowerup"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x4

    .line 83
    .local v4, fileSize:I
    const/16 v6, 0x12

    :try_start_19
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 84
    const/16 v6, 0x26

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 85
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_83

    .line 91
    const/16 v6, 0x106

    :try_start_26
    new-array v5, v6, [B

    .line 93
    .local v5, response:[B
    const-string/jumbo v6, "phoneext"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v6, v7, v5, v8}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    .line 94
    const/4 v6, 0x2

    aget-byte v0, v5, v6

    .line 95
    const-string v6, "IccPcscProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pscsPowerup ATR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v6, "IccPcscProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pscsPowerup atrLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-array v6, v0, [B

    iput-object v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    .line 99
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_82} :catch_86

    .line 105
    .end local v5           #response:[B
    :goto_82
    return-void

    .line 86
    :catch_83
    move-exception v6

    move-object v3, v6

    .line 87
    .local v3, e:Ljava/io/IOException;
    goto :goto_82

    .line 101
    .end local v3           #e:Ljava/io/IOException;
    :catch_86
    move-exception v6

    move-object v3, v6

    .line 102
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    iput-boolean v9, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    goto :goto_82
.end method

.method private transmitToRIL(I[B[B)I
    .registers 13
    .parameter "channel"
    .parameter "command"
    .parameter "response"

    .prologue
    const/4 v8, -0x1

    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_b
    array-length v5, p2

    add-int/lit8 v3, v5, 0x4

    .line 222
    .local v3, fileSize:I
    const/16 v5, 0x12

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 223
    const/16 v5, 0x27

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 226
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1c
    array-length v5, p2

    if-ge v4, v5, :cond_32

    .line 227
    aget-byte v5, p2, v4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_24} :catch_27

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 229
    .end local v3           #fileSize:I
    .end local v4           #i:I
    :catch_27
    move-exception v5

    move-object v2, v5

    .line 230
    .local v2, e:Ljava/io/IOException;
    const-string v5, "IccPcscProvider"

    const-string v6, "IOException - transmit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 239
    .end local v2           #e:Ljava/io/IOException;
    :goto_31
    return v5

    .line 236
    .restart local v3       #fileSize:I
    .restart local v4       #i:I
    :cond_32
    :try_start_32
    const-string/jumbo v5, "phoneext"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v5, v6, p3, v7}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_45} :catch_47

    move-result v5

    goto :goto_31

    .line 237
    :catch_47
    move-exception v5

    move-object v2, v5

    .line 238
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v8

    .line 239
    goto :goto_31
.end method


# virtual methods
.method public IccPcscProvider()Lcom/android/internal/telephony/IccPcscProvider;
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 71
    return-object p0
.end method

.method public connect()I
    .registers 3

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v0, :cond_a

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 151
    :cond_a
    const-string v0, "IccPcscProvider"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v0

    return v0
.end method

.method public disconnect(I)I
    .registers 4
    .parameter "channel"

    .prologue
    .line 253
    const-string v0, "IccPcscProvider"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    .line 110
    return-void
.end method

.method public getATR([B)I
    .registers 5
    .parameter "atr"

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v0, v1

    .line 300
    .local v0, size:I
    if-eqz p1, :cond_9

    array-length v1, p1

    if-ge v1, v0, :cond_12

    .line 301
    :cond_9
    const-string v1, "IccPcscProvider"

    const-string v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, -0x6

    .line 307
    :goto_11
    return v1

    .line 306
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 307
    goto :goto_11
.end method

.method public transmit(I[B[B)I
    .registers 5
    .parameter "channel"
    .parameter "command"
    .parameter "response"

    .prologue
    .line 201
    if-nez p2, :cond_4

    .line 202
    const/4 v0, -0x4

    .line 211
    :goto_3
    return v0

    .line 204
    :cond_4
    if-nez p3, :cond_8

    .line 205
    const/4 v0, -0x5

    goto :goto_3

    .line 211
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    goto :goto_3
.end method
