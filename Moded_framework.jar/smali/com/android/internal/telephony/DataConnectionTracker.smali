.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$1;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static final APN_DEFAULT_ID:I = 0x0

.field protected static final APN_DUN_ID:I = 0x3

.field protected static final APN_HIPRI_ID:I = 0x4

.field protected static final APN_INVALID_ID:I = -0x1

.field protected static final APN_MMS_ID:I = 0x1

.field protected static final APN_NUM_TYPES:I = 0x5

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final APN_SUPL_ID:I = 0x2

.field protected static final DBG:Z = true

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field protected static final DEFAULT_PING_DEADLINE:I = 0x5

.field protected static final DISABLED:I = 0x0

.field protected static final ENABLED:I = 0x1

.field protected static final EVENT_APN_CHANGED:I = 0x1d

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x1e

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x23

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x22

.field public static final EVENT_DATA_SETUP_COMPLETE:I = 0x1

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x6

.field public static final EVENT_DISCONNECT_DONE:I = 0x19

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x17

.field protected static final EVENT_GET_PDP_LIST_COMPLETE:I = 0xb

.field protected static final EVENT_GPRS_ATTACHED:I = 0x1a

.field protected static final EVENT_GPRS_DETACHED:I = 0x13

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x14

.field protected static final EVENT_NV_READY:I = 0x1f

.field protected static final EVENT_POLL_PDP:I = 0x7

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x21

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x20

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field protected static final EVENT_RECORDS_LOADED:I = 0x4

.field protected static final EVENT_RESET_DONE:I = 0x26

.field protected static final EVENT_RESTART_RADIO:I = 0x24

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x18

.field protected static final EVENT_ROAMING_OFF:I = 0x16

.field protected static final EVENT_ROAMING_ON:I = 0x15

.field protected static final EVENT_SET_MASTER_DATA_ENABLE:I = 0x25

.field protected static final EVENT_SIP_REG_NOTI:I = 0x27

.field protected static final EVENT_START_NETSTAT_POLL:I = 0x1b

.field protected static final EVENT_START_RECOVERY:I = 0x1c

.field public static final EVENT_TRY_SETUP_DATA:I = 0x5

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0xf

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0xe

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected alreadyWifiPopupShown:Z

.field protected cidActive:I

