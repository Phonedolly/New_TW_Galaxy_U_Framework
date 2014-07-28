.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private final MEDIA_KIND_AUDIO:I

.field private final MEDIA_KIND_IMAGE:I

.field private final MEDIA_KIND_VIDEO:I

.field private final MEDIA_SCANNER_PROGRESS_UPDATE_TICK:J

.field private isDrmConverted:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mExif_Ori:I

.field private mExif_Time:J

.field private mExif_lat:F

.field private mExif_lng:F

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPrevStatusTick:J

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .registers 4
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 886
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_SCANNER_PROGRESS_UPDATE_TICK:J

    .line 887
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    .line 893
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_AUDIO:I

    .line 894
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_IMAGE:I

    .line 895
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_VIDEO:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 852
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 2135
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 2136
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2137
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int v2, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    move v2, v4

    goto :goto_1c
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZ)Landroid/net/Uri;
    .registers 48
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .parameter "usePendingBulkInsert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1867
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v19

    .line 1868
    .local v19, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v23

    .line 1869
    .local v23, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v22

    .line 1871
    .local v22, isImage:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isDocumentFileType(I)Z

    move-result v20

    .line 1872
    .local v20, isDoc:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isAppPackageFileType(I)Z

    move-result v18

    .line 1873
    .local v18, isAppPackage:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isEnglishFileType(I)Z

    move-result v21

    .line 1874
    .local v21, isEnglish:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoCallImagesFileType(I)Z

    move-result v24

    .line 1877
    .local v24, isVideoCallImages:Z
    if-eqz v23, :cond_2f9

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v34

    .line 1895
    .local v34, tableUri:Landroid/net/Uri;
    :goto_4a
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6c

    .line 1899
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1902
    :cond_6c
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v39

    .line 1906
    .local v39, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1907
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    move v5, v0

    if-eqz v5, :cond_90

    .line 1908
    const-string v5, "mini_thumb_magic"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1913
    :cond_90
    const-string/jumbo v5, "title"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1914
    .local v37, title:Ljava/lang/String;
    if-eqz v37, :cond_a6

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 1915
    :cond_a6
    const-string v5, "_data"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1917
    const/16 v5, 0x2f

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 1918
    .local v26, lastSlash:I
    if-ltz v26, :cond_cd

    .line 1919
    add-int/lit8 v26, v26, 0x1

    .line 1920
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v26

    move v1, v5

    if-ge v0, v1, :cond_cd

    .line 1921
    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    .line 1925
    :cond_cd
    const/16 v5, 0x2e

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v25

    .line 1926
    .local v25, lastDot:I
    if-lez v25, :cond_e2

    .line 1927
    const/4 v5, 0x0

    move-object/from16 v0, v37

    move v1, v5

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 1929
    :cond_e2
    const-string/jumbo v5, "title"

    move-object/from16 v0, v39

    move-object v1, v5

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    .end local v25           #lastDot:I
    .end local v26           #lastSlash:I
    :cond_ed
    const-string v5, "album"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1932
    .local v11, album:Ljava/lang/String;
    const-string v5, "<unknown>"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 1933
    const-string v5, "_data"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1935
    const/16 v5, 0x2f

    invoke-virtual {v11, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 1936
    .restart local v26       #lastSlash:I
    if-ltz v26, :cond_136

    .line 1937
    const/16 v29, 0x0

    .line 1939
    .local v29, previousSlash:I
    :goto_111
    const/16 v5, 0x2f

    add-int/lit8 v6, v29, 0x1

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1940
    .local v17, idx:I
    if-ltz v17, :cond_121

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_33c

    .line 1945
    :cond_121
    if-eqz v29, :cond_136

    .line 1946
    add-int/lit8 v5, v29, 0x1

    move-object v0, v11

    move v1, v5

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1947
    const-string v5, "album"

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    .end local v17           #idx:I
    .end local v26           #lastSlash:I
    .end local v29           #previousSlash:I
    :cond_136
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v31, v0

    .line 1952
    .local v31, rowId:J
    if-eqz v19, :cond_340

    const-wide/16 v5, 0x0

    cmp-long v5, v31, v5

    if-nez v5, :cond_340

    .line 1954
    if-eqz v21, :cond_150

    .line 1956
    const/16 p2, 0x0

    .line 1957
    const/16 p3, 0x0

    .line 1958
    const/16 p4, 0x0

    .line 1959
    const/16 p5, 0x0

    .line 1960
    const/16 p6, 0x1

    .line 1968
    :cond_150
    const-string v5, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1969
    const-string v5, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1970
    const-string v5, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1971
    const-string v5, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1972
    const-string v5, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1975
    const/16 v33, 0x0

    .line 1976
    .local v33, sound:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1a5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x13

    if-le v5, v6, :cond_1bd

    :cond_1a5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1bd

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1bd

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1bf

    .line 1979
    :cond_1bd
    const/16 v33, 0x1

    .line 1981
    :cond_1bf
    const-string v5, "is_sound"

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2027
    .end local v33           #sound:Z
    :cond_1cc
    :goto_1cc
    const/16 v30, 0x0

    .line 2028
    .local v30, result:Landroid/net/Uri;
    const-wide/16 v5, 0x0

    cmp-long v5, v31, v5

    if-nez v5, :cond_3ef

    .line 2041
    if-eqz p7, :cond_3cf

    if-nez v19, :cond_1dc

    if-nez v22, :cond_1dc

    if-eqz v23, :cond_3cf

    .line 2042
    :cond_1dc
    if-eqz v19, :cond_3c7

    const/4 v5, 0x1

    :goto_1df
    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V

    .line 2061
    :cond_1e7
    :goto_1e7
    if-nez p7, :cond_2ac

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Z

    move-result v5

    if-eqz v5, :cond_2ac

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2ac

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2066
    .local v16, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/Uri;

    .line 2067
    .local v38, uri:Landroid/net/Uri;
    if-nez v38, :cond_289

    .line 2068
    const/4 v12, 0x0

    .line 2071
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Landroid/media/MediaScanner;->access$800()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v16, v9, v10

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2075
    if-eqz v12, :cond_241

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_40e

    .line 2077
    :cond_241
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 2078
    const-string v5, "name"

    move-object/from16 v0, v39

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v38

    .line 2085
    :goto_268
    if-eqz v38, :cond_284

    .line 2086
    const-string v5, "members"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_284
    .catchall {:try_start_216 .. :try_end_284} :catchall_425

    .line 2091
    :cond_284
    if-eqz v12, :cond_289

    .line 2092
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2097
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_289
    if-eqz v38, :cond_2ac

    .line 2099
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 2100
    const-string v5, "audio_id"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2111
    .end local v16           #genre:Ljava/lang/String;
    .end local v38           #uri:Landroid/net/Uri;
    :cond_2ac
    if-eqz p3, :cond_42c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_42c

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f6

    .line 2114
    :cond_2e0
    const-string/jumbo v5, "notification_sound"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v34

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    :cond_2f6
    :goto_2f6
    move-object/from16 v5, v30

    .line 2131
    .end local v11           #album:Ljava/lang/String;
    .end local v30           #result:Landroid/net/Uri;
    .end local v31           #rowId:J
    .end local v34           #tableUri:Landroid/net/Uri;
    .end local v37           #title:Ljava/lang/String;
    .end local v39           #values:Landroid/content/ContentValues;
    :goto_2f8
    return-object v5

    .line 1879
    :cond_2f9
    if-eqz v22, :cond_306

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v34

    .restart local v34       #tableUri:Landroid/net/Uri;
    goto/16 :goto_4a

    .line 1881
    .end local v34           #tableUri:Landroid/net/Uri;
    :cond_306
    if-eqz v19, :cond_313

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v34

    .restart local v34       #tableUri:Landroid/net/Uri;
    goto/16 :goto_4a

    .line 1884
    .end local v34           #tableUri:Landroid/net/Uri;
    :cond_313
    if-eqz v20, :cond_320

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDocUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v34

    .restart local v34       #tableUri:Landroid/net/Uri;
    goto/16 :goto_4a

    .line 1886
    .end local v34           #tableUri:Landroid/net/Uri;
    :cond_320
    if-eqz v18, :cond_32d

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v34

    .restart local v34       #tableUri:Landroid/net/Uri;
    goto/16 :goto_4a

    .line 1888
    .end local v34           #tableUri:Landroid/net/Uri;
    :cond_32d
    if-eqz v24, :cond_33a

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v34

    .restart local v34       #tableUri:Landroid/net/Uri;
    goto/16 :goto_4a

    .line 1893
    .end local v34           #tableUri:Landroid/net/Uri;
    :cond_33a
    const/4 v5, 0x0

    goto :goto_2f8

    .line 1943
    .restart local v11       #album:Ljava/lang/String;
    .restart local v17       #idx:I
    .restart local v26       #lastSlash:I
    .restart local v29       #previousSlash:I
    .restart local v34       #tableUri:Landroid/net/Uri;
    .restart local v37       #title:Ljava/lang/String;
    .restart local v39       #values:Landroid/content/ContentValues;
    :cond_33c
    move/from16 v29, v17

    .line 1944
    goto/16 :goto_111

    .line 1984
    .end local v17           #idx:I
    .end local v26           #lastSlash:I
    .end local v29           #previousSlash:I
    .restart local v31       #rowId:J
    :cond_340
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_1cc

    .line 1985
    const/4 v14, 0x0

    .line 1987
    .local v14, exif:Landroid/media/ExifInterface;
    :try_start_34a
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v15, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_354
    .catch Ljava/io/IOException; {:try_start_34a .. :try_end_354} :catch_4c3

    .end local v14           #exif:Landroid/media/ExifInterface;
    .local v15, exif:Landroid/media/ExifInterface;
    move-object v14, v15

    .line 1991
    .end local v15           #exif:Landroid/media/ExifInterface;
    .restart local v14       #exif:Landroid/media/ExifInterface;
    :goto_355
    if-eqz v14, :cond_1cc

    .line 1992
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .line 1993
    .local v27, latlng:[F
    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v5

    if-eqz v5, :cond_386

    .line 1994
    const-string v5, "latitude"

    const/4 v6, 0x0

    aget v6, v27, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1995
    const-string v5, "longitude"

    const/4 v6, 0x1

    aget v6, v27, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1998
    :cond_386
    invoke-virtual {v14}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v35

    .line 1999
    .local v35, time:J
    const-wide/16 v5, -0x1

    cmp-long v5, v35, v5

    if-eqz v5, :cond_39d

    .line 2000
    const-string v5, "datetaken"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2003
    :cond_39d
    const-string v5, "Orientation"

    const/4 v6, -0x1

    invoke-virtual {v14, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v28

    .line 2005
    .local v28, orientation:I
    const/4 v5, -0x1

    move/from16 v0, v28

    move v1, v5

    if-eq v0, v1, :cond_1cc

    .line 2008
    packed-switch v28, :pswitch_data_4c6

    .line 2019
    :pswitch_3ad
    const/4 v13, 0x0

    .line 2022
    .local v13, degree:I
    :goto_3ae
    const-string/jumbo v5, "orientation"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1cc

    .line 2010
    .end local v13           #degree:I
    :pswitch_3be
    const/16 v13, 0x5a

    .line 2011
    .restart local v13       #degree:I
    goto :goto_3ae

    .line 2013
    .end local v13           #degree:I
    :pswitch_3c1
    const/16 v13, 0xb4

    .line 2014
    .restart local v13       #degree:I
    goto :goto_3ae

    .line 2016
    .end local v13           #degree:I
    :pswitch_3c4
    const/16 v13, 0x10e

    .line 2017
    .restart local v13       #degree:I
    goto :goto_3ae

    .line 2042
    .end local v13           #degree:I
    .end local v14           #exif:Landroid/media/ExifInterface;
    .end local v27           #latlng:[F
    .end local v28           #orientation:I
    .end local v35           #time:J
    .restart local v30       #result:Landroid/net/Uri;
    :cond_3c7
    if-eqz v22, :cond_3cc

    const/4 v5, 0x2

    goto/16 :goto_1df

    :cond_3cc
    const/4 v5, 0x3

    goto/16 :goto_1df

    .line 2045
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 2046
    if-eqz v30, :cond_1e7

    .line 2047
    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    .line 2048
    move-wide/from16 v0, v31

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    goto/16 :goto_1e7

    .line 2055
    :cond_3ef
    move-object/from16 v0, v34

    move-wide/from16 v1, v31

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1e7

    .line 2082
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #genre:Ljava/lang/String;
    .restart local v38       #uri:Landroid/net/Uri;
    :cond_40e
    :try_start_40e
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_422
    .catchall {:try_start_40e .. :try_end_422} :catchall_425

    move-result-object v38

    goto/16 :goto_268

    .line 2091
    :catchall_425
    move-exception v5

    if-eqz v12, :cond_42b

    .line 2092
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_42b
    throw v5

    .line 2117
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #genre:Ljava/lang/String;
    .end local v38           #uri:Landroid/net/Uri;
    :cond_42c
    if-eqz p2, :cond_478

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_478

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_460

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f6

    .line 2120
    :cond_460
    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v34

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2902(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_2f6

    .line 2123
    :cond_478
    if-eqz p4, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_2f6

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4ac

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f6

    .line 2126
    :cond_4ac
    const-string v5, "alarm_alert"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v34

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$3102(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_2f6

    .line 1988
    .end local v30           #result:Landroid/net/Uri;
    .restart local v14       #exif:Landroid/media/ExifInterface;
    :catch_4c3
    move-exception v5

    goto/16 :goto_355

    .line 2008
    :pswitch_data_4c6
    .packed-switch 0x3
        :pswitch_3c1
        :pswitch_3ad
        :pswitch_3ad
        :pswitch_3be
        :pswitch_3ad
        :pswitch_3c4
    .end packed-switch
.end method

.method private getDrmFileType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 1023
    const-string v9, ".dcf"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 1024
    .local v5, isDCF:Z
    const-string v9, ".dm"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 1025
    .local v6, isDM:Z
    const-string v9, ".odf"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1026
    .local v7, isODF:Z
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v8

    .line 1027
    .local v8, manager:Landroid/drm/mobile2/OMADRMManager;
    if-nez v8, :cond_21

    .line 1028
    const-string v9, "MediaScanner"

    const-string v10, "OmaDRMManager is NULL : "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v9, -0x1

    .line 1127
    :goto_20
    return v9

    .line 1032
    :cond_21
    if-eqz v6, :cond_37

    .line 1035
    :try_start_23
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, destfile:Ljava/lang/String;
    if-eqz v0, :cond_50

    .line 1039
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v2, file2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1041
    move-object p1, v0

    .line 1042
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1043
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1053
    .end local v0           #destfile:Ljava/lang/String;
    .end local v2           #file2:Ljava/io/File;
    :cond_37
    :goto_37
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 1059
    :goto_3d
    if-nez p2, :cond_43

    .line 1061
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1063
    :cond_43
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1066
    if-nez p2, :cond_7e

    .line 1067
    const-string v9, "MediaScanner"

    const-string v10, "MediaScanner: getFileTypes: null MimeType "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v9, -0x1

    goto :goto_20

    .line 1045
    .restart local v0       #destfile:Ljava/lang/String;
    :cond_50
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conversion failed for the file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_23 .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_68} :catch_78

    goto :goto_37

    .line 1122
    .end local v0           #destfile:Ljava/lang/String;
    :catch_69
    move-exception v9

    move-object v1, v9

    .line 1123
    .local v1, drme:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    .line 1127
    .end local v1           #drme:Landroid/drm/mobile2/OMADRMException;
    :goto_6e
    const/4 v9, -0x1

    goto :goto_20

    .line 1056
    :cond_70
    :try_start_70
    const-string v9, "MediaScanner"

    const-string v10, "addDRmFile is failure"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_70 .. :try_end_77} :catch_69
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_77} :catch_78

    goto :goto_3d

    .line 1124
    :catch_78
    move-exception v9

    move-object v4, v9

    .line 1125
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 1070
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_7e
    :try_start_7e
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 1073
    .local v3, fileType:I
    if-eqz v3, :cond_86

    move v9, v3

    .line 1075
    goto :goto_20

    .line 1077
    :cond_86
    const-string v9, "audio/mp3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ae

    const-string v9, "audio/mpeg3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ae

    const-string v9, "audio/x-mp3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ae

    const-string v9, "audio/x-mpeg"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ae

    const-string v9, "audio/x-mpeg3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 1079
    :cond_ae
    const/4 v9, 0x1

    goto/16 :goto_20

    .line 1081
    :cond_b1
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaScanner: getFileTypes: unknown MimeType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_7e .. :try_end_c9} :catch_69
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_c9} :catch_78

    .line 1082
    const/4 v9, -0x1

    goto/16 :goto_20
