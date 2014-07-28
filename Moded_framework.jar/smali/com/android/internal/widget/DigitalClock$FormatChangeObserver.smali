.class Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/DigitalClock;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/DigitalClock;

    #calls: Lcom/android/internal/widget/DigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$400(Lcom/android/internal/widget/DigitalClock;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/DigitalClock;

    #calls: Lcom/android/internal/widget/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$200(Lcom/android/internal/widget/DigitalClock;)V

    .line 108
    return-void
.end method
