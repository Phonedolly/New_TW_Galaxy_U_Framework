.class public Lcom/android/internal/telephony/MobileQualityInfoProxy;
.super Lcom/android/internal/telephony/IMobileQualityInfo$Stub;
.source "MobileQualityInfoProxy.java"


# instance fields
.field private mMobileQualityInfo:Lcom/android/internal/telephony/MobileQualityInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MobileQualityInfo;)V
    .registers 4
    .parameter "mobileQualityInfo"

    .prologue
    const-string v1, "imobilequalityinfo"

    .line 27
    invoke-direct {p0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/MobileQualityInfoProxy;->mMobileQualityInfo:Lcom/android/internal/telephony/MobileQualityInfo;

    .line 29
    const-string v0, "imobilequalityinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    .line 30
    const-string v0, "imobilequalityinfo"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 32
    :cond_14
    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/MobileQualityInfoProxy;->mMobileQualityInfo:Lcom/android/internal/telephony/MobileQualityInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MobileQualityInfo;->getInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setmMobileQualityInfo(Lcom/android/internal/telephony/MobileQualityInfo;)V
    .registers 2
    .parameter "mobileQualityInfo"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/MobileQualityInfoProxy;->mMobileQualityInfo:Lcom/android/internal/telephony/MobileQualityInfo;

    .line 36
    return-void
.end method
