.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onChangeSipReg(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->thread_cnt:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->connect3Gdata()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->thread_cnt:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 1564
    return-void
.end method
