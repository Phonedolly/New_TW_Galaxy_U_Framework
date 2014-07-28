.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field private static CharControllerHeight:I = 0x0

.field private static CharControllerWidth:I = 0x0

.field public static final HANDLE_CHARACTER_LEFT:I = 0x0

.field public static final HANDLE_CHARACTER_RIGHT:I = 0x1

.field public static final HANDLE_NONE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "WebSelectionControls"

.field static final LOGV:Z = false

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field public static final PARAGRAPH_HANDLE_BOTTOM:I = 0x5

.field public static final PARAGRAPH_HANDLE_LEFT:I = 0x2

.field public static final PARAGRAPH_HANDLE_RIGHT:I = 0x4

.field public static final PARAGRAPH_HANDLE_TOP:I = 0x3

.field private static ParaControllerHeight:I

.field private static ParaControllerWidth:I

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mReversedHandleLeft:Z

.field private mReversedHandleRight:Z

.field private mSelectedtext:Ljava/lang/String;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 60
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 61
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 62
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 64
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 66
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 67
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 85
    iput-object v1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 88
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 113
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 117
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 118
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Landroid/webkit/WebTextSelectionControls;->Init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/webkit/WebView;)V
    .registers 7
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"
    .parameter "webview"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 147
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 148
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 149
    iput-object p5, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 150
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    .line 492
    const v2, 0x1080289

    .line 493
    .local v2, leftHandleId:I
    const v5, 0x108028b

    .line 496
    .local v5, rightHandleId:I
    iget v8, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x1

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 497
    .local v3, leftX:I
    iget v8, p2, Landroid/graphics/Rect;->top:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, v8, v9

    .line 500
    .local v4, leftY:I
    iget v8, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x1

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v6, v8, v9

    .line 501
    .local v6, rightX:I
    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    .line 503
    .local v7, rightY:I
    if-nez p4, :cond_5b

    .line 505
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 506
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 509
    if-gez v4, :cond_46

    .line 510
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    if-gt v8, v9, :cond_a0

    .line 511
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 517
    :cond_46
    :goto_46
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v8, v7

    iget-object v9, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    if-le v8, v9, :cond_5b

    .line 518
    iget v8, p3, Landroid/graphics/Rect;->top:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_a8

    .line 519
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 525
    :cond_5b
    :goto_5b
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    if-ne v8, v9, :cond_65

    .line 526
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 527
    const v2, 0x108028b

    .line 530
    :cond_65
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    if-ne v8, v9, :cond_73

    .line 531
    iget v8, p3, Landroid/graphics/Rect;->top:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v7, v8, v9

    .line 532
    const v5, 0x1080289

    .line 537
    :cond_73
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 538
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 540
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v8, v3

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v9, v4

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 541
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v8, v6

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v9, v7

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 544
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    return-void

    .line 513
    .end local v0           #EController:Landroid/graphics/drawable/Drawable;
    .end local v1           #SController:Landroid/graphics/drawable/Drawable;
    :cond_a0
    const-string v8, "WebSelectionControls"

    const-string v9, "DrawSelectionCharController : webview  is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 521
    :cond_a8
    const-string v8, "WebSelectionControls"

    const-string v9, "DrawSelectionCharController : webview  is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;II)V
    .registers 9
    .parameter "canvas"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 554
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108028a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    .local v0, PController:Landroid/graphics/drawable/Drawable;
    sget v3, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, p2, v3

    .line 559
    .local v1, x:I
    sget v3, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v2, p3, v3

    .line 561
    .local v2, y:I
    sget v3, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v3, v1

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 563
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080289

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108028a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_24

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 134
    :cond_24
    if-eqz v0, :cond_32

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 138
    :cond_32
    return-void
.end method


