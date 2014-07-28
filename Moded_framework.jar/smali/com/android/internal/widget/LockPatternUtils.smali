.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$NotiMode;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_HISTORY_FILE:Ljava/lang/String; = "password_history.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "recovery_password.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x3

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static mIsPhonelock:Z

.field private static mPatternActivated:Z

.field private static mSimLockPrepared:Z

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPasswordHistoryFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MSG_PKG:Ljava/lang/String;

.field private final NOTI_NONE_COUNT:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mNotifyPwdChanges:Z

.field private mTimerActivate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimerActivate:Z

    .line 148
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->CALL_PKG:Ljava/lang/String;

    .line 149
    const-string v2, "com.sec.mms"

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->MSG_PKG:Ljava/lang/String;

    .line 150
    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->EMAIL_PKG:Ljava/lang/String;

    .line 151
    iput v6, p0, Lcom/android/internal/widget/LockPatternUtils;->REQ_INDEX_CALL_EMAIL:I

    .line 152
    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/widget/LockPatternUtils;->REQ_INDEX_MSG:I

    .line 153
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/LockPatternUtils;->NOTI_NONE_COUNT:I

    .line 170
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 174
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_100

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password_history.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "recovery_password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    .line 183
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_115

    move v3, v6

    :goto_b0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_117

    move v3, v6

    :goto_c5
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_119

    move v3, v6

    :goto_da
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_11b

    move v3, v6

    :goto_ef
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    const/16 v1, 0x388

    .line 190
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 207
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 210
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_100
    sput-boolean v5, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    .line 213
    const-string v2, "lock_pattern_autolock"

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    .line 216
    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    if-eqz v2, :cond_114

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->readSimLockState()Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 218
    :cond_114
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_115
    move v3, v5

    .line 183
    goto :goto_b0

    :cond_117
    move v3, v5

    .line 184
    goto :goto_c5

    :cond_119
    move v3, v5

    .line 185
    goto :goto_da

    :cond_11b
    move v3, v5

    .line 186
    goto :goto_ef
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordComplexChars(Ljava/lang/String;)I
    .registers 5
    .parameter "password"

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, countComplex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 635
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 636
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_14

    .line 637
    add-int/lit8 v0, v0, 0x1

    .line 635
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 640
    :cond_17
    return v0
.end method

