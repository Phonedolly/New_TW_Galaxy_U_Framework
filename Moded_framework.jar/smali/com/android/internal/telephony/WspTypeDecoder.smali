.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final CONTENT_MIME_TYPE_B_DRM_ROAP_TRIGGER_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_ROAP_TRIGGER_XML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+xml"

.field public static final CONTENT_MIME_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_MIME_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_DM_SYNC_WBXML:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_DM_SYNC_XML:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_PROV_CONNECTIVITY:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_SUPL_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final CONTENT_MIME_TYPE_B_VND_DOCOMO_PF:Ljava/lang/String; = "application/vnd.docomo.pf"

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_WBXML:I = 0x4b

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_XML:I = 0x4a

.field public static final CONTENT_TYPE_B_MMS:I = 0x3e

.field public static final CONTENT_TYPE_B_PUSH_CO:I = 0x32

.field public static final CONTENT_TYPE_B_PUSH_DM_SYNC_WBXML:I = 0x42

.field public static final CONTENT_TYPE_B_PUSH_DM_SYNC_XML:I = 0x43

.field public static final CONTENT_TYPE_B_PUSH_PROV_CONNECTIVITY:I = 0x36

.field public static final CONTENT_TYPE_B_PUSH_SI:I = 0x2e

.field public static final CONTENT_TYPE_B_PUSH_SL:I = 0x30

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:I = 0x44

.field public static final CONTENT_TYPE_B_ROAP_TRIGGER_WBXML:I = 0x316

.field public static final CONTENT_TYPE_B_SUPL_INIT:I = 0x312

.field public static final CONTENT_TYPE_B_VND_DOCOMO_PF:I = 0x310

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e


# instance fields
.field dataLength:I

.field stringValue:Ljava/lang/String;

.field unsigned32bit:J

.field wspData:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter "pdu"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    .line 96
    return-void
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .registers 4
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_c

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    .line 267
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    goto :goto_b
.end method

.method public decodeContentLength(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .registers 7
    .parameter "startIndex"

    .prologue
    const/4 v4, 0x1

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v3

    .line 297
    :goto_b
    return v3

    .line 286
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    .line 287
    .local v2, mediaPrefixLength:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v0

    .line 288
    .local v0, mediaFieldLength:J
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v3

    if-ne v3, v4, :cond_26

    .line 289
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 290
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v3, v4

    .line 291
    goto :goto_b

    .line 293
    :cond_26
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v3

    if-ne v3, v4, :cond_35

    .line 294
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v3, v4

    .line 295
    goto :goto_b

    .line 297
    :cond_35
    const/4 v3, 0x0

    goto :goto_b
.end method

.method public decodeExtensionMedia(I)Z
    .registers 9
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 237
    move v0, p1

    .line 238
    .local v0, index:I
    iput v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 239
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 240
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    array-length v1, v3

    .line 241
    .local v1, length:I
    if-ge v0, v1, :cond_19

    move v2, v6

    .line 243
    .local v2, rtrn:Z
    :goto_e
    if-ge v0, v1, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1b

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v2           #rtrn:Z
    :cond_19
    move v2, v4

    .line 241
    goto :goto_e

    .line 247
    .restart local v2       #rtrn:Z
    :cond_1b
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 248
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 250
    return v2
.end method

.method public decodeIntegerValue(I)Z
    .registers 4
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 175
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    goto :goto_8
.end method

.method public decodeLongInteger(I)Z
    .registers 8
    .parameter "startIndex"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .line 151
    .local v1, lengthMultiOctet:I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_c

    .line 152
    const/4 v2, 0x0

    .line 159
    :goto_b
    return v2

    .line 154
    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 155
    const/4 v0, 0x1

    .local v0, i:I
    :goto_11
    if-gt v0, v1, :cond_27

    .line 156
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 158
    :cond_27
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 159
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public decodeShortInteger(I)Z
    .registers 5
    .parameter "startIndex"

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_b

    .line 132
    const/4 v0, 0x0

    .line 136
    :goto_a
    return v0

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 135
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v0, v2

    .line 136
    goto :goto_a
.end method

.method public decodeTextString(I)Z
    .registers 9
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    .line 108
    move v0, p1

    .line 109
    .local v0, index:I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_b

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_b
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_29

    .line 114
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 118
    :goto_28
    return v6

    .line 116
    :cond_29
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    goto :goto_28
.end method

.method public decodeUintvarInteger(I)Z
    .registers 8
    .parameter "startIndex"

    .prologue
    const/4 v5, 0x7

    .line 188
    move v0, p1

    .line 190
    .local v0, index:I
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 191
    :goto_6
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_25

    .line 192
    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_15

    .line 193
    const/4 v1, 0x0

    .line 200
    :goto_14
    return v1

    .line 195
    :cond_15
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 198
    :cond_25
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 199
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 200
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public decodeValueLength(I)Z
    .registers 5
    .parameter "startIndex"

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x1

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_d

    .line 214
    const/4 v0, 0x0

    .line 223
    :goto_c
    return v0

    .line 216
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    if-ge v0, v1, :cond_1e

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 218
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :goto_1c
    move v0, v2

    .line 223
    goto :goto_c

    .line 220
    :cond_1e
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 221
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    goto :goto_1c
.end method

.method public decodeXWapApplicationId(I)Z
    .registers 4
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    if-ne v0, v1, :cond_c

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    .line 340
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    goto :goto_b
.end method

.method public decodeXWapContentURI(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public getDecodedDataLength()I
    .registers 2

    .prologue
    .line 373
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    return v0
.end method

.method public getValue32()J
    .registers 3

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return-object v0
.end method
