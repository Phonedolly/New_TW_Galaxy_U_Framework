.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerVoIPCall:I = 0x36

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callInVoIP:I = 0x42

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xf

.field static final TRANSACTION_changeUARFCN:I = 0x5a

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x18

.field static final TRANSACTION_disableDataConnectivity:I = 0x1a

.field static final TRANSACTION_disableLocationUpdates:I = 0x16

.field static final TRANSACTION_disableStatusBarforVoIP:I = 0x50

.field static final TRANSACTION_enableApnType:I = 0x17

.field static final TRANSACTION_enableDataConnectivity:I = 0x19

.field static final TRANSACTION_enableLocationUpdates:I = 0x15

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x21

.field static final TRANSACTION_getActiveVoIPCallsCount:I = 0x4d

.field static final TRANSACTION_getCallState:I = 0x1e

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x22

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x23

.field static final TRANSACTION_getCdmaEriText:I = 0x24

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x25

.field static final TRANSACTION_getCellLocation:I = 0x1c

.field static final TRANSACTION_getCurrentVoIPNumber:I = 0x41

.field static final TRANSACTION_getDataActivity:I = 0x1f

.field static final TRANSACTION_getDataNetworkDisable:I = 0x58

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x2f

.field static final TRANSACTION_getDataState:I = 0x20

.field static final TRANSACTION_getHandsetInfo:I = 0x32

.field static final TRANSACTION_getHoldVoIPCallsCount:I = 0x4f

.field static final TRANSACTION_getLgt3GDataStatus:I = 0x30

.field static final TRANSACTION_getLgtOzStartPage:I = 0x31

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1d

.field static final TRANSACTION_getNetworkType:I = 0x27

.field static final TRANSACTION_getPhoneServiceState:I = 0x2d

.field static final TRANSACTION_getServiceState:I = 0x55

.field static final TRANSACTION_getVoIPCallBaseTime:I = 0x45

.field static final TRANSACTION_getVoIPMute:I = 0x48

.field static final TRANSACTION_getVoiceMessageCount:I = 0x26

.field static final TRANSACTION_handlePinMmi:I = 0x11

.field static final TRANSACTION_hangupVoIPCall:I = 0x37

.field static final TRANSACTION_hasIccCard:I = 0x28

.field static final TRANSACTION_isActivityStartVideoCall:I = 0x2a

.field static final TRANSACTION_isAlerting:I = 0x44

.field static final TRANSACTION_isAnyKeyMode:I = 0x35

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1b

.field static final TRANSACTION_isDialing:I = 0xb

.field static final TRANSACTION_isEvdoOnly:I = 0x5c

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xc

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRoamingArea:I = 0x57

.field static final TRANSACTION_isShowingCallScreen:I = 0x2b

.field static final TRANSACTION_isShowingVideoCallScreen:I = 0x2c

.field static final TRANSACTION_isSimPinEnabled:I = 0xd

.field static final TRANSACTION_isVideoCall:I = 0x29

.field static final TRANSACTION_isVoIPActivated:I = 0x40

.field static final TRANSACTION_isVoIPCallButtonEnabled:I = 0x52

.field static final TRANSACTION_isVoIPDialing:I = 0x3f

.field static final TRANSACTION_isVoIPIdle:I = 0x3c

.field static final TRANSACTION_isVoIPLaunchMenuEnabled:I = 0x53

.field static final TRANSACTION_isVoIPRingOrDialing:I = 0x3d

.field static final TRANSACTION_isVoIPRinging:I = 0x3e

.field static final TRANSACTION_moveVoIPToTop:I = 0x43

.field static final TRANSACTION_notifyMissedCall:I = 0xe

.field static final TRANSACTION_reenableStatusBarforVoIP:I = 0x51

.field static final TRANSACTION_registerForCurrentVoIP:I = 0x33

.field static final TRANSACTION_sendDtmf:I = 0x5b

.field static final TRANSACTION_setActiveVoIPCallsCount:I = 0x4c

.field static final TRANSACTION_setDMPort:I = 0x59

.field static final TRANSACTION_setDataConnectionToggleExt:I = 0x56

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x2e

.field static final TRANSACTION_setDefaultSharedPreferencesForPhone:I = 0x54

.field static final TRANSACTION_setHoldVoIPCallsCount:I = 0x4e

.field static final TRANSACTION_setRadio:I = 0x13

