.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GA:I = 0xf

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AK3G:I = 0x137

.field public static final FILE_TYPE_AK3GV:I = 0x15e

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APK:I = 0x5b

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_ASF_AUDIO:I = 0x10

.field public static final FILE_TYPE_AVI:I = 0xc8

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_DCF:I = 0x12c

.field public static final FILE_TYPE_DIVX:I = 0xc9

.field public static final FILE_TYPE_DOC:I = 0x34

.field public static final FILE_TYPE_ENG:I = 0xc

.field public static final FILE_TYPE_EVC:I = 0x14a

.field public static final FILE_TYPE_FLAC:I = 0xdc

.field public static final FILE_TYPE_FLV:I = 0xca

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HWP:I = 0x38

.field public static final FILE_TYPE_IMY:I = 0x13

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_K3G:I = 0x154

.field public static final FILE_TYPE_K3GA:I = 0x142

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0x11

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0xcb

.field public static final FILE_TYPE_MP2TS:I = 0x1e

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_ODF:I = 0x141

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x33

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_PPT:I = 0x36

.field public static final FILE_TYPE_QCP:I = 0x149

.field public static final FILE_TYPE_SKA:I = 0x12d

.field public static final FILE_TYPE_SKM:I = 0x155

.field public static final FILE_TYPE_SKV:I = 0x156

.field public static final FILE_TYPE_SMF:I = 0x12

.field public static final FILE_TYPE_VCI:I = 0x64

.field public static final FILE_TYPE_VCY:I = 0x65

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XLS:I = 0x35

.field private static final FIRST_APPPACKAGE_FILE_TYPE:I = 0x5b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DMCMM_AUDIO_FILE_TYPE:I = 0xdc

.field private static final FIRST_DMCMM_VIDEO_FILE_TYPE:I = 0xc8

.field private static final FIRST_DOCUMENT_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_KOR_AUDIO_FILE_TYPE:I = 0x12c

.field private static final FIRST_KOR_VIDEO_FILE_TYPE:I = 0x154

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x11

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEOCALLIMAGES_FILE_TYPE:I = 0x64

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_APPPACKAGE_FILE_TYPE:I = 0x5b

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x10

.field private static final LAST_DMCMM_AUDIO_FILE_TYPE:I = 0xdc

.field private static final LAST_DMCMM_VIDEO_FILE_TYPE:I = 0xcb

.field private static final LAST_DOCUMENT_FILE_TYPE:I = 0x38

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x23

.field private static final LAST_KOR_AUDIO_FILE_TYPE:I = 0x14a

.field private static final LAST_KOR_VIDEO_FILE_TYPE:I = 0x15e

