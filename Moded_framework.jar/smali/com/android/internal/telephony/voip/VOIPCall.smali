.class final Lcom/android/internal/telephony/voip/VOIPCall;
.super Lcom/android/internal/telephony/Call;
.source "VOIPCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/voip/VOIPCall$1;
    }
.end annotation


# instance fields
.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

.field state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/voip/VOIPCallTracker;)V
    .registers 3
    .parameter "voipCallTracker"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/voip/VOIPCall;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    .line 64
    return-void
.end method

.method static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .registers 4
    .parameter "dcState"

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/voip/VOIPCall$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_24
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 52
    :goto_26
    return-object v0

    .line 48
    :pswitch_27
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    .line 49
    :pswitch_2a
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    .line 50
    :pswitch_2d
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    .line 51
    :pswitch_30
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    .line 52
    :pswitch_33
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    .line 46
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/DriverCall;)V
    .registers 4
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/voip/VOIPCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 115
    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/Call$State;)V
    .registers 4
    .parameter "conn"
    .parameter "state"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 122
    return-void
.end method

.method public clearDisconnected()V
    .registers 5

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_23

    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 154
    .local v0, cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_20

    .line 155
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 159
    .end local v0           #cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    :cond_23
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2f

    .line 160
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 163
    :cond_2f
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    .registers 7
    .parameter "conn"

    .prologue
    .line 178
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_27

    .line 181
    const/4 v0, 0x1

    .line 183
    .local v0, hasOnlyDisconnectedConnections:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_e
    if-ge v1, v2, :cond_21

    .line 184
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_28

    .line 187
    const/4 v0, 0x0

    .line 192
    :cond_21
    if-eqz v0, :cond_27

    .line 193
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 196
    .end local v0           #hasOnlyDisconnectedConnections:Z
    .end local v1           #i:I
    .end local v2           #s:I
    :cond_27
    return-void

    .line 183
    .restart local v0       #hasOnlyDisconnectedConnections:Z
    .restart local v1       #i:I
    .restart local v2       #s:I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public detach(Lcom/android/internal/telephony/voip/VOIPConnection;)V
    .registers 3
    .parameter "conn"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 129
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 131
    :cond_11
    return-void
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/voip/VOIPCallTracker;->phone:Lcom/android/internal/telephony/voip/VOIPPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public hangup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->owner:Lcom/android/internal/telephony/voip/VOIPCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/voip/VOIPCallTracker;->hangup(Lcom/android/internal/telephony/voip/VOIPCall;)V

    .line 99
    return-void
.end method

.method public isMultiparty()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isVideoCall()Z
    .registers 3

    .prologue
    .line 201
    const-string v0, "VOIP"

    const-string v1, "VOIP Phone VideoCall : TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onHangupLocal()V
    .registers 5

    .prologue
    .line 168
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/voip/VOIPConnection;

    .line 171
    .local v0, cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/voip/VOIPConnection;->onHangupLocal()V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 173
    .end local v0           #cn:Lcom/android/internal/telephony/voip/VOIPConnection;
    :cond_17
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 175
    return-void
.end method

.method public update(Lcom/android/internal/telephony/voip/VOIPConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .registers 6
    .parameter "voipConnection"
    .parameter "dc"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, changed:Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/voip/VOIPCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 140
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_e

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/voip/VOIPCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 142
    const/4 v0, 0x1

    .line 145
    :cond_e
    return v0
.end method