.method public static computePasswordHasSymbol(Ljava/lang/String;)Z
    .registers 4
    .parameter "password"

    .prologue
    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 645
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 646
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 648
    const/4 v2, 0x1

    .line 651
    :goto_1c
    return v2

    .line 645
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 651
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 606
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 607
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 608
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 609
    const/4 v0, 0x1

    .line 607
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 611
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 615
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 616
    const/high16 v4, 0x5

    .line 624
    :goto_1f
    return v4

    .line 618
    :cond_20
    if-eqz v1, :cond_25

    .line 619
    const/high16 v4, 0x4

    goto :goto_1f

    .line 621
    :cond_25
    if-eqz v0, :cond_2a

    .line 622
    const/high16 v4, 0x2

    goto :goto_1f

    .line 624
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/32 v4, 0x20000

    .line 799
    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 802
    .local v0, passwordPolicy:J
    cmp-long v3, v0, v4

    if-nez v3, :cond_12

    .line 803
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomNumericString()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, ret:Ljava/lang/String;
    :goto_11
    return-object v2

    .line 805
    .end local v2           #ret:Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_11
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .registers 5
    .parameter "secureSettingKey"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1238
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "lockscreen.password_salt"

    .line 1012
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1013
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_24

    .line 1015
    :try_start_e
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1016
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1017
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_24} :catch_29

    .line 1024
    :cond_24
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1018
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 1020
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private nonEmptyFileExists(Ljava/lang/String;)Z
    .registers 7
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 425
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v2, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    .line 427
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_15

    .line 428
    const/4 v3, 0x1

    .line 432
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    :goto_10
    return v3

    .line 429
    :catch_11
    move-exception v3

    move-object v0, v3

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v3, v4

    .line 430
    goto :goto_10

    .line 431
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_15
    move-exception v3

    move-object v1, v3

    .local v1, ioe:Ljava/io/IOException;
    move v3, v4

    .line 432
    goto :goto_10
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 991
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 992
    const/4 v7, 0x0

    .line 1006
    :goto_3
    return-object v7

    .line 995
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 996
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 997
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 998
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 999
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 997
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1002
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v3

    .line 1003
    .local v3, md:Landroid/security/MessageDigest;
    invoke-virtual {v3, v6}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_30

    move-result-object v1

    .local v1, hash:[B
    move-object v7, v1

    .line 1004
    goto :goto_3

    .line 1005
    .end local v1           #hash:[B
    .end local v3           #md:Landroid/security/MessageDigest;
    :catch_30
    move-exception v7

    move-object v4, v7

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v7, v6

    .line 1006
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 971
    const-string v4, ""

    .line 980
    :goto_4
    return-object v4

    .line 973
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 975
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 976
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 977
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 978
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 980
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private readSimLockState()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "0"

    .line 1305
    const-string/jumbo v2, "ril.pin_mode"

    const-string v3, "0"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, pinMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1308
    .local v0, isAirplaneMode:I
    if-ne v0, v5, :cond_19

    move v2, v4

    .line 1312
    :goto_18
    return v2

    .line 1309
    :cond_19
    if-nez v1, :cond_1d

    move v2, v4

    goto :goto_18

    .line 1310
    :cond_1d
    const-string v2, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move v2, v4

    goto :goto_18

    .line 1311
    :cond_27
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    move v2, v5

    goto :goto_18

    :cond_31
    move v2, v4

    .line 1312
    goto :goto_18
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1257
    return-void

    .line 1254
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1289
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 956
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 957
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 958
    aget-byte v0, v1, v2

    .line 959
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 961
    .end local v0           #b:B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    const-string v5, "0123456789ABCDEF"

    .line 1052
    const-string v0, "0123456789ABCDEF"

    .line 1053
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 1054
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_45

    .line 1055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1058
    :cond_45
    return-object v2
.end method


# virtual methods
.method public addUnlockCounter()V
    .registers 6

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUnlockCounter()J

    move-result-wide v0

    .line 1117
    .local v0, current_count:J
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b

    .line 1119
    :goto_a
    return-void

    .line 1118
    :cond_b
    const-string/jumbo v2, "unlock_counter"

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    goto :goto_a
.end method

.method public checkDevicePasswordExpired()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    .line 274
    .local v0, checkExpires:I
    if-gtz v0, :cond_f

    move v7, v9

    .line 319
    :goto_e
    return v7

    .line 276
    :cond_f
    const/4 v4, 0x0

    .line 279
    .local v4, pwd:Ljava/lang/String;
    :try_start_10
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v5, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 281
    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 282
    .local v2, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 283
    if-gtz v2, :cond_2e

    move v7, v10

    .line 284
    goto :goto_e

    .line 287
    :cond_2e
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_31} :catch_36
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_31} :catch_3a

    move-result-object v4

    .line 293
    if-nez v4, :cond_3e

    move v7, v9

    .line 294
    goto :goto_e

    .line 288
    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :catch_36
    move-exception v7

    move-object v1, v7

    .local v1, fnfe:Ljava/io/FileNotFoundException;
    move v7, v10

    .line 289
    goto :goto_e

    .line 290
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v7

    move-object v3, v7

    .local v3, ioe:Ljava/io/IOException;
    move v7, v10

    .line 291
    goto :goto_e

    .line 319
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordExpired()Z

    move-result v7

    goto :goto_e
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    .line 395
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 396
    invoke-static {p1}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    .line 412
    :goto_b
    return v5

    .line 400
    :cond_c
    :try_start_c
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 402
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 403
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 404
    if-gtz v1, :cond_2a

    move v5, v7

    .line 405
    goto :goto_b

    .line 408
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_31} :catch_33
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_31} :catch_37

    move-result v5

    goto :goto_b

    .line 409
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_33
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 410
    goto :goto_b

    .line 411
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_37
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 412
    goto :goto_b
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    .line 370
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 372
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 373
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 374
    if-gtz v1, :cond_1f

    move v5, v7

    .line 382
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1e
    return v5

    .line 378
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1f
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_2c

    move-result v5

    goto :goto_1e

    .line 379
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_28
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 380
    goto :goto_1e

    .line 381
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_2c
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 382
    goto :goto_1e
