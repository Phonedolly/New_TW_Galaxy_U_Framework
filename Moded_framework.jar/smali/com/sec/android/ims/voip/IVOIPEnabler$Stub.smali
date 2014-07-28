.class public abstract Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;
.super Landroid/os/Binder;
.source "IVOIPEnabler.java"

# interfaces
.implements Lcom/sec/android/ims/voip/IVOIPEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/voip/IVOIPEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/voip/IVOIPEnabler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.ims.voip.IVOIPEnabler"

.field static final TRANSACTION_acceptCall:I = 0x3

.field static final TRANSACTION_endCall:I = 0x2

.field static final TRANSACTION_makeCall:I = 0x1

.field static final TRANSACTION_resetPreviewDisplay:I = 0x7

.field static final TRANSACTION_sendMMS:I = 0x5

.field static final TRANSACTION_sendSMS:I = 0x4

.field static final TRANSACTION_setCameraParam:I = 0x8

.field static final TRANSACTION_setPreviewDisplay:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/voip/IVOIPEnabler;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/ims/voip/IVOIPEnabler;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/sec/android/ims/voip/IVOIPEnabler;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v7, 0x1

    const-string v8, "com.sec.android.ims.voip.IVOIPEnabler"

    .line 38
    sparse-switch p1, :sswitch_data_e0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 42
    :sswitch_b
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->makeCall(Ljava/lang/String;I)I

    move-result v6

    .line 53
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 55
    goto :goto_a

    .line 59
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_2b
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->endCall(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 64
    goto :goto_a

    .line 68
    .end local v1           #_arg0:I
    :sswitch_3c
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->acceptCall(III)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 77
    goto :goto_a

    .line 81
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_55
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 86
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->sendSMS(Ljava/lang/String;[B)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 88
    goto :goto_a

    .line 92
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    :sswitch_6a
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->sendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    .line 104
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 106
    goto/16 :goto_a

    .line 110
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_91
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b9

    .line 113
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 119
    .local v1, _arg0:Landroid/view/Surface;
    :goto_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->setPreviewDisplay(Landroid/view/Surface;III)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 126
    goto/16 :goto_a

    .line 116
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_b9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/Surface;
    goto :goto_a4

    .line 130
    .end local v1           #_arg0:Landroid/view/Surface;
    :sswitch_bb
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->resetPreviewDisplay()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 133
    goto/16 :goto_a

    .line 137
    :sswitch_c9
    const-string v0, "com.sec.android.ims.voip.IVOIPEnabler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/ims/voip/IVOIPEnabler$Stub;->setCameraParam(II)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 144
    goto/16 :goto_a

    .line 38
    nop

    :sswitch_data_e0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_55
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_91
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_c9
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
