.class Lcom/sec/android/internal/ims/IMSService$11;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .registers 2
    .parameter

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1720
    const-string/jumbo v3, "vtErrorTableUpdateListener"

    .line 1721
    .local v3, FN_TAG:Ljava/lang/String;
    const-string v16, "FN_TAG Entering ---"

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1724
    .local v4, action:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "SMSIntentAction = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    const-string v17, " com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 1727
    :cond_38
    const-string v7, "202"

    .line 1728
    .local v7, def_errCode:Ljava/lang/String;
    const-string v16, "IMS_ERROR_CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1729
    .local v13, objErrCode:Ljava/lang/Object;
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 1731
    .local v9, errCode:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FN_TAG errCode =  ---"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1733
    const-string v8, "Reg Failure"

    .line 1734
    .local v8, def_errString:Ljava/lang/String;
    const-string v16, "IMS_ERROR_STRING"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1735
    .local v14, objErrString:Ljava/lang/Object;
    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 1737
    .local v12, errString:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FN_TAG ErrorSTring =  ---"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1739
    if-eqz v9, :cond_ff

    if-eqz v12, :cond_ff

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_ff

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_ff

    .line 1742
    new-instance v10, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v10}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .line 1743
    .local v10, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    new-instance v11, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;

    invoke-direct {v11}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;-><init>()V

    .line 1744
    .local v11, errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->access$500(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 1746
    .local v15, r1:Landroid/content/ContentResolver;
    if-eqz v10, :cond_ff

    if-eqz v11, :cond_ff

    if-eqz v15, :cond_ff

    .line 1748
    const-string v16, "FN_TAG DB write started_________"

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1749
    iput-object v9, v10, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 1750
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v16, "yyyy/MM/dd HH:mm:ss"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v6, dateFormat:Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1752
    .local v5, date:Ljava/util/Date;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    iput-object v0, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 1753
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FN_TAG Time STamp =  ---"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1754
    iput-object v12, v10, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 1755
    invoke-virtual {v11, v10, v15}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 1756
    const-string v16, "FN_TAG Insert Success ---"

    invoke-static/range {v16 .. v16}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1762
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #dateFormat:Ljava/text/DateFormat;
    .end local v10           #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    .end local v11           #errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    .end local v15           #r1:Landroid/content/ContentResolver;
    :cond_ff
    return-void
.end method
