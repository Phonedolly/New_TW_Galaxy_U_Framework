.class final Landroid/nfc/TransceiveResult$1;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/TransceiveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/TransceiveResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;
    .registers 9
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_21

    move v2, v5

    .line 71
    .local v2, success:Z
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_23

    move v3, v5

    .line 74
    .local v3, tagLost:Z
    :goto_10
    if-eqz v2, :cond_25

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, responseLength:I
    new-array v0, v1, [B

    .line 77
    .local v0, responseData:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 81
    .end local v1           #responseLength:I
    :goto_1b
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v2, v3, v0}, Landroid/nfc/TransceiveResult;-><init>(ZZ[B)V

    return-object v4

    .end local v0           #responseData:[B
    .end local v2           #success:Z
    .end local v3           #tagLost:Z
    :cond_21
    move v2, v6

    .line 70
    goto :goto_9

    .restart local v2       #success:Z
    :cond_23
    move v3, v6

    .line 71
    goto :goto_10

    .line 79
    .restart local v3       #tagLost:Z
    :cond_25
    const/4 v0, 0x0

    .restart local v0       #responseData:[B
    goto :goto_1b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/TransceiveResult;
    .registers 3
    .parameter "size"

    .prologue
    .line 86
    new-array v0, p1, [Landroid/nfc/TransceiveResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->newArray(I)[Landroid/nfc/TransceiveResult;

    move-result-object v0

    return-object v0
.end method
