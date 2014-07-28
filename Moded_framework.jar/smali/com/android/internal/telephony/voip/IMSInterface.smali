.class public final Lcom/android/internal/telephony/voip/IMSInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "IMSInterface.java"


# static fields
.field private static CallIndex:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DBG:Z = false

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_END_CALL_SIMULATE:I = 0x13

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_IMS_NOT_ON:I = 0x14

.field protected static final EVENT_IMS_NOT_REGISTERED:I = 0x15

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field protected static final EVENT_VOIP_CALL_STATE_CHANGE:I = 0x11

.field protected static final EVENT_VOIP_NEW_RINGING_CALL:I = 0x12

.field private static final IMS_EVENT_CALL_ACTIVE:I = 0x3

.field private static final IMS_EVENT_CALL_ALERT:I = 0x2

.field private static final IMS_EVENT_CALL_DIAL:I = 0x1

.field private static final IMS_EVENT_CALL_DISCONNECT:I = 0x7

.field private static final IMS_EVENT_CALL_HOLD:I = 0x4

.field private static final IMS_EVENT_CALL_IDLE:I = 0x0

.field private static final IMS_EVENT_CALL_INCOMING:I = 0x5

.field private static final IMS_EVENT_CALL_WAITING:I = 0x6

.field private static final IMS_GET_CURRENT_CALLS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "VOIPPhone/IMSInterface"

.field private static bImsRegisterDone:Z

.field private static iEnablerIndex:I

.field private static mVTHandler:Landroid/os/Handler;


# instance fields
.field ImsCallIDList:Ljava/util/List;

.field ImsCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation
.end field

.field private callid:I

.field private isVideoCall:Z

.field mContext:Landroid/content/Context;

.field private mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsManager:Lcom/sec/android/internal/ims/IMSService;

.field mRilCm:Lcom/android/internal/telephony/CommandsInterface;

.field mVOIPCallStateRegistrants:Landroid/os/RegistrantList;

.field mVoipCTHandler:Landroid/os/Handler;

