.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .registers 16
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const/16 v9, 0x80

    .line 167
    aget-byte v0, p1, p2

    .line 168
    .local v0, b0:B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 169
    .local v1, b1:B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 170
    .local v2, b2:B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 173
    .local v3, b3:B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_45

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v8, v8, 0x80

    move v4, v8

    .line 174
    .local v4, i0:I
    :goto_19
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_47

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v8, v8, 0x80

    move v5, v8

    .line 175
    .local v5, i1:I
    :goto_22
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_49

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v8, v8, 0x80

    move v6, v8

    .line 176
    .local v6, i2:I
    :goto_2b
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_4b

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v8, v8, 0x80

    move v7, v8

    .line 178
    .local v7, i3:I
    :goto_34
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4           #i0:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v7           #i3:I
    :cond_45
    move v4, v0

    .line 173
    goto :goto_19

    .restart local v4       #i0:I
    :cond_47
    move v5, v1

    .line 174
    goto :goto_22

    .restart local v5       #i1:I
    :cond_49
    move v6, v2

    .line 175
    goto :goto_2b

    .restart local v6       #i2:I
    :cond_4b
    move v7, v3

    .line 176
    goto :goto_34
.end method

.method private readTimeStamp([BI)J
    .registers 13
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 187
    .local v2, seconds:J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 188
    .local v0, fraction:J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .registers 16
    .parameter "buffer"
    .parameter "offset"
    .parameter "time"

    .prologue
    .line 196
    const-wide/16 v7, 0x3e8

    div-long v5, p3, v7

    .line 197
    .local v5, seconds:J
    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    sub-long v2, p3, v7

    .line 198
    .local v2, milliseconds:J
    const-wide v7, 0x83aa7e80L

    add-long/2addr v5, v7

    .line 201
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .local v4, offset:I
    const/16 v7, 0x18

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 202
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 203
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 204
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/4 v7, 0x0

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 206
    const-wide v7, 0x100000000L

    mul-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 208
    .local v0, fraction:J
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x18

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 209
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 210
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 212
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 213
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .registers 3

    .prologue
    .line 151
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .registers 3

    .prologue
    .line 160
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .registers 37
    .parameter "host"
    .parameter "timeout"

    .prologue
    .line 75
    const/16 v26, 0x0

    .line 77
    .local v26, socket:Ljava/net/DatagramSocket;
    :try_start_2
    new-instance v27, Ljava/net/DatagramSocket;

    invoke-direct/range {v27 .. v27}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_b7

    .line 78
    .end local v26           #socket:Ljava/net/DatagramSocket;
    .local v27, socket:Ljava/net/DatagramSocket;
    :try_start_7
    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 79
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 80
    .local v5, address:Ljava/net/InetAddress;
    const/16 v30, 0x30

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object v6, v0

    .line 81
    .local v6, buffer:[B
    new-instance v14, Ljava/net/DatagramPacket;

    move-object v0, v6

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x7b

    move-object v0, v14

    move-object v1, v6

    move/from16 v2, v30

    move-object v3, v5

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 86
    .local v14, request:Ljava/net/DatagramPacket;
    const/16 v30, 0x0

    const/16 v31, 0x1b

    aput-byte v31, v6, v30

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 90
    .local v17, requestTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 91
    .local v15, requestTicks:J
    const/16 v30, 0x28

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v30

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 93
    move-object/from16 v0, v27

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 96
    new-instance v19, Ljava/net/DatagramPacket;

    move-object v0, v6

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v19

    move-object v1, v6

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 97
    .local v19, response:Ljava/net/DatagramPacket;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 99
    .local v20, responseTicks:J
    sub-long v30, v20, v15

    add-long v22, v17, v30

    .line 102
    .local v22, responseTime:J
    const/16 v30, 0x18

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v10

    .line 103
    .local v10, originateTime:J
    const/16 v30, 0x20

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    .line 104
    .local v12, receiveTime:J
    const/16 v30, 0x28

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v28

    .line 105
    .local v28, transmitTime:J
    sub-long v30, v20, v15

    sub-long v32, v28, v12

    sub-long v24, v30, v32

    .line 114
    .local v24, roundTripTime:J
    sub-long v30, v12, v10

    sub-long v32, v28, v22

    add-long v30, v30, v32

    const-wide/16 v32, 0x2

    div-long v7, v30, v32

    .line 120
    .local v7, clockOffset:J
    add-long v30, v22, v7

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 121
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 122
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_ad
    .catchall {:try_start_7 .. :try_end_ad} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ad} :catch_e9

    .line 127
    if-eqz v27, :cond_b2

    .line 128
    invoke-virtual/range {v27 .. v27}, Ljava/net/DatagramSocket;->close()V

    .line 132
    :cond_b2
    const/16 v30, 0x1

    move-object/from16 v26, v27

    .end local v5           #address:Ljava/net/InetAddress;
    .end local v6           #buffer:[B
    .end local v7           #clockOffset:J
    .end local v10           #originateTime:J
    .end local v12           #receiveTime:J
    .end local v14           #request:Ljava/net/DatagramPacket;
    .end local v15           #requestTicks:J
    .end local v17           #requestTime:J
    .end local v19           #response:Ljava/net/DatagramPacket;
    .end local v20           #responseTicks:J
    .end local v22           #responseTime:J
    .end local v24           #roundTripTime:J
    .end local v27           #socket:Ljava/net/DatagramSocket;
    .end local v28           #transmitTime:J
    .restart local v26       #socket:Ljava/net/DatagramSocket;
    :cond_b6
    :goto_b6
    return v30

    .line 123
    :catch_b7
    move-exception v30

    move-object/from16 v9, v30

    .line 124
    .local v9, e:Ljava/lang/Exception;
    :goto_ba
    :try_start_ba
    const-string v30, "SntpClient"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "request time failed: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_ba .. :try_end_d6} :catchall_de

    .line 125
    const/16 v30, 0x0

    .line 127
    if-eqz v26, :cond_b6

    .line 128
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    goto :goto_b6

    .line 127
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_de
    move-exception v30

    :goto_df
    if-eqz v26, :cond_e4

    .line 128
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    :cond_e4
    throw v30

    .line 127
    .end local v26           #socket:Ljava/net/DatagramSocket;
    .restart local v27       #socket:Ljava/net/DatagramSocket;
    :catchall_e5
    move-exception v30

    move-object/from16 v26, v27

    .end local v27           #socket:Ljava/net/DatagramSocket;
    .restart local v26       #socket:Ljava/net/DatagramSocket;
    goto :goto_df

    .line 123
    .end local v26           #socket:Ljava/net/DatagramSocket;
    .restart local v27       #socket:Ljava/net/DatagramSocket;
    :catch_e9
    move-exception v30

    move-object/from16 v9, v30

    move-object/from16 v26, v27

    .end local v27           #socket:Ljava/net/DatagramSocket;
    .restart local v26       #socket:Ljava/net/DatagramSocket;
    goto :goto_ba
.end method