.end method

.method private isMetadataSupported(I)Z
    .registers 6
    .parameter "fileType"

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x1

    .line 1574
    const-string v0, "SHW-M130L"

    const-string v1, "SHW-M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1575
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isKORMediaFileType(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    .line 1612
    :goto_16
    return v0

    .line 1579
    :cond_17
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v2, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v3, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v3, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_9b

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9e

    :cond_9b
    move v0, v2

    .line 1610
    goto/16 :goto_16

    .line 1612
    :cond_9e
    const/4 v0, 0x0

    goto/16 :goto_16
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 1685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1686
    .local v1, length:I
    if-ne p2, v1, :cond_c

    move v4, p3

    .line 1699
    :goto_b
    return v4

    .line 1688
    :cond_c
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1690
    .local v0, ch:C
    if-lt v0, v6, :cond_16

    if-le v0, v7, :cond_19

    :cond_16
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, p3

    goto :goto_b

    .line 1692
    .end local p2
    .restart local v3       #start:I
    :cond_19
    sub-int v2, v0, v6

    .line 1693
    .local v2, result:I
    :goto_1b
    if-ge v3, v1, :cond_31

    .line 1694
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1695
    if-lt v0, v6, :cond_27

    if-le v0, v7, :cond_29

    :cond_27
    move v4, v2

    goto :goto_b

    .line 1696
    :cond_29
    mul-int/lit8 v4, v2, 0xa

    sub-int v5, v0, v6

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1b

    :cond_31
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, v2

    .line 1699
    goto :goto_b
.end method

.method private scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V
    .registers 32
    .parameter "tableUri"
    .parameter "values"
    .parameter "value_count"
    .parameter "set_genre"

    .prologue
    .line 1170
    :try_start_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1174
    .local v18, genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    move-object/from16 v0, p2

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v26, v0

    .line 1175
    .local v26, uris:[Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I

    move-result v22

    .line 1176
    .local v22, insertNum:I
    move/from16 v0, v22

    move/from16 v1, p3

    if-eq v0, v1, :cond_30

    .line 1178
    const-string v4, "MediaScanner"

    const-string v5, "Pending Flush Canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v22           #insertNum:I
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :cond_2f
    :goto_2f
    return-void

    .line 1183
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v22       #insertNum:I
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_30
    const/16 v21, 0x0

    .local v21, i:I
    :goto_32
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_169

    .line 1186
    aget-object v4, p2, v21

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1187
    .local v24, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1188
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 1192
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1193
    .local v14, entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v14, :cond_66

    .line 1183
    :cond_63
    :goto_63
    add-int/lit8 v21, v21, 0x1

    goto :goto_32

    .line 1194
    :cond_66
    aget-object v4, v26, v21

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, v14, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1197
    if-eqz p4, :cond_63

    .line 1199
    aget-object v4, p2, v21

    const-string v5, "genre_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1200
    .local v15, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_87} :catch_136
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_87} :catch_15e

    .line 1202
    .local v20, genre_uri:Landroid/net/Uri;
    if-nez v20, :cond_fd

    .line 1203
    const/4 v10, 0x0

    .line 1207
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaScanner;->access$800()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "name=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1208
    if-eqz v10, :cond_b5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_141

    .line 1210
    :cond_b5
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1211
    .local v25, temp_value:Landroid/content/ContentValues;
    const-string v4, "name"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 1219
    .end local v25           #temp_value:Landroid/content/ContentValues;
    .local v19, genre_type_uri:Landroid/net/Uri;
    :goto_dd
    if-eqz v19, :cond_f8

    .line 1220
    const-string v4, "members"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f8
    .catchall {:try_start_8a .. :try_end_f8} :catchall_157

    .line 1225
    :cond_f8
    if-eqz v10, :cond_fd

    .line 1226
    :try_start_fa
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1230
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v19           #genre_type_uri:Landroid/net/Uri;
    :cond_fd
    if-eqz v20, :cond_63

    .line 1233
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1234
    .restart local v25       #temp_value:Landroid/content/ContentValues;
    const-string v4, "audio_id"

    iget-wide v5, v14, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1236
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1237
    .local v17, genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez v17, :cond_12d

    .line 1239
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .restart local v17       #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    :cond_12d
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_134
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_134} :catch_136
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_fa .. :try_end_134} :catch_15e

    goto/16 :goto_63

    .line 1267
    .end local v14           #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #genre:Ljava/lang/String;
    .end local v17           #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v20           #genre_uri:Landroid/net/Uri;
    .end local v21           #i:I
    .end local v22           #insertNum:I
    .end local v24           #key:Ljava/lang/String;
    .end local v25           #temp_value:Landroid/content/ContentValues;
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :catch_136
    move-exception v4

    move-object v11, v4

    .line 1268
    .local v11, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile_FlushPending()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1216
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v15       #genre:Ljava/lang/String;
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v20       #genre_uri:Landroid/net/Uri;
    .restart local v21       #i:I
    .restart local v22       #insertNum:I
    .restart local v24       #key:Ljava/lang/String;
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_141
    :try_start_141
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_155
    .catchall {:try_start_141 .. :try_end_155} :catchall_157

    move-result-object v19

    .restart local v19       #genre_type_uri:Landroid/net/Uri;
    goto :goto_dd

    .line 1225
    .end local v19           #genre_type_uri:Landroid/net/Uri;
    :catchall_157
    move-exception v4

    if-eqz v10, :cond_15d

    .line 1226
    :try_start_15a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_15d
    throw v4
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_15a .. :try_end_15e} :catch_136
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15a .. :try_end_15e} :catch_15e

    .line 1269
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #genre:Ljava/lang/String;
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v20           #genre_uri:Landroid/net/Uri;
    .end local v21           #i:I
    .end local v22           #insertNum:I
    .end local v24           #key:Ljava/lang/String;
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :catch_15e
    move-exception v4

    move-object v11, v4

    .line 1270
    .local v11, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MediaScanner"

    const-string v5, "UnsupportedOperationException in MediaScanner.scanFile_FlushPending()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1249
    .end local v11           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v21       #i:I
    .restart local v22       #insertNum:I
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_169
    if-eqz p4, :cond_2f

    .line 1252
    :try_start_16b
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1253
    .local v12, entries:Ljava/util/Set;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1256
    .end local p1
    .local v23, iter:Ljava/util/Iterator;
    :goto_173
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1257
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1259
    .local v13, entry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 1260
    .restart local v20       #genre_uri:Landroid/net/Uri;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1261
    .restart local v17       #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    move-object/from16 v0, p1

    check-cast v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1263
    .local v16, genre_arr:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    :try_end_1b3
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_1b3} :catch_136
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16b .. :try_end_1b3} :catch_15e

    goto :goto_173
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 8
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 2143
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2148
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2151
    :cond_29
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .registers 12

    .prologue
    const/4 v7, 0x4

    const-string v10, "duration"

    const-string v9, "artist"

    const-string v8, "album"

    const-string v6, "<unknown>"

    .line 1796
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1798
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string v3, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1801
    const-string v3, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1802
    const-string v3, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1805
    const-string v3, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_52
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v3, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8e

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_65
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string v3, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1809
    const-string v1, "0x0"

    .line 1810
    .local v1, sUnknownResolution:Ljava/lang/String;
    const-string/jumbo v3, "resolution"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v4, :cond_92

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_92

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    :goto_86
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_89
    :goto_89
    return-object v0

    .line 1805
    :cond_8a
    const-string v3, "<unknown>"

    move-object v3, v6

    goto :goto_52

    .line 1806
    :cond_8e
    const-string v3, "<unknown>"

    move-object v3, v6

    goto :goto_65

    .restart local v1       #sUnknownResolution:Ljava/lang/String;
    :cond_92
    move-object v4, v1

    .line 1810
    goto :goto_86

    .line 1813
    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_94
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_89

    .line 1815
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1816
    const-string v3, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_181

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_181

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_b4
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v3, "album_artist"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v4, :cond_186

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_186

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_c7
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string v3, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_189

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_189

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_da
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    if-eqz v4, :cond_18e

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_18e

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    :goto_ed
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_100

    .line 1828
    const-string/jumbo v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1831
    :cond_100
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1832
    .local v2, year_name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_111

    .line 1833
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1834
    :cond_111
    const-string/jumbo v3, "year_name"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x76c

    if-lt v4, v5, :cond_193

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v4, :cond_193

    if-eqz v2, :cond_193

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_193

    move-object v4, v2

    :goto_12d
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string v3, "genre_name"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_197

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_197

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    :goto_140
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    const-string v4, ".odf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 1840
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    if-lez v3, :cond_15d

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_15d

    .line 1841
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 1844
    :cond_15d
    const-string/jumbo v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1845
    const-string v3, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1846
    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_89

    .line 1816
    .end local v2           #year_name:Ljava/lang/String;
    :cond_181
    const-string v3, "<unknown>"

    move-object v3, v6

    goto/16 :goto_b4

    .line 1818
    :cond_186
    const/4 v4, 0x0

    goto/16 :goto_c7

    .line 1820
    :cond_189
    const-string v3, "<unknown>"

    move-object v3, v6

    goto/16 :goto_da

    .line 1825
    :cond_18e
    const-string v4, "<unknown>"

    move-object v4, v6

    goto/16 :goto_ed

    .line 1834
    .restart local v2       #year_name:Ljava/lang/String;
    :cond_193
    const-string v4, "<unknown>"

    move-object v4, v6

    goto :goto_12d

    .line 1835
    :cond_197
    const-string v4, "<unknown>"

    move-object v4, v6

    goto :goto_140
