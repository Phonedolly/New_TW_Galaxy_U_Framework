.class final Lcom/android/internal/telephony/cdma/PppLink;
.super Lcom/android/internal/telephony/DataLink;
.source "PppLink.java"


# static fields
.field static final DOWN_ASCII_STRING:[B = null

.field static final EVENT_POLL_DATA_CONNECTION:I = 0x2

.field static final EVENT_POLL_DATA_CONNECTION_COMPLETE:I = 0xa

.field static final EVENT_PPP_OPERSTATE_CHANGED:I = 0x8

.field static final EVENT_PPP_PIDFILE_CHANGED:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PATH_PPP_OPERSTATE:Ljava/lang/String; = "/sys/class/net/ppp0/operstate"

.field static final POLL_SYSFS_MILLIS:I = 0x1f4

.field static final PROPERTY_PPPD_EXIT_CODE:Ljava/lang/String; = "net.cdma.ppp-exit"

.field static final SERVICE_PPPD_CDMA:Ljava/lang/String; = "pppd_cdma"

.field static final UNKNOWN_ASCII_STRING:[B

.field static final UP_ASCII_STRING:[B


# instance fields
.field lastPppdExitCode:I

.field private final mCheckPPPBuffer:[B

.field private phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    return-void

    .line 57
    nop

    :array_1a
    .array-data 0x1
        0x75t
        0x70t
    .end array-data

    .line 61
    nop

    :array_20
    .array-data 0x1
        0x64t
        0x6ft
        0x77t
        0x6et
    .end array-data

    .line 67
    :array_26
    .array-data 0x1
        0x75t
        0x6et
        0x6bt
        0x6et
        0x6ft
        0x77t
        0x6et
    .end array-data
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 4
    .parameter "dc"
    .parameter "p"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataLink;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 76
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    .line 85
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/PppLink;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 86
    return-void
.end method

.method private checkPPP()V
    .registers 11

    .prologue
    const-string v9, ""

    const-string v8, "CDMA"

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v5, v6, :cond_a3

    const/4 v5, 0x1

    move v0, v5

    .line 175
    .local v0, connecting:Z
    :goto_e
    :try_start_e
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "/sys/class/net/ppp0/operstate"

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v3, file:Ljava/io/RandomAccessFile;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 177
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    sget-object v7, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    array-length v7, v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    sget-object v7, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    array-length v7, v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v5, v6, :cond_a7

    .line 186
    :cond_42
    const-string v5, "CDMA"

    const-string v6, "found ppp interface. Notifying CDMA connected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v5, :cond_5f

    .line 190
    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 194
    .local v4, poll:Landroid/os/Message;
    const/16 v5, 0xa

    iput v5, v4, Landroid/os/Message;->what:I

    .line 195
    const-wide/16 v5, 0x2bc

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_5f} :catch_ca

    .line 200
    .end local v4           #poll:Landroid/os/Message;
    :cond_5f
    const/4 v0, 0x0

    .line 231
    .end local v3           #file:Ljava/io/RandomAccessFile;
    :cond_60
    :goto_60
    if-eqz v0, :cond_a2

    .line 234
    const-string/jumbo v5, "net.cdma.ppp-exit"

    const-string v6, ""

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, exitCode:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    .line 241
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pppd exited with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 244
    iget-object v5, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v5, :cond_a2

    .line 245
    iget-object v5, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v6, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v5, v6}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 250
    .end local v2           #exitCode:Ljava/lang/String;
    :cond_a2
    return-void

    .line 172
    .end local v0           #connecting:Z
    :cond_a3
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_e

    .line 201
    .restart local v0       #connecting:Z
    .restart local v3       #file:Ljava/io/RandomAccessFile;
    :cond_a7
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v5, v6, :cond_60

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    sget-object v7, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    array-length v7, v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 204
    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 205
    const-string v5, "CDMA"

    const-string/jumbo v6, "ppp interface went down."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c9} :catch_ca

    goto :goto_60

    .line 215
    .end local v3           #file:Ljava/io/RandomAccessFile;
    :catch_ca
    move-exception v5

    move-object v1, v5

    .line 216
    .local v1, ex:Ljava/io/IOException;
    instance-of v5, v1, Ljava/io/FileNotFoundException;

    if-nez v5, :cond_ec

    .line 217
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poll ppp0 ex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_ec
    iget-object v5, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_60

    iget-object v5, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v5, :cond_60

    .line 222
    iget-object v5, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v6, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_DOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v5, v6}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 223
    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    goto/16 :goto_60
.end method


