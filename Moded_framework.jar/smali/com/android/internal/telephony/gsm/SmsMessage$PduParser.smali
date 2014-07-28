.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field tstamp:J

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 781
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 782
    return-void
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    .line 786
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 787
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 788
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .registers 16
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    const/4 v12, 0x0

    .line 948
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 949
    .local v4, offset:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .line 950
    .local v8, userDataLength:I
    const/4 v3, 0x0

    .line 951
    .local v3, headerSeptets:I
    const/4 v7, 0x0

    .line 953
    .local v7, userDataHeaderLength:I
    if-eqz p1, :cond_84

    .line 954
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    .line 956
    new-array v6, v7, [B

    .line 957
    .local v6, udh:[B
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    invoke-static {v9, v4, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 959
    add-int/2addr v4, v7

    .line 961
    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .line 962
    .local v2, headerBits:I
    div-int/lit8 v3, v2, 0x7

    .line 963
    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_5b

    const/4 v9, 0x1

    :goto_30
    add-int/2addr v3, v9

    .line 964
    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 968
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :goto_36
    if-eqz p2, :cond_5d

    .line 974
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .line 986
    .local v0, bufferLen:I
    :cond_3d
    :goto_3d
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    .line 990
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->access$000()Z

    move-result v9

    if-nez v9, :cond_69

    .line 991
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v11, v11

    invoke-static {v9, v4, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 997
    :goto_51
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 999
    if-eqz p2, :cond_80

    .line 1001
    sub-int v1, v8, v3

    .line 1003
    .local v1, count:I
    if-gez v1, :cond_7e

    move v9, v12

    .line 1006
    .end local v1           #count:I
    :goto_5a
    return v9

    .end local v0           #bufferLen:I
    .restart local v2       #headerBits:I
    .restart local v6       #udh:[B
    :cond_5b
    move v9, v12

    .line 963
    goto :goto_30

    .line 980
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :cond_5d
    if-eqz p1, :cond_67

    add-int/lit8 v9, v7, 0x1

    :goto_61
    sub-int v0, v8, v9

    .line 981
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_3d

    .line 982
    const/4 v0, 0x0

    goto :goto_3d

    .end local v0           #bufferLen:I
    :cond_67
    move v9, v12

    .line 980
    goto :goto_61

    .line 992
    .restart local v0       #bufferLen:I
    :cond_69
    if-eqz p1, :cond_76

    .line 993
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v11, v11

    invoke-static {v9, v4, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_51

    .line 995
    :cond_76
    const-string v9, "Gsm/SmsMessage"

    const-string v10, "array copy skip! if dataCodingScheme is unsupporting,\n encodingType is Unknown and messageBody is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .restart local v1       #count:I
    :cond_7e
    move v9, v1

    .line 1003
    goto :goto_5a

    .line 1006
    .end local v1           #count:I
    :cond_80
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v9, v9

    goto :goto_5a

    .end local v0           #bufferLen:I
    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_84
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_36
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 6

    .prologue
    .line 838
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 839
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 841
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 843
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 845
    return-object v2
.end method

.method getByte()I
    .registers 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 801
    .local v0, len:I
    if-nez v0, :cond_d

    .line 803
    const/4 v1, 0x0

    .line 815
    .local v1, ret:Ljava/lang/String;
    :goto_7
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 817
    return-object v1

    .line 807
    .end local v1           #ret:Ljava/lang/String;
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7

    .line 809
    .end local v1           #ret:Ljava/lang/String;
    :catch_16
    move-exception v3

    move-object v2, v3

    .line 810
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "Gsm/SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7
.end method

.method getSCTimestampMillis()J
    .registers 28

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v21

    .line 856
    .local v21, year:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 857
    .local v8, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 858
    .local v3, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 859
    .local v6, hour:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v7

    .line 860
    .local v7, minute:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v23, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v16

    .line 867
    .local v16, second:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v20, v23, v24

    .line 870
    .local v20, tzByte:B
    and-int/lit8 v23, v20, -0x9

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v18

    .line 872
    .local v18, timezoneOffset:I
    and-int/lit8 v23, v20, 0x8

    if-nez v23, :cond_240

    .line 876
    :goto_c1
    const/16 v23, 0x5a

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_249

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v23, v0

    move/from16 v22, v23

    .line 878
    .local v22, year_digit_4:I
    :goto_d1
    :try_start_d1
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 880
    .local v15, sYear:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 881
    .local v13, sMonth:Ljava/lang/String;
    const/16 v23, 0xa

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_f6

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 883
    :cond_f6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 884
    .local v10, sDay:Ljava/lang/String;
    const/16 v23, 0xa

    move v0, v3

    move/from16 v1, v23

    if-ge v0, v1, :cond_117

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 886
    :cond_117
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 887
    .local v11, sHour:Ljava/lang/String;
    const/16 v23, 0xa

    move v0, v6

    move/from16 v1, v23

    if-ge v0, v1, :cond_138

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 889
    :cond_138
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 890
    .local v12, sMinute:Ljava/lang/String;
    const/16 v23, 0xa

    move v0, v7

    move/from16 v1, v23

    if-ge v0, v1, :cond_159

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 892
    :cond_159
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 893
    .local v14, sSecond:Ljava/lang/String;
    const/16 v23, 0xa

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_17b

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 895
    :cond_17b
    const/16 v23, 0xc

    move v0, v8

    move/from16 v1, v23

    if-gt v0, v1, :cond_19f

    const/16 v23, 0x1f

    move v0, v3

    move/from16 v1, v23

    if-gt v0, v1, :cond_19f

    const/16 v23, 0x18

    move v0, v6

    move/from16 v1, v23

    if-gt v0, v1, :cond_19f

    const/16 v23, 0x3c

    move v0, v7

    move/from16 v1, v23

    if-gt v0, v1, :cond_19f

    const/16 v23, 0x3c

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_253

    .line 896
    :cond_19f
    new-instance v23, Ljava/lang/Exception;

    const-string v24, "Out of Bounds!!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_1a7} :catch_1a7
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_1a7} :catch_2b4

    .line 908
    .end local v10           #sDay:Ljava/lang/String;
    .end local v11           #sHour:Ljava/lang/String;
    .end local v12           #sMinute:Ljava/lang/String;
    .end local v13           #sMonth:Ljava/lang/String;
    .end local v14           #sSecond:Ljava/lang/String;
    .end local v15           #sYear:Ljava/lang/String;
    :catch_1a7
    move-exception v23

    move-object/from16 v5, v23

    .line 910
    .local v5, ex:Ljava/lang/IllegalArgumentException;
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->tstamp:J

    .line 911
    const-string v23, "Gsm/SmsMessage"

    const-string v24, "TIMESTAMP1 : FAIL!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v5           #ex:Ljava/lang/IllegalArgumentException;
    :goto_1b9
    new-instance v17, Landroid/text/format/Time;

    const-string v23, "UTC"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 922
    .local v17, time:Landroid/text/format/Time;
    const/16 v23, 0x5a

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_2dd

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v23, v0

    :goto_1d2
    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 923
    const/16 v23, 0x1

    sub-int v23, v8, v23

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 924
    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 925
    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 926
    move v0, v7

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 927
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 930
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->tstamp:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_224

    .line 931
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v23

    mul-int/lit8 v25, v18, 0xf

    mul-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->tstamp:J

    .line 935
    :cond_224
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v23

    mul-int/lit8 v25, v18, 0xf

    mul-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    return-wide v23

    .line 872
    .end local v17           #time:Landroid/text/format/Time;
    .end local v22           #year_digit_4:I
    :cond_240
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v18, v23

    goto/16 :goto_c1

    .line 876
    :cond_249
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v23, v0

    move/from16 v22, v23

    goto/16 :goto_d1

    .line 898
    .restart local v10       #sDay:Ljava/lang/String;
    .restart local v11       #sHour:Ljava/lang/String;
    .restart local v12       #sMinute:Ljava/lang/String;
    .restart local v13       #sMonth:Ljava/lang/String;
    .restart local v14       #sSecond:Ljava/lang/String;
    .restart local v15       #sYear:Ljava/lang/String;
    .restart local v22       #year_digit_4:I
    :cond_253
    :try_start_253
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 902
    .local v9, sDate:Ljava/lang/String;
    invoke-static {v9}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v19

    .line 906
    .local v19, ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v19 .. v19}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->tstamp:J
    :try_end_2b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_253 .. :try_end_2b2} :catch_1a7
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_2b2} :catch_2b4

    goto/16 :goto_1b9

    .line 913
    .end local v9           #sDate:Ljava/lang/String;
    .end local v10           #sDay:Ljava/lang/String;
    .end local v11           #sHour:Ljava/lang/String;
    .end local v12           #sMinute:Ljava/lang/String;
    .end local v13           #sMonth:Ljava/lang/String;
    .end local v14           #sSecond:Ljava/lang/String;
    .end local v15           #sYear:Ljava/lang/String;
    .end local v19           #ts:Ljava/sql/Timestamp;
    :catch_2b4
    move-exception v23

    move-object/from16 v4, v23

    .line 915
    .local v4, e:Ljava/lang/Exception;
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->tstamp:J

    .line 916
    const-string v23, "Gsm/SmsMessage"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "TIMESTAMP1 : FAIL!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b9

    .line 922
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v17       #time:Landroid/text/format/Time;
    :cond_2dd
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v23, v0

    goto/16 :goto_1d2
.end method

.method getUserData()[B
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataEUC_KR(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 1141
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "EUC_KR"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 1147
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1148
    return-object v1

    .line 1142
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 1143
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1144
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .registers 6
    .parameter "septetCount"

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1106
    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataSeptetPadding()I
    .registers 2

    .prologue
    .line 1027
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 1120
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_12

    .line 1126
    .local v1, ret:Ljava/lang/String;
    :goto_c
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1127
    return-object v1

    .line 1121
    .end local v1           #ret:Ljava/lang/String;
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 1122
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1123
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method moreDataPresent()Z
    .registers 3

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