.end method


# virtual methods
.method public addNoMediaFolder(Ljava/lang/String;)V
    .registers 8
    .parameter "path"

    .prologue
    const-string v3, "_data LIKE ?"

    .line 2154
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2155
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2163
    .local v1, pathSpec:[Ljava/lang/String;
    :try_start_27
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2165
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_41} :catch_42

    .line 2170
    return-void

    .line 2167
    :catch_42
    move-exception v3

    move-object v0, v3

    .line 2168
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;
    .registers 26
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 904
    const/16 v6, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 905
    .local v16, lastSlash:I
    if-ltz v16, :cond_94

    add-int/lit8 v6, v16, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_94

    .line 907
    add-int/lit8 v6, v16, 0x1

    const-string v7, "._"

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 908
    const/4 v6, 0x0

    .line 1017
    :goto_26
    return-object v6

    .line 913
    :cond_27
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".jpg"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 914
    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArt_{"

    const/4 v9, 0x0

    const/16 v10, 0xa

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5a

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArt."

    const/4 v9, 0x0

    const/16 v10, 0x9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 916
    :cond_5a
    const/4 v6, 0x0

    goto :goto_26

    .line 918
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v16

    const/4 v7, 0x1

    sub-int v17, v6, v7

    .line 919
    .local v17, length:I
    const/16 v6, 0x11

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_7c

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArtSmall"

    const/4 v9, 0x0

    const/16 v10, 0xd

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_92

    :cond_7c
    const/16 v6, 0xa

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_94

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "Folder"

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 921
    :cond_92
    const/4 v6, 0x0

    goto :goto_26

    .line 926
    .end local v17           #length:I
    :cond_94
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 928
    if-eqz p2, :cond_b2

    .line 929
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    if-eqz v6, :cond_b2

    .line 931
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 934
    :cond_b2
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_d9

    .line 938
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v18

    .line 939
    .local v18, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v18, :cond_d9

    .line 940
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 941
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 948
    .end local v18           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_d9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 951
    :cond_f1
    invoke-direct/range {p0 .. p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getDrmFileType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 952
    .local v14, filetype:I
    if-lez v14, :cond_fc

    .line 954
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 960
    .end local v14           #filetype:I
    :cond_fc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    move v6, v0

    if-eqz v6, :cond_110

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_110

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 968
    :cond_110
    move-object/from16 v15, p1

    .line 969
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 970
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 972
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 973
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v5, :cond_14a

    .line 974
    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    .line 975
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :cond_14a
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 980
    iget-wide v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v12, p3, v6

    .line 981
    .local v12, delta:J
    const-wide/16 v6, 0x1

    cmp-long v6, v12, v6

    if-gtz v6, :cond_15d

    const-wide/16 v6, -0x1

    cmp-long v6, v12, v6

    if-gez v6, :cond_165

    .line 982
    :cond_15d
    move-wide/from16 v0, p3

    move-object v2, v5

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 983
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 986
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_18a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_18a

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 993
    :cond_18a
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 994
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 995
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 996
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 997
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 998
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 999
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 1000
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 1001
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 1002
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 1003
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 1004
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 1005
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 1007
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .line 1011
    const-wide/16 v6, -0x1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Time:J

    .line 1012
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    .line 1013
    const v6, 0x4479c000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    .line 1014
    const v6, 0x4479c000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    move-object v6, v5

    .line 1017
    goto/16 :goto_26
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    .registers 17
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 1621
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;
    .registers 20
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"
    .parameter "usePendingBulkInsert"

    .prologue
    .line 1634
    const/4 v10, 0x0

    .line 1637
    .local v10, result:Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 1638
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v0, :cond_75

    .line 1639
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1640
    const-string v0, "MediaScanner"

    const-string v2, "changing the path to dcf for meta Data Scanning"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1643
    const/16 p8, 0x0

    .line 1650
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_74

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_22

    if-eqz p7, :cond_74

    .line 1651
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1652
    .local v9, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_88

    const/4 v0, 0x1

    move v2, v0

    .line 1653
    .local v2, ringtones:Z
    :goto_30
    const-string v0, "/notifications/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8b

    const/4 v0, 0x1

    move v3, v0

    .line 1654
    .local v3, notifications:Z
    :goto_3a
    const-string v0, "/alarms/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8e

    const/4 v0, 0x1

    move v4, v0

    .line 1655
    .local v4, alarms:Z
    :goto_44
    const-string v0, "/podcasts/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_91

    const/4 v0, 0x1

    move v6, v0

    .line 1656
    .local v6, podcasts:Z
    :goto_4e
    const-string v0, "/music/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5e

    if-nez v2, :cond_94

    if-nez v3, :cond_94

    if-nez v4, :cond_94

    if-nez v6, :cond_94

    :cond_5e
    const/4 v0, 0x1

    move v5, v0

    .line 1659
    .local v5, music:Z
    :goto_60
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-direct {p0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isMetadataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1662
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :cond_6d
    :goto_6d
    move-object v0, p0

    move/from16 v7, p8

    .line 1672
    invoke-direct/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v10

    .line 1681
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    .end local v9           #lowpath:Ljava/lang/String;
    :cond_74
    :goto_74
    return-object v10

    .line 1647
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_75
    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, ".odf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_85
    const/16 p8, 0x0

    goto :goto_1a

    .line 1652
    .restart local v9       #lowpath:Ljava/lang/String;
    :cond_88
    const/4 v0, 0x0

    move v2, v0

    goto :goto_30

    .line 1653
    .restart local v2       #ringtones:Z
    :cond_8b
    const/4 v0, 0x0

    move v3, v0

    goto :goto_3a

    .line 1654
    .restart local v3       #notifications:Z
    :cond_8e
    const/4 v0, 0x0

    move v4, v0

    goto :goto_44

    .line 1655
    .restart local v4       #alarms:Z
    :cond_91
    const/4 v0, 0x0

    move v6, v0

    goto :goto_4e

    .line 1656
    .restart local v6       #podcasts:Z
    :cond_94
    const/4 v0, 0x0

    move v5, v0

    goto :goto_60

    .line 1664
    .restart local v5       #music:Z
    :cond_97
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9c} :catch_a0

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_6d

    .line 1676
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    .end local v9           #lowpath:Ljava/lang/String;
    :catch_a0
    move-exception v0

    move-object v8, v0

    .line 1677
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "resolution"

    .line 1703
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1707
    :cond_17
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 1775
    :cond_19
    :goto_19
    return-void

    .line 1708
    :cond_1a
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1709
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_19

    .line 1710
    :cond_31
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1711
    :cond_41
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_19

    .line 1712
    :cond_48
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1713
    :cond_58
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_19

    .line 1714
    :cond_5f
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1715
    :cond_6f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_19

    .line 1716
    :cond_76
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1718
    :cond_86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a9

    .line 1719
    const/4 v1, -0x1

    .line 1720
    .local v1, genreCode:I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1721
    .local v0, ch:C
    const/16 v3, 0x28

    if-ne v0, v3, :cond_b1

    .line 1722
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 1726
    :cond_9a
    :goto_9a
    if-ltz v1, :cond_be

    invoke-static {}, Landroid/media/MediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_be

    .line 1727
    invoke-static {}, Landroid/media/MediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, v1

    .line 1735
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_a9
    :goto_a9
    #calls: Landroid/media/MediaScanner;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Landroid/media/MediaScanner;->access$2200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1738
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_19

    .line 1723
    .restart local v0       #ch:C
    .restart local v1       #genreCode:I
    :cond_b1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_9a

    const/16 v3, 0x39

    if-gt v0, v3, :cond_9a

    .line 1724
    invoke-direct {p0, p2, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    goto :goto_9a

    .line 1728
    :cond_be
    const/16 v3, 0xff

    if-ne v1, v3, :cond_a9

    .line 1730
    const/4 p2, 0x0

    goto :goto_a9

    .line 1739
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_c4
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d6

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 1740
    :cond_d6
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_19

    .line 1741
    :cond_de
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f0

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 1744
    :cond_f0
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 1745
    .local v2, num:I
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_19

    .line 1746
    .end local v2           #num:I
    :cond_ff
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_119

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_119

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 1750
    :cond_119
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 1751
    .restart local v2       #num:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_19

    .line 1752
    .end local v2           #num:I
    :cond_128
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 1753
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_19

    .line 1754
    :cond_138
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14a

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 1755
    :cond_14a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_19

    .line 1757
    :cond_152
    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_164

    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 1758
    :cond_164
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_19

    .line 1760
    :cond_16c
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 1761
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_19

    .line 1764
    :cond_17c
    const-string v3, "exif_time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 1765
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Time:J

    goto/16 :goto_19

    .line 1766
    :cond_18c
    const-string v3, "exif_ori"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 1767
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    goto/16 :goto_19

    .line 1768
    :cond_19c
    const-string v3, "exif_gps_lat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 1769
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    goto/16 :goto_19

    .line 1770
    :cond_1ac
    const-string v3, "exif_gps_lng"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1771
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    goto/16 :goto_19
.end method

.method public scanFile(Ljava/lang/String;JJ)V
    .registers 15
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1141
    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v8, v7

    .line 1142
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    .line 1147
    :goto_1a
    return-void

    .line 1144
    :cond_1b
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    goto :goto_1a
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    const/4 v7, 0x0

    .line 1155
    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v8, v7

    .line 1156
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    .line 1161
    :goto_1a
    return-void

    .line 1158
    :cond_1b
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    goto :goto_1a
.end method

.method public scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    .registers 12
    .parameter "mediaKind"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v7, ")"

    const-string v4, "MediaScanner"

    .line 1434
    const/16 v0, 0x1f4

    .line 1435
    .local v0, PENDING_MAX:I
    if-ne p1, v8, :cond_9f

    .line 1436
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 1438
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Audio Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1440
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1444
    :cond_3d
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1445
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1408(Landroid/media/MediaScanner;)I

    .line 1448
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_9e

    .line 1450
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8c
    if-ge v1, v0, :cond_99

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 1456
    :cond_99
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1508
    .end local v1           #i:I
    :cond_9e
    :goto_9e
    return-void

    .line 1459
    :cond_9f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_137

    .line 1461
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_d4

    .line 1463
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Image Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1465
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    .line 1469
    :cond_d4
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1470
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1608(Landroid/media/MediaScanner;)I

    .line 1473
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_9e

    .line 1475
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1479
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_123
    if-ge v1, v0, :cond_130

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_123

    .line 1480
    :cond_130
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    goto/16 :goto_9e

    .line 1483
    .end local v1           #i:I
    :cond_137
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9e

    .line 1485
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_16c

    .line 1487
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Video Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1489
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    .line 1493
    :cond_16c
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1494
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1808(Landroid/media/MediaScanner;)I

    .line 1497
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_9e

    .line 1499
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1503
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1bb
    if-ge v1, v0, :cond_1c8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bb

    .line 1504
    :cond_1c8
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    goto/16 :goto_9e
.end method

.method public scanFile_Special(Ljava/lang/String;JJ)V
    .registers 36
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 1276
    const/16 v22, 0x0

    .line 1279
    .local v22, result:Landroid/net/Uri;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    :try_start_b
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v5

    .line 1280
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    move v4, v0

    if-eqz v4, :cond_2f

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 1282
    const-string v4, "MediaScanner"

    const-string v6, "changing the path to dcf for meta Data Scanning"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1284
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1288
    :cond_2f
    if-eqz v5, :cond_a2

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v4, :cond_a2

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p0

    #calls: Landroid/media/MediaScanner;->processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1294
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 1295
    .local v20, lowpath:Ljava/lang/String;
    const-string v4, "/ringtones/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a3

    const/4 v4, 0x1

    move v6, v4

    .line 1296
    .local v6, ringtones:Z
    :goto_55
    const-string v4, "/notifications/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a6

    const/4 v4, 0x1

    move v7, v4

    .line 1297
    .local v7, notifications:Z
    :goto_62
    const-string v4, "/alarms/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a9

    const/4 v4, 0x1

    move v8, v4

    .line 1298
    .local v8, alarms:Z
    :goto_6f
    const-string v4, "/podcasts/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_ac

    const/4 v4, 0x1

    move v10, v4

    .line 1299
    .local v10, podcasts:Z
    :goto_7c
    const-string v4, "/music/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_8f

    if-nez v6, :cond_af

    if-nez v7, :cond_af

    if-nez v8, :cond_af

    if-nez v10, :cond_af

    :cond_8f
    const/4 v4, 0x1

    move v9, v4

    .line 1301
    .local v9, music:Z
    :goto_91
    move-object v0, v5

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v4, v26, v28

    if-eqz v4, :cond_b2

    .line 1308
    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZ)Landroid/net/Uri;

    .line 1428
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v6           #ringtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v20           #lowpath:Ljava/lang/String;
    :cond_a2
    :goto_a2
    return-void

    .line 1295
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v20       #lowpath:Ljava/lang/String;
    :cond_a3
    const/4 v4, 0x0

    move v6, v4

    goto :goto_55

    .line 1296
    .restart local v6       #ringtones:Z
    :cond_a6
    const/4 v4, 0x0

    move v7, v4

    goto :goto_62

    .line 1297
    .restart local v7       #notifications:Z
    :cond_a9
    const/4 v4, 0x0

    move v8, v4

    goto :goto_6f

    .line 1298
    .restart local v8       #alarms:Z
    :cond_ac
    const/4 v4, 0x0

    move v10, v4

    goto :goto_7c

    .line 1299
    .restart local v10       #podcasts:Z
    :cond_af
    const/4 v4, 0x0

    move v9, v4

    goto :goto_91

    .line 1316
    .restart local v9       #music:Z
    :cond_b2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 1317
    .local v15, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 1318
    .local v17, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 1319
    .local v16, isImage:Z
    if-eqz v17, :cond_233

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 1331
    :goto_da
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f6

    .line 1332
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1336
    :cond_f6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 1339
    .local v25, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1340
    .local v24, title:Ljava/lang/String;
    if-eqz v24, :cond_110

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_157

    .line 1341
    :cond_110
    const-string v4, "_data"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1343
    const/16 v4, 0x2f

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1344
    .local v19, lastSlash:I
    if-ltz v19, :cond_137

    .line 1345
    add-int/lit8 v19, v19, 0x1

    .line 1346
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_137

    .line 1347
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 1351
    :cond_137
    const/16 v4, 0x2e

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 1352
    .local v18, lastDot:I
    if-lez v18, :cond_14c

    .line 1353
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1355
    :cond_14c
    const-string/jumbo v4, "title"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    .end local v18           #lastDot:I
    .end local v19           #lastSlash:I
    :cond_157
    const-string v4, "album"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1358
    .local v12, album:Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 1359
    const-string v4, "_data"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1361
    const/16 v4, 0x2f

    invoke-virtual {v12, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1362
    .restart local v19       #lastSlash:I
    if-ltz v19, :cond_19f

    .line 1363
    const/16 v21, 0x0

    .line 1365
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .local v21, previousSlash:I
    :goto_17b
    const/16 v4, 0x2f

    add-int/lit8 v5, v21, 0x1

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 1366
    .local v14, idx:I
    if-ltz v14, :cond_18a

    move v0, v14

    move/from16 v1, v19

    if-lt v0, v1, :cond_251

    .line 1371
    :cond_18a
    if-eqz v21, :cond_19f

    .line 1372
    add-int/lit8 v4, v21, 0x1

    move-object v0, v12

    move v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1373
    const-string v4, "album"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    .end local v14           #idx:I
    .end local v19           #lastSlash:I
    .end local v21           #previousSlash:I
    :cond_19f
    if-eqz v15, :cond_255

    .line 1380
    const-string v4, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1381
    const-string v4, "is_notification"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1382
    const-string v4, "is_alarm"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1383
    const-string v4, "is_music"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1384
    const-string v4, "is_podcast"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1387
    const/16 v23, 0x0

    .line 1388
    .local v23, sound:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x11

    if-lt v4, v5, :cond_1f6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x13

    if-le v4, v5, :cond_20e

    :cond_1f6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_20e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_20e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_210

    .line 1391
    :cond_20e
    const/16 v23, 0x1

    .line 1393
    :cond_210
    const-string v4, "is_sound"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1400
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    :try_end_226
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_226} :catch_228

    goto/16 :goto_a2

    .line 1425
    .end local v6           #ringtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v12           #album:Ljava/lang/String;
    .end local v15           #isAudio:Z
    .end local v16           #isImage:Z
    .end local v17           #isVideo:Z
    .end local v20           #lowpath:Ljava/lang/String;
    .end local v23           #sound:Z
    .end local v24           #title:Ljava/lang/String;
    .end local v25           #values:Landroid/content/ContentValues;
    :catch_228
    move-exception v4

    move-object v13, v4

    .line 1426
    .local v13, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile_Special()"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a2

    .line 1321
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v6       #ringtones:Z
    .restart local v7       #notifications:Z
    .restart local v8       #alarms:Z
    .restart local v9       #music:Z
    .restart local v10       #podcasts:Z
    .restart local v15       #isAudio:Z
    .restart local v16       #isImage:Z
    .restart local v17       #isVideo:Z
    .restart local v20       #lowpath:Ljava/lang/String;
    :cond_233
    if-eqz v16, :cond_242

    .line 1322
    :try_start_235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    goto/16 :goto_da

    .line 1323
    :cond_242
    if-eqz v15, :cond_a2

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    goto/16 :goto_da

    .line 1369
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v12       #album:Ljava/lang/String;
    .restart local v14       #idx:I
    .restart local v19       #lastSlash:I
    .restart local v21       #previousSlash:I
    .restart local v24       #title:Ljava/lang/String;
    .restart local v25       #values:Landroid/content/ContentValues;
    :cond_251
    move/from16 v21, v14

    .line 1370
    goto/16 :goto_17b

    .line 1404
    .end local v14           #idx:I
    .end local v19           #lastSlash:I
    .end local v21           #previousSlash:I
    :cond_255
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_a2

    .line 1405
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    move v4, v0

    move v0, v4

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f380000000000L

    cmpl-double v4, v26, v28

    if-eqz v4, :cond_294

    .line 1406
    const-string v4, "latitude"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1407
    const-string v4, "longitude"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1413
    :cond_294
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2af

    .line 1414
    const-string/jumbo v4, "orientation"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    :cond_2af
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    :try_end_2b8
    .catch Landroid/os/RemoteException; {:try_start_235 .. :try_end_2b8} :catch_228

    goto/16 :goto_a2
.end method

.method public scanFile_SpecialEnd(I)V
    .registers 10
    .parameter "option"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v7, "MediaScanner"

    .line 1513
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1514
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush IMAGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-eq p1, v5, :cond_42

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1520
    :cond_42
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1521
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    .line 1523
    :cond_4c
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 1524
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    if-eq p1, v5, :cond_8a

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1530
    :cond_8a
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1531
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1533
    :cond_94
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 1534
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-eq p1, v5, :cond_d1

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1540
    :cond_d1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1541
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    .line 1543
    :cond_db
    return-void
.end method

.method public setExternalSDCardRemovalFlag(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 2175
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z
    invoke-static {v1, p1}, Landroid/media/MediaScanner;->access$3302(Landroid/media/MediaScanner;Z)Z

    .line 2176
    if-eqz p1, :cond_17

    .line 2177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MEDIA_SCANNER_EXTERNAL_SD_CARD_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2178
    .local v0, sdCardRemovedIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2180
    .end local v0           #sdCardRemovedIntent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 4
    .parameter "mimeType"

    .prologue
    .line 1778
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1787
    :goto_13
    return-void

    .line 1785
    :cond_14
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1786
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_13
.end method

.method public setProgressStatus(III)V
    .registers 12
    .parameter "device"
    .parameter "total"
    .parameter "curr"

    .prologue
    .line 1548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1551
    .local v0, currTick:J
    if-eqz p3, :cond_1a

    if-eq p3, p2, :cond_1a

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1a

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_41

    .line 1557
    :cond_1a
    const-string v4, "file://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1558
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1559
    .local v2, scanProgress:Landroid/content/Intent;
    const-string v4, "ScanType"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    const-string v4, "ScanTotal"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1561
    const-string v4, "ScanDone"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1562
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1565
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    .line 1567
    .end local v2           #scanProgress:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_41
    return-void
.end method