.end method

.method public clearLock()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .line 522
    const/high16 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 524
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 525
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 526
    return-void
.end method

.method public clearLock(Z)V
    .registers 3
    .parameter "notifyChange"

    .prologue
    .line 530
    if-eqz p1, :cond_6

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 537
    :goto_5
    return-void

    .line 533
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    goto :goto_5
.end method

.method public clearLockByForce()V
    .registers 1

    .prologue
    .line 1472
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeKeyByForce()V

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 1474
    return-void
.end method

.method public clearPasswordLock()V
    .registers 4

    .prologue
    .line 544
    const/4 v0, 0x0

    const/high16 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 546
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 547
    return-void
.end method

.method public clearPatternLock()V
    .registers 4

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 553
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 554
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 3

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, activePasswordQuality:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    .line 513
    :cond_8
    :goto_8
    return v0

    .line 493
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 494
    const/high16 v0, 0x1

    goto :goto_8

    .line 498
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 499
    const/high16 v0, 0x2

    goto :goto_8

    .line 503
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 504
    const/high16 v0, 0x4

    goto :goto_8

    .line 508
    :sswitch_24
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 509
    const/high16 v0, 0x5

    goto :goto_8

    .line 491
    nop

    :sswitch_data_2e
    .sparse-switch
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_12
        0x40000 -> :sswitch_1b
        0x50000 -> :sswitch_24
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 160
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;
    .registers 9
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 1332
    const/4 v0, -0x1

    .line 1333
    .local v0, index:I
    const/4 v3, 0x1

    .line 1334
    .local v3, reqNum:I
    const-string v2, "com.android.phone"

    .line 1337
    .local v2, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1340
    .local v1, mNM:Landroid/app/NotificationManager;
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v4, :cond_1f

    const-string v2, "com.android.phone"

    .line 1345
    :goto_16
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v0

    .line 1347
    const/4 v4, -0x1

    if-ne v0, v4, :cond_31

    move-object v4, v6

    .line 1348
    :goto_1e
    return-object v4

    .line 1341
    :cond_1f
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v4, :cond_28

    const-string v2, "com.sec.mms"

    const/16 v3, 0x7b

    goto :goto_16

    .line 1342
    :cond_28
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedEMail:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v4, :cond_2f

    const-string v2, "com.android.email"

    goto :goto_16

    :cond_2f
    move-object v4, v6

    .line 1343
    goto :goto_1e

    .line 1348
    :cond_31
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getEventIntent(I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1e
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 4

    .prologue
    .line 942
    const-string/jumbo v0, "ram"

    const-string v1, "encryption.bootmode"

    const-string/jumbo v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 943
    const/high16 v0, 0x5

    .line 945
    :goto_14
    return v0

    :cond_15
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_14
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 1156
    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1157
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1158
    .local v2, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_19

    :cond_17
    move-wide v4, v6

    .line 1161
    :goto_18
    return-wide v4

    :cond_19
    move-wide v4, v0

    goto :goto_18
.end method

.method public getMinPasswordComplexChars()I
    .registers 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1193
    :cond_11
    const/4 v1, 0x0

    .line 1195
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method public getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I
    .registers 10
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    .line 1358
    const/4 v1, -0x1

    .line 1359
    .local v1, index:I
    const/4 v4, 0x1

    .line 1360
    .local v4, reqNum:I
    const/4 v0, 0x0

    .line 1361
    .local v0, count:I
    const-string v3, "com.android.phone"

    .line 1363
    .local v3, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1364
    .local v2, mNM:Landroid/app/NotificationManager;
    if-nez v2, :cond_15

    move v5, v7

    .line 1381
    :goto_14
    return v5

    .line 1368
    :cond_15
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_24

    const-string v3, "com.android.phone"

    .line 1373
    :goto_1b
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    .line 1377
    const/4 v5, -0x1

    if-ne v1, v5, :cond_36

    move v5, v7

    goto :goto_14

    .line 1369
    :cond_24
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_2d

    const-string v3, "com.sec.mms"

    const/16 v4, 0x7b

    goto :goto_1b

    .line 1370
    :cond_2d
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedEMail:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_34

    const-string v3, "com.android.email"

    goto :goto_1b

    :cond_34
    move v5, v7

    .line 1371
    goto :goto_14

    .line 1379
    :cond_36
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->getEventCount(I)I

    move-result v0

    move v5, v0

    .line 1381
    goto :goto_14
.end method

.method public getPassword()Ljava/lang/String;
    .registers 10

    .prologue
    .line 325
    const/4 v4, 0x0

    .line 328
    .local v4, pwd:Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v5, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 330
    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 331
    .local v2, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 332
    if-gtz v2, :cond_1f

    .line 333
    const/4 v7, 0x0

    .line 344
    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :goto_1e
    return-object v7

    .line 336
    .restart local v2       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_1f
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_31

    move-result-object v4

    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :goto_23
    move-object v7, v4

    .line 344
    goto :goto_1e

    .line 337
    :catch_25
    move-exception v7

    move-object v1, v7

    .line 338
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 339
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_2b
    move-exception v7

    move-object v3, v7

    .line 340
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 341
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_31
    move-exception v7

    move-object v0, v7

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getPasswordHistorySize()I
    .registers 8

    .prologue
    .line 812
    const/4 v3, 0x0

    .line 814
    .local v3, res:I
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .local v2, raf:Ljava/io/RandomAccessFile;
    :goto_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 820
    :cond_14
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_1f

    .line 822
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    .line 826
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .end local v3           #res:I
    .local v4, res:I
    :goto_1a
    return v4

    .line 823
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_1b
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v4, v3

    .line 824
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1a

    .line 825
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_1f
    move-exception v5

    move-object v1, v5

    .local v1, ioe:Ljava/io/IOException;
    move v4, v3

    .line 826
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1a
.end method

.method public getPhonePassword()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1200
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1201
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getTimerActivate()Z
    .registers 2

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimerActivate:Z

    return v0
.end method

.method public getUnlockCounter()J
    .registers 4

    .prologue
    .line 1122
    const-string/jumbo v0, "unlock_counter"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1067
    const-string/jumbo v2, "ram"

    const-string v3, "encryption.bootmode"

    const-string/jumbo v4, "normal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v5

    .line 1078
    :goto_14
    return v2

    .line 1070
    :cond_15
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1072
    .local v0, mode:J
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1073
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v2

    goto :goto_14

    .line 1078
    :cond_28
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_45

    const-wide/32 v2, 0x40000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_43

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_43

    const-wide/32 v2, 0x50000

    cmp-long v2, v0, v2

    if-nez v2, :cond_45

    :cond_43
    move v2, v5

    goto :goto_14

    :cond_45
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public isLockPatternEnabled()Z
    .registers 5

    .prologue
    const-wide/32 v2, 0x10000

    .line 1088
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isMissedEventRemained()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1392
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1394
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_12

    move v1, v5

    .line 1405
    :goto_11
    return v1

    .line 1398
    :cond_12
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_1c

    move v1, v3

    goto :goto_11

    .line 1399
    :cond_1c
    const-string v1, "com.sec.mms"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_28

    move v1, v3

    goto :goto_11

    :cond_28
    move v1, v5

    .line 1405
    goto :goto_11
.end method

.method public isPatternEverChosen()Z
    .registers 2

    .prologue
    .line 482
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPatternLockActivated()Z
    .registers 2

    .prologue
    .line 1224
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 2

    .prologue
    .line 1170
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneLock()Z
    .registers 3

    .prologue
    .line 1206
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1207
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .line 1293
    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_3d

    move v1, v8

    .line 1294
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v5, 0x20000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x40000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x50000

    cmp-long v5, v2, v5

    if-nez v5, :cond_3f

    :cond_24
    move v0, v8

    .line 1297
    .local v0, isPassword:Z
    :goto_25
    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_3b

    :cond_33
    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_3b
    move v4, v8

    .line 1299
    .local v4, secure:Z
    :goto_3c
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_3d
    move v1, v7

    .line 1293
    goto :goto_f

    .restart local v1       #isPattern:Z
    :cond_3f
    move v0, v7

    .line 1294
    goto :goto_25

    .restart local v0       #isPassword:Z
    :cond_41
    move v4, v7

    .line 1297
    goto :goto_3c
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 1316
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 1129
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 2

    .prologue
    .line 1104
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 1035
    if-nez p1, :cond_4

    .line 1036
    const/4 v6, 0x0

    .line 1048
    :goto_3
    return-object v6

    .line 1038
    :cond_4
    const/4 v0, 0x0

    .line 1039
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1041
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1042
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1043
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1044
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_52

    move-result-object v2

    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :goto_50
    move-object v6, v2

    .line 1048
    goto :goto_3

    .line 1045
    :catch_52
    move-exception v6

    move-object v1, v6

    .line 1046
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 355
    return-void
.end method

.method public reportPhoneUnlocked()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1212
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    .line 1213
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    .line 1216
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1217
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1218
    const-string v1, "0"

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 1219
    :cond_1d
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 359
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1450
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1452
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1453
    const/4 v1, 0x1

    .line 1458
    :goto_14
    return v1

    .line 1455
    :catch_15
    move-exception v1

    .line 1458
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 22
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 665
    if-eqz p1, :cond_e

    .line 669
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;ZI)V

    .line 720
    :goto_d
    return-void

    .line 675
    :cond_e
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 676
    invoke-static/range {p1 .. p1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    .line 680
    :cond_17
    :try_start_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v16

    .line 683
    .local v16, hash:[B
    new-instance v18, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "rw"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .local v18, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_7e

    .line 686
    const-wide/16 v9, 0x0

    move-object/from16 v0, v18

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 690
    :goto_33
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 693
    .local v4, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_bb

    .line 694
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v5

    .line 695
    .local v5, computedQuality:I
    const-string v6, "lockscreen.password_type"

    int-to-long v9, v5

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 696
    if-eqz v5, :cond_ac

    .line 698
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v7

    .line 699
    .local v7, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v8

    .line 700
    .local v8, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_60} :catch_8d

    goto :goto_d

    .line 713
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #computedQuality:I
    .end local v7           #countComplex:I
    .end local v8           #hasSymbol:Z
    .end local v16           #hash:[B
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    :catch_61
    move-exception v6

    move-object v15, v6

    .line 715
    .local v15, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 688
    .end local v15           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v16       #hash:[B
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_7e
    const/4 v6, 0x0

    :try_start_7f
    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_8c} :catch_61
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8c} :catch_8d

    goto :goto_33

    .line 716
    .end local v16           #hash:[B
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    :catch_8d
    move-exception v6

    move-object/from16 v17, v6

    .line 718
    .local v17, ioe:Ljava/io/IOException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 705
    .end local v17           #ioe:Ljava/io/IOException;
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #computedQuality:I
    .restart local v16       #hash:[B
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_ac
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v14, v0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    goto/16 :goto_d

    .line 710
    .end local v5           #computedQuality:I
    :cond_bb
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v14, v0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_c8} :catch_61
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c8} :catch_8d

    goto/16 :goto_d