.field myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/voip/IMSInterface;->DBG:Z

    .line 84
    sput-boolean v2, Lcom/android/internal/telephony/voip/IMSInterface;->bImsRegisterDone:Z

    .line 120
    sput v2, Lcom/android/internal/telephony/voip/IMSInterface;->CallIndex:I

    .line 121
    sput v2, Lcom/android/internal/telephony/voip/IMSInterface;->iEnablerIndex:I

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->isVideoCall:Z

    .line 119
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVOIPCallStateRegistrants:Landroid/os/RegistrantList;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallIDList:Ljava/util/List;

    .line 124
    iput-object v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    .line 125
    iput-object v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mContext:Landroid/content/Context;

    .line 126
    iput-object v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 131
    new-instance v1, Lcom/android/internal/telephony/voip/IMSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/voip/IMSInterface$1;-><init>(Lcom/android/internal/telephony/voip/IMSInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 926
    new-instance v1, Lcom/android/internal/telephony/voip/IMSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/voip/IMSInterface$2;-><init>(Lcom/android/internal/telephony/voip/IMSInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->myHandler:Landroid/os/Handler;

    .line 475
    iput-object p1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mContext:Landroid/content/Context;

    .line 476
    sget-boolean v1, Lcom/android/internal/telephony/voip/IMSInterface;->bImsRegisterDone:Z

    if-nez v1, :cond_47

    .line 477
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/IMSInterface;->getIMSInstance(Landroid/content/Context;)V

    .line 482
    :try_start_3e
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget-object v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_48

    .line 494
    :goto_45
    sput-boolean v3, Lcom/android/internal/telephony/voip/IMSInterface;->bImsRegisterDone:Z

    .line 498
    :cond_47
    return-void

    .line 483
    :catch_48
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 3
    .parameter "context"
    .parameter "sCommandsInterface"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/IMSInterface;-><init>(Landroid/content/Context;)V

    .line 469
    iput-object p2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 470
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/voip/IMSInterface;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/voip/IMSInterface;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/voip/IMSInterface;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/voip/IMSInterface;->updateCallsList(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/voip/IMSInterface;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/IMSInterface;->deleteFromCallsList(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/voip/IMSInterface;Ljava/lang/String;IZI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/voip/IMSInterface;->addToCallsList(Ljava/lang/String;IZI)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/voip/IMSInterface;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->isVideoCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/voip/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    return-object v0
.end method

.method private addToCallsList(Ljava/lang/String;IZI)V
    .registers 12
    .parameter "address"
    .parameter "state"
    .parameter "callType"
    .parameter "callId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v6, "VOIPPhone/IMSInterface"

    .line 891
    const-string v2, "VOIPPhone/IMSInterface"

    const-string v2, "  addToCallsList"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 893
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-static {p2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 894
    iput p4, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 895
    iput v4, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 896
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 897
    iput-boolean p3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 898
    iput v4, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 900
    iput-boolean v4, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 901
    iput-boolean v4, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 902
    iget-boolean v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->isVideoCall:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, np:I
    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 905
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 906
    sget-boolean v2, Lcom/android/internal/telephony/voip/IMSInterface;->DBG:Z

    if-eqz v2, :cond_4f

    .line 907
    const-string v2, "VOIPPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  addToCallsList : Address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_4f
    const-string v2, "anonymous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 910
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 911
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 920
    :goto_5b
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 922
    iget-object v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    return-void

    .line 915
    :cond_6b
    iput-object p1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 916
    iput v4, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    goto :goto_5b
.end method

.method private declared-synchronized deleteFromCallsList(I)Z
    .registers 9
    .parameter "callId"

    .prologue
    const-string v4, "VOIPPhone/IMSInterface"

    .line 429
    monitor-enter p0

    const/4 v2, 0x0

    .line 430
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 431
    .local v1, bRetVal:Z
    :try_start_5
    const-string v4, "VOIPPhone/IMSInterface"

    const-string v5, " deleteFromCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    iget-object v4, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 433
    iget-object v4, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 434
    const-string v4, "VOIPPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteFromCallsList    callID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callindex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p1, v4, :cond_4f

    .line 437
    iget-object v4, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_52

    .line 438
    const/4 v1, 0x1

    .line 443
    :cond_4d
    monitor-exit p0

    return v1

    .line 432
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 429
    .end local v3           #i:I
    :catchall_52
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getIMSInstance(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    if-nez v0, :cond_b

    .line 512
    invoke-static {p1}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 518
    :goto_a
    return-void

    .line 516
    :cond_b
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v1, " already obtained the IMSInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static registerVideoEventListener(Landroid/os/Handler;)V
    .registers 1
    .parameter "VTHandler"

    .prologue
    .line 1597
    sput-object p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 1598
    return-void
.end method

.method private stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;
    .registers 3
    .parameter "eventType"

    .prologue
    .line 448
    sparse-switch p1, :sswitch_data_18

    .line 462
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 450
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_4

    .line 452
    :sswitch_8
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_4

    .line 454
    :sswitch_b
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_4

    .line 456
    :sswitch_e
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_4

    .line 458
    :sswitch_11
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_4

    .line 460
    :sswitch_14
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_4

    .line 448
    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_8
        0x5 -> :sswitch_14
        0xca -> :sswitch_11
        0xcb -> :sswitch_b
        0xcd -> :sswitch_e
        0xd0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static unregisterVideoEventListener(Landroid/os/Handler;)V
    .registers 4
    .parameter "VTHandler"

    .prologue
    .line 1602
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterVideoEventListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/voip/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 1604
    return-void
.end method

.method private updateCallList(IZ)V
    .registers 3
    .parameter "state"
    .parameter "callType"

    .prologue
    .line 889
    return-void
.end method

.method private declared-synchronized updateCallsList(II)Z
    .registers 10
    .parameter "eventType"
    .parameter "callID"

    .prologue
    const-string v4, "VOIPPhone/IMSInterface"

    .line 414
    monitor-enter p0

    const/4 v2, 0x0

    .line 415
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 416
    .local v1, bRetVal:Z
    :try_start_5
    const-string v4, "VOIPPhone/IMSInterface"

    const-string v5, " updateCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    iget-object v4, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 418
    iget-object v4, p0, Lcom/android/internal/telephony/voip/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 419
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p2, v4, :cond_46

    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/voip/IMSInterface;->stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 421
    const-string v4, "VOIPPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  present call state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_49

    .line 422
    const/4 v1, 0x1

    .line 426
    :cond_44
    monitor-exit p0

    return v1

    .line 417
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 414
    .end local v3           #i:I
    :catchall_49
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "type"
    .parameter "id"
    .parameter "alertType"
    .parameter "AlertFormat"
    .parameter "AlertSrc"
    .parameter "AlertCorrel"
    .parameter "AlertMark"
    .parameter "AlertData"
    .parameter "response"

    .prologue
    .line 1470
    return-void
.end method

.method public OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "type"
    .parameter "id"
    .parameter "Data"
    .parameter "Len"
    .parameter "response"

    .prologue
    .line 1476
    return-void
.end method

.method public ServerStartSession(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "type"
    .parameter "sessionId"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 1482
    return-void
.end method

.method public SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "CB1_ID"
    .parameter "CB2_ID"
    .parameter "CB3_ID"
    .parameter "ENC"
    .parameter "VER"
    .parameter "maxMsgSize"
    .parameter "Max_obj_size"
    .parameter "Cookie"
    .parameter "Disp_Name"
    .parameter "response"

    .prologue
    .line 1489
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 548
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 974
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1496
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1014
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1023
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1031
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1040
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 1502
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1048
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1056
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 967
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 562
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1063
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "response"

    .prologue
    .line 1071
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1507
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1078
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1086
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 12
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 586
    iget-object v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/internal/ims/IMSService;->makeCall(Ljava/lang/String;I)I

    move-result v2

    .line 587
    .local v2, tmpCallid:I
    const-string v3, "VOIPPhone/IMSInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  dial  makeCall callid returned as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 589
    .local v0, message:Landroid/os/Message;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    .line 591
    iput v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    .line 592
    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/voip/IMSInterface;->addToCallsList(Ljava/lang/String;IZI)V

    .line 594
    iput v7, v0, Landroid/os/Message;->what:I

    .line 595
    iget-object v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    :goto_38
    return-void

    .line 601
    :cond_39
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 603
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v6, :cond_55

    .line 604
    const/16 v3, 0xd4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 608
    :goto_4a
    iput v7, v0, Landroid/os/Message;->what:I

    .line 609
    iget-object v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/voip/IMSInterface;->notifyVOIPCallChanged(Landroid/os/Message;)V

    goto :goto_38

    .line 606
    :cond_55
    const/16 v3, 0xde

    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_4a
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 1628
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 979
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1512
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 505
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1093
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1101
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1109
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1117
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1125
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1133
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1517
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1141
    return-void
.end method

.method public getCdmaDataProfile(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1522
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 1527
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const-string v2, "VOIPPhone/IMSInterface"

    .line 625
    const-string v0, "VOIPPhone/IMSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getCurrentCalls   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v0, "  getCurrentCalls"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1148
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1156
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1164
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1172
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1180
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1188
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1196
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1204
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 8
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 634
    const-string v3, "VOIPPhone/IMSInterface"

    const-string v4, "  getLastCallFailCause"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 636
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0xa

    new-array v1, v3, [I

    .line 637
    .local v1, cause:[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v1, v3

    .line 638
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 639
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 640
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1211
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1219
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 648
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v1, "VOIP getMute..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1224
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 658
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1229
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1234
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1533
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .registers 3
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 1538
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 668
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1239
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 677
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .registers 4
    .parameter "numLockType"
    .parameter "lockType"
    .parameter "result"

    .prologue
    .line 1543
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1244
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1249
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 982
    return-void
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1609
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1548
    return-void
.end method

.method public getWipiSysInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1611
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 1254
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 6
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->endCall(I)V

    .line 695
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 696
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 697
    iget v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->endCall(I)V

    .line 720
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 721
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 722
    iget v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 723
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 725
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/voip/IMSInterface;->rejectCall(Landroid/os/Message;)V

    .line 732
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1260
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 5
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1263
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v1, "invokeOemRilRequestRaw()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_10

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1266
    :cond_10
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1271
    return-void
.end method

.method public notifyVOIPCallChanged(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 883
    const-string v0, "VOIPPhone/IMSInterface"

    const-string v1, "  notifyVOIPCallChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVOIPCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 886
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1276
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1281
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 741
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 749
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1286
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1292
    return-void
.end method

.method public queryLineId(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1617
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1297
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1553
    return-void
.end method

.method public registerCallTrackerHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVoipCTHandler:Landroid/os/Handler;

    .line 877
    return-void
.end method

.method public registerForVOIPCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 871
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 872
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVOIPCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 873
    return-void
.end method

.method public rejectCall()V
    .registers 5

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 554
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x2

    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    invoke-virtual {v1, v2, v3, v3}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 757
    const-string v1, "VOIPPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rejectCall: callId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 759
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 760
    iget v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->callid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1302
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1307
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 772
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1312
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1317
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1322
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 780
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .registers 5
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 1559
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1327
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1565
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 789
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 986
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1332
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 1337
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 797
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1342
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .parameter "clirMode"
    .parameter "response"

    .prologue
    .line 1347
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 806
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 815
    return-void
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .registers 3
    .parameter "cb"
    .parameter "result"

    .prologue
    .line 1570
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1352
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "configValuesArray"
    .parameter "result"

    .prologue
    .line 1357
    return-void
.end method

.method public setCdmaDataProfile(ILandroid/os/Message;)V
    .registers 3
    .parameter "dataConnection"
    .parameter "response"

    .prologue
    .line 1575
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1362
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1367
    return-void
.end method

.method public setCdmaSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "sysPorpertyID"
    .parameter "sysPropertyValue"
    .parameter "response"

    .prologue
    .line 1581
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1373
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1378
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1384
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .registers 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1620
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1389
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1586
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 7
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 823
    const-string v1, "VOIPPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setMicrophoneMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 827
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_2a

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_2a
    if-nez p1, :cond_35

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 829
    :cond_32
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 830
    :cond_35
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1394
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 1400
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .parameter "phoneType"

    .prologue
    .line 837
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 845
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1405
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1410
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1591
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1415
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1420
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1425
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    .line 1432
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "response"

    .prologue
    .line 1438
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 853
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 861
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 1631
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 1443
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1448
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1453
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1458
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 1463
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 869
    return-void
.end method

.method public unregisterForVOIPCallChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mVOIPCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 880
    return-void
.end method

.method public writeErrorData(IIIILjava/lang/String;)V
    .registers 13
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, errString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 288
    .local v0, errCode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 290
    .local v2, flag:I
    const-string v4, "VOIPPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Error Event ---Entering function"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sparse-switch p2, :sswitch_data_84

    .line 398
    :goto_1e
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3a

    .line 401
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v4, "IMS_ERROR_CODE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v4, "IMS_ERROR_STRING"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v4, p0, Lcom/android/internal/telephony/voip/IMSInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3a
    return-void

    .line 295
    :sswitch_3b
    const-string v0, "101"

    .line 296
    const/4 v2, 0x1

    .line 297
    const-string v1, "PPP open failed"

    .line 300
    goto :goto_1e

    .line 304
    :sswitch_41
    const-string v0, "116"

    .line 305
    const/4 v2, 0x1

    .line 306
    const-string v1, "PPP Closed"

    .line 309
    goto :goto_1e

    .line 313
    :sswitch_47
    const-string v0, "202"

    .line 314
    const/4 v2, 0x1

    .line 315
    const-string v1, "SIP register failure"

    .line 317
    goto :goto_1e

    .line 321
    :sswitch_4d
    const-string v0, "203"

    .line 322
    const/4 v2, 0x1

    .line 323
    const-string v1, "SIP register tx failure"

    .line 325
    goto :goto_1e

    .line 329
    :sswitch_53
    const-string v0, "206"

    .line 330
    const/4 v2, 0x1

    .line 331
    const-string v1, "403 resp. for registering"

    .line 333
    goto :goto_1e

    .line 337
    :sswitch_59
    const-string v0, "301"

    .line 338
    const/4 v2, 0x1

    .line 339
    const-string v1, "Media RTP timeout"

    .line 341
    goto :goto_1e

    .line 345
    :sswitch_5f
    const-string v0, "302"

    .line 346
    const/4 v2, 0x1

    .line 347
    const-string v1, "Originate wait QOS timeout"

    .line 349
    goto :goto_1e

    .line 354
    :sswitch_65
    const-string v0, "303"

    .line 355
    const/4 v2, 0x1

    .line 356
    const-string v1, "Invite failure"

    .line 358
    goto :goto_1e

    .line 363
    :sswitch_6b
    const-string v0, "304"

    .line 364
    const/4 v2, 0x1

    .line 365
    const-string v1, "User canceled call"

    .line 367
    goto :goto_1e

    .line 371
    :sswitch_71
    const-string v0, "305"

    .line 372
    const/4 v2, 0x1

    .line 373
    const-string v1, "QOS failure"

    .line 375
    goto :goto_1e

    .line 379
    :sswitch_77
    const-string v0, "307"

    .line 380
    const/4 v2, 0x1

    .line 381
    const-string v1, "Ack for 200 OK but call terminated"

    .line 383
    goto :goto_1e

    .line 387
    :sswitch_7d
    const-string v0, "308"

    .line 388
    const/4 v2, 0x1

    .line 389
    const-string v1, "ACK wait timer timeout"

    goto :goto_1e

    .line 291
    nop

    :sswitch_data_84
    .sparse-switch
        0x6d -> :sswitch_4d
        0x71 -> :sswitch_53
        0xd1 -> :sswitch_77
        0xd2 -> :sswitch_6b
        0xd6 -> :sswitch_65
        0xdb -> :sswitch_7d
        0xde -> :sswitch_3b
        0xe1 -> :sswitch_47
        0xe2 -> :sswitch_5f
        0xe4 -> :sswitch_71
        0xea -> :sswitch_41
        0xeb -> :sswitch_59
    .end sparse-switch
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1625
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 995
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1004
    return-void
.end method