.field static final TRANSACTION_setVoIPCallBaseTime:I = 0x46

.field static final TRANSACTION_setVoIPDialing:I = 0x39

.field static final TRANSACTION_setVoIPIdle:I = 0x3b

.field static final TRANSACTION_setVoIPInCall:I = 0x3a

.field static final TRANSACTION_setVoIPMute:I = 0x4a

.field static final TRANSACTION_setVoIPMuteState:I = 0x49

.field static final TRANSACTION_setVoIPRinging:I = 0x38

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x10

.field static final TRANSACTION_switchVoIPHoldingAndActive:I = 0x47

.field static final TRANSACTION_toggleRadioOnOff:I = 0x12

.field static final TRANSACTION_turnOnVoIPSpeaker:I = 0x4b

.field static final TRANSACTION_unregisterForCurrentVoIP:I = 0x34

.field static final TRANSACTION_updateServiceLocation:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
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
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    .line 45
    sparse-switch p1, :sswitch_data_7a8

    .line 829
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 49
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    goto :goto_7

    .line 54
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v0, 0x1

    goto :goto_7

    .line 63
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v0, 0x1

    goto :goto_7

    .line 72
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_31
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v8

    .line 74
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v8, :cond_45

    const/4 v0, 0x1

    :goto_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v0, 0x1

    goto :goto_7

    .line 75
    :cond_45
    const/4 v0, 0x0

    goto :goto_40

    .line 80
    .end local v8           #_result:Z
    :sswitch_47
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    move v1, v0

    .line 83
    .local v1, _arg0:Z
    :goto_54
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v8

    .line 84
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v8, :cond_66

    const/4 v0, 0x1

    :goto_5e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x1

    goto :goto_7

    .line 82
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_63
    const/4 v0, 0x0

    move v1, v0

    goto :goto_54

    .line 85
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_66
    const/4 v0, 0x0

    goto :goto_5e

    .line 90
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_68
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v8

    .line 92
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v8, :cond_7c

    const/4 v0, 0x1

    :goto_77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, 0x1

    goto :goto_7

    .line 93
    :cond_7c
    const/4 v0, 0x0

    goto :goto_77

    .line 98
    .end local v8           #_result:Z
    :sswitch_7e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 105
    :sswitch_8c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 112
    :sswitch_9a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v8

    .line 114
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v8, :cond_af

    const/4 v0, 0x1

    :goto_a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 115
    :cond_af
    const/4 v0, 0x0

    goto :goto_a9

    .line 120
    .end local v8           #_result:Z
    :sswitch_b1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v8

    .line 122
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v8, :cond_c6

    const/4 v0, 0x1

    :goto_c0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 123
    :cond_c6
    const/4 v0, 0x0

    goto :goto_c0

    .line 128
    .end local v8           #_result:Z
    :sswitch_c8
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v8

    .line 130
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v8, :cond_dd

    const/4 v0, 0x1

    :goto_d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 131
    :cond_dd
    const/4 v0, 0x0

    goto :goto_d7

    .line 136
    .end local v8           #_result:Z
    :sswitch_df
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDialing()Z

    move-result v8

    .line 138
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v8, :cond_f4

    const/4 v0, 0x1

    :goto_ee
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 139
    :cond_f4
    const/4 v0, 0x0

    goto :goto_ee

    .line 144
    .end local v8           #_result:Z
    :sswitch_f6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v8

    .line 146
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v8, :cond_10b

    const/4 v0, 0x1

    :goto_105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 147
    :cond_10b
    const/4 v0, 0x0

    goto :goto_105

    .line 152
    .end local v8           #_result:Z
    :sswitch_10d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v8

    .line 154
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v8, :cond_122

    const/4 v0, 0x1

    :goto_11c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 155
    :cond_122
    const/4 v0, 0x0

    goto :goto_11c

    .line 160
    .end local v8           #_result:Z
    :sswitch_124
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg3:J
    move-object v0, p0

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 175
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:J
    :sswitch_143
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 182
    :sswitch_151
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v8

    .line 186
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v8, :cond_16a

    const/4 v0, 0x1

    :goto_164
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 187
    :cond_16a
    const/4 v0, 0x0

    goto :goto_164

    .line 192
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_16c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v8

    .line 196
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v8, :cond_185

    const/4 v0, 0x1

    :goto_17f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 197
    :cond_185
    const/4 v0, 0x0

    goto :goto_17f

    .line 202
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_187
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 209
    :sswitch_195
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b2

    const/4 v0, 0x1

    move v1, v0

    .line 212
    .local v1, _arg0:Z
    :goto_1a2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v8

    .line 213
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v8, :cond_1b5

    const/4 v0, 0x1

    :goto_1ac
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 211
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_1b2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1a2

    .line 214
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_1b5
    const/4 v0, 0x0

    goto :goto_1ac

    .line 219
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_1b7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 226
    :sswitch_1c5
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 233
    :sswitch_1d3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 240
    :sswitch_1e1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v8

    .line 244
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 250
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_1f7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v8

    .line 254
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 260
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_20d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v8

    .line 262
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v8, :cond_222

    const/4 v0, 0x1

    :goto_21c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 263
    :cond_222
    const/4 v0, 0x0

    goto :goto_21c

    .line 268
    .end local v8           #_result:Z
    :sswitch_224
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v8

    .line 270
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v8, :cond_239

    const/4 v0, 0x1

    :goto_233
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 271
    :cond_239
    const/4 v0, 0x0

    goto :goto_233

    .line 276
    .end local v8           #_result:Z
    :sswitch_23b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v8

    .line 278
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v8, :cond_250

    const/4 v0, 0x1

    :goto_24a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 279
    :cond_250
    const/4 v0, 0x0

    goto :goto_24a

    .line 284
    .end local v8           #_result:Z
    :sswitch_252
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v8

    .line 286
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v8, :cond_26b

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    :goto_268
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 292
    :cond_26b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_268

    .line 298
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_270
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v10

    .line 300
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 302
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 306
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_282
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v8

    .line 308
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 314
    .end local v8           #_result:I
    :sswitch_294
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v8

    .line 316
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 322
    .end local v8           #_result:I
    :sswitch_2a6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v8

    .line 324
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 330
    .end local v8           #_result:I
    :sswitch_2b8
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v8

    .line 332
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 338
    .end local v8           #_result:I
    :sswitch_2ca
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v8

    .line 340
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 346
    .end local v8           #_result:I
    :sswitch_2dc
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v8

    .line 348
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 354
    .end local v8           #_result:I
    :sswitch_2ee
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 362
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_300
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaNeedsProvisioning()Z

    move-result v8

    .line 364
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v8, :cond_315

    const/4 v0, 0x1

    :goto_30f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 365
    :cond_315
    const/4 v0, 0x0

    goto :goto_30f

    .line 370
    .end local v8           #_result:Z
    :sswitch_317
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v8

    .line 372
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 378
    .end local v8           #_result:I
    :sswitch_329
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v8

    .line 380
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 386
    .end local v8           #_result:I
    :sswitch_33b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v8

    .line 388
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v8, :cond_350

    const/4 v0, 0x1

    :goto_34a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 389
    :cond_350
    const/4 v0, 0x0

    goto :goto_34a

    .line 394
    .end local v8           #_result:Z
    :sswitch_352
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v8

    .line 396
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v8, :cond_367

    const/4 v0, 0x1

    :goto_361
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 397
    :cond_367
    const/4 v0, 0x0

    goto :goto_361

    .line 402
    .end local v8           #_result:Z
    :sswitch_369
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isActivityStartVideoCall()Z

    move-result v8

    .line 404
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v8, :cond_37e

    const/4 v0, 0x1

    :goto_378
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 405
    :cond_37e
    const/4 v0, 0x0

    goto :goto_378

    .line 410
    .end local v8           #_result:Z
    :sswitch_380
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isShowingCallScreen()Z

    move-result v8

    .line 412
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v8, :cond_395

    const/4 v0, 0x1

    :goto_38f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 413
    :cond_395
    const/4 v0, 0x0

    goto :goto_38f

    .line 418
    .end local v8           #_result:Z
    :sswitch_397
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isShowingVideoCallScreen()Z

    move-result v8

    .line 420
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v8, :cond_3ac

    const/4 v0, 0x1

    :goto_3a6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 421
    :cond_3ac
    const/4 v0, 0x0

    goto :goto_3a6

    .line 426
    .end local v8           #_result:Z
    :sswitch_3ae
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v8

    .line 428
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 434
    .end local v8           #_result:I
    :sswitch_3c0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d6

    const/4 v0, 0x1

    move v1, v0

    .line 437
    .local v1, _arg0:Z
    :goto_3cd
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 436
    .end local v1           #_arg0:Z
    :cond_3d6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3cd

    .line 443
    :sswitch_3d9
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v8

    .line 445
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v8, :cond_3ee

    const/4 v0, 0x1

    :goto_3e8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 446
    :cond_3ee
    const/4 v0, 0x0

    goto :goto_3e8

    .line 451
    .end local v8           #_result:Z
    :sswitch_3f0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 461
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_406
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v8

    .line 463
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 469
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_418
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 473
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 479
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_42e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 486
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCurrentVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 492
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_448
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCurrentVoIP()V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 499
    :sswitch_456
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAnyKeyMode()Z

    move-result v8

    .line 501
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v8, :cond_46b

    const/4 v0, 0x1

    :goto_465
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 502
    :cond_46b
    const/4 v0, 0x0

    goto :goto_465

    .line 507
    .end local v8           #_result:Z
    :sswitch_46d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerVoIPCall()Z

    move-result v8

    .line 509
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v8, :cond_482

    const/4 v0, 0x1

    :goto_47c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 510
    :cond_482
    const/4 v0, 0x0

    goto :goto_47c

    .line 515
    .end local v8           #_result:Z
    :sswitch_484
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hangupVoIPCall()Z

    move-result v8

    .line 517
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v8, :cond_499

    const/4 v0, 0x1

    :goto_493
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 518
    :cond_499
    const/4 v0, 0x0

    goto :goto_493

    .line 523
    .end local v8           #_result:Z
    :sswitch_49b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPRinging()V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 530
    :sswitch_4a9
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPDialing()V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 537
    :sswitch_4b7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPInCall()V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 544
    :sswitch_4c5
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPIdle()V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 551
    :sswitch_4d3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPIdle()Z

    move-result v8

    .line 553
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    if-eqz v8, :cond_4e8

    const/4 v0, 0x1

    :goto_4e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 554
    :cond_4e8
    const/4 v0, 0x0

    goto :goto_4e2

    .line 559
    .end local v8           #_result:Z
    :sswitch_4ea
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPRingOrDialing()Z

    move-result v8

    .line 561
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v8, :cond_4ff

    const/4 v0, 0x1

    :goto_4f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 562
    :cond_4ff
    const/4 v0, 0x0

    goto :goto_4f9

    .line 567
    .end local v8           #_result:Z
    :sswitch_501
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPRinging()Z

    move-result v8

    .line 569
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v8, :cond_516

    const/4 v0, 0x1

    :goto_510
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 570
    :cond_516
    const/4 v0, 0x0

    goto :goto_510

    .line 575
    .end local v8           #_result:Z
    :sswitch_518
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPDialing()Z

    move-result v8

    .line 577
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v8, :cond_52d

    const/4 v0, 0x1

    :goto_527
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 578
    :cond_52d
    const/4 v0, 0x0

    goto :goto_527

    .line 583
    .end local v8           #_result:Z
    :sswitch_52f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPActivated()Z

    move-result v8

    .line 585
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    if-eqz v8, :cond_544

    const/4 v0, 0x1

    :goto_53e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 586
    :cond_544
    const/4 v0, 0x0

    goto :goto_53e

    .line 591
    .end local v8           #_result:Z
    :sswitch_546
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentVoIPNumber()Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 599
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_558
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->callInVoIP(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 608
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_56a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->moveVoIPToTop()Z

    move-result v8

    .line 610
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v8, :cond_57f

    const/4 v0, 0x1

    :goto_579
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 611
    :cond_57f
    const/4 v0, 0x0

    goto :goto_579

    .line 616
    .end local v8           #_result:Z
    :sswitch_581
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAlerting()Z

    move-result v8

    .line 618
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v8, :cond_596

    const/4 v0, 0x1

    :goto_590
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 619
    :cond_596
    const/4 v0, 0x0

    goto :goto_590

    .line 624
    .end local v8           #_result:Z
    :sswitch_598
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoIPCallBaseTime()J

    move-result-wide v8

    .line 626
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 628
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 632
    .end local v8           #_result:J
    :sswitch_5aa
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 635
    .local v6, _arg0:J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPCallBaseTime(J)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 641
    .end local v6           #_arg0:J
    :sswitch_5bc
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchVoIPHoldingAndActive()Z

    move-result v8

    .line 643
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v8, :cond_5d1

    const/4 v0, 0x1

    :goto_5cb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 644
    :cond_5d1
    const/4 v0, 0x0

    goto :goto_5cb

    .line 649
    .end local v8           #_result:Z
    :sswitch_5d3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoIPMute()Z

    move-result v8

    .line 651
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v8, :cond_5e8

    const/4 v0, 0x1

    :goto_5e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 652
    :cond_5e8
    const/4 v0, 0x0

    goto :goto_5e2

    .line 657
    .end local v8           #_result:Z
    :sswitch_5ea
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_600

    const/4 v0, 0x1

    move v1, v0

    .line 660
    .local v1, _arg0:Z
    :goto_5f7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPMuteState(Z)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 659
    .end local v1           #_arg0:Z
    :cond_600
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5f7

    .line 666
    :sswitch_603
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_620

    const/4 v0, 0x1

    move v1, v0

    .line 669
    .restart local v1       #_arg0:Z
    :goto_610
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPMute(Z)Z

    move-result v8

    .line 670
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v8, :cond_623

    const/4 v0, 0x1

    :goto_61a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 668
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_620
    const/4 v0, 0x0

    move v1, v0

    goto :goto_610

    .line 671
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_623
    const/4 v0, 0x0

    goto :goto_61a

    .line 676
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_625
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63b

    const/4 v0, 0x1

    move v1, v0

    .line 679
    .restart local v1       #_arg0:Z
    :goto_632
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->turnOnVoIPSpeaker(Z)V

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 678
    .end local v1           #_arg0:Z
    :cond_63b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_632

    .line 685
    :sswitch_63e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 688
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveVoIPCallsCount(I)V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 694
    .end local v1           #_arg0:I
    :sswitch_650
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVoIPCallsCount()I

    move-result v8

    .line 696
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 702
    .end local v8           #_result:I
    :sswitch_662
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setHoldVoIPCallsCount(I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 711
    .end local v1           #_arg0:I
    :sswitch_674
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getHoldVoIPCallsCount()I

    move-result v8

    .line 713
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 719
    .end local v8           #_result:I
    :sswitch_686
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableStatusBarforVoIP()V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 726
    :sswitch_694
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->reenableStatusBarforVoIP()V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 733
    :sswitch_6a2
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPCallButtonEnabled()Z

    move-result v8

    .line 735
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    if-eqz v8, :cond_6b7

    const/4 v0, 0x1

    :goto_6b1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 736
    :cond_6b7
    const/4 v0, 0x0

    goto :goto_6b1

    .line 741
    .end local v8           #_result:Z
    :sswitch_6b9
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPLaunchMenuEnabled()Z

    move-result v8

    .line 743
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v8, :cond_6ce

    const/4 v0, 0x1

    :goto_6c8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 744
    :cond_6ce
    const/4 v0, 0x0

    goto :goto_6c8

    .line 749
    .end local v8           #_result:Z
    :sswitch_6d0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6ea

    const/4 v0, 0x1

    move v2, v0

    .line 754
    .local v2, _arg1:Z
    :goto_6e1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 753
    .end local v2           #_arg1:Z
    :cond_6ea
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6e1

    .line 760
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_6ed
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v8

    .line 762
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 768
    .end local v8           #_result:I
    :sswitch_6ff
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataConnectionToggleExt()I

    move-result v8

    .line 770
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 776
    .end local v8           #_result:I
    :sswitch_711
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRoamingArea()Z

    move-result v8

    .line 778
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v8, :cond_726

    const/4 v0, 0x1

    :goto_720
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 779
    :cond_726
    const/4 v0, 0x0

    goto :goto_720

    .line 784
    .end local v8           #_result:Z
    :sswitch_728
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkDisable()Z

    move-result v8

    .line 786
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v8, :cond_73d

    const/4 v0, 0x1

    :goto_737
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 787
    :cond_73d
    const/4 v0, 0x0

    goto :goto_737

    .line 792
    .end local v8           #_result:Z
    :sswitch_73f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 795
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDMPort(Ljava/lang/String;)Z

    move-result v8

    .line 796
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v8, :cond_758

    const/4 v0, 0x1

    :goto_752
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 797
    :cond_758
    const/4 v0, 0x0

    goto :goto_752

    .line 802
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_75a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 805
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->changeUARFCN(I)Z

    move-result v8

    .line 806
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    if-eqz v8, :cond_773

    const/4 v0, 0x1

    :goto_76d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 807
    :cond_773
    const/4 v0, 0x0

    goto :goto_76d

    .line 812
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_775
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    .line 815
    .local v1, _arg0:C
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDtmf(C)Z

    move-result v8

    .line 816
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v8, :cond_78f

    const/4 v0, 0x1

    :goto_789
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 817
    :cond_78f
    const/4 v0, 0x0

    goto :goto_789

    .line 822
    .end local v1           #_arg0:C
    .end local v8           #_result:Z
    :sswitch_791
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isEvdoOnly()Z

    move-result v8

    .line 824
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    if-eqz v8, :cond_7a6

    const/4 v0, 0x1

    :goto_7a0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 825
    :cond_7a6
    const/4 v0, 0x0

    goto :goto_7a0

    .line 45
    :sswitch_data_7a8
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_31
        0x4 -> :sswitch_47
        0x5 -> :sswitch_68
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_8c
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_b1
        0xa -> :sswitch_c8
        0xb -> :sswitch_df
        0xc -> :sswitch_f6
        0xd -> :sswitch_10d
        0xe -> :sswitch_124
        0xf -> :sswitch_143
        0x10 -> :sswitch_151
        0x11 -> :sswitch_16c
        0x12 -> :sswitch_187
        0x13 -> :sswitch_195
        0x14 -> :sswitch_1b7
        0x15 -> :sswitch_1c5
        0x16 -> :sswitch_1d3
        0x17 -> :sswitch_1e1
        0x18 -> :sswitch_1f7
        0x19 -> :sswitch_20d
        0x1a -> :sswitch_224
        0x1b -> :sswitch_23b
        0x1c -> :sswitch_252
        0x1d -> :sswitch_270
        0x1e -> :sswitch_282
        0x1f -> :sswitch_294
        0x20 -> :sswitch_2a6
        0x21 -> :sswitch_2b8
        0x22 -> :sswitch_2ca
        0x23 -> :sswitch_2dc
        0x24 -> :sswitch_2ee
        0x25 -> :sswitch_300
        0x26 -> :sswitch_317
        0x27 -> :sswitch_329
        0x28 -> :sswitch_33b
        0x29 -> :sswitch_352
        0x2a -> :sswitch_369
        0x2b -> :sswitch_380
        0x2c -> :sswitch_397
        0x2d -> :sswitch_3ae
        0x2e -> :sswitch_3c0
        0x2f -> :sswitch_3d9
        0x30 -> :sswitch_3f0
        0x31 -> :sswitch_406
        0x32 -> :sswitch_418
        0x33 -> :sswitch_42e
        0x34 -> :sswitch_448
        0x35 -> :sswitch_456
        0x36 -> :sswitch_46d
        0x37 -> :sswitch_484
        0x38 -> :sswitch_49b
        0x39 -> :sswitch_4a9
        0x3a -> :sswitch_4b7
        0x3b -> :sswitch_4c5
        0x3c -> :sswitch_4d3
        0x3d -> :sswitch_4ea
        0x3e -> :sswitch_501
        0x3f -> :sswitch_518
        0x40 -> :sswitch_52f
        0x41 -> :sswitch_546
        0x42 -> :sswitch_558
        0x43 -> :sswitch_56a
        0x44 -> :sswitch_581
        0x45 -> :sswitch_598
        0x46 -> :sswitch_5aa
        0x47 -> :sswitch_5bc
        0x48 -> :sswitch_5d3
        0x49 -> :sswitch_5ea
        0x4a -> :sswitch_603
        0x4b -> :sswitch_625
        0x4c -> :sswitch_63e
        0x4d -> :sswitch_650
        0x4e -> :sswitch_662
        0x4f -> :sswitch_674
        0x50 -> :sswitch_686
        0x51 -> :sswitch_694
        0x52 -> :sswitch_6a2
        0x53 -> :sswitch_6b9
        0x54 -> :sswitch_6d0
        0x55 -> :sswitch_6ed
        0x56 -> :sswitch_6ff
        0x57 -> :sswitch_711
        0x58 -> :sswitch_728
        0x59 -> :sswitch_73f
        0x5a -> :sswitch_75a
        0x5b -> :sswitch_775
        0x5c -> :sswitch_791
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
