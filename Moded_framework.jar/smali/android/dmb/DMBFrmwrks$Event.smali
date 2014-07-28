.class public final enum Landroid/dmb/DMBFrmwrks$Event;
.super Ljava/lang/Enum;
.source "DMBFrmwrks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dmb/DMBFrmwrks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/dmb/DMBFrmwrks$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_ANTENNA_LEVEL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_BUFFERING:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_CAPTURE_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_CAPTURE_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_DM_MONITOR:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_LOCALPLAY_GETINFO:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_LOCALPLAY_PAUSE:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_LOCALPLAY_PLAYING:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_LOCALPLAY_SEEK:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_LOCALPLAY_STOP:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_LOCALPLAY_TICKUPDATE:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_PLAYING:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_POWEROFF_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_POWEROFF_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_POWERON_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_POWERON_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_REC_START_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_REC_START_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_REC_STOP:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SEARCHING:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SEARCHING_CANCEL_DONE:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SEARCHING_CANCEL_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SEARCHING_DONE:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SEARCHING_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SERVER_DIED:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_SETCHANNEL_FAIL:Landroid/dmb/DMBFrmwrks$Event;

.field public static final enum DMB_STOP:Landroid/dmb/DMBFrmwrks$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SERVER_DIED"

    invoke-direct {v0, v1, v3}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SERVER_DIED:Landroid/dmb/DMBFrmwrks$Event;

    .line 72
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_POWERON_SUCCESS"

    invoke-direct {v0, v1, v4}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWERON_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    .line 73
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_POWERON_FAIL"

    invoke-direct {v0, v1, v5}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWERON_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 74
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_POWEROFF_SUCCESS"

    invoke-direct {v0, v1, v6}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWEROFF_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    .line 75
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_POWEROFF_FAIL"

    invoke-direct {v0, v1, v7}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWEROFF_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 76
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SEARCHING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING:Landroid/dmb/DMBFrmwrks$Event;

    .line 77
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SEARCHING_DONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_DONE:Landroid/dmb/DMBFrmwrks$Event;

    .line 78
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SEARCHING_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 79
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SEARCHING_CANCEL_DONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_CANCEL_DONE:Landroid/dmb/DMBFrmwrks$Event;

    .line 80
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SEARCHING_CANCEL_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_CANCEL_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 81
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_BUFFERING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_BUFFERING:Landroid/dmb/DMBFrmwrks$Event;

    .line 82
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_SETCHANNEL_FAIL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_SETCHANNEL_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 83
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_PLAYING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_PLAYING:Landroid/dmb/DMBFrmwrks$Event;

    .line 84
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_STOP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_STOP:Landroid/dmb/DMBFrmwrks$Event;

    .line 85
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_LOCALPLAY_PLAYING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_PLAYING:Landroid/dmb/DMBFrmwrks$Event;

    .line 86
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_LOCALPLAY_TICKUPDATE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_TICKUPDATE:Landroid/dmb/DMBFrmwrks$Event;

    .line 87
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_LOCALPLAY_STOP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_STOP:Landroid/dmb/DMBFrmwrks$Event;

    .line 88
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_LOCALPLAY_SEEK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_SEEK:Landroid/dmb/DMBFrmwrks$Event;

    .line 89
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_LOCALPLAY_PAUSE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_PAUSE:Landroid/dmb/DMBFrmwrks$Event;

    .line 90
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_LOCALPLAY_GETINFO"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_GETINFO:Landroid/dmb/DMBFrmwrks$Event;

    .line 91
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_REC_START_SUCCESS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_REC_START_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    .line 92
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_REC_START_FAIL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_REC_START_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 93
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_REC_STOP"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_REC_STOP:Landroid/dmb/DMBFrmwrks$Event;

    .line 94
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_CAPTURE_SUCCESS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_CAPTURE_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    .line 95
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_CAPTURE_FAIL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_CAPTURE_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    .line 96
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_DM_MONITOR"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_DM_MONITOR:Landroid/dmb/DMBFrmwrks$Event;

    .line 97
    new-instance v0, Landroid/dmb/DMBFrmwrks$Event;

    const-string v1, "DMB_ANTENNA_LEVEL"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Landroid/dmb/DMBFrmwrks$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->DMB_ANTENNA_LEVEL:Landroid/dmb/DMBFrmwrks$Event;

    .line 70
    const/16 v0, 0x1b

    new-array v0, v0, [Landroid/dmb/DMBFrmwrks$Event;

    sget-object v1, Landroid/dmb/DMBFrmwrks$Event;->DMB_SERVER_DIED:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v1, v0, v3

    sget-object v1, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWERON_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v1, v0, v4

    sget-object v1, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWERON_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v1, v0, v5

    sget-object v1, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWEROFF_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v1, v0, v6

    sget-object v1, Landroid/dmb/DMBFrmwrks$Event;->DMB_POWEROFF_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_DONE:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_CANCEL_DONE:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_SEARCHING_CANCEL_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_BUFFERING:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_SETCHANNEL_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_PLAYING:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_STOP:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_PLAYING:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_TICKUPDATE:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_STOP:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_SEEK:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_PAUSE:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_LOCALPLAY_GETINFO:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_REC_START_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_REC_START_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_REC_STOP:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_CAPTURE_SUCCESS:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_CAPTURE_FAIL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_DM_MONITOR:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/dmb/DMBFrmwrks$Event;->DMB_ANTENNA_LEVEL:Landroid/dmb/DMBFrmwrks$Event;

    aput-object v2, v0, v1

    sput-object v0, Landroid/dmb/DMBFrmwrks$Event;->$VALUES:[Landroid/dmb/DMBFrmwrks$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/dmb/DMBFrmwrks$Event;
    .registers 2
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Landroid/dmb/DMBFrmwrks$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/dmb/DMBFrmwrks$Event;

    return-object p0
.end method

.method public static values()[Landroid/dmb/DMBFrmwrks$Event;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Landroid/dmb/DMBFrmwrks$Event;->$VALUES:[Landroid/dmb/DMBFrmwrks$Event;

    invoke-virtual {v0}, [Landroid/dmb/DMBFrmwrks$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dmb/DMBFrmwrks$Event;

    return-object v0
.end method