.end method

.method public saveLockPassword(Ljava/lang/String;ZI)V
    .registers 28
    .parameter "password"
    .parameter "saveHistory"
    .parameter "quality"

    .prologue
    .line 832
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v20

    .line 834
    .local v20, hash:[B
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 836
    invoke-static/range {p1 .. p1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    .line 841
    :cond_d
    :try_start_d
    new-instance v22, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v8, "rw"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .local v22, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_e5

    .line 845
    const-wide/16 v10, 0x0

    move-object/from16 v0, v22

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 849
    :goto_25
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V

    .line 852
    if-eqz p2, :cond_ba

    .line 855
    const/16 v18, -0x1

    .line 856
    .local v18, existingPwdId:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v17

    .line 857
    .local v17, convertedStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "password like \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 865
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_7f

    .line 866
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7a

    .line 867
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 868
    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 870
    :cond_7a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 871
    const/16 v16, 0x0

    .line 876
    :cond_7f
    const/4 v7, -0x1

    move/from16 v0, v18

    move v1, v7

    if-ne v0, v1, :cond_113

    .line 877
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 878
    .local v23, values:Landroid/content/ContentValues;
    const-string/jumbo v7, "password"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string/jumbo v7, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 902
    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #convertedStr:Ljava/lang/String;
    .end local v18           #existingPwdId:I
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_ba
    :goto_ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    .line 903
    .local v5, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_184

    .line 904
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v6

    .line 905
    .local v6, computedQuality:I
    const-string v7, "lockscreen.password_type"

    int-to-long v10, v6

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 906
    if-eqz v6, :cond_175

    .line 908
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v8

    .line 909
    .local v8, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v9

    .line 910
    .local v9, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .line 930
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v6           #computedQuality:I
    .end local v8           #countComplex:I
    .end local v9           #hasSymbol:Z
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    :goto_e4
    return-void

    .line 847
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_e5
    const/4 v7, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_f3
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_f3} :catch_f5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_f3} :catch_156

    goto/16 :goto_25

    .line 923
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    :catch_f5
    move-exception v7

    move-object/from16 v19, v7

    .line 925
    .local v19, fnfe:Ljava/io/FileNotFoundException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save lock pattern to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 887
    .end local v19           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v17       #convertedStr:Ljava/lang/String;
    .restart local v18       #existingPwdId:I
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_113
    :try_start_113
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 888
    .restart local v23       #values:Landroid/content/ContentValues;
    const-string/jumbo v7, "password"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string/jumbo v7, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v10, v0

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v23

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/io/FileNotFoundException; {:try_start_113 .. :try_end_154} :catch_f5
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_154} :catch_156

    goto/16 :goto_ba

    .line 926
    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #convertedStr:Ljava/lang/String;
    .end local v18           #existingPwdId:I
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_156
    move-exception v7

    move-object/from16 v21, v7

    .line 928
    .local v21, ioe:Ljava/io/IOException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save lock pattern to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e4

    .line 915
    .end local v21           #ioe:Ljava/io/IOException;
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v6       #computedQuality:I
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_175
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v15, v0

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    goto/16 :goto_e4

    .line 920
    .end local v6           #computedQuality:I
    :cond_184
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v15, v0

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_191
    .catch Ljava/io/FileNotFoundException; {:try_start_179 .. :try_end_191} :catch_f5
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_191} :catch_156

    goto/16 :goto_e4
