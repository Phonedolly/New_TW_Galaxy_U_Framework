.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4000

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 315
    if-nez p0, :cond_3

    .line 321
    :goto_2
    return-void

    .line 317
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 318
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 15
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 249
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 250
    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 252
    .local v0, h:D
    if-ne p2, v10, :cond_14

    move v2, v11

    .line 254
    .local v2, lowerBound:I
    :goto_b
    if-ne p1, v10, :cond_23

    const/16 v6, 0x80

    move v3, v6

    .line 258
    .local v3, upperBound:I
    :goto_10
    if-ge v3, v2, :cond_38

    move v6, v2

    .line 269
    :goto_13
    return v6

    .line 252
    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    :cond_14
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_b

    .line 254
    .restart local v2       #lowerBound:I
    :cond_23
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_10

    .line 263
    .restart local v3       #upperBound:I
    :cond_38
    if-ne p2, v10, :cond_3e

    if-ne p1, v10, :cond_3e

    move v6, v11

    .line 265
    goto :goto_13

    .line 266
    :cond_3e
    if-ne p1, v10, :cond_42

    move v6, v2

    .line 267
    goto :goto_13

    :cond_42
    move v6, v3

    .line 269
    goto :goto_13
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 231
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 235
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_e

    .line 236
    const/4 v1, 0x1

    .line 237
    .local v1, roundedSize:I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 238
    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 241
    .end local v1           #roundedSize:I
    :cond_e
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 244
    .restart local v1       #roundedSize:I
    :cond_14
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0x60

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 91
    if-ne p1, v9, :cond_52

    move v8, v9

    .line 92
    .local v8, wantMini:Z
    :goto_9
    if-eqz v8, :cond_54

    const/16 v9, 0x140

    move v7, v9

    .line 95
    .local v7, targetSize:I
    :goto_e
    if-eqz v8, :cond_56

    const/high16 v9, 0x3

    move v4, v9

    .line 98
    .local v4, maxPixels:I
    :goto_13
    new-instance v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    invoke-direct {v6, v11}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 99
    .local v6, sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v0, 0x0

    .line 100
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    .line 101
    .local v3, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v3, :cond_2a

    iget v9, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_2a

    .line 102
    invoke-static {p0, v7, v4, v6}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 103
    iget-object v0, v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    :cond_2a
    if-nez v0, :cond_6f

    .line 108
    :try_start_2c
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 109
    .local v2, fd:Ljava/io/FileDescriptor;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    const/4 v9, 0x0

    invoke-static {v2, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    iget-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v9, :cond_50

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v9, v13, :cond_50

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v9, v13, :cond_5a

    :cond_50
    move-object v9, v11

    .line 135
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_51
    return-object v9

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #fileType:Landroid/media/MediaFile$MediaFileType;
    .end local v4           #maxPixels:I
    .end local v6           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v7           #targetSize:I
    .end local v8           #wantMini:Z
    :cond_52
    move v8, v10

    .line 91
    goto :goto_9

    .restart local v8       #wantMini:Z
    :cond_54
    move v7, v12

    .line 92
    goto :goto_e

    .line 95
    .restart local v7       #targetSize:I
    :cond_56
    const/16 v9, 0x4000

    move v4, v9

    goto :goto_13

    .line 117
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v4       #maxPixels:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    :cond_5a
    invoke-static {v5, v7, v4}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 122
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 123
    const/4 v9, 0x0

    invoke-static {v2, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_6e} :catch_79

    move-result-object v0

    .line 129
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_6f
    :goto_6f
    const/4 v9, 0x3

    if-ne p1, v9, :cond_77

    .line 131
    const/4 v9, 0x2

    invoke-static {v0, v12, v12, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_77
    move-object v9, v0

    .line 135
    goto :goto_51

    .line 124
    :catch_79
    move-exception v9

    move-object v1, v9

    .line 125
    .local v1, ex:Ljava/io/IOException;
    const-string v9, "ThumbnailUtils"

    const-string v10, ""

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .registers 10
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"

    .prologue
    .line 452
    if-nez p0, :cond_3

    .line 500
    .end local p0
    .end local p1
    .end local p2
    :cond_2
    :goto_2
    return-void

    .line 454
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_3
    const/4 v0, 0x0

    .line 455
    .local v0, exif:Landroid/media/ExifInterface;
    const/4 v2, 0x0

    .line 457
    .local v2, thumbData:[B
    :try_start_5
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_62

    .line 458
    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_7a

    .line 459
    :try_start_c
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_78

    move-result-object v0

    .end local v2           #thumbData:[B
    .local v0, thumbData:[B
    :goto_10
    move-object v4, v0

    .end local v0           #thumbData:[B
    .local v4, thumbData:[B
    move-object v0, v1

    .line 465
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    :goto_12
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 466
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0           #exif:Landroid/media/ExifInterface;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 467
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    .line 468
    .local v1, exifThumbWidth:I
    const/4 v3, 0x0

    .line 471
    .local v3, fullThumbWidth:I
    if-eqz v4, :cond_33

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 473
    .end local v1           #exifThumbWidth:I
    const/4 v1, 0x0

    array-length v3, v4

    .end local v3           #fullThumbWidth:I
    invoke-static {v4, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 474
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 475
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v3

    .line 479
    .restart local v1       #exifThumbWidth:I
    :cond_33
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 480
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 481
    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    .end local p1
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 482
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .end local p2
    div-int/2addr p1, p2

    .line 485
    .local p1, fullThumbWidth:I
    if-eqz v4, :cond_6e

    if-lt v1, p1, :cond_6e

    .line 486
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 487
    .local p1, width:I
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 488
    .local p0, height:I
    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    const/4 p2, 0x0

    array-length v1, v4

    .end local v1           #exifThumbWidth:I
    invoke-static {v4, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 491
    iget-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 492
    iput-object v4, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 493
    iput p1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 494
    iput p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_2

    .line 461
    .end local v4           #thumbData:[B
    .local v0, exif:Landroid/media/ExifInterface;
    .local v2, thumbData:[B
    .local p0, filePath:Ljava/lang/String;
    .local p1, targetSize:I
    .restart local p2
    :catch_62
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    move-object v0, v5

    .line 462
    .local v0, ex:Ljava/io/IOException;
    :goto_66
    const-string v3, "ThumbnailUtils"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v2

    .end local v2           #thumbData:[B
    .restart local v4       #thumbData:[B
    move-object v0, v1

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    goto :goto_12

    .line 497
    .end local p2
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    .local v1, exifThumbWidth:I
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    .local p1, fullThumbWidth:I
    :cond_6e
    const/4 p1, 0x0

    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 498
    .end local p1           #fullThumbWidth:I
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0           #filePath:Ljava/lang/String;
    iput-object p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 461
    .end local v0           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #thumbData:[B
    .local v1, exif:Landroid/media/ExifInterface;
    .local v2, thumbData:[B
    .restart local p0       #filePath:Ljava/lang/String;
    .local p1, targetSize:I
    .restart local p2
    :catch_78
    move-exception v0

    goto :goto_66

    :cond_7a
    move-object v0, v2

    .end local v2           #thumbData:[B
    .local v0, thumbData:[B
    goto :goto_10
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/16 v4, 0x60

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 149
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_8
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 150
    const-wide/32 v2, 0xe4e1c0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_11} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_11} :catch_27

    move-result-object v0

    .line 157
    :try_start_12
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_33

    .line 162
    :goto_15
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1f

    if-eqz v0, :cond_1f

    .line 163
    const/4 v2, 0x2

    invoke-static {v0, v4, v4, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    :cond_1f
    return-object v0

    .line 151
    :catch_20
    move-exception v2

    .line 157
    :try_start_21
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_15

    .line 158
    :catch_25
    move-exception v2

    goto :goto_15

    .line 153
    :catch_27
    move-exception v2

    .line 157
    :try_start_28
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 158
    :catch_2c
    move-exception v2

    goto :goto_15

    .line 156
    :catchall_2e
    move-exception v2

    .line 157
    :try_start_2f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_32} :catch_35

    .line 160
    :goto_32
    throw v2

    .line 158
    :catch_33
    move-exception v2

    goto :goto_15

    :catch_35
    move-exception v3

    goto :goto_32
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 193
    if-nez p0, :cond_4

    .line 194
    const/4 v3, 0x0

    .line 207
    :goto_3
    return-object v3

    .line 198
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_26

    .line 199
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 203
    .local v1, scale:F
    :goto_16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 205
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, thumbnail:Landroid/graphics/Bitmap;
    move-object v3, v2

    .line 207
    goto :goto_3

    .line 201
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #scale:F
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :cond_26
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_16
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_9

    :try_start_5
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_8} :catch_51

    move-result-object p4

    .line 287
    :cond_9
    if-nez p4, :cond_10

    .line 309
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    .line 311
    :goto_f
    return-object v4

    .line 288
    :cond_10
    if-nez p5, :cond_18

    :try_start_12
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 290
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_18
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 291
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 292
    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 293
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 294
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_32

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_32

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_30} :catch_51

    if-ne v4, v5, :cond_37

    .line 309
    :cond_32
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_f

    .line 298
    :cond_37
    :try_start_37
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 300
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 303
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 304
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_4b} :catch_51

    move-result-object v0

    .line 309
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 311
    goto :goto_f

    .line 305
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_51
    move-exception v4

    move-object v1, v4

    .line 306
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_53
    const-string v4, "ThumbnailUtils"

    const-string v5, "Got oom exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5f

    .line 309
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_f

    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_5f
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 326
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    .line 328
    :goto_7
    return-object v1

    .line 327
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 328
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "options"

    .prologue
    .line 340
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    move v2, v0

    .line 341
    .local v2, scaleUp:Z
    :goto_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_72

    .end local p4
    const/4 p4, 0x1

    move v7, p4

    .line 343
    .local v7, recycle:Z
    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int v0, p4, p2

    .line 344
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int v1, p4, p3

    .line 345
    .local v1, deltaY:I
    if-nez v2, :cond_75

    if-ltz v0, :cond_1e

    if-gez v1, :cond_75

    .line 352
    :cond_1e
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 354
    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 356
    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    .end local v2           #scaleUp:Z
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 357
    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 358
    .local v1, deltaYHalf:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 364
    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 365
    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 371
    if-eqz v7, :cond_6e

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :cond_6e
    :goto_6e
    return-object p0

    .line 340
    .end local v7           #recycle:Z
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, options:I
    :cond_6f
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6

    .line 341
    .end local p4           #options:I
    .local v2, scaleUp:Z
    :cond_72
    const/4 p4, 0x0

    move v7, p4

    goto :goto_c

    .line 376
    .local v0, deltaX:I
    .local v1, deltaY:I
    .restart local v7       #recycle:Z
    :cond_75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float v1, p4

    .line 377
    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 379
    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .line 380
    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 382
    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_dd

    .line 383
    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 384
    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_97

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_db

    .line 385
    :cond_97
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 399
    :goto_9a
    if-eqz p0, :cond_f2

    .line 401
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v1           #bitmapWidthF:F
    .end local v2           #viewAspect:F
    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 407
    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_ad
    if-eqz v7, :cond_b4

    if-eq p0, p1, :cond_b4

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 411
    :cond_b4
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 412
    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 414
    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 421
    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p2, p0, :cond_d9

    .line 422
    if-nez v7, :cond_d6

    if-eq p0, p1, :cond_d9

    .line 423
    :cond_d6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d9
    move-object p0, p2

    .line 427
    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_6e

    .line 387
    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_db
    const/4 p0, 0x0

    goto :goto_9a

    .line 390
    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_dd
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 391
    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_ec

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_f0

    .line 392
    :cond_ec
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_9a

    .line 394
    :cond_f0
    const/4 p0, 0x0

    goto :goto_9a

    .line 404
    :cond_f2
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_ad
.end method
