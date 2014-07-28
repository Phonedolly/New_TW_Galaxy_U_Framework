.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final APP_PACKAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field private static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field private static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_XMP3:Ljava/lang/String; = "audio/x-mp3"

.field private static final AUDIO_XMPEG:Ljava/lang/String; = "audio/x-mpeg"

.field private static final AUDIO_XMPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field private static final DATE_MODIFIED_APP_PACKAGE_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_DOC_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEOCALL_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEO_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DOC_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTERNAL_SD_ROOT:Ljava/lang/String; = null

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static ID3_GENRES:[Ljava/lang/String; = null

.field private static ID3_TO_SEC_GENRES:[Ljava/lang/String; = null

.field private static final ID_APP_PACKAGE_COLUMN_INDEX:I = 0x0

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_DOC_COLUMN_INDEX:I = 0x0

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEOCALL_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEO_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final INTERNAL_SD_ROOT:Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_APP_PACKAGE_COLUMN_INDEX:I = 0x1

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_DOC_COLUMN_INDEX:I = 0x1

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEOCALL_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEO_COLUMN_INDEX:I = 0x1

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VIDEOCALL_IMAGES_PROJECTION:[Ljava/lang/String;

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field public static generation:I

.field private static final mID3ToSecGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppPackageUri:Landroid/net/Uri;

.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDocUri:Landroid/net/Uri;

.field private mExternalSDCardRemoval:Z

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneration:I

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGenresUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInsertPendingCount_AUDIO:I

.field private mInsertPendingCount_IMAGE:I

.field private mInsertPendingCount_VIDEO:I

.field private mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

.field private mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

.field private mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoCallImagesUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "Dance"

    const-string v4, "Others"

    const-string v3, "Rock"

    .line 138
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 146
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    .line 147
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 188
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->DOC_PROJECTION:[Ljava/lang/String;

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->APP_PACKAGE_PROJECTION:[Ljava/lang/String;

    .line 211
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->VIDEOCALL_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 222
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 228
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 398
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v6

    const-string v1, "Classic Rock"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "and further - Unknown"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 550
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v6

    const-string v1, "Rock"

    aput-object v3, v0, v7

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x13

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x1a

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x22

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x25

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x37

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x40

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x45

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x46

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x52

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x55

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x58

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x64

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x71

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x79

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x81

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x82

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x87

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x88

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x91

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    .line 702
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    .line 821
    sput v6, Landroid/media/MediaScanner;->generation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 850
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 827
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 828
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 829
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 830
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    .line 835
    sget v0, Landroid/media/MediaScanner;->generation:I

    iput v0, p0, Landroid/media/MediaScanner;->mGeneration:I

    .line 838
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 839
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/MediaScanner;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return p1
.end method

.method static synthetic access$1408(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return v0
.end method

.method static synthetic access$1602(Landroid/media/MediaScanner;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return p1
.end method

.method static synthetic access$1608(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return v0
.end method

.method static synthetic access$1802(Landroid/media/MediaScanner;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return p1
.end method

.method static synthetic access$1808(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/media/MediaScanner;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDocUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mGeneration:I

    return v0
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 22
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 3019
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3020
    .local v8, entryLength:I
    :goto_4
    if-lez v8, :cond_19

    const/4 v13, 0x1

    sub-int v13, v8, v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_19

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 3023
    :cond_19
    const/4 v13, 0x3

    if-ge v8, v13, :cond_1e

    const/4 v13, 0x0

    .line 3076
    :goto_1d
    return v13

    .line 3024
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2d

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3028
    :cond_2d
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 3029
    .local v6, ch1:C
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_57

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_ab

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_ab

    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_ab

    :cond_57
    const/4 v13, 0x1

    move v9, v13

    .line 3032
    .local v9, fullPath:Z
    :goto_59
    if-nez v9, :cond_72

    .line 3033
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3038
    :cond_72
    const/4 v3, 0x0

    .line 3041
    .local v3, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v4, 0x0

    .line 3043
    .local v4, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3044
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_81
    :goto_81
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    .line 3045
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 3046
    .local v5, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v12, v5, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 3048
    .local v12, path:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 3049
    move-object v3, v5

    .line 3061
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v12           #path:Ljava/lang/String;
    :cond_99
    if-eqz v3, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v13, v0

    iget-object v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bc

    .line 3062
    :cond_a8
    const/4 v13, 0x0

    goto/16 :goto_1d

    .line 3029
    .end local v3           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v4           #bestMatchLength:I
    .end local v9           #fullPath:Z
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_ab
    const/4 v13, 0x0

    move v9, v13

    goto :goto_59

    .line 3053
    .restart local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v4       #bestMatchLength:I
    .restart local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v9       #fullPath:Z
    .restart local v10       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v12       #path:Ljava/lang/String;
    :cond_ae
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3054
    .local v11, matchLength:I
    if-le v11, v4, :cond_81

    .line 3055
    move-object v3, v5

    .line 3056
    move v4, v11

    goto :goto_81

    .line 3067
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v11           #matchLength:I
    .end local v12           #path:Ljava/lang/String;
    :cond_bc
    :try_start_bc
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 3068
    const-string/jumbo v13, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3069
    const-string v13, "audio_id"

    iget-wide v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_e9} :catch_ec

    .line 3076
    const/4 v13, 0x1

    goto/16 :goto_1d

    .line 3071
    :catch_ec
    move-exception v13

    move-object v7, v13

    .line 3072
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "MediaScanner"

    const-string v14, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3073
    const/4 v13, 0x0

    goto/16 :goto_1d
.end method

.method private static getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id3Genres"

    .prologue
    .line 714
    move-object v0, p0

    .line 716
    .local v0, secGenre:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 717
    const-string v1, "<unknown>"

    .line 729
    :goto_5
    return-object v1

    .line 719
    :cond_6
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 721
    invoke-static {}, Landroid/media/MediaScanner;->initID3toSecGenreHashMap()V

    .line 724
    :cond_11
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 726
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #secGenre:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #secGenre:Ljava/lang/String;
    :cond_29
    move-object v1, v0

    .line 729
    goto :goto_5
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 2520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 2521
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2522
    const/4 v1, 0x1

    .line 2525
    :goto_d
    return v1

    .line 2520
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2525
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private static initID3toSecGenreHashMap()V
    .registers 4

    .prologue
    .line 706
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 708
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/MediaScanner;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_1a
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 2838
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2840
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 2841
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 2842
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 2843
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 2845
    invoke-static {p1}, Landroid/provider/MediaStore$Doc$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDocUri:Landroid/net/Uri;

    .line 2846
    invoke-static {p1}, Landroid/provider/MediaStore$AppPackage$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    .line 2847
    invoke-static {p1}, Landroid/provider/MediaStore$VideoCallImages$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    .line 2850
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 2852
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 2853
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 2854
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 2855
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    .line 2856
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 2858
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2859
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 2862
    :cond_60
    return-void
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 2990
    const/4 v10, 0x0

    .line 2991
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2992
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2994
    .local v9, end2:I
    :goto_9
    if-lez v8, :cond_43

    if-lez v9, :cond_43

    .line 2995
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2996
    .local v11, slash1:I
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2997
    .local v12, slash2:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2998
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2999
    .local v7, backSlash2:I
    if-le v11, v6, :cond_44

    move v2, v11

    .line 3000
    .local v2, start1:I
    :goto_34
    if-le v12, v7, :cond_46

    move v4, v12

    .line 3001
    .local v4, start2:I
    :goto_37
    if-gez v2, :cond_48

    const/4 v2, 0x0

    .line 3002
    :goto_3a
    if-gez v4, :cond_4b

    const/4 v4, 0x0

    .line 3003
    :goto_3d
    sub-int v5, v8, v2

    .line 3004
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4e

    .line 3012
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_43
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_44
    move v2, v6

    .line 2999
    goto :goto_34

    .restart local v2       #start1:I
    :cond_46
    move v4, v7

    .line 3000
    goto :goto_37

    .line 3001
    .restart local v4       #start2:I
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 3002
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 3005
    .restart local v5       #length:I
    :cond_4e
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3006
    add-int/lit8 v10, v10, 0x1

    .line 3007
    const/4 v0, 0x1

    sub-int v8, v2, v0

    .line 3008
    const/4 v0, 0x1

    sub-int v9, v4, v0

    .line 3010
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 23
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2661
    const-string v17, "MediaScanner"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "postscan enter: directories - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    const/4 v5, 0x0

    .line 2671
    .local v5, bIsSkipExternalSD:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2672
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    const/4 v13, 0x0

    .line 2673
    .local v13, needScanThumbnails:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3d

    .line 2674
    const-string v17, "MediaScanner"

    const-string v18, "mExternalSDCardRemoval is true. set bIsSkipExternalSD true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v5, 0x1

    .line 2678
    :cond_3d
    const/4 v6, 0x0

    .line 2679
    .local v6, dbAccessor:Landroid/content/IContentProviderDBAccess;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    move/from16 v17, v0

    if-eqz v17, :cond_53

    .line 2680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v6, v0

    .end local v6           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    check-cast v6, Landroid/content/IContentProviderDBAccess;

    .line 2683
    .restart local v6       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    :cond_53
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2684
    .local v11, mFileToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2687
    if-eqz v6, :cond_71

    .line 2688
    :try_start_5d
    const-string v17, "external"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 2689
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v6

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2692
    :cond_71
    const-string v17, "MediaScanner"

    const-string/jumbo v18, "start checking FileCacheEntry"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_79
    :goto_79
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b0

    .line 2696
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2697
    .local v7, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v14, v7, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 2703
    .local v14, path:Ljava/lang/String;
    if-nez v5, :cond_128

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move/from16 v17, v0

    sget v18, Landroid/media/MediaScanner;->generation:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_128

    .line 2704
    sget-object v17, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_127

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_127

    .line 2805
    .end local v7           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v14           #path:Ljava/lang/String;
    :cond_b0
    const-string v17, "MediaScanner"

    const-string v18, "end checking FileCacheEntry"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    if-eqz v6, :cond_bc

    .line 2807
    invoke-interface {v6}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V
    :try_end_bc
    .catchall {:try_start_5d .. :try_end_bc} :catchall_1c6

    .line 2810
    :cond_bc
    if-eqz v6, :cond_cd

    .line 2811
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v6

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2812
    invoke-interface {v6}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 2819
    :cond_cd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d8

    .line 2820
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 2823
    :cond_d8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_e2

    if-eqz v13, :cond_fe

    :cond_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const-string v18, "external"

    invoke-static/range {v18 .. v18}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_fe

    .line 2824
    const-string v17, "MediaScanner"

    const-string v18, "call pruneDeadThumbnailFils()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 2829
    :cond_fe
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 2830
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2831
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2832
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2834
    const-string v17, "MediaScanner"

    const-string/jumbo v18, "postscan return"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    return-void

    .line 2707
    .restart local v7       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v14       #path:Ljava/lang/String;
    :cond_127
    const/4 v5, 0x1

    .line 2712
    :cond_128
    if-eqz v5, :cond_135

    :try_start_12a
    sget-object v17, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_79

    .line 2717
    :cond_135
    const-string v17, "/data/LGTContents/bell"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_79

    .line 2726
    const/4 v8, 0x0

    .line 2728
    .local v8, fileMissing:Z
    move-object v0, v7

    iget-boolean v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    move/from16 v17, v0

    if-nez v17, :cond_175

    .line 2729
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e2

    .line 2738
    invoke-static {v14}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 2739
    .local v12, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v12, :cond_1d9

    const/16 v17, 0x0

    move/from16 v9, v17

    .line 2740
    .local v9, fileType:I
    :goto_15d
    sget-object v17, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_174

    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z

    move-result v17

    if-nez v17, :cond_174

    invoke-static {v9}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v17

    if-nez v17, :cond_175

    .line 2743
    :cond_174
    const/4 v8, 0x1

    .line 2758
    .end local v9           #fileType:I
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_175
    :goto_175
    if-eqz v8, :cond_79

    .line 2763
    invoke-static {v14}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 2764
    .restart local v12       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v12, :cond_1ef

    const/16 v17, 0x0

    move/from16 v9, v17

    .line 2766
    .restart local v9       #fileType:I
    :goto_181
    invoke-static {v9}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v17

    if-eqz v17, :cond_1f7

    .line 2767
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2768
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "_data"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    const-string v17, "date_modified"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_12a .. :try_end_1c4} :catchall_1c6

    goto/16 :goto_79

    .line 2810
    .end local v7           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v8           #fileMissing:Z
    .end local v9           #fileType:I
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v14           #path:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_1c6
    move-exception v17

    if-eqz v6, :cond_1d8

    .line 2811
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2812
    invoke-interface {v6}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    :cond_1d8
    throw v17

    .line 2739
    .restart local v7       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v8       #fileMissing:Z
    .restart local v12       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v14       #path:Ljava/lang/String;
    :cond_1d9
    :try_start_1d9
    move-object v0, v12

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    move/from16 v9, v17

    goto/16 :goto_15d

    .line 2751
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_1e2
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2752
    .local v15, testFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_175

    .line 2753
    const/4 v8, 0x1

    goto :goto_175

    .line 2764
    .end local v15           #testFile:Ljava/io/File;
    .restart local v12       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_1ef
    move-object v0, v12

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    move/from16 v9, v17

    goto :goto_181

    .line 2774
    .restart local v9       #fileType:I
    :cond_1f7
    invoke-static {v9}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v17

    if-eqz v17, :cond_21d

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2777
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_79

    .line 2778
    :cond_21d
    invoke-static {v9}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v17

    if-eqz v17, :cond_241

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2785
    const/4 v13, 0x1

    goto/16 :goto_79

    .line 2791
    :cond_241
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2792
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v17, "_data"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string v17, "date_modified"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2798
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_29b
    .catchall {:try_start_1d9 .. :try_end_29b} :catchall_1c6

    goto/16 :goto_79
.end method

.method private prescan(Ljava/lang/String;)V
    .registers 33
    .parameter "Path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2188
    const/16 v21, 0x0

    .line 2189
    .local v21, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2190
    .local v6, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2193
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v23, 0x0

    .line 2197
    .local v23, isFile:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    if-nez v3, :cond_b0

    .line 2198
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2202
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    if-nez v3, :cond_ba

    .line 2203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2211
    :goto_28
    if-eqz p1, :cond_45

    .line 2212
    :try_start_2a
    new-instance v3, Ljava/io/File;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v23

    .line 2213
    if-eqz v23, :cond_c4

    .line 2214
    const-string v6, "_data=?"

    .line 2215
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v3, 0x0

    aput-object p1, v30, v3

    .end local v7           #selectionArgs:[Ljava/lang/String;
    .local v30, selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v30

    .line 2220
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    :cond_45
    :goto_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catchall {:try_start_2a .. :try_end_55} :catchall_a9

    move-result-object v21

    .line 2222
    if-eqz v21, :cond_fb

    .line 2224
    :cond_58
    :goto_58
    :try_start_58
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 2225
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2226
    .local v10, rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2227
    .local v12, path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2232
    .local v13, lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2233
    move-object/from16 v24, v12

    .line 2234
    .local v24, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_8b

    .line 2235
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2237
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catchall {:try_start_58 .. :try_end_a1} :catchall_a2

    goto :goto_58

    .line 2242
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_a2
    move-exception v3

    :try_start_a3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2243
    const/16 v21, 0x0

    throw v3
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_a9

    .line 2511
    :catchall_a9
    move-exception v3

    if-eqz v21, :cond_af

    .line 2512
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_af
    throw v3

    .line 2200
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_17

    .line 2205
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_28

    .line 2217
    :cond_c4
    :try_start_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f3

    const-string v4, ""

    :goto_e3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_45

    :cond_f3
    const-string v4, "/"

    goto :goto_e3

    .line 2242
    :cond_f6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2243
    const/16 v21, 0x0

    .line 2248
    :cond_fb
    if-eqz p1, :cond_197

    .line 2249
    if-eqz v23, :cond_165

    .line 2250
    const-string v6, "_data=?"

    .line 2257
    :goto_101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_111
    .catchall {:try_start_c4 .. :try_end_111} :catchall_a9

    move-result-object v21

    .line 2259
    if-eqz v21, :cond_19f

    .line 2261
    :cond_114
    :goto_114
    :try_start_114
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 2262
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2263
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2264
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2269
    .restart local v13       #lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 2270
    move-object/from16 v24, v12

    .line 2271
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_147

    .line 2272
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2274
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15d
    .catchall {:try_start_114 .. :try_end_15d} :catchall_15e

    goto :goto_114

    .line 2279
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_15e
    move-exception v3

    :try_start_15f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2280
    const/16 v21, 0x0

    throw v3

    .line 2252
    :cond_165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_194

    const-string v4, ""

    :goto_184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_101

    :cond_194
    const-string v4, "/"

    goto :goto_184

    .line 2255
    :cond_197
    const/4 v6, 0x0

    goto/16 :goto_101

    .line 2279
    :cond_19a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2280
    const/16 v21, 0x0

    .line 2285
    :cond_19f
    if-eqz p1, :cond_27d

    .line 2286
    if-eqz v23, :cond_24b

    .line 2287
    const-string v6, "_data=?"

    .line 2294
    :goto_1a5
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1bb
    .catchall {:try_start_15f .. :try_end_1bb} :catchall_a9

    move-result-object v21

    .line 2297
    if-eqz v21, :cond_30f

    .line 2323
    const/16 v25, 0x0

    .line 2324
    .local v25, mDbEntryToDelete:[J
    const/16 v28, 0x0

    .line 2326
    .local v28, numDbEntryToDelete:I
    :try_start_1c2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move v3, v0

    move v0, v3

    new-array v0, v0, [J

    move-object/from16 v25, v0
    :try_end_1d5
    .catchall {:try_start_1c2 .. :try_end_1d5} :catchall_285

    move/from16 v29, v28

    .line 2328
    .end local v28           #numDbEntryToDelete:I
    .local v29, numDbEntryToDelete:I
    :goto_1d7
    :try_start_1d7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 2329
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2330
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2331
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2335
    .restart local v13       #lastModified:J
    const/4 v3, 0x3

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 2336
    .local v26, magic:J
    if-nez v23, :cond_21b

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-nez v3, :cond_21b

    const-string v3, "internal"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_280

    .line 2340
    :cond_21b
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50d

    .line 2341
    move-object/from16 v24, v12

    .line 2342
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_230

    .line 2343
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2345
    :cond_230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_246
    .catchall {:try_start_1d7 .. :try_end_246} :catchall_508

    move/from16 v28, v29

    .end local v24           #key:Ljava/lang/String;
    .end local v29           #numDbEntryToDelete:I
    .restart local v28       #numDbEntryToDelete:I
    :goto_248
    move/from16 v29, v28

    .line 2353
    .end local v28           #numDbEntryToDelete:I
    .restart local v29       #numDbEntryToDelete:I
    goto :goto_1d7

    .line 2289
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v25           #mDbEntryToDelete:[J
    .end local v26           #magic:J
    .end local v29           #numDbEntryToDelete:I
    :cond_24b
    :try_start_24b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27a

    const-string v4, ""

    :goto_26a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1a5

    :cond_27a
    const-string v4, "/"
    :try_end_27c
    .catchall {:try_start_24b .. :try_end_27c} :catchall_a9

    goto :goto_26a

    .line 2292
    :cond_27d
    const/4 v6, 0x0

    goto/16 :goto_1a5

    .line 2351
    .restart local v10       #rowId:J
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #lastModified:J
    .restart local v25       #mDbEntryToDelete:[J
    .restart local v26       #magic:J
    .restart local v29       #numDbEntryToDelete:I
    :cond_280
    add-int/lit8 v28, v29, 0x1

    .end local v29           #numDbEntryToDelete:I
    .restart local v28       #numDbEntryToDelete:I
    :try_start_282
    aput-wide v10, v25, v29
    :try_end_284
    .catchall {:try_start_282 .. :try_end_284} :catchall_285

    goto :goto_248

    .line 2358
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v26           #magic:J
    :catchall_285
    move-exception v3

    :goto_286
    :try_start_286
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2359
    const/16 v21, 0x0

    throw v3
    :try_end_28c
    .catchall {:try_start_286 .. :try_end_28c} :catchall_a9

    .line 2354
    .end local v28           #numDbEntryToDelete:I
    .restart local v29       #numDbEntryToDelete:I
    :cond_28c
    if-lez v29, :cond_2a9

    :try_start_28e
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Be careful if the code ends up here!!!  mDbEntryToDelete : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a9
    .catchall {:try_start_28e .. :try_end_2a9} :catchall_508

    .line 2358
    :cond_2a9
    :try_start_2a9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2359
    const/16 v21, 0x0

    .line 2363
    if-lez v29, :cond_30f

    .line 2364
    const/16 v22, 0x0

    .line 2365
    .local v22, dbAccessor:Landroid/content/IContentProviderDBAccess;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    instance-of v3, v3, Landroid/content/IContentProviderDBAccess;

    if-eqz v3, :cond_2c3

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v22, v0

    .end local v22           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    check-cast v22, Landroid/content/IContentProviderDBAccess;
    :try_end_2c3
    .catchall {:try_start_2a9 .. :try_end_2c3} :catchall_a9

    .line 2369
    .restart local v22       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    :cond_2c3
    if-eqz v22, :cond_30f

    .line 2371
    :try_start_2c5
    const-string v3, "external"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 2372
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V
    :try_end_2d6
    .catchall {:try_start_2c5 .. :try_end_2d6} :catchall_503

    move/from16 v28, v29

    .line 2373
    .end local v29           #numDbEntryToDelete:I
    .restart local v28       #numDbEntryToDelete:I
    :goto_2d8
    if-lez v28, :cond_300

    .line 2374
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    add-int/lit8 v28, v28, -0x1

    aget-wide v8, v25, v28

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v4, v5, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2f1
    .catchall {:try_start_2da .. :try_end_2f1} :catchall_2f2

    goto :goto_2d8

    .line 2378
    :catchall_2f2
    move-exception v3

    :goto_2f3
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_2f5
    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2379
    invoke-interface/range {v22 .. v22}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    throw v3
    :try_end_300
    .catchall {:try_start_2f5 .. :try_end_300} :catchall_a9

    .line 2376
    :cond_300
    :try_start_300
    invoke-interface/range {v22 .. v22}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V
    :try_end_303
    .catchall {:try_start_300 .. :try_end_303} :catchall_2f2

    .line 2378
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_305
    move-object/from16 v0, v22

    move v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2379
    invoke-interface/range {v22 .. v22}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 2388
    .end local v22           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .end local v25           #mDbEntryToDelete:[J
    .end local v28           #numDbEntryToDelete:I
    :cond_30f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move v3, v0

    if-eqz v3, :cond_3ba

    .line 2390
    if-eqz p1, :cond_3b2

    .line 2391
    if-eqz v23, :cond_380

    .line 2392
    const-string v6, "_data=?"

    .line 2399
    :goto_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32c
    .catchall {:try_start_305 .. :try_end_32c} :catchall_a9

    move-result-object v21

    .line 2401
    if-eqz v21, :cond_3ba

    .line 2403
    :cond_32f
    :goto_32f
    :try_start_32f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3b5

    .line 2404
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2406
    .restart local v12       #path:Ljava/lang/String;
    if-eqz v12, :cond_32f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_32f

    .line 2407
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2408
    .restart local v10       #rowId:J
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2410
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2411
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_362

    .line 2412
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2414
    :cond_362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_378
    .catchall {:try_start_32f .. :try_end_378} :catchall_379

    goto :goto_32f

    .line 2419
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_379
    move-exception v3

    :try_start_37a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2420
    const/16 v21, 0x0

    throw v3

    .line 2394
    :cond_380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3af

    const-string v4, ""

    :goto_39f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_31c

    :cond_3af
    const-string v4, "/"

    goto :goto_39f

    .line 2397
    :cond_3b2
    const/4 v6, 0x0

    goto/16 :goto_31c

    .line 2419
    :cond_3b5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2420
    const/16 v21, 0x0

    .line 2426
    :cond_3ba
    if-eqz p1, :cond_41a

    .line 2427
    const-string v6, "_data=?"

    .line 2431
    :goto_3be
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mDocUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->DOC_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3ce
    .catchall {:try_start_37a .. :try_end_3ce} :catchall_a9

    move-result-object v21

    .line 2433
    if-eqz v21, :cond_421

    .line 2435
    :goto_3d1
    :try_start_3d1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_41c

    .line 2436
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2437
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2438
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2440
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2441
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_3fc

    .line 2442
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2444
    :cond_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mDocUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_412
    .catchall {:try_start_3d1 .. :try_end_412} :catchall_413

    goto :goto_3d1

    .line 2448
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_413
    move-exception v3

    :try_start_414
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2449
    const/16 v21, 0x0

    throw v3

    .line 2429
    :cond_41a
    const/4 v6, 0x0

    goto :goto_3be

    .line 2448
    :cond_41c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2449
    const/16 v21, 0x0

    .line 2453
    :cond_421
    if-eqz p1, :cond_487

    .line 2454
    const-string v6, "_data=?"

    .line 2459
    :goto_425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/MediaScanner;->APP_PACKAGE_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43b
    .catchall {:try_start_414 .. :try_end_43b} :catchall_a9

    move-result-object v21

    .line 2461
    if-eqz v21, :cond_48e

    .line 2463
    :goto_43e
    :try_start_43e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_489

    .line 2464
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2465
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2466
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2468
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2469
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_469

    .line 2470
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2472
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47f
    .catchall {:try_start_43e .. :try_end_47f} :catchall_480

    goto :goto_43e

    .line 2476
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_480
    move-exception v3

    :try_start_481
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2477
    const/16 v21, 0x0

    throw v3

    .line 2456
    :cond_487
    const/4 v6, 0x0

    goto :goto_425

    .line 2476
    :cond_489
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2477
    const/16 v21, 0x0

    .line 2482
    :cond_48e
    if-eqz p1, :cond_4ee

    .line 2483
    const-string v6, "_data=?"

    .line 2487
    :goto_492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->VIDEOCALL_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a2
    .catchall {:try_start_481 .. :try_end_4a2} :catchall_a9

    move-result-object v21

    .line 2489
    if-eqz v21, :cond_4f5

    .line 2491
    :goto_4a5
    :try_start_4a5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4f0

    .line 2492
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2493
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2494
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2496
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2497
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_4d0

    .line 2498
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2500
    :cond_4d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e6
    .catchall {:try_start_4a5 .. :try_end_4e6} :catchall_4e7

    goto :goto_4a5

    .line 2504
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_4e7
    move-exception v3

    :try_start_4e8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2505
    const/16 v21, 0x0

    throw v3

    .line 2485
    :cond_4ee
    const/4 v6, 0x0

    goto :goto_492

    .line 2504
    :cond_4f0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_4f3
    .catchall {:try_start_4e8 .. :try_end_4f3} :catchall_a9

    .line 2505
    const/16 v21, 0x0

    .line 2511
    :cond_4f5
    if-eqz v21, :cond_4fa

    .line 2512
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2516
    :cond_4fa
    const-string v3, "MediaScanner"

    const-string/jumbo v4, "prescan return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    return-void

    .line 2378
    .restart local v22       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .restart local v25       #mDbEntryToDelete:[J
    .restart local v29       #numDbEntryToDelete:I
    :catchall_503
    move-exception v3

    move/from16 v28, v29

    .end local v29           #numDbEntryToDelete:I
    .restart local v28       #numDbEntryToDelete:I
    goto/16 :goto_2f3

    .line 2358
    .end local v22           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .end local v28           #numDbEntryToDelete:I
    .restart local v29       #numDbEntryToDelete:I
    :catchall_508
    move-exception v3

    move/from16 v28, v29

    .end local v29           #numDbEntryToDelete:I
    .restart local v28       #numDbEntryToDelete:I
    goto/16 :goto_286

    .end local v28           #numDbEntryToDelete:I
    .restart local v10       #rowId:J
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #lastModified:J
    .restart local v26       #magic:J
    .restart local v29       #numDbEntryToDelete:I
    :cond_50d
    move/from16 v28, v29

    .end local v29           #numDbEntryToDelete:I
    .restart local v28       #numDbEntryToDelete:I
    goto/16 :goto_248
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 15
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3080
    const/4 v8, 0x0

    .line 3082
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3083
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3084
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_57

    .line 3086
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 3087
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3088
    .local v5, index:I
    :goto_22
    if-eqz v1, :cond_47

    .line 3090
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_42

    .line 3091
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3092
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3093
    add-int/lit8 v5, v5, 0x1

    .line 3095
    :cond_42
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_45} :catch_82

    move-result-object v1

    goto :goto_22

    :cond_47
    move-object v8, v9

    .line 3102
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_48
    if-eqz v8, :cond_4d

    .line 3103
    :try_start_4a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 3108
    .end local v7           #f:Ljava/io/File;
    :cond_4d
    :goto_4d
    return-void

    .line 3104
    .restart local v7       #f:Ljava/io/File;
    :catch_4e
    move-exception v6

    .line 3105
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 3098
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #f:Ljava/io/File;
    :catch_57
    move-exception v0

    move-object v6, v0

    .line 3099
    .restart local v6       #e:Ljava/io/IOException;
    :goto_59
    :try_start_59
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_6f

    .line 3102
    if-eqz v8, :cond_4d

    .line 3103
    :try_start_62
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_4d

    .line 3104
    :catch_66
    move-exception v6

    .line 3105
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 3101
    .end local v6           #e:Ljava/io/IOException;
    :catchall_6f
    move-exception v0

    .line 3102
    :goto_70
    if-eqz v8, :cond_75

    .line 3103
    :try_start_72
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 3106
    :cond_75
    :goto_75
    throw v0

    .line 3104
    :catch_76
    move-exception v6

    .line 3105
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 3101
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_7f
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_70

    .line 3098
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_82
    move-exception v0

    move-object v6, v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_59
.end method

.method private processPlayLists()V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3208
    .local v16, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_9
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b4

    .line 3209
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaScanner$FileCacheEntry;

    .line 3210
    .local v13, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object v0, v13

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3213
    .local v21, path:Ljava/lang/String;
    iget-boolean v5, v13, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v5, :cond_9

    .line 3214
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3215
    .local v26, values:Landroid/content/ContentValues;
    const/16 v5, 0x2f

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 3216
    .local v18, lastSlash:I
    if-gez v18, :cond_4a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3218
    :cond_4a
    move-object v0, v13

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v23, v0

    .line 3219
    .local v23, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v23, v7

    if-nez v5, :cond_113

    .line 3222
    const/16 v5, 0x2e

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 3223
    .local v17, lastDot:I
    if-gez v17, :cond_104

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    .line 3224
    .local v20, name:Ljava/lang/String;
    :goto_6b
    const-string v5, "name"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    const-string v5, "_data"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    const-string v5, "date_modified"

    iget-wide v7, v13, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 3228
    .local v25, uri:Landroid/net/Uri;
    invoke-static/range {v25 .. v25}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3229
    const-string v5, "members"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3242
    .end local v17           #lastDot:I
    .end local v20           #name:Ljava/lang/String;
    .local v6, membersUri:Landroid/net/Uri;
    :goto_ad
    const/4 v5, 0x0

    add-int/lit8 v7, v18, 0x1

    move-object/from16 v0, v21

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 3243
    .local v22, playListDirectory:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v19

    .line 3244
    .local v19, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v19, :cond_154

    const/4 v5, 0x0

    move v14, v5

    .line 3246
    .local v14, fileType:I
    :goto_c0
    const/16 v5, 0x29

    if-ne v14, v5, :cond_15c

    .line 3247
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v6

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3253
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    sget-object v7, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3256
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_e6

    :try_start_e0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_17e

    .line 3257
    :cond_e6
    const-string v5, "MediaScanner"

    const-string/jumbo v6, "playlist is empty - deleting"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_e0 .. :try_end_fd} :catchall_1ad

    .line 3270
    :goto_fd
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 3223
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #fileType:I
    .end local v19           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v22           #playListDirectory:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    .restart local v17       #lastDot:I
    :cond_104
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v21

    move v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto/16 :goto_6b

    .line 3231
    .end local v17           #lastDot:I
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 3234
    .restart local v25       #uri:Landroid/net/Uri;
    const-string v5, "date_modified"

    iget-wide v7, v13, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3238
    const-string v5, "members"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3239
    .restart local v6       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 3244
    .restart local v19       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v22       #playListDirectory:Ljava/lang/String;
    :cond_154
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move v14, v5

    goto/16 :goto_c0

    .line 3248
    .restart local v14       #fileType:I
    :cond_15c
    const/16 v5, 0x2a

    if-ne v14, v5, :cond_16e

    .line 3249
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v6

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d0

    .line 3250
    :cond_16e
    const/16 v5, 0x2b

    if-ne v14, v5, :cond_d0

    .line 3251
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_d0

    .line 3262
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_17e
    :try_start_17e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/external/audio/music_playlists/"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/members_from_default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3264
    .local v15, insertUri:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3266
    .local v11, contentValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    invoke-interface {v5, v15, v11}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1ab
    .catchall {:try_start_17e .. :try_end_1ab} :catchall_1ad

    goto/16 :goto_fd

    .line 3270
    .end local v11           #contentValues:Landroid/content/ContentValues;
    .end local v15           #insertUri:Landroid/net/Uri;
    :catchall_1ad
    move-exception v5

    if-eqz v12, :cond_1b3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1b3
    throw v5

    .line 3274
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v14           #fileType:I
    .end local v18           #lastSlash:I
    .end local v19           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v21           #path:Ljava/lang/String;
    .end local v22           #playListDirectory:Ljava/lang/String;
    .end local v23           #rowId:J
    .end local v25           #uri:Landroid/net/Uri;
    .end local v26           #values:Landroid/content/ContentValues;
    :cond_1b4
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 17
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3111
    const/4 v10, 0x0

    .line 3113
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3114
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3115
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_77
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_5f

    .line 3117
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 3118
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3119
    .local v5, index:I
    :goto_22
    if-eqz v9, :cond_4f

    .line 3121
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3122
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3123
    .local v7, equals:I
    if-lez v7, :cond_4a

    .line 3124
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 3125
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3126
    add-int/lit8 v5, v5, 0x1

    .line 3129
    .end local v7           #equals:I
    :cond_4a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_87
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_8a

    move-result-object v9

    goto :goto_22

    :cond_4f
    move-object v10, v11

    .line 3136
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_50
    if-eqz v10, :cond_55

    .line 3137
    :try_start_52
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 3142
    .end local v8           #f:Ljava/io/File;
    :cond_55
    :goto_55
    return-void

    .line 3138
    .restart local v8       #f:Ljava/io/File;
    :catch_56
    move-exception v6

    .line 3139
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 3132
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #f:Ljava/io/File;
    :catch_5f
    move-exception v0

    move-object v6, v0

    .line 3133
    .restart local v6       #e:Ljava/io/IOException;
    :goto_61
    :try_start_61
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_77

    .line 3136
    if-eqz v10, :cond_55

    .line 3137
    :try_start_6a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_55

    .line 3138
    :catch_6e
    move-exception v6

    .line 3139
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 3135
    .end local v6           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v0

    .line 3136
    :goto_78
    if-eqz v10, :cond_7d

    .line 3137
    :try_start_7a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 3140
    :cond_7d
    :goto_7d
    throw v0

    .line 3138
    :catch_7e
    move-exception v6

    .line 3139
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 3135
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_87
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_78

    .line 3132
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_8a
    move-exception v0

    move-object v6, v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_61
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    const-string v7, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    .line 3184
    const/4 v2, 0x0

    .line 3186
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3187
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3188
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5f
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_15} :catch_37
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_4b

    .line 3190
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_15
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_6f
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_27} :catch_76
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_72

    move-object v2, v3

    .line 3198
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_28
    if-eqz v2, :cond_2d

    .line 3199
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 3204
    .end local v1           #f:Ljava/io/File;
    :cond_2d
    :goto_2d
    return-void

    .line 3200
    .restart local v1       #f:Ljava/io/File;
    :catch_2e
    move-exception v0

    .line 3201
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 3192
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_37
    move-exception v4

    move-object v0, v4

    .line 3193
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5f

    .line 3198
    if-eqz v2, :cond_2d

    .line 3199
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2d

    .line 3200
    :catch_42
    move-exception v0

    .line 3201
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 3194
    .end local v0           #e:Ljava/io/IOException;
    :catch_4b
    move-exception v4

    move-object v0, v4

    .line 3195
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5f

    .line 3198
    if-eqz v2, :cond_2d

    .line 3199
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_2d

    .line 3200
    :catch_56
    move-exception v0

    .line 3201
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 3197
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5f
    move-exception v4

    .line 3198
    :goto_60
    if-eqz v2, :cond_65

    .line 3199
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 3202
    :cond_65
    :goto_65
    throw v4

    .line 3200
    :catch_66
    move-exception v0

    .line 3201
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 3197
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_6f
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_60

    .line 3194
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_72
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4d

    .line 3192
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_76
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_39
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const-string v4, "/"

    const-string v3, ".thumb"

    const-string v0, "MediaScanner"

    .line 2577
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2578
    .local v10, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2579
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 2580
    .local v11, files:[Ljava/lang/String;
    if-nez v11, :cond_2e

    .line 2581
    new-array v11, v2, [Ljava/lang/String;

    .line 2584
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2585
    .local v8, directorySd:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 2586
    .local v12, filesFromSd:[Ljava/lang/String;
    if-nez v12, :cond_50

    .line 2587
    new-array v12, v2, [Ljava/lang/String;

    .line 2589
    :cond_50
    const/4 v14, 0x0

    .local v14, i:I
    :goto_51
    array-length v0, v11

    if-ge v14, v0, :cond_7d

    .line 2590
    aget-object v0, v11, v14

    const-string v1, ".thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2592
    .local v13, fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2589
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_7a
    add-int/lit8 v14, v14, 0x1

    goto :goto_51

    .line 2596
    :cond_7d
    const/4 v14, 0x0

    :goto_7e
    array-length v0, v12

    if-ge v14, v0, :cond_aa

    .line 2597
    aget-object v0, v12, v14

    const-string v1, ".thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v12, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2599
    .restart local v13       #fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2596
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_a7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7e

    .line 2602
    :cond_aa
    const/4 v6, 0x0

    .line 2604
    .local v6, c:Landroid/database/Cursor;
    :try_start_ab
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2610
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    if-eqz v6, :cond_ed

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2613
    :cond_df
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2614
    .restart local v13       #fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2615
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_df

    .line 2618
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_ed
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files to delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_ab .. :try_end_121} :catchall_158
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_121} :catch_134

    .line 2625
    if-eqz v6, :cond_126

    .line 2626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2630
    :cond_126
    :goto_126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/MediaScanner$1;

    invoke-direct {v1, p0, v10}, Landroid/media/MediaScanner$1;-><init>(Landroid/media/MediaScanner;Ljava/util/HashSet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2658
    return-void

    .line 2621
    :catch_134
    move-exception v0

    move-object v9, v0

    .line 2623
    .local v9, e:Landroid/os/RemoteException;
    :try_start_136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_136 .. :try_end_152} :catchall_158

    .line 2625
    if-eqz v6, :cond_126

    .line 2626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_126

    .line 2625
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_158
    move-exception v0

    if-eqz v6, :cond_15e

    .line 2626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15e
    throw v0
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 842
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 844
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 846
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 848
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 3293
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 3294
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 3295
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 2869
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v14, v0

    sget v15, Landroid/media/MediaScanner;->generation:I

    if-eq v14, v15, :cond_28

    sget-object v14, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_28

    .line 2870
    const-string v14, "MediaScanner"

    const-string v15, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :goto_27
    return-void

    .line 2874
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2875
    .local v12, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2889
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_84

    const/4 v14, 0x0

    aget-object v14, p1, v14

    sget-object v15, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_84

    .line 2890
    const/4 v14, 0x0

    aget-object v14, p1, v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 2896
    :goto_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2909
    .local v8, prescan:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v14, v0

    sget v15, Landroid/media/MediaScanner;->generation:I

    if-eq v14, v15, :cond_96

    sget-object v14, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_96

    .line 2910
    const-string v14, "MediaScanner"

    const-string v15, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_79} :catch_7a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_79} :catch_8c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_79} :catch_105

    goto :goto_27

    .line 2962
    .end local v8           #prescan:J
    .end local v12           #start:J
    :catch_7a
    move-exception v14

    move-object v4, v14

    .line 2964
    .local v4, e:Landroid/database/SQLException;
    const-string v14, "MediaScanner"

    const-string v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 2892
    .end local v4           #e:Landroid/database/SQLException;
    .restart local v12       #start:J
    :cond_84
    const/4 v14, 0x0

    :try_start_85
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V
    :try_end_8b
    .catch Landroid/database/SQLException; {:try_start_85 .. :try_end_8b} :catch_7a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_85 .. :try_end_8b} :catch_8c
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8b} :catch_105

    goto :goto_4e

    .line 2965
    .end local v12           #start:J
    :catch_8c
    move-exception v14

    move-object v4, v14

    .line 2967
    .local v4, e:Ljava/lang/UnsupportedOperationException;
    const-string v14, "MediaScanner"

    const-string v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 2914
    .end local v4           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v8       #prescan:J
    .restart local v12       #start:J
    :cond_96
    :try_start_96
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scanDirectories : directories.length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", directories.length : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const/4 v7, 0x0

    .local v7, i:I
    :goto_c3
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-ge v7, v14, :cond_113

    .line 2917
    aget-object v14, p1, v7

    sget-object v15, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2919
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v14, v0

    sget v15, Landroid/media/MediaScanner;->generation:I

    if-eq v14, v15, :cond_110

    sget-object v14, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_110

    .line 2920
    const-string v14, "MediaScanner"

    const-string v15, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catch Landroid/database/SQLException; {:try_start_96 .. :try_end_103} :catch_7a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_96 .. :try_end_103} :catch_8c
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_103} :catch_105

    goto/16 :goto_27

    .line 2968
    .end local v7           #i:I
    .end local v8           #prescan:J
    .end local v12           #start:J
    :catch_105
    move-exception v14

    move-object v4, v14

    .line 2969
    .local v4, e:Landroid/os/RemoteException;
    const-string v14, "MediaScanner"

    const-string v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 2916
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v7       #i:I
    .restart local v8       #prescan:J
    .restart local v12       #start:J
    :cond_110
    add-int/lit8 v7, v7, 0x1

    goto :goto_c3

    .line 2935
    :cond_113
    :try_start_113
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v14, v0

    sget v15, Landroid/media/MediaScanner;->generation:I

    if-eq v14, v15, :cond_13c

    sget-object v14, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13c

    .line 2936
    const-string v14, "MediaScanner"

    const-string v15, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2940
    :cond_13c
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16a

    const/4 v14, 0x0

    aget-object v14, p1, v14

    sget-object v15, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16a

    .line 2941
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    move v14, v0

    if-eqz v14, :cond_16a

    .line 2942
    const-string v14, "MediaScanner"

    const-string v15, " scanDirectories : external SD card is removed during media scanning... do not need to postscan"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2947
    :cond_16a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2949
    .local v10, scan:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v14, v0

    sget v15, Landroid/media/MediaScanner;->generation:I

    if-eq v14, v15, :cond_197

    sget-object v14, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_197

    .line 2950
    const-string v14, "MediaScanner"

    const-string v15, " scanDirectories : another request of scanning /mnt/sdcard is received ... do not need to do postscan."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2953
    :cond_197
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 2954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2957
    .local v5, end:J
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " prescan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    scan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "postscan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "   total time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21f
    .catch Landroid/database/SQLException; {:try_start_113 .. :try_end_21f} :catch_7a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_113 .. :try_end_21f} :catch_8c
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_21f} :catch_105

    goto/16 :goto_27
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 2976
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2977
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 2979
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2981
    .local v9, file:Ljava/io/File;
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 2984
    .end local v9           #file:Ljava/io/File;
    :goto_20
    return-object v0

    .line 2982
    :catch_21
    move-exception v0

    move-object v8, v0

    .line 2983
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2984
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
