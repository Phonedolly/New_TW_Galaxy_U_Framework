.class Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1517
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1519
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1520
    .local v0, action:I
    if-nez v0, :cond_43

    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1523
    .local v1, currentTick:J
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mlastMoveTime:J
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$1300(Landroid/widget/AutoCompleteTextView;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_3a

    .line 1524
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1532
    .end local v1           #currentTick:J
    :cond_38
    :goto_38
    const/4 v3, 0x0

    return v3

    .line 1527
    .restart local v1       #currentTick:J
    :cond_3a
    const-string v3, "AutoCompleteTextView"

    const-string/jumbo v4, "onTouch:ACTION_DOWN event ignored "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1529
    .end local v1           #currentTick:J
    :cond_43
    const/4 v3, 0x1

    if-ne v0, v3, :cond_38

    .line 1530
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_38
.end method
