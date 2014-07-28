.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 962
    const-wide/16 v13, -0x1

    .local v13, preTxPkts:J
    const-wide/16 v11, -0x1

    .line 966
    .local v11, preRxPkts:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v13

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v11

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v21

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v21

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 977
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 978
    .local v4, curCalendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 981
    .local v5, curPollTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v20

    if-eqz v20, :cond_12d

    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-gtz v20, :cond_52

    const-wide/16 v20, 0x0

    cmp-long v20, v11, v20

    if-lez v20, :cond_12d

    .line 982
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v20

    sub-long v17, v20, v13

    .line 983
    .local v17, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v20

    sub-long v15, v20, v11

    .line 985
    .local v15, received:J
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-lez v20, :cond_1ba

    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_1ba

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 987
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1005
    .local v10, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v10

    if-eq v0, v1, :cond_ab

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1011
    :cond_ab
    sget-object v20, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v10

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_275

    .line 1012
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3402(Z)Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->inactivityPeriod:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 1023
    :goto_c2
    const/4 v7, 0x0

    .line 1024
    .local v7, delay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v20

    if-eqz v20, :cond_2b6

    .line 1025
    const/16 v7, 0x4e20

    .line 1029
    :goto_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->inactivityPeriod:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v20

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_12d

    .line 1030
    const/4 v9, 0x0

    .line 1033
    .local v9, isOnVT:Z
    :try_start_e4
    const-string/jumbo v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 1035
    .local v19, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_f5

    .line 1036
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isVideoCall()Z
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f4} :catch_2ba

    move-result v9

    .line 1042
    .end local v19           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "wait time for dormancy is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isOnVT = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1044
    if-nez v9, :cond_12d

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceDataDormancy()V
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    .line 1051
    .end local v7           #delay:I
    .end local v9           #isOnVT:Z
    .end local v10           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v15           #received:J
    .end local v17           #sent:J
    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v20

    const-wide/16 v22, 0xa

    cmp-long v20, v20, v22

    if-ltz v20, :cond_310

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v20

    if-nez v20, :cond_159

    .line 1055
    const v20, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v21

    invoke-static/range {v20 .. v22}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1060
    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v20

    const/16 v21, 0x18

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2c2

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4308(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x1388

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 1078
    :goto_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v20

    if-eqz v20, :cond_1ad

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1082
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v5

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->oldPollTime:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 1084
    return-void

    .line 988
    .restart local v15       #received:J
    .restart local v17       #sent:J
    :cond_1ba
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-lez v20, :cond_1f9

    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-nez v20, :cond_1f9

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1ed

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2314(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 994
    :goto_1e9
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v10       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_83

    .line 992
    .end local v10           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto :goto_1e9

    .line 995
    :cond_1f9
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-nez v20, :cond_214

    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_214

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 997
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v10       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_83

    .line 998
    .end local v10           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_214
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-nez v20, :cond_245

    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-nez v20, :cond_245

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_240

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v20

    move-object/from16 v10, v20

    .restart local v10       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_23e
    goto/16 :goto_83

    .end local v10           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_240
    sget-object v20, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v10, v20

    goto :goto_23e

    .line 1001
    :cond_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_270

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v20

    move-object/from16 v10, v20

    .restart local v10       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_26e
    goto/16 :goto_83

    .end local v10           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_270
    sget-object v20, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object/from16 v10, v20

    goto :goto_26e

    .line 1017
    .restart local v10       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->oldPollTime:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_29f

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3514(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto/16 :goto_c2

    .line 1020
    :cond_29f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->oldPollTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v21

    sub-long v21, v5, v21

    invoke-static/range {v20 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3514(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto/16 :goto_c2

    .line 1027
    .restart local v7       #delay:I
    :cond_2b6
    const/16 v7, 0xbb8

    goto/16 :goto_d1

    .line 1038
    .restart local v9       #isOnVT:Z
    :catch_2ba
    move-exception v20

    move-object/from16 v8, v20

    .line 1039
    .local v8, ex:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_f5

    .line 1065
    .end local v7           #delay:I
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v9           #isOnVT:Z
    .end local v10           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v15           #received:J
    .end local v17           #sent:J
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Sent "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " pkts since last received"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1071
    const v20, 0xc3b6

    const/16 v21, 0x18

    invoke-static/range {v20 .. v21}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_17f

    .line 1074
    :cond_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_17f
.end method
