.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;
.super Landroid/database/ContentObserver;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnectionSettingsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 96
    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_2f

    const/4 v1, 0x1

    move v0, v1

    .line 106
    .local v0, isConnected:Z
    :goto_16
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-string v2, "apnChanged"

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionSettingList()V
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void

    .line 103
    .end local v0           #isConnected:Z
    :cond_2f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_16
.end method
