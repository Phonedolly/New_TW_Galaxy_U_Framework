.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0xe

.field static final TRANSACTION_getCallBaseTime:I = 0x12

.field static final TRANSACTION_getCallTime:I = 0x11

.field static final TRANSACTION_getCallerName:I = 0x10

.field static final TRANSACTION_getDataStatebyApnType:I = 0x14

.field static final TRANSACTION_getHoldCallsCount:I = 0xf

.field static final TRANSACTION_getMsisdnavailable:I = 0x4

.field static final TRANSACTION_getMute:I = 0xc

.field static final TRANSACTION_getSimPinRetry:I = 0x6

.field static final TRANSACTION_getSimPukRetry:I = 0x7

.field static final TRANSACTION_getTelephonyFeature:I = 0x17

.field static final TRANSACTION_getTimeInfo:I = 0x16

.field static final TRANSACTION_initiateFakecall:I = 0x9

.field static final TRANSACTION_isSimFDNEnabled:I = 0x8

.field static final TRANSACTION_isUsimDownloading:I = 0x5

.field static final TRANSACTION_isVideoCall:I = 0x13

.field static final TRANSACTION_sendRequestToRIL:I = 0x15

.field static final TRANSACTION_setMute:I = 0xb

.field static final TRANSACTION_supplyPerso:I = 0x3

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0xa

.field static final TRANSACTION_turnOnSpeaker:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_3
    return-object v1

    .line 33
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    .line 45
    sparse-switch p1, :sswitch_data_200

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 49
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 60
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v3, :cond_2f

    move v5, v6

    :goto_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 62
    goto :goto_b

    :cond_2f
    move v5, v8

    .line 61
    goto :goto_2a

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_31
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_49

    move v5, v6

    :goto_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_b

    :cond_49
    move v5, v8

    .line 71
    goto :goto_44

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4b
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 80
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v3, :cond_63

    move v5, v6

    :goto_5e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 82
    goto :goto_b

    :cond_63
    move v5, v8

    .line 81
    goto :goto_5e

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_65
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v3

    .line 88
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_79

    move v5, v6

    :goto_74
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 90
    goto :goto_b

    :cond_79
    move v5, v8

    .line 89
    goto :goto_74

    .line 94
    .end local v3           #_result:Z
    :sswitch_7b
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isUsimDownloading()Z

    move-result v3

    .line 96
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_90

    move v5, v6

    :goto_8a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 98
    goto/16 :goto_b

    :cond_90
    move v5, v8

    .line 97
    goto :goto_8a

    .line 102
    .end local v3           #_result:Z
    :sswitch_92
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v3

    .line 104
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 106
    goto/16 :goto_b

    .line 110
    .end local v3           #_result:I
    :sswitch_a4
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v3

    .line 112
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 114
    goto/16 :goto_b

    .line 118
    .end local v3           #_result:I
    :sswitch_b6
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v3

    .line 120
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_cb

    move v5, v6

    :goto_c5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 122
    goto/16 :goto_b

    :cond_cb
    move v5, v8

    .line 121
    goto :goto_c5

    .line 126
    .end local v3           #_result:Z
    :sswitch_cd
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->initiateFakecall()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 129
    goto/16 :goto_b

    .line 133
    :sswitch_db
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 136
    goto/16 :goto_b

    .line 140
    :sswitch_e9
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fe

    move v0, v6

    .line 143
    .local v0, _arg0:Z
    :goto_f5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 145
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_fe
    move v0, v8

    .line 142
    goto :goto_f5

    .line 149
    :sswitch_100
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v3

    .line 151
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v3, :cond_115

    move v5, v6

    :goto_10f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 153
    goto/16 :goto_b

    :cond_115
    move v5, v8

    .line 152
    goto :goto_10f

    .line 157
    .end local v3           #_result:Z
    :sswitch_117
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12c

    move v0, v6

    .line 160
    .restart local v0       #_arg0:Z
    :goto_123
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 162
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_12c
    move v0, v8

    .line 159
    goto :goto_123

    .line 166
    :sswitch_12e
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v3

    .line 168
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 170
    goto/16 :goto_b

    .line 174
    .end local v3           #_result:I
    :sswitch_140
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v3

    .line 176
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 178
    goto/16 :goto_b

    .line 182
    .end local v3           #_result:I
    :sswitch_152
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 186
    goto/16 :goto_b

    .line 190
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_164
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v3

    .line 192
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 194
    goto/16 :goto_b

    .line 198
    .end local v3           #_result:J
    :sswitch_176
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v3

    .line 200
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 202
    goto/16 :goto_b

    .line 206
    .end local v3           #_result:J
    :sswitch_188
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isVideoCall()Z

    move-result v3

    .line 208
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v3, :cond_19d

    move v5, v6

    :goto_197
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 210
    goto/16 :goto_b

    :cond_19d
    move v5, v8

    .line 209
    goto :goto_197

    .line 214
    .end local v3           #_result:Z
    :sswitch_19f
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getDataStatebyApnType(Ljava/lang/String;)Z

    move-result v3

    .line 218
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v3, :cond_1b8

    move v5, v6

    :goto_1b2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 220
    goto/16 :goto_b

    :cond_1b8
    move v5, v8

    .line 219
    goto :goto_1b2

    .line 224
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1ba
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 228
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 230
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendRequestToRIL([B[BI)I

    move-result v3

    .line 232
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 235
    goto/16 :goto_b

    .line 239
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:I
    .end local v3           #_result:I
    :sswitch_1db
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 243
    goto/16 :goto_b

    .line 247
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1ed
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTelephonyFeature()Ljava/util/Map;

    move-result-object v3

    .line 249
    .local v3, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v5, v6

    .line 251
    goto/16 :goto_b

    .line 45
    nop

    :sswitch_data_200
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_31
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_65
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_92
        0x7 -> :sswitch_a4
        0x8 -> :sswitch_b6
        0x9 -> :sswitch_cd
        0xa -> :sswitch_db
        0xb -> :sswitch_e9
        0xc -> :sswitch_100
        0xd -> :sswitch_117
        0xe -> :sswitch_12e
        0xf -> :sswitch_140
        0x10 -> :sswitch_152
        0x11 -> :sswitch_164
        0x12 -> :sswitch_176
        0x13 -> :sswitch_188
        0x14 -> :sswitch_19f
        0x15 -> :sswitch_1ba
        0x16 -> :sswitch_1db
        0x17 -> :sswitch_1ed
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
