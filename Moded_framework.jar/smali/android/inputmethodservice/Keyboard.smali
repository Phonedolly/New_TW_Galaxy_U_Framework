.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftKeyIndex:I

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    const v0, 0x3fe66666

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Keyboard"

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v2, -0x1

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndex:I

    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 519
    .local v0, dm:Landroid/util/DisplayMetrics;
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 520
    .local v1, kgm:Landroid/app/KeyguardManager;
    const-string v2, "Keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "islockscreenmaking isLockScreenViewMaking() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isLockScreenViewMaking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isLockScreenViewMaking()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    .line 522
    const/16 v2, 0x1e0

    iput v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 523
    const/16 v2, 0x320

    iput v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 526
    :cond_44
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 527
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 528
    const-string v2, "Keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "islockscreenmaking keyboard\'s display metrics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 531
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 532
    iput v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 533
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 536
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 538
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 16
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 557
    const/4 v6, 0x0

    .line 558
    .local v6, x:I
    const/4 v7, 0x0

    .line 559
    .local v7, y:I
    const/4 v1, 0x0

    .line 560
    .local v1, column:I
    const/4 v8, 0x0

    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 562
    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 563
    .local v5, row:Landroid/inputmethodservice/Keyboard$Row;
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 564
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 565
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 566
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 567
    const/16 v8, 0xc

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 568
    const/4 v8, -0x1

    if-ne p4, v8, :cond_73

    const v8, 0x7fffffff

    move v4, v8

    .line 569
    .local v4, maxColumns:I
    :goto_29
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_75

    .line 570
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 571
    .local v0, c:C
    if-ge v1, v4, :cond_3e

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v8, v9, :cond_46

    .line 573
    :cond_3e
    const/4 v6, 0x0

    .line 574
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 575
    const/4 v1, 0x0

    .line 577
    :cond_46
    new-instance v3, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v3, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 578
    .local v3, key:Landroid/inputmethodservice/Keyboard$Key;
    iput v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 579
    iput v7, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 580
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 581
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 582
    add-int/lit8 v1, v1, 0x1

    .line 583
    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 584
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_70

    .line 586
    iput v6, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 569
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .end local v0           #c:C
    .end local v2           #i:I
    .end local v3           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v4           #maxColumns:I
    :cond_73
    move v4, p4

    .line 568
    goto :goto_29

    .line 589
    .restart local v2       #i:I
    .restart local v4       #maxColumns:I
    :cond_75
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 590
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/Keyboard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/Keyboard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/Keyboard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/Keyboard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/Keyboard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/Keyboard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 665
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 666
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 667
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 668
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 669
    .local v6, indices:[I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 670
    .local v4, gridWidth:I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 671
    .local v3, gridHeight:I
    const/4 v8, 0x0

    .local v8, x:I
    :goto_2f
    if-ge v8, v4, :cond_9a

    .line 672
    const/4 v9, 0x0

    .local v9, y:I
    :goto_32
    if-ge v9, v3, :cond_96

    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_36
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_7e

    .line 675
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 676
    .local v7, key:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_76

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v13

    invoke-virtual {v7, v10, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_76

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v13

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    sub-int/2addr v11, v13

    invoke-virtual {v7, v10, v11}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_76

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    sub-int/2addr v10, v13

    invoke-virtual {v7, v8, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_7b

    .line 681
    :cond_76
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput v5, v6, v1

    move v1, v2

    .line 674
    .end local v2           #count:I
    .restart local v1       #count:I
    :cond_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 684
    .end local v7           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_7e
    new-array v0, v1, [I

    .line 685
    .local v0, cell:[I
    invoke-static {v6, v14, v0, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 672
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_32

    .line 671
    .end local v0           #cell:[I
    .end local v1           #count:I
    .end local v5           #i:I
    :cond_96
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_2f

    .line 689
    .end local v9           #y:I
    :cond_9a
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .registers 7
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 816
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_8

    move v1, p3

    .line 823
    :goto_7
    return v1

    .line 817
    :cond_8
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_12

    .line 818
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_7

    .line 819
    :cond_12
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_21

    .line 821
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_7

    :cond_21
    move v1, p3

    .line 823
    goto :goto_7
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 21
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 719
    const/4 v11, 0x0

    .line 720
    .local v11, inKey:Z
    const/4 v12, 0x0

    .line 721
    .local v12, inRow:Z
    const/4 v14, 0x0

    .line 722
    .local v14, leftMostKey:Z
    const/4 v15, 0x0

    .line 723
    .local v15, row:I
    const/4 v6, 0x0

    .line 724
    .local v6, x:I
    const/4 v7, 0x0

    .line 725
    .local v7, y:I
    const/4 v13, 0x0

    .line 726
    .local v13, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v5, 0x0

    .line 727
    .local v5, currentRow:Landroid/inputmethodservice/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 728
    .local v4, res:Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 732
    .local v16, skipRow:Z
    :cond_e
    :goto_e
    :try_start_e
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, event:I
    const/4 v3, 0x1

    if-eq v10, v3, :cond_b1

    .line 733
    const/4 v3, 0x2

    if-ne v10, v3, :cond_e5

    .line 734
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 735
    .local v17, tag:Ljava/lang/String;
    const-string v3, "Row"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 736
    const/4 v12, 0x1

    .line 737
    const/4 v6, 0x0

    .line 738
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v5

    .line 739
    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v3, :cond_4d

    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    move v8, v0

    if-eq v3, v8, :cond_4d

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 740
    :goto_42
    if-eqz v16, :cond_e

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 742
    const/4 v12, 0x0

    goto :goto_e

    .line 739
    :cond_4d
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_42

    .line 744
    :cond_51
    const-string v3, "Key"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 745
    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    .line 746
    invoke-virtual/range {v3 .. v8}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v13

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v3, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    const/4 v8, -0x1

    if-ne v3, v8, :cond_be

    .line 749
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndex:I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_92} :catch_94

    goto/16 :goto_e

    .line 775
    .end local v10           #event:I
    .end local v17           #tag:Ljava/lang/String;
    :catch_94
    move-exception v3

    move-object v9, v3

    .line 776
    .local v9, e:Ljava/lang/Exception;
    const-string v3, "Keyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #res:Landroid/content/res/Resources;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse error:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    .end local v9           #e:Ljava/lang/Exception;
    :cond_b1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    move v3, v0

    sub-int v3, v7, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 780
    return-void

    .line 752
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local v10       #event:I
    .restart local v17       #tag:Ljava/lang/String;
    :cond_be
    :try_start_be
    iget-object v3, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    const/4 v8, -0x6

    if-ne v3, v8, :cond_e

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 755
    :cond_d0
    const-string v3, "Keyboard"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 756
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_e

    .line 758
    .end local v17           #tag:Ljava/lang/String;
    :cond_e5
    const/4 v3, 0x3

    if-ne v10, v3, :cond_e

    .line 759
    if-eqz v11, :cond_ff

    .line 760
    const/4 v11, 0x0

    .line 761
    iget v3, v13, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v8, v13, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v8

    add-int/2addr v6, v3

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    move v3, v0

    if-le v6, v3, :cond_e

    .line 763
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto/16 :goto_e

    .line 765
    :cond_ff
    if-eqz v12, :cond_e

    .line 766
    const/4 v12, 0x0

    .line 767
    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    add-int/2addr v7, v3

    .line 768
    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_107} :catch_94

    add-int/2addr v7, v3

    .line 769
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_e
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .parameter "res"
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 794
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 797
    .local v0, a:Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 800
    const/4 v1, 0x1

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 803
    const/4 v1, 0x2

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 806
    const/4 v1, 0x3

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 809
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 810
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 811
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 812
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .registers 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 786
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    :cond_16
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 12
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 715
    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .registers 4
    .parameter "res"
    .parameter "parser"

    .prologue
    .line 710
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .registers 2

    .prologue
    .line 601
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .registers 2

    .prologue
    .line 625
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 699
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 700
    :cond_7
    if-ltz p1, :cond_2c

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_2c

    if-ltz p2, :cond_2c

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2c

    .line 701
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 702
    .local v0, index:I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_2c

    .line 703
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 706
    .end local v0           #index:I
    :goto_2b
    return-object v1

    :cond_2c
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_2b
.end method

.method public getShiftKeyIndex()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndex:I

    return v0
.end method

.method protected getVerticalGap()I
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .registers 2

    .prologue
    .line 656
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method protected setHorizontalGap(I)V
    .registers 2
    .parameter "gap"

    .prologue
    .line 605
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 606
    return-void
.end method

.method protected setKeyHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 621
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 622
    return-void
.end method

.method protected setKeyWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 629
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 630
    return-void
.end method

.method public setShifted(Z)Z
    .registers 3
    .parameter "shiftState"

    .prologue
    .line 645
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_8

    .line 646
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean p1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 648
    :cond_8
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_10

    .line 649
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 650
    const/4 v0, 0x1

    .line 652
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected setVerticalGap(I)V
    .registers 2
    .parameter "gap"

    .prologue
    .line 613
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 614
    return-void
.end method
