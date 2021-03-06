.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    const-string v3, ""

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 48
    const-string v0, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 141
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 142
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 143
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v3, v0, v1

    .line 153
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 48
    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 133
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 135
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "sne"

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 48
    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 157
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 158
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 159
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 161
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 162
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 163
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(II[B)V
    .registers 6
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 48
    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 119
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 120
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 121
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 129
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 116
    return-void
.end method

.method private parseRecord([B)V
    .registers 10
    .parameter "record"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xe

    const-string v5, ""

    .line 429
    const/4 v3, 0x0

    :try_start_6
    array-length v4, p1

    sub-int/2addr v4, v6

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 432
    array-length v3, p1

    sub-int v1, v3, v6

    .line 434
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 436
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_1e

    .line 438
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 463
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_1d
    return-void

    .line 449
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_1e
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 453
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 455
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_32} :catch_33

    goto :goto_1d

    .line 457
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_33
    move-exception v3

    move-object v0, v3

    .line 458
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    const-string v3, ""

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 460
    const-string v3, ""

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 461
    iput-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_1d
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 213
    if-ne p0, p1, :cond_4

    .line 214
    const/4 v0, 0x1

    .line 222
    :goto_3
    return v0

    .line 216
    :cond_4
    if-nez p0, :cond_8

    .line 217
    const-string p0, ""

    .line 219
    :cond_8
    if-nez p1, :cond_c

    .line 220
    const-string p1, ""

    .line 222
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public appendExtRecord([B)V
    .registers 6
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 397
    :try_start_1
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    .line 419
    :cond_6
    :goto_6
    return-void

    .line 401
    :cond_7
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_6

    .line 406
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_6

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_6

    .line 416
    :catch_37
    move-exception v1

    move-object v0, v1

    .line 417
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public buildAdnString(I)[B
    .registers 15
    .parameter "recordSize"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x0

    const-string v12, ""

    const-string v9, "GSM"

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, adnString:[B
    const/16 v6, 0xe

    sub-int v4, p1, v6

    .line 334
    .local v4, footerOffset:I
    const/4 v3, 0x0

    .line 337
    .local v3, cmpResult:Z
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    :cond_1b
    const/4 v6, 0x1

    move v3, v6

    .line 343
    :goto_1d
    if-eqz v3, :cond_32

    .line 344
    const-string v6, "GSM"

    const-string v6, "[buildAdnString] Empty alpha tag or number"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-array v0, p1, [B

    .line 346
    const/4 v5, 0x0

    .local v5, i:I
    :goto_29
    if-ge v5, p1, :cond_b0

    .line 347
    aput-byte v10, v0, v5

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .end local v5           #i:I
    :cond_30
    move v3, v8

    .line 337
    goto :goto_1d

    .line 349
    :cond_32
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 350
    const-string v6, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 388
    :goto_42
    return-object v6

    .line 352
    :cond_43
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_56

    .line 354
    const-string v6, "GSM"

    const-string v6, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 356
    goto :goto_42

    .line 357
    :cond_56
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7c

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_7c

    .line 358
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildAdnString] Max length of tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 360
    goto :goto_42

    .line 362
    :cond_7c
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 364
    .local v1, bcdNumber:[B
    add-int/lit8 v6, v4, 0x1

    array-length v7, v1

    invoke-static {v1, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    add-int/lit8 v6, v4, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 369
    add-int/lit8 v6, v4, 0xc

    aput-byte v10, v0, v6

    .line 371
    add-int/lit8 v6, v4, 0xd

    aput-byte v10, v0, v6

    .line 375
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_a4

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    :cond_a4
    move-object v6, v0

    .line 376
    goto :goto_42

    .line 379
    :cond_a6
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 380
    .local v2, byteTag:[B
    array-length v6, v2

    invoke-static {v2, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    :cond_b0
    move-object v6, v0

    .line 388
    goto :goto_42
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .registers 3

    .prologue
    .line 208
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isAnrEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .registers 5
    .parameter "adn"

    .prologue
    const-string v2, ""

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 279
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 280
    :cond_22
    const/4 v0, 0x1

    .line 285
    :goto_23
    return v0

    .line 282
    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 285
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_23
.end method

.method public isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .registers 4
    .parameter "adn"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .registers 5
    .parameter "adn"

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 230
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isNumberEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAnrEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isSneEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_8

    :cond_29
    move v0, v2

    goto :goto_8
.end method

.method public isNumberEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .registers 5
    .parameter "adn"

    .prologue
    const-string v2, ""

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 267
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 268
    :cond_22
    const/4 v0, 0x1

    .line 273
    :goto_23
    return v0

    .line 270
    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 273
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_23
.end method

.method public isSneEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .registers 5
    .parameter "adn"

    .prologue
    const-string v2, ""

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 291
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 292
    :cond_22
    const/4 v0, 0x1

    .line 297
    :goto_23
    return v0

    .line 294
    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 297
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_23
.end method

.method public setEmails([Ljava/lang/String;)V
    .registers 2
    .parameter "emails"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 308
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    return-void
.end method