.field protected dataEnabled:[Z

.field protected enabledCount:I

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mIsWifiConnected:Z

.field protected mMasterDataEnabled:Z

.field protected mNoRecvPollCount:I

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected mWifiOnoffState:Z

.field protected mWifiState:I

.field protected mWifiZoneState:Z

.field protected netStatPollEnabled:Z

.field protected netStatPollPeriod:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected rxPkts:J

.field protected sentSinceLastRecv:J

.field protected state:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field protected txPkts:J


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 6
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    const-string v0, "DataConnectionTracker"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 129
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 133
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 178
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 179
    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 184
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 188
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 194
    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 201
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->alreadyWifiPopupShown:Z

    .line 202
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mWifiState:I

    .line 203
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mWifiOnoffState:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mWifiZoneState:Z

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 214
    return-void
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    const-string v3, "default"

    .line 423
    packed-switch p1, :pswitch_data_38

    .line 435
    const-string v0, "DataConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in apnIdToType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v0, "default"

    move-object v0, v3

    :goto_26
    return-object v0

    .line 425
    :pswitch_27
    const-string v0, "default"

    move-object v0, v3

    goto :goto_26

    .line 427
    :pswitch_2b
    const-string v0, "mms"

    goto :goto_26

    .line 429
    :pswitch_2e
    const-string/jumbo v0, "supl"

    goto :goto_26

    .line 431
    :pswitch_32
    const-string v0, "dun"

    goto :goto_26

    .line 433
    :pswitch_35
    const-string v0, "hipri"

    goto :goto_26

    .line 423
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2b
        :pswitch_2e
        :pswitch_32
        :pswitch_35
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 407
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    const/4 v0, 0x0

    .line 418
    :goto_9
    return v0

    .line 409
    :cond_a
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 410
    const/4 v0, 0x1

    goto :goto_9

    .line 411
    :cond_14
    const-string/jumbo v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 412
    const/4 v0, 0x2

    goto :goto_9

    .line 413
    :cond_1f
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 414
    const/4 v0, 0x3

    goto :goto_9

    .line 415
    :cond_29
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 416
    const/4 v0, 0x4

    goto :goto_9

    .line 418
    :cond_33
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .registers 10
    .parameter "type"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, ")"

    const-string v2, "DataConnectionTracker"

    .line 521
    monitor-enter p0

    :try_start_8
    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_94

    move-result v1

    .line 523
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    move v2, v7

    .line 554
    :goto_2e
    monitor-exit p0

    return v2

    .line 526
    :cond_30
    :try_start_30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 527
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 530
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDataNetworkDisable()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 532
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    const/4 v2, 0x5

    if-ge v0, v2, :cond_73

    .line 534
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_70

    if-eq v0, v6, :cond_70

    .line 536
    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " DIsabled Apn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 532
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 540
    :cond_73
    const-string v2, "DataConnectionTracker"

    const-string v3, "Set mMasterDataEnabled To false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 544
    .end local v0           #i:I
    :cond_7d
    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 545
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3
    :try_end_8a
    .catchall {:try_start_30 .. :try_end_8a} :catchall_94

    if-eqz v2, :cond_8e

    move v2, v5

    .line 546
    goto :goto_2e

    :cond_8e
    move v2, v6

    .line 548
    goto :goto_2e

    :cond_90
    move v2, v6

    .line 551
    goto :goto_2e

    :cond_92
    move v2, v7

    .line 554
    goto :goto_2e

    .line 521
    .end local v1           #id:I
    :catchall_94
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract dispose()V
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .registers 7
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const-string v1, "DataConnectionTracker"

    .line 478
    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_86

    move-result v0

    .line 479
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 480
    const/4 v1, 0x3

    .line 509
    :goto_c
    monitor-exit p0

    return v1

    .line 483
    :cond_e
    :try_start_e
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 487
    const-string v1, "DataConnectionTracker"

    const-string/jumbo v2, "type not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, 0x2

    goto :goto_c

    .line 493
    :cond_50
    const-string v1, "mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getDataNetworkDisable()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 496
    const-string v1, "DataConnectionTracker"

    const-string v2, "Set mMasterDataEnabled To true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 503
    :cond_6a
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_7c

    move v1, v4

    goto :goto_c

    .line 507
    :cond_7c
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_80
    .catchall {:try_start_e .. :try_end_80} :catchall_86

    if-ne v1, v2, :cond_84

    const/4 v1, 0x0

    goto :goto_c

    :cond_84
    move v1, v4

    .line 509
    goto :goto_c

    .line 478
    .end local v0           #id:I
    :catchall_86
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract getActiveApnString()Ljava/lang/String;
.end method

.method protected abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public getActiveState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public abstract getAllDataConnections()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public getAnyDataEnabled()Z
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized getDataEnabled()Z
    .registers 3

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataOnRoamingEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 275
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_10} :catch_17

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    .line 278
    :goto_14
    return v1

    :cond_15
    move v1, v3

    .line 275
    goto :goto_14

    .line 277
    :catch_17
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 278
    goto :goto_14
.end method

