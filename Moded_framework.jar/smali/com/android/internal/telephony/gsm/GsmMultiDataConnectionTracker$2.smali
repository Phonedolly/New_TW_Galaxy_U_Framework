.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmMultiDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1247
    const-wide/16 v12, -0x1

    .local v12, preTxPkts:J
    const-wide/16 v10, -0x1

    .line 1249
    .local v10, preRxPkts:J
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1251
    .local v7, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v12

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v10

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1261
    .local v4, curCalendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1264
    .local v5, curPollTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_c4

    const-wide/16 v19, 0x0

    cmp-long v19, v12, v19

    if-gtz v19, :cond_54

    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-lez v19, :cond_c4

    .line 1265
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    sub-long v16, v19, v12

    .line 1266
    .local v16, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    sub-long v14, v19, v10

    .line 1268
    .local v14, received:J
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-lez v19, :cond_1ea

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_1ea

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1270
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1290
    :goto_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    if-eq v0, v1, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_c4

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1298
    .end local v14           #received:J
    .end local v16           #sent:J
    :cond_c4
    sget-object v19, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_26e

    .line 1299
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2502(Z)Z

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->inactivityPeriod:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1310
    :goto_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->inactivityPeriod:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2900()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_fb

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->forceDataDormancy()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    .line 1315
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pdp_watchdog_trigger_packet_count"

    const/16 v21, 0xa

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1319
    .local v18, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_300

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v19

    if-nez v19, :cond_13d

    .line 1322
    const v19, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1326
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pdp_watchdog_error_poll_count"

    const/16 v21, 0x18

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1329
    .local v8, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v19

    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_2af

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-string/jumbo v20, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3708(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "pdp_watchdog_error_poll_interval_ms"

    const/16 v22, 0x1388

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1372
    .end local v8           #noRecvPollLimit:I
    :goto_1af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_1dd

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1377
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v5

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->oldPollTime:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1380
    return-void

    .line 1272
    .end local v18           #watchdogTrigger:I
    .restart local v14       #received:J
    .restart local v16       #sent:J
    :cond_1ea
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-lez v19, :cond_229

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-nez v19, :cond_229

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_21d

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1814(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1278
    :goto_219
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_90

    .line 1276
    :cond_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto :goto_219

    .line 1279
    :cond_229
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_24f

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_24f

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1281
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_90

    .line 1283
    :cond_24f
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_25f

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-nez v19, :cond_25f

    .line 1284
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_90

    .line 1286
    :cond_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1287
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_90

    .line 1304
    .end local v14           #received:J
    .end local v16           #sent:J
    :cond_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->oldPollTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_298

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2614(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto/16 :goto_db

    .line 1307
    :cond_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->oldPollTime:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v20

    sub-long v20, v5, v20

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2614(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto/16 :goto_db

    .line 1342
    .restart local v8       #noRecvPollLimit:I
    .restart local v18       #watchdogTrigger:I
    :cond_2af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

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

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 1347
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;)V

    .line 1352
    .local v9, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 1353
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1af

    .line 1356
    .end local v8           #noRecvPollLimit:I
    .end local v9           #pingTest:Ljava/lang/Thread;
    :cond_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4202(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_335

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "pdp_watchdog_poll_interval_ms"

    const/16 v22, 0x3e8

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_1af

    .line 1362
    :cond_335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_1af
.end method