# virtual methods
.method public DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .registers 38
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v27

    .line 319
    .local v27, scalecont:I
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 320
    .local v16, paintSelected:Landroid/graphics/Paint;
    const/4 v7, 0x1

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 321
    const/16 v7, 0x80

    const/16 v8, 0x96

    const/16 v9, 0xcb

    const/16 v10, 0xfb

    move-object/from16 v0, v16

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 322
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScale()F

    move-result v25

    .line 325
    .local v25, scale:F
    const/16 v26, 0x0

    .line 328
    .local v26, scaleLevel:I
    const/4 v7, 0x4

    move/from16 v0, p6

    move v1, v7

    if-ne v0, v1, :cond_10e

    .line 329
    sget v7, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v7, v25, v7

    if-lez v7, :cond_ea

    .line 330
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 331
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 346
    :goto_56
    const/4 v7, 0x4

    move/from16 v0, p6

    move v1, v7

    if-ne v0, v1, :cond_20b

    .line 347
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 348
    .local v5, SelectionPath:Landroid/graphics/Path;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 349
    .local v12, Paragraphrect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    .line 350
    .local v28, temp:Landroid/graphics/Rect;
    move-object v0, v12

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 352
    .local v13, centerX:I
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 355
    .local v14, centerY:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    int-to-float v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 357
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 359
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 362
    if-nez p5, :cond_156

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 364
    iget v13, v12, Landroid/graphics/Rect;->right:I

    .line 365
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 367
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 368
    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 371
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 372
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 481
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v12           #Paragraphrect:Landroid/graphics/Rect;
    .end local v13           #centerX:I
    .end local v14           #centerY:I
    .end local v28           #temp:Landroid/graphics/Rect;
    :cond_e2
    :goto_e2
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 482
    return-void

    .line 333
    :cond_ea
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 334
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_56

    .line 337
    :cond_10e
    sget v7, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v7, v25, v7

    if-lez v7, :cond_12c

    .line 338
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 339
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_56

    .line 341
    :cond_12c
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 342
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_56

    .line 376
    .restart local v5       #SelectionPath:Landroid/graphics/Path;
    .restart local v12       #Paragraphrect:Landroid/graphics/Rect;
    .restart local v13       #centerX:I
    .restart local v14       #centerY:I
    .restart local v28       #temp:Landroid/graphics/Rect;
    :cond_156
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 377
    .local v6, path:Landroid/graphics/Path;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local v15, paint:Landroid/graphics/Paint;
    iget v7, v12, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 381
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 382
    iget v7, v12, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 385
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 386
    iget v7, v12, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 389
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 390
    iget v7, v12, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 393
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 394
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    const v7, -0xffff01

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 399
    packed-switch p7, :pswitch_data_338

    .line 421
    const-string v7, ""

    const-string v8, "Selection controler not set!!! "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_1d8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    goto/16 :goto_e2

    .line 401
    :pswitch_1e3
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 402
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 403
    goto :goto_1d8

    .line 406
    :pswitch_1ed
    iget v13, v12, Landroid/graphics/Rect;->right:I

    .line 407
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 408
    goto :goto_1d8

    .line 411
    :pswitch_1f7
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 412
    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    .line 413
    goto :goto_1d8

    .line 416
    :pswitch_201
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 417
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 418
    goto :goto_1d8

    .line 430
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v6           #path:Landroid/graphics/Path;
    .end local v12           #Paragraphrect:Landroid/graphics/Rect;
    .end local v13           #centerX:I
    .end local v14           #centerY:I
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v28           #temp:Landroid/graphics/Rect;
    :cond_20b
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 431
    .local v24, rtStart:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 432
    .local v22, rtMiddle:Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 434
    .local v21, rtEnd:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    .line 437
    .local v23, rtSelected:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v9, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v24

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 439
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v9, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v10, v0

    move-object/from16 v0, v22

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v9, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v21

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    new-instance v20, Landroid/graphics/Region;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Region;-><init>()V

    .line 446
    .local v20, regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 447
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 448
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 450
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 451
    .local v17, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 453
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 456
    const/4 v7, 0x1

    move v0, v7

    move/from16 v1, p8

    if-ne v0, v1, :cond_e2

    .line 457
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 458
    .restart local v15       #paint:Landroid/graphics/Paint;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 459
    .local v18, rect1:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .local v19, rect2:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 463
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v19

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    const v7, -0xffff01

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    if-nez p5, :cond_314

    .line 469
    const/16 v7, 0xff

    const/16 v8, 0x58

    const/16 v9, 0xa5

    const/16 v10, 0xdc

    invoke-virtual {v15, v7, v8, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 472
    :cond_314
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 473
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 474
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_e2

    .line 399
    :pswitch_data_338
    .packed-switch 0x3
        :pswitch_1e3
        :pswitch_1ed
        :pswitch_1f7
        :pswitch_201
    .end packed-switch
.end method

.method public SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 302
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 304
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 305
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 306
    return-void
.end method

.method public copy()Z
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_15

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " html copy() "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    const-string v1, "Copy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    .line 211
    :goto_14
    return v0

    .line 210
    :cond_15
    const-string v0, "WebSelectionControls"

    const-string v1, "Selected text String is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    goto :goto_14
.end method

.method getControllerHeight()I
    .registers 2

    .prologue
    .line 230
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method getControllerWidth()I
    .registers 2

    .prologue
    .line 221
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method isReversed(I)Z
    .registers 5
    .parameter "handleType"

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_24

    .line 102
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReversed : wrong handle type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 96
    :pswitch_1d
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    goto :goto_1c

    .line 99
    :pswitch_20
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    goto :goto_1c

    .line 94
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)Z
    .registers 20
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 235
    const/4 v5, 0x0

    .local v5, bitmapwidth:I
    const/4 v4, 0x0

    .line 236
    .local v4, bitmapheight:I
    const/4 v6, 0x0

    .local v6, bitmapx:F
    const/4 v7, 0x0

    .line 240
    .local v7, bitmapy:F
    move-object/from16 v13, p2

    .line 242
    .local v13, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v5

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v6

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v7

    .line 254
    int-to-float v14, v5

    add-float/2addr v14, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5c

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v14

    float-to-int v15, v6

    sub-int v5, v14, v15

    .line 257
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v12

    .line 259
    .local v12, picture:Landroid/graphics/Picture;
    :try_start_65
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_65 .. :try_end_6a} :catch_dc

    move-result-object v2

    .line 264
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    .local v3, bitmapCanvas:Landroid/graphics/Canvas;
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    neg-float v14, v6

    neg-float v15, v7

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    invoke-virtual {v12, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 272
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v9, mFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 275
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 278
    :cond_c5
    const/4 v10, 0x0

    .line 281
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_c6
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_c6 .. :try_end_ce} :catch_e8

    .line 282
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_ce
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_d5
    .catch Ljava/io/FileNotFoundException; {:try_start_ce .. :try_end_d5} :catch_f2

    .line 288
    if-eqz v11, :cond_da

    .line 289
    :try_start_d7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_ec

    .line 294
    :cond_da
    const/4 v14, 0x1

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapCanvas:Landroid/graphics/Canvas;
    .end local v9           #mFile:Ljava/io/File;
    .end local v11           #out:Ljava/io/FileOutputStream;
    :goto_db
    return v14

    .line 260
    :catch_dc
    move-exception v14

    move-object v8, v14

    .line 261
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v14, "WebSelectionControls"

    const-string/jumbo v15, "saveImage() : OutOfMemory"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v14, 0x0

    goto :goto_db

    .line 283
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #bitmapCanvas:Landroid/graphics/Canvas;
    .restart local v9       #mFile:Ljava/io/File;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_e8
    move-exception v14

    move-object v8, v14

    .line 284
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_ea
    const/4 v14, 0x0

    goto :goto_db

    .line 290
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_ec
    move-exception v8

    .line 291
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    const/4 v14, 0x0

    goto :goto_db

    .line 283
    .end local v8           #e:Ljava/io/IOException;
    :catch_f2
    move-exception v14

    move-object v8, v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto :goto_ea
.end method