.method protected abstract getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract getGateway(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getIpAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getStateInString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 233
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 241
    const-string v0, "ERRO"

    :goto_f
    return-object v0

    .line 234
    :pswitch_10
    const-string v0, "IDLE"

    goto :goto_f

    .line 235
    :pswitch_13
    const-string v0, "INIT"

    goto :goto_f

    .line 236
    :pswitch_16
    const-string v0, "CING"

    goto :goto_f

    .line 237
    :pswitch_19
    const-string v0, "SCAN"

    goto :goto_f

    .line 238
    :pswitch_1c
    const-string v0, "CNTD"

    goto :goto_f

    .line 239
    :pswitch_1f
    const-string v0, "DING"

    goto :goto_f

    .line 240
    :pswitch_22
    const-string v0, "FAIL"

    goto :goto_f

    .line 233
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 310
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_92

    .line 375
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unidentified event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_21
    return-void

    .line 313
    :sswitch_22
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_21

    .line 317
    :sswitch_2a
    const/4 v1, 0x0

    .line 318
    .local v1, reason:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_35

    .line 319
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #reason:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 321
    .restart local v1       #reason:Ljava/lang/String;
    :cond_35
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_21

    .line 325
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_39
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_44

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 328
    :cond_44
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_21

    .line 332
    :sswitch_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_21

    .line 336
    :sswitch_4c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_21

    .line 340
    :sswitch_50
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_21

    .line 344
    :sswitch_54
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    .line 345
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_21

    .line 349
    :sswitch_60
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_21

    .line 353
    :sswitch_68
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_21

    .line 357
    :sswitch_6c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_21

    .line 361
    :sswitch_70
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_7d

    move v2, v5

    .line 362
    .local v2, tearDown:Z
    :goto_75
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_21

    .end local v2           #tearDown:Z
    :cond_7d
    move v2, v4

    .line 361
    goto :goto_75

    .line 366
    :sswitch_7f
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_88

    move v0, v4

    .line 367
    .local v0, enabled:Z
    :goto_84
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDataEnabled(Z)V

    goto :goto_21

    .end local v0           #enabled:Z
    :cond_88
    move v0, v5

    .line 366
    goto :goto_84

    .line 371
    :sswitch_8a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto :goto_21

    .line 310
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_54
        0x3 -> :sswitch_4c
        0x5 -> :sswitch_2a
        0xc -> :sswitch_50
        0xe -> :sswitch_68
        0xf -> :sswitch_6c
        0x15 -> :sswitch_48
        0x16 -> :sswitch_39
        0x17 -> :sswitch_22
        0x19 -> :sswitch_60
        0x22 -> :sswitch_70
        0x25 -> :sswitch_7f
        0x26 -> :sswitch_8a
    .end sparse-switch
.end method

.method protected abstract isApnTypeActive(Ljava/lang/String;)Z
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isDataConnectionAsDesired()Z
.end method

.method protected declared-synchronized isEnabled(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 461
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 462
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 464
    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 461
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZLjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected declared-synchronized onEnableApn(II)V
    .registers 8
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const-string v1, "default"

    const-string v1, "DataConnectionTracker"

    .line 570
    monitor-enter p0

    :try_start_6
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dataEnabled[apnId] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-ne p2, v4, :cond_8a

    .line 576
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_79

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 578
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 580
    :cond_79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 582
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_88
    .catchall {:try_start_6 .. :try_end_88} :catchall_a5

    .line 599
    .end local v0           #type:Ljava/lang/String;
    :cond_88
    :goto_88
    monitor-exit p0

    return-void

    .line 587
    :cond_8a
    :try_start_8a
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_88

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 589
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 590
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v1, :cond_a8

    .line 591
    const/4 v1, 0x1

    const-string v2, "dataDisabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_a5

    goto :goto_88

    .line 570
    :catchall_a5
    move-exception v1

    monitor-exit p0

    throw v1

    .line 592
    :cond_a8
    :try_start_a8
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-ne v1, v4, :cond_88

    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 594
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_be
    .catchall {:try_start_a8 .. :try_end_be} :catchall_a5

    goto :goto_88
.end method

.method protected onEnableNewApn()V
    .registers 1

    .prologue
    .line 608
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onResetDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDataEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v0, p1, :cond_2b

    .line 632
    const-string v0, "DataConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetDataEnabled : Set mMasterDataEnabled To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 634
    if-eqz p1, :cond_2c

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 636
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 641
    :cond_2b
    :goto_2b
    return-void

    .line 638
    :cond_2c
    const/4 v0, 0x1

    const-string v1, "dataDisabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_2b
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract restartRadio()V
.end method

.method public setDataConnectionToggleExt()I
    .registers 4

    .prologue
    .line 286
    const-string v0, "DataConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataConnectionTracker]: setDataConnectionToggleExt, isDataNetworkDisable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDataNetworkDisable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataNetworkDisable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 288
    const/4 v0, -0x1

    .line 291
    :goto_27
    return v0

    .line 290
    :cond_28
    const/4 v0, 0x1

    const-string v1, "DataconnectionToggle"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setDataEnabled(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 622
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 625
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_2f

    move v1, v4

    :goto_29
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 627
    return v4

    .line 625
    :cond_2f
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public setDataOnRoamingEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_34

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    if-eqz p1, :cond_35

    const/4 v2, 0x1

    :goto_15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 264
    if-eqz p1, :cond_2b

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 267
    :cond_2b
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 270
    :cond_34
    return-void

    .line 261
    :cond_35
    const/4 v2, 0x0

    goto :goto_15
.end method

.method protected setEnabled(IZ)V
    .registers 7
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 559
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with old state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 563
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 564
    if-eqz p2, :cond_4e

    const/4 v1, 0x1

    :goto_48
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 566
    return-void

    .line 564
    :cond_4e
    const/4 v1, 0x0

    goto :goto_48
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected abstract stopNetStatPoll()V
.end method
