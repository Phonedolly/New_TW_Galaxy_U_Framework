.class public final Lcom/broadcom/bt/service/test/BluetoothTestModeService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothTestModeService.java"


# static fields
.field public static final DISABLE_RX_TEST_MODE:I = 0x3

.field public static final DISABLE_TESTMODE:I = 0x0

.field public static final DISABLE_TX_TEST_MODE:I = 0x0

.field public static final ENABLE_RX_TEST_MODE:I = 0x2

.field public static final ENABLE_TESTMODE:I = 0x1

.field public static final ENABLE_TX_TEST_MODE:I = 0x1

.field public static final GET_TESTMODE:I = -0x1

.field public static final SET_DUT:I = 0x11

.field public static final SET_RX_TEST:I = 0x41

.field public static final SET_TRACE_LEVEL:I = -0x10000

.field public static final SET_TX_CARRIER_FREQ:I = 0x21

.field public static final SET_TX_TEST:I = 0x31

.field public static final TAG:Ljava/lang/String; = "BluetoothTestModeService"


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeData:I

.field private mTxRxParams:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 57
    invoke-static {}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->classInitNative()Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private native SendBtldApiCmdNative(II[B)I
.end method

.method private native Set_TestNative(Ljava/lang/Object;)V
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createTestModeNative()V
.end method

.method private native enterDUTModeNative()V
.end method

.method private native exitDUTModeNative()V
.end method

.method private native initializeNativeDataNative()Z
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method SendBtldApiCmd(II[B)I
    .registers 9
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v4, "BluetoothTestModeService"

    .line 269
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBtldApiCmd(cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v1, "BluetoothTestModeService"

    const-string v2, "SendBtldApiCmd() call SendBtldApiCmd()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->SendBtldApiCmdNative(II[B)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3a

    move-result v1

    .line 274
    :goto_39
    return v1

    .line 272
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call SendBtldApiCmdNative Failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, -0x1

    goto :goto_39
.end method

.method Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 6
    .parameter "txRxTestParam"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 243
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Set_TX_Test() call Set_TX_TestNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_TestNative(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    .line 250
    const/4 v1, 0x1

    :goto_11
    return v1

    .line 246
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call Set_TX_TestNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    const/4 v1, -0x1

    goto :goto_11
.end method

.method declared-synchronized connectTestMode()I
    .registers 5

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 99
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "connectTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    .line 106
    :goto_e
    monitor-exit p0

    return v1

    .line 102
    .end local v1           #ret_val:I
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 104
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_e

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 6
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 114
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "createTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v1

    .line 116
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_13

    .line 121
    :goto_11
    monitor-exit p0

    return v1

    .line 117
    .end local v1           #ret_val:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/lang/Exception;
    :try_start_15
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    .line 119
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_11

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method enterDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 215
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterDUTMode() call enterDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 221
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 217
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call enterDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v1, -0x1

    goto :goto_d
.end method

.method declared-synchronized enterTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 132
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterTestMode() call enterTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 138
    :goto_10
    monitor-exit p0

    return v1

    .line 134
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enterTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 136
    const/4 v1, -0x1

    goto :goto_10

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized exitCurrentTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 201
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 207
    :goto_10
    monitor-exit p0

    return v1

    .line 203
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 204
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitCurrentTestMode() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 205
    const/4 v1, -0x1

    goto :goto_10

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method exitDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 229
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitDUTMode() call exitDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 235
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 231
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call exitDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 v1, -0x1

    goto :goto_d
.end method

.method declared-synchronized exitTestMode()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 147
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitTestMode() call exitTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11

    .line 153
    const/4 v1, 0x1

    :goto_f
    monitor-exit p0

    return v1

    .line 149
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 151
    const/4 v1, -0x1

    goto :goto_f

    .line 147
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 495
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "bluetooth_test"

    return-object v0
.end method

.method declared-synchronized getTestMode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 159
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getTestMode() call setTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    .line 165
    const/4 v1, 0x1

    :goto_10
    monitor-exit p0

    return v1

    .line 161
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call setTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    move v1, v3

    .line 163
    goto :goto_10

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 1

    .prologue
    .line 478
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method onBtldApiCmdInd(II[B)V
    .registers 8
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    .line 446
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBtldApiCmdInd(cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, i:Landroid/content/Intent;
    const-string v1, "CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v1, "PAYLOAD"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method onEnterDUTMode(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 367
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnterDUTMode(status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method onEnterTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 325
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnterTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method onExitDUTMode(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 388
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onExitDUTMode(status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method onExitTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 346
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onExitTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method onGetTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 304
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method onSetTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 282
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method onTx_Rx_Test(II)V
    .registers 7
    .parameter "mode"
    .parameter "status"

    .prologue
    .line 409
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTX_Test(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 5
    .parameter "callback"

    .prologue
    const/4 v2, -0x1

    .line 77
    monitor-enter p0

    if-eqz p1, :cond_15

    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1e

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    move v0, v2

    .line 81
    goto :goto_11

    .line 84
    :cond_15
    :try_start_15
    const-string v0, "BluetoothTestModeService"

    const-string v1, "#### Call Back is NULL ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    move v0, v2

    .line 85
    goto :goto_11

    .line 77
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setTraceLevel(BB)I
    .registers 8
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 181
    monitor-enter p0

    const/high16 v2, -0x1

    shl-int/lit8 v3, p1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/lit16 v3, p2, 0xff

    or-int v1, v2, v3

    .line 182
    .local v1, set_level:I
    :try_start_10
    const-string v2, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTraceLevel( set_level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) call setTestModeNative()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_39

    .line 189
    const/4 v2, 0x1

    :goto_37
    monitor-exit p0

    return v2

    .line 185
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 186
    .local v0, e:Ljava/lang/Exception;
    :try_start_3b
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call setTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    .line 187
    const/4 v2, -0x1

    goto :goto_37

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .registers 3

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->initializeNativeDataNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 482
    const-string v0, "BluetoothTestModeService"

    const-string v1, "initializeNativeDataNative() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_d
    return-void

    .line 485
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->onStateChangeEvent(Z)V

    goto :goto_d
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->cleanupNativeDataNative()V

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->onStateChangeEvent(Z)V

    .line 491
    return-void
.end method

.method declared-synchronized unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 90
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 93
    :cond_c
    monitor-exit p0

    return-void

    .line 90
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