.field private static final LAST_MIDI_FILE_TYPE:I = 0x13

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEOCALLIMAGES_FILE_TYPE:I = 0x65

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v5, 0x11

    const-string/jumbo v9, "video/skm"

    const-string v8, "SHW-M130L"

    const-string v7, "K3G"

    const-string v6, "audio/midi"

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 217
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    const-string v2, "MPGA"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    const-string v2, "MP4"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    const-string v2, "3GP"

    const/16 v3, 0xf

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    const-string v2, "3GA"

    const/16 v3, 0xf

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    const-string v2, "ASF"

    const/16 v3, 0x10

    const-string v4, "audio/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string v2, "OGA"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    const-string v2, "SMF"

    const/16 v3, 0x12

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    const-string v2, "IMY"

    const/16 v3, 0x13

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    const-string v2, "MPEG"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    const-string v2, "MP4"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    const-string v2, "3GP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const-string v2, "3GPP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string v2, "3G2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    const-string v2, "3GPP2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    const-string v2, "MKV"

    const/16 v3, 0xcb

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    const-string v2, "WEBM"

    const/16 v3, 0xcb

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string v2, "TS"

    const/16 v3, 0x1e

    const-string/jumbo v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    const-string v2, "JPG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    const-string v2, "JPEG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const-string v2, "GIF"

    const/16 v3, 0x20

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    const-string v2, "PNG"

    const/16 v3, 0x21

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    const-string v2, "WBMP"

    const/16 v3, 0x23

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    const-string v2, "AVI"

    const/16 v3, 0xc8

    const-string/jumbo v4, "video/avi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    const-string v2, "DIVX"

    const/16 v3, 0xc9

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    const-string v2, "FLV"

    const/16 v3, 0xca

    const-string/jumbo v4, "video/flv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v2, "MKV"

    const/16 v3, 0xcb

    const-string/jumbo v4, "video/mkv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    const-string v2, "FLAC"

    const/16 v3, 0xdc

    const-string v4, "audio/flac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    const-string v2, "ENG"

    const/16 v3, 0xc

    const-string v4, "application/eng"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const-string v2, "PDF"

    const/16 v3, 0x33

    const-string v4, "application/pdf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    const-string v2, "DOC"

    const/16 v3, 0x34

    const-string v4, "application/msword"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    const-string v2, "DOCX"

    const/16 v3, 0x34

    const-string v4, "application/msword"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    const-string v2, "XLS"

    const/16 v3, 0x35

    const-string v4, "application/vnd.ms-excel"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const-string v2, "XLSX"

    const/16 v3, 0x35

    const-string v4, "application/vnd.ms-excel"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    const-string v2, "PPT"

    const/16 v3, 0x36

    const-string v4, "application/vnd.ms-powerpoint"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    const-string v2, "PPTX"

    const/16 v3, 0x36

    const-string v4, "application/vnd.ms-powerpoint"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    const-string v2, "HWP"

    const/16 v3, 0x38

    const-string v4, "application/x-hwp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    const-string v2, "APK"

    const/16 v3, 0x5b

    const-string v4, "appcation/apk"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    const-string v2, "VCI"

    const/16 v3, 0x64

    const-string/jumbo v4, "videocallimages/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    const-string v2, "VCY"

    const/16 v3, 0x65

    const-string/jumbo v4, "videocallimages/jpeg-scramble"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    const-string v2, "SHW-M130L"

    const-string v2, "SHW-M110S"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_256

    .line 313
    const-string v2, "DCF"

    const/16 v3, 0x12c

    const-string v4, "audio/x-mp3"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    :cond_256
    const-string v2, "SHW-M130L"

    const-string v2, "SHW-M130L"

    invoke-virtual {v8, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_269

    .line 316
    const-string v2, "ODF"

    const/16 v3, 0x141

    const-string v4, "audio/x-mp3"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    :cond_269
    const-string v2, "EVC"

    const/16 v3, 0x14a

    const-string v4, "audio/evc"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    const-string v2, "QCP"

    const/16 v3, 0x149

    const-string v4, "audio/qcp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    const-string v2, "SKM"

    const/16 v3, 0x155

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    const-string v2, "SKV"

    const/16 v3, 0x156

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    const-string v2, "SKA"

    const/16 v3, 0x12d

    const-string v4, "audio/skm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    const-string v2, "K3G"

    const/16 v2, 0x154

    const-string/jumbo v3, "video/k3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    const-string v2, "K3G"

    const/16 v2, 0x154

    const-string/jumbo v3, "video/kr3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v2, "K3G"

    const/16 v2, 0x142

    const-string v3, "audio/kr3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    const-string v2, "K3G"

    const/16 v2, 0x142

    const-string v3, "audio/k3g"

    invoke-static {v7, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const-string v2, "SKM"

    const/16 v3, 0x155

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    const-string v2, "SKV"

    const/16 v3, 0x156

    const-string/jumbo v4, "video/skm"

    invoke-static {v2, v3, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    const-string v2, "AK3G"

    const/16 v3, 0x137

    const-string v4, "audio/ak3g"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v2, "AK3G"

    const/16 v3, 0x15e

    const-string/jumbo v4, "video/ak3g"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 340
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30f

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_305

    .line 342
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :cond_305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f4

    .line 347
    :cond_30f
    const-string v2, "SHW-M130L"

    const-string v2, "SHW-M"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31e

    .line 349
    const-string v2, ",DM,DCF,ODF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_31e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 192
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 4
    .parameter "path"

    .prologue
    .line 439
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, lastDot:I
    if-gez v0, :cond_a

    .line 441
    const/4 v1, 0x0

    .line 442
    .end local p0
    :goto_9
    return-object v1

    .restart local p0
    :cond_a
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    move-object v1, p0

    goto :goto_9
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 446
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 447
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b
.end method

.method public static isAppPackageFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    const/16 v0, 0x5b

    .line 429
    if-lt p0, v0, :cond_8

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isAudioFileType(I)Z
    .registers 8
    .parameter "fileType"

    .prologue
    const/16 v6, 0xdc

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 367
    if-lt p0, v4, :cond_a

    const/16 v3, 0x10

    if-le p0, v3, :cond_12

    :cond_a
    const/16 v3, 0x11

    if-lt p0, v3, :cond_29

    const/16 v3, 0x13

    if-gt p0, v3, :cond_29

    :cond_12
    move v2, v4

    .line 371
    .local v2, bOrg:Z
    :goto_13
    if-lt p0, v6, :cond_2b

    if-gt p0, v6, :cond_2b

    move v0, v4

    .line 374
    .local v0, bDMCMM:Z
    :goto_18
    const/16 v3, 0x12c

    if-lt p0, v3, :cond_2d

    const/16 v3, 0x14a

    if-gt p0, v3, :cond_2d

    move v1, v4

    .line 377
    .local v1, bKORMM:Z
    :goto_21
    if-nez v2, :cond_27

    if-nez v0, :cond_27

    if-eqz v1, :cond_2f

    :cond_27
    move v3, v4

    :goto_28
    return v3

    .end local v0           #bDMCMM:Z
    .end local v1           #bKORMM:Z
    .end local v2           #bOrg:Z
    :cond_29
    move v2, v5

    .line 367
    goto :goto_13

    .restart local v2       #bOrg:Z
    :cond_2b
    move v0, v5

    .line 371
    goto :goto_18

    .restart local v0       #bDMCMM:Z
    :cond_2d
    move v1, v5

    .line 374
    goto :goto_21

    .restart local v1       #bKORMM:Z
    :cond_2f
    move v3, v5

    .line 377
    goto :goto_28
.end method

.method public static isDocumentFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 424
    const/16 v0, 0x33

    if-lt p0, v0, :cond_a

    const/16 v0, 0x38

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEnglishFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 419
    const/16 v0, 0xc

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isImageFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 401
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_a

    const/16 v0, 0x23

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isKORMediaFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 411
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x15e

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPlayListFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 406
    const/16 v0, 0x29

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVideoCallImagesFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 434
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0x65

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVideoFileType(I)Z
    .registers 7
    .parameter "fileType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    const/16 v3, 0x15

    if-lt p0, v3, :cond_25

    const/16 v3, 0x1e

    if-gt p0, v3, :cond_25

    move v2, v5

    .line 389
    .local v2, bOrg:Z
    :goto_b
    const/16 v3, 0xc8

    if-lt p0, v3, :cond_27

    const/16 v3, 0xcb

    if-gt p0, v3, :cond_27

    move v0, v5

    .line 392
    .local v0, bDMCMM:Z
    :goto_14
    const/16 v3, 0x154

    if-lt p0, v3, :cond_29

    const/16 v3, 0x15e

    if-gt p0, v3, :cond_29

    move v1, v5

    .line 395
    .local v1, bKORMM:Z
    :goto_1d
    if-nez v2, :cond_23

    if-nez v0, :cond_23

    if-eqz v1, :cond_2b

    :cond_23
    move v3, v5

    :goto_24
    return v3

    .end local v0           #bDMCMM:Z
    .end local v1           #bKORMM:Z
    .end local v2           #bOrg:Z
    :cond_25
    move v2, v4

    .line 387
    goto :goto_b

    .restart local v2       #bOrg:Z
    :cond_27
    move v0, v4

    .line 389
    goto :goto_14

    .restart local v0       #bDMCMM:Z
    :cond_29
    move v1, v4

    .line 392
    goto :goto_1d

    .restart local v1       #bKORMM:Z
    :cond_2b
    move v3, v4

    .line 395
    goto :goto_24
.end method

.method private static isWMAEnabled()Z
    .registers 4

    .prologue
    .line 197
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 199
    .local v0, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v0, v3, :cond_8

    .line 200
    const/4 v3, 0x1

    .line 203
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private static isWMVEnabled()Z
    .registers 4

    .prologue
    .line 207
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 209
    .local v0, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v0, v3, :cond_8

    .line 210
    const/4 v3, 0x1

    .line 213
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method