.end method

.method public saveLockPasswordByForce(Ljava/lang/String;I)V
    .registers 3
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockByForce()V

    .line 1468
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 1469
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v11, "Unable to save lock pattern to "

    const-string v10, "LockPatternUtils"

    .line 562
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v7

    .line 565
    .local v7, hash:[B
    if-eqz p1, :cond_e

    .line 566
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    .line 573
    :cond_e
    :try_start_e
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v9, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v9, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_44

    .line 576
    const-wide/16 v1, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 580
    :goto_1f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 581
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 582
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_67

    .line 583
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 584
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 585
    const/high16 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .line 598
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :goto_43
    return-void

    .line 578
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_44
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v9, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_49} :catch_71

    goto :goto_1f

    .line 591
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_4a
    move-exception v1

    move-object v6, v1

    .line 593
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    const-string v1, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock pattern to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 588
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_67
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_6b
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_70} :catch_4a
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71

    goto :goto_43

    .line 594
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_71
    move-exception v1

    move-object v8, v1

    .line 596
    .local v8, ioe:Ljava/io/IOException;
    const-string v1, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock pattern to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public savedPasswordExists()Z
    .registers 4

    .prologue
    .line 450
    const-string/jumbo v0, "ram"

    const-string v1, "encryption.bootmode"

    const-string/jumbo v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 451
    const/4 v0, 0x1

    .line 453
    :goto_13
    return v0

    :cond_14
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_13
.end method

