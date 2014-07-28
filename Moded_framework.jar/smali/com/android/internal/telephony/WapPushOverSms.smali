.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 4
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 47
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 48
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 307
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .registers 12
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 284
    new-array v2, p5, [B

    .line 285
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int v1, p4, p5

    .line 287
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 288
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 295
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 297
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .registers 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 269
    new-array v0, p5, [B

    .line 270
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 277
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .registers 7
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 320
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 326
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .registers 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 249
    new-array v2, p6, [B

    .line 250
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    add-int v1, p5, p6

    .line 254
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 255
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 262
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 265
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 22
    .parameter "pdu"

    .prologue
    .line 62
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/16 v18, 0x0

    .line 65
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v3, p1, v18

    and-int/lit16 v5, v3, 0xff

    .line 66
    .local v5, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v19

    and-int/lit16 v6, v3, 0xff

    .line 67
    .local v6, pduType:I
    const/4 v8, 0x0

    .line 69
    .local v8, headerLength:I
    const/4 v3, 0x6

    if-eq v6, v3, :cond_4b

    const/4 v3, 0x7

    if-eq v6, v3, :cond_4b

    .line 71
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received non-PUSH WAP PDU. Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v3, 0x1

    .line 244
    :goto_4a
    return v3

    .line 75
    .restart local v5       #transactionId:I
    :cond_4b
    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 84
    const-string v3, "WAP PUSH"

    const-string v4, "Received PDU. Header Length error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v3, 0x2

    goto :goto_4a

    .line 87
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    long-to-int v8, v3

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int/lit8 v18, v3, 0x2

    .line 90
    move/from16 v7, v18

    .line 104
    .local v7, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 105
    const-string v3, "WAP PUSH"

    const-string v4, "Received PDU. Header Content-Type error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v3, 0x2

    goto :goto_4a

    .line 109
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, mimeType:Ljava/lang/String;
    if-nez v13, :cond_119

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    move-wide v0, v3

    long-to-int v0, v0

    move/from16 v16, v0

    .line 113
    .local v16, binaryContentType:I
    sparse-switch v16, :sswitch_data_1e6

    .line 163
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PDU. Unsupported Content-Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v3, 0x1

    goto/16 :goto_4a

    .line 115
    .restart local v5       #transactionId:I
    :sswitch_d6
    const-string v13, "application/vnd.oma.drm.rights+xml"

    .line 207
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int v18, v18, v3

    .line 209
    const/16 v17, 0x0

    .line 210
    .local v17, dispatchedByApplication:Z
    sparse-switch v16, :sswitch_data_218

    .line 240
    :goto_e8
    if-nez v17, :cond_f5

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move v14, v7

    move v15, v8

    .line 241
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 244
    :cond_f5
    const/4 v3, -0x1

    goto/16 :goto_4a

    .line 118
    .end local v17           #dispatchedByApplication:Z
    :sswitch_f8
    const-string v13, "application/vnd.oma.drm.rights+wbxml"

    .line 119
    goto :goto_d8

    .line 121
    :sswitch_fb
    const-string v13, "application/vnd.wap.sic"

    .line 122
    goto :goto_d8

    .line 124
    :sswitch_fe
    const-string v13, "application/vnd.wap.slc"

    .line 125
    goto :goto_d8

    .line 127
    :sswitch_101
    const-string v13, "application/vnd.wap.coc"

    .line 128
    goto :goto_d8

    .line 130
    :sswitch_104
    const-string v13, "application/vnd.wap.mms-message"

    .line 131
    goto :goto_d8

    .line 133
    :sswitch_107
    const-string v13, "application/vnd.omaloc-supl-init"

    .line 134
    goto :goto_d8

    .line 136
    :sswitch_10a
    const-string v13, "application/vnd.docomo.pf"

    .line 137
    goto :goto_d8

    .line 145
    :sswitch_10d
    const-string v13, "application/vnd.syncml.notification"

    .line 146
    goto :goto_d8

    .line 151
    :sswitch_110
    const-string v13, "application/vnd.wap.connectivity-wbxml"

    .line 152
    goto :goto_d8

    .line 154
    :sswitch_113
    const-string v13, "application/vnd.syncml.dm+wbxml"

    .line 155
    goto :goto_d8

    .line 157
    :sswitch_116
    const-string v13, "application/vnd.syncml.dm+xml"

    .line 158
    goto :goto_d8

    .line 169
    .end local v16           #binaryContentType:I
    :cond_119
    const-string v3, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 170
    const/16 v16, 0x4a

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 171
    .end local v16           #binaryContentType:I
    :cond_124
    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 172
    const/16 v16, 0x4b

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 173
    .end local v16           #binaryContentType:I
    :cond_12f
    const-string v3, "application/vnd.wap.sic"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 174
    const/16 v16, 0x2e

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 175
    .end local v16           #binaryContentType:I
    :cond_13a
    const-string v3, "application/vnd.wap.slc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 176
    const/16 v16, 0x30

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 177
    .end local v16           #binaryContentType:I
    :cond_145
    const-string v3, "application/vnd.wap.coc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    .line 178
    const/16 v16, 0x32

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 179
    .end local v16           #binaryContentType:I
    :cond_150
    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 180
    const/16 v16, 0x3e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 181
    .end local v16           #binaryContentType:I
    :cond_15c
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_168

    .line 182
    const/16 v16, 0x312

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 183
    .end local v16           #binaryContentType:I
    :cond_168
    const-string v3, "application/vnd.docomo.pf"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 184
    const/16 v16, 0x310

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 190
    .end local v16           #binaryContentType:I
    :cond_174
    const-string v3, "application/vnd.syncml.notification"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 191
    const/16 v16, 0x44

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 194
    .end local v16           #binaryContentType:I
    :cond_180
    const-string v3, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 195
    const/16 v16, 0x36

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 196
    .end local v16           #binaryContentType:I
    :cond_18c
    const-string v3, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 197
    const/16 v16, 0x42

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 198
    .end local v16           #binaryContentType:I
    :cond_198
    const-string v3, "application/vnd.syncml.dm+xml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 199
    const/16 v16, 0x43

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 203
    .end local v16           #binaryContentType:I
    :cond_1a4
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PDU. Unknown Content-Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x1

    goto/16 :goto_4a

    .restart local v5       #transactionId:I
    .restart local v16       #binaryContentType:I
    .restart local v17       #dispatchedByApplication:Z
    :sswitch_1bf
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 212
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 213
    const/16 v17, 0x1

    .line 214
    goto/16 :goto_e8

    :sswitch_1ca
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 216
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 217
    const/16 v17, 0x1

    .line 218
    goto/16 :goto_e8

    .line 224
    :sswitch_1d5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    .line 225
    const/16 v17, 0x1

    .line 226
    goto/16 :goto_e8

    .line 234
    :sswitch_1e2
    const/16 v17, 0x0

    .line 235
    goto/16 :goto_e8

    .line 113
    :sswitch_data_1e6
    .sparse-switch
        0x2e -> :sswitch_fb
        0x30 -> :sswitch_fe
        0x32 -> :sswitch_101
        0x36 -> :sswitch_110
        0x3e -> :sswitch_104
        0x42 -> :sswitch_113
        0x43 -> :sswitch_116
        0x44 -> :sswitch_10d
        0x4a -> :sswitch_d6
        0x4b -> :sswitch_f8
        0x310 -> :sswitch_10a
        0x312 -> :sswitch_107
    .end sparse-switch

    .line 210
    :sswitch_data_218
    .sparse-switch
        0x2e -> :sswitch_1e2
        0x30 -> :sswitch_1e2
        0x32 -> :sswitch_1bf
        0x36 -> :sswitch_1e2
        0x3e -> :sswitch_1ca
        0x42 -> :sswitch_1e2
        0x43 -> :sswitch_1e2
        0x44 -> :sswitch_1d5
    .end sparse-switch
.end method
