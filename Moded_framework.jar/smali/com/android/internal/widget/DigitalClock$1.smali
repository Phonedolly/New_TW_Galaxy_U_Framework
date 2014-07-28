.class Lcom/android/internal/widget/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DigitalClock;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    #getter for: Lcom/android/internal/widget/DigitalClock;->mLive:Z
    invoke-static {v1}, Lcom/android/internal/widget/DigitalClock;->access$000(Lcom/android/internal/widget/DigitalClock;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 64
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/DigitalClock;->access$102(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 68
    .end local v0           #tz:Ljava/lang/String;
    :cond_28
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    #getter for: Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/DigitalClock;->access$300(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/DigitalClock$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DigitalClock$1$1;-><init>(Lcom/android/internal/widget/DigitalClock$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
