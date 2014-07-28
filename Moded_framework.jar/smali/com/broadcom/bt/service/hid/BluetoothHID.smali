.class public final Lcom/broadcom/bt/service/hid/BluetoothHID;
.super Ljava/lang/Object;
.source "BluetoothHID.java"


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.broadcom.bt.service.hid.action.STATE_CHANGED"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.broadcom.bt.service.hid.extra.STATE"

.field private static final HH_ATTR_MASK_BATTERY_POWER:I = 0x10

.field private static final HH_ATTR_MASK_NORMALLY_CONNECTABLE:I = 0x2

.field private static final HH_ATTR_MASK_RECONN_INIT:I = 0x4

.field private static final HH_ATTR_MASK_REMOTE_WAKE:I = 0x20

.field private static final HH_ATTR_MASK_SDP_DISABLE:I = 0x8

.field private static final HH_ATTR_MASK_SEC_REQUIRED:I = 0x8000

.field private static final HH_ATTR_MASK_SUP_TOUT_AVLBL:I = 0x40

.field private static final HH_ATTR_MASK_VIRTUAL_CABLE:I = 0x1

.field private static final HOST_SHOULD_NOT_CONNECT_BLACK_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_VUP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothHID"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Rocketfish Bluetooth Keyboard"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/broadcom/bt/service/hid/BluetoothHID;->HOST_SHOULD_NOT_CONNECT_BLACK_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "bluetooth_hid"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 102
    invoke-static {v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/hid/IBluetoothHID;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    .line 110
    :goto_13
    return-void

    .line 104
    :cond_14
    const-string v1, "BluetoothHID"

    const-string v2, "Bluetooth HID service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    goto :goto_13
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHID"

    .line 120
    const-string v1, "BluetoothHID"

    const-string v1, "connect()"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 125
    :goto_f
    return v1

    .line 123
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHID"

    .line 137
    const-string v1, "BluetoothHID"

    const-string v1, "disconnect()"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 143
    :goto_e
    return-void

    .line 140
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 250
    :goto_13
    return-object v1

    .line 248
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 211
    :goto_6
    return v1

    .line 209
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 256
    if-nez p1, :cond_5

    move v1, v4

    .line 265
    :goto_4
    return v1

    .line 261
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    .line 262
    const/4 v1, 0x1

    goto :goto_4

    .line 263
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 264
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 265
    goto :goto_4
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .registers 10
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 284
    if-eqz p1, :cond_9

    if-lt p2, v2, :cond_9

    const/4 v1, 0x3

    if-le p2, v1, :cond_b

    :cond_9
    move v1, v4

    .line 293
    :goto_a
    return v1

    .line 289
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_12

    move v1, v2

    .line 290
    goto :goto_a

    .line 291
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 293
    goto :goto_a
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 181
    :goto_6
    return v1

    .line 179
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 168
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .registers 8
    .parameter "device"
    .parameter "cData"

    .prologue
    const/4 v4, 0x0

    .line 313
    if-eqz p1, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    move v1, v4

    .line 322
    :goto_a
    return v1

    .line 318
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_12

    .line 319
    const/4 v1, 0x1

    goto :goto_a

    .line 320
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 321
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 322
    goto :goto_a
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 198
    :goto_6
    return v1

    .line 196
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 8
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    const/4 v4, 0x0

    .line 270
    if-eqz p1, :cond_5

    if-gez p2, :cond_7

    :cond_5
    move v1, v4

    .line 279
    :goto_6
    return v1

    .line 275
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_e

    .line 276
    const/4 v1, 0x1

    goto :goto_6

    .line 277
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 278
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 279
    goto :goto_6
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .registers 9
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 298
    if-eqz p1, :cond_f

    if-lt p2, v2, :cond_f

    const/4 v1, 0x3

    if-gt p2, v1, :cond_f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    move v1, v4

    .line 307
    :goto_10
    return v1

    .line 303
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_18

    move v1, v2

    .line 304
    goto :goto_10

    .line 305
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 307
    goto :goto_10
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"

    .prologue
    const/4 v7, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, deviceName:Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 223
    sget-object v5, Lcom/broadcom/bt/service/hid/BluetoothHID;->HOST_SHOULD_NOT_CONNECT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v7

    .line 236
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_20
    return v5

    .line 231
    :cond_21
    :try_start_21
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v5, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getAttrMask(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_33

    move-result v0

    .line 232
    .local v0, attrMask:I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2f

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_31

    :cond_2f
    const/4 v5, 0x1

    goto :goto_20

    :cond_31
    move v5, v7

    goto :goto_20

    .line 234
    .end local v0           #attrMask:I
    :catch_33
    move-exception v5

    move-object v3, v5

    .line 235
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothHID"

    const-string v6, ""

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 236
    goto :goto_20
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHID"

    .line 153
    const-string v1, "BluetoothHID"

    const-string/jumbo v1, "virtualUnplug()"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_a
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 159
    :goto_f
    return-void

    .line 156
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
