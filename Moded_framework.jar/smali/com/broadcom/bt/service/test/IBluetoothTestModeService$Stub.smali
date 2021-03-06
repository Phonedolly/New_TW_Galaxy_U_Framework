.class public abstract Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothTestModeService.java"

# interfaces
.implements Lcom/broadcom/bt/service/test/IBluetoothTestModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.test.IBluetoothTestModeService"

.field static final TRANSACTION_SendBtldApiCmd:I = 0xb

.field static final TRANSACTION_Set_Tx_Rx_Test:I = 0xa

.field static final TRANSACTION_connectTestMode:I = 0x2

.field static final TRANSACTION_createTestMode:I = 0x1

.field static final TRANSACTION_enterDUTMode:I = 0x8

.field static final TRANSACTION_enterTestMode:I = 0x3

.field static final TRANSACTION_exitCurrentTestMode:I = 0x7

.field static final TRANSACTION_exitDUTMode:I = 0x9

.field static final TRANSACTION_exitTestMode:I = 0x4

.field static final TRANSACTION_getTestMode:I = 0x5

.field static final TRANSACTION_setTraceLevel:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-string v6, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    .line 42
    sparse-switch p1, :sswitch_data_fe

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 46
    :sswitch_b
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_a

    .line 51
    :sswitch_12
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v3

    .line 55
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 57
    goto :goto_a

    .line 61
    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    .end local v3           #_result:I
    :sswitch_2b
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->connectTestMode()I

    move-result v3

    .line 63
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 65
    goto :goto_a

    .line 69
    .end local v3           #_result:I
    :sswitch_3c
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->enterTestMode()I

    move-result v3

    .line 71
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 73
    goto :goto_a

    .line 77
    .end local v3           #_result:I
    :sswitch_4d
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitTestMode()I

    move-result v3

    .line 79
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 81
    goto :goto_a

    .line 85
    .end local v3           #_result:I
    :sswitch_5e
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->getTestMode()I

    move-result v3

    .line 87
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 89
    goto :goto_a

    .line 93
    .end local v3           #_result:I
    :sswitch_6f
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 97
    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 98
    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->setTraceLevel(BB)I

    move-result v3

    .line 99
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 101
    goto :goto_a

    .line 105
    .end local v0           #_arg0:B
    .end local v1           #_arg1:B
    .end local v3           #_result:I
    :sswitch_88
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitCurrentTestMode()I

    move-result v3

    .line 107
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 109
    goto/16 :goto_a

    .line 113
    .end local v3           #_result:I
    :sswitch_9a
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->enterDUTMode()I

    move-result v3

    .line 115
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 117
    goto/16 :goto_a

    .line 121
    .end local v3           #_result:I
    :sswitch_ac
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitDUTMode()I

    move-result v3

    .line 123
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 125
    goto/16 :goto_a

    .line 129
    .end local v3           #_result:I
    :sswitch_be
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_de

    .line 132
    sget-object v4, Lcom/broadcom/bt/service/test/TxRxTestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/TxRxTestParams;

    .line 137
    .local v0, _arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    :goto_d1
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I

    move-result v3

    .line 138
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 140
    goto/16 :goto_a

    .line 135
    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    .end local v3           #_result:I
    :cond_de
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    goto :goto_d1

    .line 144
    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    :sswitch_e0
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 151
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->SendBtldApiCmd(II[B)I

    move-result v3

    .line 152
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 154
    goto/16 :goto_a

    .line 42
    :sswitch_data_fe
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_88
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_ac
        0xa -> :sswitch_be
        0xb -> :sswitch_e0
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
