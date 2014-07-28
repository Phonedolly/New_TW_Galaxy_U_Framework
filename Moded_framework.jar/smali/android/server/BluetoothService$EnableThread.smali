.class Landroid/server/BluetoothService$EnableThread;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableThread"
.end annotation


# instance fields
.field private final mSaveSetting:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Z)V
    .registers 3
    .parameter
    .parameter "saveSetting"

    .prologue
    .line 1008
    iput-object p1, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1009
    iput-boolean p2, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    .line 1010
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1012
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->enableNative()I
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)I

    move-result v9

    if-nez v9, :cond_36

    move v5, v13

    .line 1013
    .local v5, res:Z
    :goto_b
    if-eqz v5, :cond_4f

    .line 1014
    const/4 v6, 0x2

    .line 1015
    .local v6, retryCount:I
    const/4 v8, 0x0

    .local v8, running:Z
    move v7, v6

    .line 1016
    .end local v6           #retryCount:I
    .local v7, retryCount:I
    :goto_10
    add-int/lit8 v6, v7, -0x1

    .end local v7           #retryCount:I
    .restart local v6       #retryCount:I
    if-lez v7, :cond_42

    if-nez v8, :cond_42

    .line 1017
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->start()V

    .line 1020
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 1021
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_21
    add-int/lit8 v2, v3, -0x1

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_34

    if-nez v8, :cond_34

    .line 1022
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v9

    if-eqz v9, :cond_38

    .line 1023
    const/4 v8, 0x1

    :cond_34
    move v7, v6

    .line 1030
    .end local v6           #retryCount:I
    .restart local v7       #retryCount:I
    goto :goto_10

    .end local v2           #pollCount:I
    .end local v5           #res:Z
    .end local v7           #retryCount:I
    .end local v8           #running:Z
    :cond_36
    move v5, v12

    .line 1012
    goto :goto_b

    .line 1027
    .restart local v2       #pollCount:I
    .restart local v5       #res:Z
    .restart local v6       #retryCount:I
    .restart local v8       #running:Z
    :cond_38
    const-wide/16 v9, 0x64

    :try_start_3a
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3f

    move v3, v2

    .line 1028
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_21

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_3f
    move-exception v9

    move v3, v2

    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_21

    .line 1031
    .end local v3           #pollCount:I
    :cond_42
    if-nez v8, :cond_4f

    .line 1032
    const-string v9, "bt EnableThread giving up"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1500(Ljava/lang/String;)V

    .line 1033
    const/4 v5, 0x0

    .line 1034
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->disableNative()I
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)I

    .line 1039
    .end local v6           #retryCount:I
    .end local v8           #running:Z
    :cond_4f
    if-eqz v5, :cond_8f

    .line 1040
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->setupNativeDataNative()Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 1087
    :cond_59
    :goto_59
    return-void

    .line 1043
    :cond_5a
    iget-boolean v9, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    if-eqz v9, :cond_63

    .line 1044
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V
    invoke-static {v9, v13}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;Z)V

    .line 1046
    :cond_63
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mIsDiscovering:Z
    invoke-static {v9, v12}, Landroid/server/BluetoothService;->access$1902(Landroid/server/BluetoothService;Z)Z

    .line 1047
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->readAutoPairingData()V

    .line 1048
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->loadBondState()V

    .line 1049
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->initProfileState()V
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2100(Landroid/server/BluetoothService;)V

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1058
    .local v0, ident:J
    :try_start_83
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2200(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_dc
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_e4

    .line 1061
    :goto_8c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    .end local v0           #ident:J
    :cond_8f
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$2302(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;

    .line 1067
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    if-eqz v5, :cond_e1

    const/16 v10, 0xc

    :goto_9b
    #calls: Landroid/server/BluetoothService;->setBluetoothState(I)V
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$2400(Landroid/server/BluetoothService;I)V

    .line 1071
    if-eqz v5, :cond_bd

    .line 1077
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/16 v10, 0x15

    const/4 v11, -0x1

    #calls: Landroid/server/BluetoothService;->_setScanMode(II)Z
    invoke-static {v9, v10, v11}, Landroid/server/BluetoothService;->access$2500(Landroid/server/BluetoothService;II)Z

    .line 1078
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const-string v9, "Pairable"

    aput-object v9, v4, v12

    const-string/jumbo v9, "true"

    aput-object v9, v4, v13

    .line 1080
    .local v4, propVal:[Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/server/BluetoothEventLoop;->onPropertyChanged([Ljava/lang/String;)V

    .line 1083
    .end local v4           #propVal:[Ljava/lang/String;
    :cond_bd
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2600(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_59

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2700(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_59

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$2800(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_59

    .line 1084
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9, v12}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_59

    .line 1061
    .restart local v0       #ident:J
    :catchall_dc
    move-exception v9

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1067
    .end local v0           #ident:J
    :cond_e1
    const/16 v10, 0xa

    goto :goto_9b

    .line 1059
    .restart local v0       #ident:J
    :catch_e4
    move-exception v9

    goto :goto_8c
.end method
