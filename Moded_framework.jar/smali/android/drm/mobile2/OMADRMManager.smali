.class public Landroid/drm/mobile2/OMADRMManager;
.super Ljava/lang/Object;
.source "OMADRMManager.java"

# interfaces
.implements Landroid/drm/mobile2/DRMConstants;
.implements Landroid/drm/mobile2/DRMROAPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/OMADRMManager$OnErrorListener;,
        Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;,
        Landroid/drm/mobile2/OMADRMManager$OnRoapListener;
    }
.end annotation


# static fields
.field private static OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private TAG:Ljava/lang/String;

.field mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

.field mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

.field private rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

.field private roapManager:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 25
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 24
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 27
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/drm/mobile2/DrmRoapManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/DrmRoapManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 35
    new-instance v0, Landroid/drm/mobile2/Drm2RightsManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/Drm2RightsManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 36
    return-void
.end method

.method private checkDRMAccessPerissions()V
    .registers 5

    .prologue
    .line 1268
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_DRM"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1270
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing OMADRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_1a
    return-void
.end method

.method public static getInstance()Landroid/drm/mobile2/OMADRMManager;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMManager;-><init>()V

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 51
    :cond_b
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    return-object v0
.end method

.method private launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "rightsURI"

    .prologue
    .line 744
    if-eqz p1, :cond_15

    .line 746
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 747
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 749
    :try_start_12
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_15} :catch_17

    .line 758
    .end local v1           #intent:Landroid/content/Intent;
    :cond_15
    const/4 v2, 0x1

    :goto_16
    return v2

    .line 750
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_17
    move-exception v0

    .line 751
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "This is NOT proper URL to get rights , so Browser can not be launched."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mimetype"

    .prologue
    .line 542
    const-string/jumbo v0, "video/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "audio/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 546
    :cond_19
    const-string v0, "audio/unsupported"

    .line 548
    :goto_1b
    return-object v0

    :cond_1c
    move-object v0, p1

    goto :goto_1b
.end method


# virtual methods
.method public GetPermissionType(Ljava/lang/String;)I
    .registers 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v1, -0x1

    .line 413
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 414
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1b

    .line 415
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_12

    .line 416
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetPermissionTypeFromDrmFile(Ljava/lang/String;)I

    move-result v1

    .line 425
    :goto_11
    return v1

    .line 419
    :cond_12
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 422
    :cond_1b
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public IsDrmFileByExt(Ljava/lang/String;)Z
    .registers 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    const/4 v1, 0x0

    .line 1031
    .local v1, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1033
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 1034
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 1035
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    .line 1043
    :cond_11
    return v1

    .line 1038
    :cond_12
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z
    .registers 15
    .parameter "context"
    .parameter "filePath"
    .parameter "dcfHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 678
    const/4 v3, 0x0

    .line 679
    .local v3, result:Z
    const/4 v4, 0x0

    .line 680
    .local v4, rightsURI:Ljava/lang/String;
    const/4 v5, -0x1

    .line 681
    .local v5, roamingDownload:I
    const/4 v2, 0x0

    .line 683
    .local v2, isRoaming:Z
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "roaming_download"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 684
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Roaming behavior: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 685
    if-ne v5, v10, :cond_3d

    .line 686
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/drm/mobile2/OMADRMManager$OnErrorListener;->onError(I)Z
    :try_end_32
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_32} :catch_34

    .line 687
    const/4 v6, 0x0

    .line 731
    :goto_33
    return v6

    .line 689
    :catch_34
    move-exception v6

    move-object v0, v6

    .line 690
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "ROAMING DOWNLOAD Settings not found"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 693
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3d
    if-eqz p2, :cond_4b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".DCF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    :cond_4b
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 695
    :cond_57
    move-object v1, p3

    .line 696
    .local v1, headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    if-eqz v1, :cond_a2

    .line 697
    iget-object v4, v1, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    .line 698
    if-eqz v4, :cond_9a

    .line 699
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v6, v9, :cond_6d

    .line 700
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 701
    const/4 v3, 0x0

    :cond_69
    :goto_69
    move v6, v3

    .line 731
    goto :goto_33

    .line 703
    :cond_6b
    const/4 v3, 0x1

    goto :goto_69

    .line 704
    :cond_6d
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v6, v10, :cond_90

    .line 705
    iget-boolean v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    if-eqz v6, :cond_86

    if-eqz v2, :cond_7b

    if-eqz v2, :cond_86

    if-eq v5, v9, :cond_86

    .line 706
    :cond_7b
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v6, :cond_69

    .line 707
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v6, p2}, Landroid/drm/mobile2/DrmRoapManager;->Drm2GoSilentURL(Ljava/lang/String;)Z

    move-result v3

    goto :goto_69

    .line 710
    :cond_86
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 711
    const/4 v3, 0x0

    goto :goto_69

    .line 713
    :cond_8e
    const/4 v3, 0x1

    goto :goto_69

    .line 716
    :cond_90
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 717
    const/4 v3, 0x0

    goto :goto_69

    .line 719
    :cond_98
    const/4 v3, 0x1

    goto :goto_69

    .line 722
    :cond_9a
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "RIGHTS URI is not Found"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 725
    :cond_a2
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "DCF File Header Information Can not be Retrieved"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 729
    .end local v1           #headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    :cond_aa
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "Invalid File Path"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public addDrmFile(Ljava/lang/String;)Z
    .registers 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 75
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 77
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 78
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v1

    .line 85
    :cond_11
    return v1

    .line 82
    :cond_12
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : addDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public audoDownloadLicense(Z)Z
    .registers 3
    .parameter "autoDownlaod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public canSetAsRingTone(Ljava/lang/String;)Z
    .registers 8
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1148
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1149
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_13

    .line 1150
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_12

    .line 1151
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1}, Landroid/drm/mobile2/Drm2RightsManager;->canSetAsRingTone(Ljava/lang/String;)Z

    move-result v2

    .line 1157
    :cond_12
    return v2

    .line 1154
    :cond_13
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not present "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public cancelRoapProcess()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/DrmRoapManager;->cancelRoapProcess()Z

    move-result v0

    .line 841
    .local v0, status:Z
    return v0
