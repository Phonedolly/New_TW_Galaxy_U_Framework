.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mTraceCount:I

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x20

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 46
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p1
.end method


# virtual methods
.method public addTrace(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    array-length v2, v3

    .line 58
    .local v2, traceCapacity:I
    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    if-ne v3, v2, :cond_20

    .line 59
    mul-int/lit8 v2, v2, 0x2

    .line 60
    new-array v0, v2, [F

    .line 61
    .local v0, newTraceX:[F
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 64
    new-array v1, v2, [F

    .line 65
    .local v1, newTraceY:[F
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 69
    .end local v0           #newTraceX:[F
    .end local v1           #newTraceY:[F
    :cond_20
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p1, v3, v4

    .line 70
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p2, v3, v4

    .line 71
    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 72
    return-void
.end method

.method public clearTrace()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 54
    return-void
.end method