# virtual methods
.method public connect()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 94
    const-string/jumbo v1, "net.cdma.ppp-exit"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "pppd_cdma"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/PppLink;->removeMessages(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, poll:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 100
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/DataLink$PppState;->DISCONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 105
    const-string/jumbo v0, "pppd_cdma"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->removeMessages(I)V

    .line 90
    return-void
.end method

.method public getLastLinkExitCode()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/DataLink$PppState;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/DataLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 143
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_6a

    .line 169
    :cond_5
    :goto_5
    return-void

    .line 147
    :sswitch_6
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/PppLink;->checkPPP()V

    .line 150
    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_5

    .line 151
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 152
    .local v1, poll:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_54

    .line 154
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_5

    .line 158
    .end local v1           #poll:Landroid/os/Message;
    :catch_34
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_POLL_DATA_CONNECTION DataConnectionTracker already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ppp status not updated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 156
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #poll:Landroid/os/Message;
    :cond_54
    const-wide/16 v2, 0x1f4

    :try_start_56
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_59
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_59} :catch_34

    goto :goto_5

    .line 165
    .end local v1           #poll:Landroid/os/Message;
    :sswitch_5a
    const-string v2, "CDMA"

    const-string v3, "delayed events"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v3, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto :goto_5

    .line 143
    nop

    :sswitch_data_6a
    .sparse-switch
        0x2 -> :sswitch_6
        0xa -> :sswitch_5a
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 294
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PppLink] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public setPasswordInfo(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const-string v4, " "

    const-string v7, "Error closing \'/etc/ppp/pap-secrets\'"

    const-string v6, "CDMA"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 117
    .local v2, output:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/etc/ppp/pap-secrets"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_82
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_6a

    .line 118
    .end local v2           #output:Ljava/io/FileOutputStream;
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 120
    :cond_19
    const-string/jumbo v4, "user"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v4, "server"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v4, "password"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_19

    .line 129
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_63
    .catchall {:try_start_13 .. :try_end_63} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_63} :catch_9e

    .line 134
    if-eqz v3, :cond_68

    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_92

    :cond_68
    :goto_68
    move-object v2, v3

    .line 139
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :cond_69
    :goto_69
    return-void

    .line 130
    :catch_6a
    move-exception v4

    move-object v1, v4

    .line 131
    .local v1, e:Ljava/io/IOException;
    :goto_6c
    :try_start_6c
    const-string v4, "CDMA"

    const-string v5, "Could not create \'/etc/ppp/pap-secrets\'"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_82

    .line 134
    if-eqz v2, :cond_69

    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_69

    .line 135
    :catch_79
    move-exception v1

    .line 136
    const-string v4, "CDMA"

    const-string v4, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 133
    .end local v1           #e:Ljava/io/IOException;
    :catchall_82
    move-exception v4

    .line 134
    :goto_83
    if-eqz v2, :cond_88

    :try_start_85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 133
    :cond_88
    :goto_88
    throw v4

    .line 135
    :catch_89
    move-exception v1

    .line 136
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "CDMA"

    const-string v5, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_92
    move-exception v1

    .line 136
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "CDMA"

    const-string v4, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 133
    .end local v1           #e:Ljava/io/IOException;
    :catchall_9b
    move-exception v4

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_83

    .line 130
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_9e
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_6c
.end method

.method public setPppConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .parameter "name"
    .parameter "server"
    .parameter "password"
    .parameter "pppAuth"

    .prologue
    const-string/jumbo v5, "net.cdma.pppd.authtype"

    const-string/jumbo v10, "net.cdma.datalinkinterface"

    const-string v9, "/dev/ttyCDMA0"

    const-string v8, ""

    const-string/jumbo v7, "net.cdma.pppd.password"

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v1, options_builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 257
    .local v3, output:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 259
    .local v2, options_output:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    if-ne p4, v4, :cond_71

    .line 260
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v4, "require-pap"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_56

    .line 264
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_55
    return-void

    .line 266
    :cond_56
    const-string/jumbo v4, "net.cdma.pppd.password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 267
    :cond_71
    const/4 v4, 0x2

    if-ne p4, v4, :cond_c9

    .line 268
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v4, "require-chap"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_ae

    .line 272
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 274
    :cond_ae
    const-string/jumbo v4, "net.cdma.pppd.password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 276
    :cond_c9
    const/4 v4, 0x3

    if-ne p4, v4, :cond_123

    .line 277
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v4, "require-eap"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_107

    .line 281
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55

    .line 283
    :cond_107
    const-string/jumbo v4, "net.cdma.pppd.password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55

    .line 286
    :cond_123
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v4, "noauth"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v4, "net.cdma.pppd.user"

    const-string v5, ""

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55
.end method

.method public setState(Lcom/android/internal/telephony/DataLink$PppState;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Lcom/android/internal/telephony/DataLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    .line 301
    return-void
.end method