.end method

.method public clearDrmLicenses()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 1467
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearAllRights()Z

    move-result v0

    .line 1470
    :cond_b
    return v0
.end method

.method public clearMMCFilesDRMEntry()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 1483
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearMMCContentRegistry()Z

    move-result v0

    .line 1486
    :cond_b
    return v0
.end method

.method public closeDrmFile(J)Z
    .registers 6
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1443
    const/4 v0, 0x0

    .line 1444
    .local v0, result:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_12

    .line 1445
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_11

    .line 1446
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->closeDrmFile(J)Z

    move-result v0

    .line 1454
    :cond_11
    return v0

    .line 1451
    :cond_12
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : closeDrmFile : in : handle : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "filehandle is NULL"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public consumeDrmRights(Ljava/lang/String;I)I
    .registers 7
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, -0x1

    .line 225
    .local v1, result:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 226
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 227
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 228
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->consumeDrmRights(Ljava/lang/String;I)I

    move-result v1

    .line 235
    :cond_11
    return v1

    .line 232
    :cond_12
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : consumeDrmRights : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 144
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 145
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 146
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_11
    return-object v1

    .line 150
    :cond_12
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : convertDM2DCF : in : file :NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteDrmFile(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "filePath"
    .parameter "removeRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 113
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 114
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->deleteDrmFile(Ljava/lang/String;Z)Z

    move-result v1

    .line 121
    :cond_11
    return v1

    .line 118
    :cond_12
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : deleteDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 890
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 893
    :cond_b
    return v0
.end method

.method public drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 864
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 867
    :cond_b
    return v0
.end method

.method public getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;
    .registers 9
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 329
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1a

    .line 330
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_19

    .line 331
    new-instance v0, Landroid/drm/mobile2/DrmBestRights;

    .end local v0           #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-direct {v0}, Landroid/drm/mobile2/DrmBestRights;-><init>()V

    .line 332
    .restart local v0       #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v0, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetBestMergedRO(Ljava/lang/String;Landroid/drm/mobile2/DrmBestRights;I)Z

    move-result v2

    .line 333
    .local v2, result:Z
    if-nez v2, :cond_19

    .line 334
    const/4 v0, 0x0

    .line 342
    .end local v2           #result:Z
    :cond_19
    return-object v0

    .line 340
    :cond_1a
    new-instance v3, Landroid/drm/mobile2/OMADRMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .registers 7
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, dcfHeader:Landroid/drm/mobile2/DCFHeaderInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 947
    .local v1, isFileExists:Z
    if-eqz v1, :cond_14

    .line 948
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v2, :cond_13

    .line 949
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/DrmRoapManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_13

    .line 973
    :cond_13
    return-object v0

    .line 968
    :cond_14
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDRMRingToneAlarmInfo(Landroid/content/Context;)I
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1231
    const/4 v0, 0x0

    .line 1232
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 1233
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    move-result v0

    .line 1237
    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method public getDecryptedContent(Ljava/lang/String;I)[B
    .registers 6
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, result:[B
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 268
    .local v0, isFileExists:Z
    if-eqz v0, :cond_11

    .line 269
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 270
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    .line 278
    :cond_11
    return-object v1
.end method

.method public getDrmFileInfo(Ljava/lang/String;)[I
    .registers 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 1002
    .local v1, isFileExists:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1003
    .local v0, drmInfo:[I
    if-eqz v1, :cond_13

    .line 1004
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_12

    .line 1005
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, v0}, Landroid/drm/mobile2/Drm2RightsManager;->getDrmFileInfo(Ljava/lang/String;[I)V

    .line 1013
    :cond_12
    return-object v0

    .line 1008
    :cond_13
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 193
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2GetAllFilePathByCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_b
    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "filePath"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 566
    .local v1, metaData:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 567
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 568
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 569
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getMetaData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 576
    :cond_11
    return-object v1

    .line 572
    :cond_12
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, mimetype:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 512
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1c

    .line 513
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_1b

    .line 514
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_1b

    .line 516
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/drm/mobile2/OMADRMManager;->resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_1b
    return-object v1

    .line 520
    :cond_1c
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;
    .registers 8
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1061
    const/4 v2, 0x0

    .line 1062
    .local v2, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1063
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1064
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_23

    .line 1065
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_20

    .line 1066
    new-instance v1, Landroid/drm/mobile2/Drm2Options;

    .end local v1           #options:Landroid/drm/mobile2/Drm2Options;
    invoke-direct {v1}, Landroid/drm/mobile2/Drm2Options;-><init>()V

    .line 1067
    .restart local v1       #options:Landroid/drm/mobile2/Drm2Options;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetOptionMenu(Ljava/lang/String;Landroid/drm/mobile2/Drm2Options;I)Z

    move-result v2

    .line 1068
    if-eqz v2, :cond_21

    .line 1069
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager :getOptionMenu  : success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_20
    :goto_20
    return-object v1

    .line 1072
    :cond_21
    const/4 v1, 0x0

    goto :goto_20

    .line 1076
    :cond_23
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "File is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, rightsURI:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 483
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 484
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 485
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_11
    return-object v1

    .line 488
    :cond_12
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not Present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasValidRights(Ljava/lang/String;I)I
    .registers 8
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v1, -0x1

    .line 375
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 376
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1b

    .line 377
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_12

    .line 378
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2HasValidRight(Ljava/lang/String;I)I

    move-result v1

    .line 387
    :goto_11
    return v1

    .line 381
    :cond_12
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 384
    :cond_1b
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initOmaDrm(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0}, Landroid/drm/mobile2/DrmRoapManager;->native_drm_init()Z

    .line 1126
    return-void
.end method

.method public installDrmRights([B)Ljava/lang/String;
    .registers 4
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 175
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->installDrmRights([B)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_b
    return-object v0
.end method

.method public isConvertedFL(Ljava/lang/String;)Z
    .registers 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 296
    .local v0, isFileExists:Z
    if-eqz v0, :cond_12

    .line 297
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_11

    .line 298
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsConvertedFL(Ljava/lang/String;)Z

    move-result v1

    .line 305
    :cond_11
    return v1

    .line 303
    :cond_12
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDrmFile(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .parameter "filePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1307
    const-wide/16 v1, -0x1

    .line 1310
    .local v1, result:J
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1311
    .local v0, isFileExists:Z
    if-eqz v0, :cond_13

    .line 1312
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_12

    .line 1313
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->openDrmFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1320
    :cond_12
    return-wide v1

    .line 1318
    :cond_13
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processRoap(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 12
    .parameter "roapTrigger"
    .parameter "fileName"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 794
    const/4 v6, 0x0

    .line 796
    .local v6, roapResult:Z
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1b

    .line 797
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/DrmRoapManager;->processRoap(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v6

    .line 801
    :cond_1b
    return v6
.end method

.method public processRoap([B)Z
    .registers 5
    .parameter "roapPdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, roapResult:Z
    if-eqz p1, :cond_e

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e

    .line 820
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/DrmRoapManager;->processRoap([BI)Z

    move-result v0

    .line 823
    :cond_e
    return v0
.end method

.method public queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .registers 8
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 448
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1a

    .line 449
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v3, :cond_19

    .line 451
    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;

    .end local v0           #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo;-><init>()V

    .line 452
    .restart local v0       #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v3, p1, v0}, Landroid/drm/mobile2/DrmRoapManager;->queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z

    move-result v2

    .line 453
    .local v2, result:Z
    if-nez v2, :cond_19

    .line 454
    const/4 v0, 0x0

    .line 462
    .end local v2           #result:Z
    :cond_19
    return-object v0

    .line 459
    :cond_1a
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDrmFile(J[BJ)J
    .registers 14
    .parameter "fh"
    .parameter "buffer"
    .parameter "buflen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1340
    const-wide/16 v6, -0x1

    .line 1343
    .local v6, result:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_16

    .line 1344
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_15

    .line 1345
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/Drm2RightsManager;->readDrmFile(J[BJ)J

    move-result-wide v6

    .line 1352
    :cond_15
    return-wide v6

    .line 1349
    :cond_16
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : openDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 1212
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->removeFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1216
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public seekDrmFile(JJJ)Z
    .registers 15
    .parameter "fh"
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1379
    const/4 v7, 0x0

    .line 1382
    .local v7, result:Z
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_15

    .line 1383
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_14

    .line 1384
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->seekDrmFile(JJJ)Z

    move-result v7

    .line 1391
    :cond_14
    return v7

    .line 1388
    :cond_15
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : seekDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    const/4 v0, 0x0

    .line 1182
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 1183
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->setFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1188
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public setOnDownloadListener(Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1604
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    .line 1605
    return-void
.end method

.method public setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1632
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 1633
    return-void
.end method

.method public setOnRoapListener(Landroid/drm/mobile2/OMADRMManager$OnRoapListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1545
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    .line 1546
    return-void
.end method

.method public setSecureClock(IIIIII)Z
    .registers 15
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v7, 0x0

    .line 604
    .local v7, result:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_11

    .line 605
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->setSecureClock(IIIIII)Z

    move-result v7

    .line 609
    :cond_11
    return v7
.end method

.method public setTransferTracking(Z)Z
    .registers 4
    .parameter "trackingOn"

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1285
    .local v0, settrackRet:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->setTransferTracking(Z)Z

    move-result v0

    .line 1288
    return v0
.end method

.method public submitUserConsent(JZZ)V
    .registers 6
    .parameter "userConsentObject"
    .parameter "bcontinue"
    .parameter "bAddToTrustedWhiteList"

    .prologue
    .line 917
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v0, :cond_9

    .line 918
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/drm/mobile2/DrmRoapManager;->SubmitUserConsent(JZZ)V

    .line 922
    :cond_9
    return-void
.end method

.method public tellDrmFile(J)J
    .registers 7
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1412
    const-wide/16 v0, -0x1

    .line 1415
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_13

    .line 1416
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_12

    .line 1417
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->tellDrmFile(J)J

    move-result-wide v0

    .line 1424
    :cond_12
    return-wide v0

    .line 1421
    :cond_13
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : tellDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file handle is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateDRMRingToneAlarmInfo(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "AlarmID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1252
    const/4 v0, 0x0

    .line 1253
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 1254
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->updateRTAlarm(Landroid/content/Context;I)I

    move-result v0

    .line 1258
    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method public updateMeteringStatus(Z)Z
    .registers 3
    .parameter "meteringStatus"

    .prologue
    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public updateSecureClock(JJ)Z
    .registers 7
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_b

    .line 633
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateSecureClock(JJ)Z

    move-result v0

    .line 636
    :cond_b
    return v0
.end method
