.class public Lcom/sec/android/internal/ims/external/HiddenMenuData;
.super Ljava/lang/Object;
.source "HiddenMenuData.java"


# static fields
.field public static final DefaultmAlwaysOn:Ljava/lang/String; = "1"

.field public static final DefaultmAudioFirst:Ljava/lang/String; = ""

.field public static final DefaultmAutoTest:Ljava/lang/String; = "Disable"

.field public static final DefaultmEnableQos:Ljava/lang/String; = "1"

.field public static final DefaultmLoopback:Ljava/lang/String; = "End To End Call"

.field public static final DefaultmPrefAudioCodec:Ljava/lang/String; = "AMR,EVRC"

.field public static final DefaultmPrefCscfDns:Ljava/lang/String; = "pcscf.lgtims.co.kr"

.field public static final DefaultmPrefCscfDomain:Ljava/lang/String; = "lgt.co.kr"

.field public static final DefaultmPrefCscfIp:Ljava/lang/String; = "10.160.73.9"

.field public static final DefaultmPrefCscfPort:Ljava/lang/String; = "5060"

.field public static final DefaultmPrefVideoCodec:Ljava/lang/String; = "H263,MPEG4"

.field public static final DefaultmPrefXdmDns:Ljava/lang/String; = "0"

.field public static final DefaultmPrefXdmIp:Ljava/lang/String; = "1"

.field public static final DefaultmQosAware:Ljava/lang/String; = ""

.field public static final DefaultmVTDebugging:Ljava/lang/String; = ""

.field public static final DefaultmVideoProfile:Ljava/lang/String; = ""


# instance fields
.field public mAlwaysOnVal:Ljava/lang/String;

.field public mAudioFirstVal:Ljava/lang/String;

.field public mAutoTestVal:Ljava/lang/String;

.field public mEnableQosVal:Ljava/lang/String;

.field public mLoopbackVal:Ljava/lang/String;

.field public mPrefAudioCodecVal:Ljava/lang/String;

.field public mPrefCscfDnsVal:Ljava/lang/String;

.field public mPrefCscfDomainVal:Ljava/lang/String;

.field public mPrefCscfIpVal:Ljava/lang/String;

.field public mPrefCscfPortVal:Ljava/lang/String;

.field public mPrefVideoCodecVal:Ljava/lang/String;

.field public mPrefXdmDnsVal:Ljava/lang/String;

.field public mPrefXdmIpVal:Ljava/lang/String;

.field public mQosAwareVal:Ljava/lang/String;

.field public mVTDebuggingVal:Ljava/lang/String;

.field public mVideoProfileVal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuData;->settoDefaultValues()V

    .line 105
    return-void
.end method


# virtual methods
.method public settoDefaultValues()V
    .registers 4

    .prologue
    const-string v2, "1"

    const-string v1, "0"

    .line 111
    const-string/jumbo v0, "pcscf.lgtims.co.kr"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 113
    const-string v0, "10.160.73.9"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 115
    const-string v0, "lgt.co.kr"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    .line 117
    const-string v0, "5060"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 119
    const-string v0, "0"

    iput-object v1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    .line 121
    const-string v0, "1"

    iput-object v2, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    .line 123
    const-string v0, "AMR,EVRC"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 125
    const-string v0, "H263,MPEG4"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 127
    const-string v0, "End To End Call"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    .line 129
    const-string v0, "1"

    iput-object v2, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 131
    const-string v0, "1"

    iput-object v2, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    .line 133
    const-string v0, "0"

    iput-object v1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    .line 135
    const-string v0, "0"

    iput-object v1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    .line 137
    const-string v0, "0"

    iput-object v1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    .line 139
    const-string v0, "0"

    iput-object v1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    .line 141
    const-string v0, "0"

    iput-object v1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    .line 142
    return-void
.end method
