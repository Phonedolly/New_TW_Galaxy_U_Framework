.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 43
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 46
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 47
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 48
    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 9
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 317
    add-int v1, p1, p2

    .local v1, high:I
    sub-int v2, p1, v4

    .line 319
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    if-le v3, v4, :cond_15

    .line 320
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 322
    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_13

    .line 323
    move v2, v0

    goto :goto_5

    .line 325
    :cond_13
    move v1, v0

    goto :goto_5

    .line 328
    .end local v0           #guess:I
    :cond_15
    add-int v3, p1, p2

    if-ne v1, v3, :cond_1e

    .line 329
    add-int v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    .line 333
    :goto_1d
    return v3

    .line 330
    :cond_1e
    aget v3, p0, v1

    if-ne v3, p3, :cond_24

    move v3, v1

    .line 331
    goto :goto_1d

    .line 333
    :cond_24
    xor-int/lit8 v3, v1, -0x1

    goto :goto_1d
.end method

.method private checkIntegrity()V
    .registers 6

    .prologue
    .line 337
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v2, :cond_51

    .line 338
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v4, 0x1

    sub-int v4, v0, v4

    aget v3, v3, v4

    if-gt v2, v3, :cond_4e

    .line 339
    const/4 v1, 0x0

    .local v1, j:I
    :goto_13
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_48

    .line 340
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 343
    :cond_48
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 337
    .end local v1           #j:I
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :cond_51
    return-void
.end method

.method private gc()V
    .registers 8

    .prologue
    .line 107
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 108
    .local v2, n:I
    const/4 v3, 0x0

    .line 109
    .local v3, o:I
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 110
    .local v1, keys:[I
    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 112
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1d

    .line 113
    aget-object v4, v5, v0

    .line 115
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1a

    .line 116
    if-eq v0, v3, :cond_18

    .line 117
    aget v6, v1, v0

    aput v6, v1, v3

    .line 118
    aput-object v4, v5, v3

    .line 121
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 112
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 125
    .end local v4           #val:Ljava/lang/Object;
    :cond_1d
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 126
    iput v3, p0, Landroid/util/SparseArray;->mSize:I

    .line 129
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v7, 0x0

    .line 287
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-gt p1, v4, :cond_13

    .line 288
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    :goto_12
    return-void

    .line 292
    :cond_13
    iget-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_21

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_21

    .line 293
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 296
    :cond_21
    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    .line 297
    .local v3, pos:I
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_46

    .line 298
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 300
    .local v0, n:I
    new-array v1, v0, [I

    .line 301
    .local v1, nkeys:[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 304
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 308
    iput-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 311
    .end local v0           #n:I
    .end local v1           #nkeys:[I
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_46
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v3

    .line 312
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 313
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    .line 271
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 272
    .local v1, n:I
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 274
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 275
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 278
    :cond_e
    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    .line 279
    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 280
    return-void
.end method

.method public delete(I)V
    .registers 6
    .parameter "key"

    .prologue
    .line 76
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    .line 78
    .local v0, i:I
    if-ltz v0, :cond_1c

    .line 79
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 80
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 84
    :cond_1c
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    .line 65
    .local v0, i:I
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_15

    :cond_13
    move-object v1, p2

    .line 68
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_14
.end method

.method public indexOfKey(I)I
    .registers 5
    .parameter "key"

    .prologue
    .line 240
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 241
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 244
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    .line 257
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 260
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_17

    .line 261
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_14

    move v1, v0

    .line 264
    :goto_13
    return v1

    .line 260
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 264
    :cond_17
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public keyAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 201
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 202
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 205
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 137
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    .line 139
    .local v0, i:I
    if-ltz v0, :cond_10

    .line 140
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 181
    :goto_f
    return-void

    .line 142
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 144
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 145
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 146
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_f

    .line 150
    :cond_27
    iget-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 151
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 154
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 157
    :cond_3f
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 158
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 160
    .local v1, n:I
    new-array v2, v1, [I

    .line 161
    .local v2, nkeys:[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 164
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iput-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 168
    iput-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 171
    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 173
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_83
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 178
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 179
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(I)V
    .registers 2
    .parameter "key"

    .prologue
    .line 90
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 91
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 98
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 99
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 102
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 228
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 231
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 232
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 188
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 189
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 192
    :cond_7
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 215
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 218
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