.method public savedPasswordHistoryExists()Z
    .registers 2

    .prologue
    .line 463
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .registers 2

    .prologue
    .line 441
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedRecoveryPasswordExists()Z
    .registers 2

    .prologue
    .line 471
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1097
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1098
    return-void
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1146
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1147
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 1182
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1183
    return-void
.end method

.method public setSimLockedComplete()V
    .registers 2

    .prologue
    .line 1320
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 1321
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1136
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1137
    return-void
.end method

.method public setTimerActivate(Z)V
    .registers 3
    .parameter "set"

    .prologue
    .line 1476
    if-eqz p1, :cond_6

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimerActivate:Z

    .line 1481
    :goto_5
    return-void

    .line 1479
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimerActivate:Z

    goto :goto_5
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1111
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1112
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .registers 13
    .parameter "button"

    .prologue
    const/4 v9, 0x0

    const-string v10, "LockPatternUtils"

    .line 1414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    .line 1417
    .local v4, newState:I
    const/4 v3, 0x0

    .line 1419
    .local v3, isVoIPState:Z
    :try_start_c
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1420
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_3b

    .line 1421
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVoIPDialing()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVoIPActivated()Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_43

    move-result v7

    if-eqz v7, :cond_39

    :cond_25
    const/4 v7, 0x1

    move v3, v7

    .line 1430
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_27
    const/4 v7, 0x2

    if-eq v4, v7, :cond_2c

    if-eqz v3, :cond_4d

    .line 1432
    :cond_2c
    const v6, 0x1040329

    .line 1433
    .local v6, textId:I
    const v5, 0x1080084

    .line 1434
    .local v5, phoneCallIcon:I
    invoke-virtual {p1, v5, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1440
    .end local v5           #phoneCallIcon:I
    :goto_35
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(I)V

    .line 1441
    return-void

    .end local v6           #textId:I
    .restart local v2       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_39
    move v3, v9

    .line 1421
    goto :goto_27

    .line 1423
    :cond_3b
    :try_start_3b
    const-string v7, "LockPatternUtils"

    const-string v8, "failed to get ITelephony interface"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_27

    .line 1425
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_43
    move-exception v7

    move-object v1, v7

    .line 1426
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "LockPatternUtils"

    const-string v7, "RemoteException from getPhoneInterface()"

    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1436
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_4d
    const v6, 0x1040328

    .line 1437
    .restart local v6       #textId:I
    const v0, 0x10801ab

    .line 1438
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_35
.end method

.method public verifyPasswordHistory(Ljava/lang/String;)Z
    .registers 15
    .parameter "pwd"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v7

    .line 242
    .local v7, checkHistory:I
    if-gtz v7, :cond_f

    move v0, v11

    .line 269
    :goto_e
    return v0

    .line 245
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    .line 246
    .local v10, hash:[B
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, convertedStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string/jumbo v3, "password"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_date IS NOT NULL ORDER BY set_date DESC LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5f

    .line 258
    :cond_46
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 259
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, existingPwd:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 263
    goto :goto_e

    .line 266
    .end local v9           #existingPwd:Ljava/lang/String;
    :cond_5b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    const/4 v6, 0x0

    :cond_5f
    move v0, v11

    .line 269
    goto :goto_e
.end method
