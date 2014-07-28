.class Lcom/android/internal/widget/DigitalClock$1$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/DigitalClock$1;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DigitalClock$1;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$1$1;->this$1:Lcom/android/internal/widget/DigitalClock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$1$1;->this$1:Lcom/android/internal/widget/DigitalClock$1;

    iget-object v0, v0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    #calls: Lcom/android/internal/widget/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$200(Lcom/android/internal/widget/DigitalClock;)V

    .line 71
    return-void
.end method
