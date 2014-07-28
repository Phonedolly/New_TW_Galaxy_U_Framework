.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 479
    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 483
    const/4 v11, 0x0

    .line 486
    .local v11, retryCount:I
    :goto_1
    const/4 v13, 0x0

    .line 490
    .local v13, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_e7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_131

    .line 491
    .end local v13           #s:Landroid/net/LocalSocket;
    .local v14, s:Landroid/net/LocalSocket;
    :try_start_7
    new-instance v8, Landroid/net/LocalSocketAddress;

    const-string/jumbo v17, "rild"

    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 493
    .local v8, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_1d2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_181

    .line 526
    const/4 v11, 0x0

    .line 528
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object v0, v14

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 529
    const-string v17, "RILJ"

    const-string v18, "Connected to \'rild\' socket"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.RIL_SOCKET_CONNECTED"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_46} :catch_181

    .line 535
    const/4 v9, 0x0

    .line 537
    .local v9, length:I
    :try_start_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 542
    .local v7, is:Ljava/io/InputStream;
    :goto_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I

    move-result v9

    .line 544
    if-gez v9, :cond_142

    .line 546
    const-string/jumbo v17, "ril.rildReset"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_6e} :catch_170
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_6e} :catch_186

    .line 567
    .end local v7           #is:Ljava/io/InputStream;
    :goto_6e
    :try_start_6e
    const-string v17, "RILJ"

    const-string v18, "Disconnected from \'rild\' socket"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_80} :catch_181

    .line 573
    :try_start_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8f} :catch_1cf
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_8f} :catch_181

    .line 577
    :goto_8f
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 578
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_ad} :catch_181

    .line 582
    const/4 v5, 0x0

    .local v5, i:I
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, sz:I
    :goto_be
    if-ge v5, v15, :cond_1b4

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/RILRequest;

    .line 584
    .local v12, rr:Lcom/android/internal/telephony/RILRequest;
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v0, v12

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 585
    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_e4
    .catchall {:try_start_ae .. :try_end_e4} :catchall_1c6

    .line 582
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 494
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    .end local v12           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v14           #s:Landroid/net/LocalSocket;
    .end local v15           #sz:I
    .restart local v13       #s:Landroid/net/LocalSocket;
    :catch_e7
    move-exception v17

    move-object/from16 v4, v17

    .line 496
    .local v4, ex:Ljava/io/IOException;
    :goto_ea
    if-eqz v13, :cond_ef

    .line 497
    :try_start_ec
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_1c9
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ef} :catch_131

    .line 506
    :cond_ef
    :goto_ef
    const/16 v17, 0x8

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_120

    .line 507
    :try_start_f6
    const-string v17, "RILJ"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find \'rild\' socket after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " times, continuing to retry silently"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_117} :catch_131

    .line 518
    :cond_117
    :goto_117
    const-wide/16 v17, 0xfa0

    :try_start_119
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11c
    .catch Ljava/lang/InterruptedException; {:try_start_119 .. :try_end_11c} :catch_1cc
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11c} :catch_131

    .line 522
    :goto_11c
    add-int/lit8 v11, v11, 0x1

    .line 523
    goto/16 :goto_1

    .line 511
    :cond_120
    if-lez v11, :cond_117

    const/16 v17, 0x8

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_117

    .line 512
    :try_start_129
    const-string v17, "RILJ"

    const-string v18, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_130} :catch_131

    goto :goto_117

    .line 590
    .end local v4           #ex:Ljava/io/IOException;
    :catch_131
    move-exception v17

    move-object/from16 v16, v17

    .line 591
    .local v16, tr:Ljava/lang/Throwable;
    :goto_134
    const-string v17, "RILJ"

    const-string v18, "Uncaught exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    return-void

    .line 550
    .end local v13           #s:Landroid/net/LocalSocket;
    .end local v16           #tr:Ljava/lang/Throwable;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #l:Landroid/net/LocalSocketAddress;
    .restart local v9       #length:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :cond_142
    :try_start_142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 551
    .local v10, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v10

    move-object/from16 v1, v17

    move/from16 v2, v18

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 552
    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 557
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_16e} :catch_170
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_16e} :catch_186

    goto/16 :goto_57

    .line 559
    .end local v7           #is:Ljava/io/InputStream;
    .end local v10           #p:Landroid/os/Parcel;
    :catch_170
    move-exception v17

    move-object/from16 v4, v17

    .line 560
    .restart local v4       #ex:Ljava/io/IOException;
    :try_start_173
    const-string v17, "RILJ"

    const-string v18, "\'rild\' socket closed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6e

    .line 590
    .end local v4           #ex:Ljava/io/IOException;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    :catch_181
    move-exception v17

    move-object/from16 v16, v17

    move-object v13, v14

    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v13       #s:Landroid/net/LocalSocket;
    goto :goto_134

    .line 562
    .end local v13           #s:Landroid/net/LocalSocket;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v8       #l:Landroid/net/LocalSocketAddress;
    .restart local v9       #length:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :catch_186
    move-exception v17

    move-object/from16 v16, v17

    .line 563
    .restart local v16       #tr:Ljava/lang/Throwable;
    const-string v17, "RILJ"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Uncaught exception read length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Ljava/lang/Throwable; {:try_start_173 .. :try_end_1b2} :catch_181

    goto/16 :goto_6e

    .line 588
    .end local v16           #tr:Ljava/lang/Throwable;
    .restart local v5       #i:I
    .restart local v15       #sz:I
    :cond_1b4
    :try_start_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 589
    monitor-exit v17

    goto/16 :goto_1

    .end local v15           #sz:I
    :catchall_1c6
    move-exception v18

    monitor-exit v17
    :try_end_1c8
    .catchall {:try_start_1b4 .. :try_end_1c8} :catchall_1c6

    :try_start_1c8
    throw v18
    :try_end_1c9
    .catch Ljava/lang/Throwable; {:try_start_1c8 .. :try_end_1c9} :catch_181

    .line 499
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v4       #ex:Ljava/io/IOException;
    .restart local v13       #s:Landroid/net/LocalSocket;
    :catch_1c9
    move-exception v17

    goto/16 :goto_ef

    .line 519
    :catch_1cc
    move-exception v17

    goto/16 :goto_11c

    .line 574
    .end local v4           #ex:Ljava/io/IOException;
    .end local v13           #s:Landroid/net/LocalSocket;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v8       #l:Landroid/net/LocalSocketAddress;
    .restart local v9       #length:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :catch_1cf
    move-exception v17

    goto/16 :goto_8f

    .line 494
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    :catch_1d2
    move-exception v17

    move-object/from16 v4, v17

    move-object v13, v14

    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v13       #s:Landroid/net/LocalSocket;
    goto/16 :goto_ea
.end method
