.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;
.super Ljava/lang/Thread;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1487
    :cond_0
    const-string v0, "gsm.network.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v1

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->post(Ljava/lang/Runnable;)Z

    .line 1495
    return-void
.end method
