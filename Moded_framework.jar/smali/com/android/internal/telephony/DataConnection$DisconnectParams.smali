.class public Lcom/android/internal/telephony/DataConnection$DisconnectParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisconnectParams"
.end annotation


# instance fields
.field public lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

.field public onCompletedMsg:Landroid/os/Message;

.field public tag:I

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .registers 2
    .parameter "onCompletedMsg"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .parameter "onCompletedMsg"
    .parameter "userObj"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 178
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->userObj:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;)V
    .registers 2
    .parameter "lockObj"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    .line 174
    return-void
.end method
