.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1274
    const-wide/16 v12, -0x1

    .local v12, preTxPkts:J
    const-wide/16 v10, -0x1

    .line 1276
    .local v10, preRxPkts:J
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1278
    .local v7, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v12

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v10

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1288
    .local v4, curCalendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1291
    .local v5, curPollTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_c4

    const-wide/16 v19, 0x0

    cmp-long v19, v12, v19

    if-gtz v19, :cond_54

    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-lez v19, :cond_c4

    .line 1292
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v19

    sub-long v16, v19, v12

    .line 1293
    .local v16, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v19

    sub-long v14, v19, v10

    .line 1295
    .local v14, received:J
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-lez v19, :cond_212

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_212

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1297
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1317
    :goto_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    if-eq v0, v1, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_c4

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1325
    .end local v14           #received:J
    .end local v16           #sent:J
    :cond_c4
    sget-object v19, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_296

    .line 1326
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3502(Z)Z

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->inactivityPeriod:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1337
    :goto_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->inactivityPeriod:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v19

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3900()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_10a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->checkVoiceCallConnections()Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_123

    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMultiSmsState()Z

    move-result v19

    if-nez v19, :cond_123

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->forceDataDormancy()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 1343
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pdp_watchdog_trigger_packet_count"

    const/16 v21, 0xa

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1347
    .local v18, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_328

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v19

    if-nez v19, :cond_165

    .line 1350
    const v19, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1354
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pdp_watchdog_error_poll_count"

    const/16 v21, 0x18

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1357
    .local v8, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v19

    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_2d7

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const-string/jumbo v20, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4808(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "pdp_watchdog_error_poll_interval_ms"

    const/16 v22, 0x1388

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1400
    .end local v8           #noRecvPollLimit:I
    :goto_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_205

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1405
    :cond_205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v5

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->oldPollTime:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1408
    return-void

    .line 1299
    .end local v18           #watchdogTrigger:I
    .restart local v14       #received:J
    .restart local v16       #sent:J
    :cond_212
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-lez v19, :cond_251

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-nez v19, :cond_251

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_245

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2814(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1305
    :goto_241
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_90

    .line 1303
    :cond_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto :goto_241

    .line 1306
    :cond_251
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_277

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_277

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1308
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_90

    .line 1310
    :cond_277
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_287

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-nez v19, :cond_287

    .line 1311
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_90

    .line 1313
    :cond_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1314
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_90

    .line 1331
    .end local v14           #received:J
    .end local v16           #sent:J
    :cond_296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->oldPollTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_2c0

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3614(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto/16 :goto_db

    .line 1334
    :cond_2c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->oldPollTime:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v20

    sub-long v20, v5, v20

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3614(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto/16 :goto_db

    .line 1370
    .restart local v8       #noRecvPollLimit:I
    .restart local v18       #watchdogTrigger:I
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " pkts since last received"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1375
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;)V

    .line 1380
    .local v9, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPingTestActive:Z
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 1381
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1d7

    .line 1384
    .end local v8           #noRecvPollLimit:I
    .end local v9           #pingTest:Ljava/lang/Thread;
    :cond_328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_35d

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "pdp_watchdog_poll_interval_ms"

    const/16 v22, 0x3e8

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1d7

    .line 1390
    :cond_35d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$5502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1d7
.end method
