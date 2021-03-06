.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_resetMagnitude:I = 0xa

.field static final TRANSACTION_setMagnitude:I = 0x9

.field static final TRANSACTION_vibrate:I = 0x1

.field static final TRANSACTION_vibrateCall:I = 0x7

.field static final TRANSACTION_vibrateImmVibe:I = 0x5

.field static final TRANSACTION_vibrateImmVibePattern:I = 0x6

.field static final TRANSACTION_vibrateMagnitude:I = 0x2

.field static final TRANSACTION_vibrateNotification:I = 0x8

.field static final TRANSACTION_vibratePattern:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/IVibratorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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

    const-string v6, "android.os.IVibratorService"

    .line 39
    sparse-switch p1, :sswitch_data_da

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 43
    :sswitch_b
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 44
    goto :goto_a

    .line 48
    :sswitch_12
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 52
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 53
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IVibratorService$Stub;->vibrate(JLandroid/os/IBinder;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 55
    goto :goto_a

    .line 59
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_27
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 63
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 65
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IVibratorService$Stub;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 68
    goto :goto_a

    .line 72
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:I
    :sswitch_40
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 76
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 79
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IVibratorService$Stub;->vibratePattern([JILandroid/os/IBinder;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 81
    goto :goto_a

    .line 85
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_59
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 88
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 90
    goto :goto_a

    .line 94
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_6a
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibe(II)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 101
    goto :goto_a

    .line 105
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_7f
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 109
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibePattern([BI)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 112
    goto/16 :goto_a

    .line 116
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:I
    :sswitch_95
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->vibrateCall(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 121
    goto/16 :goto_a

    .line 125
    .end local v0           #_arg0:I
    :sswitch_a7
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->vibrateNotification(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 130
    goto/16 :goto_a

    .line 134
    .end local v0           #_arg0:I
    :sswitch_b9
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->setMagnitude(I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 139
    goto/16 :goto_a

    .line 143
    .end local v0           #_arg0:I
    :sswitch_cb
    const-string v4, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->resetMagnitude()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 146
    goto/16 :goto_a

    .line 39
    nop

    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_40
        0x4 -> :sswitch_59
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_95
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_b9
        0xa -> :sswitch_cb
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
