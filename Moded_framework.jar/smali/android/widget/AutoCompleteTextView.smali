.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownListView;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupScrollListener;,
        Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;,
        Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;,
        Landroid/widget/AutoCompleteTextView$ListSelectorHider;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field private static final HINT_VIEW_ID:I = 0x17

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorId:I

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownDismissedOnCompletion:Z

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

.field private mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFilter:Landroid/widget/Filter;

.field private mForceIgnoreOutsideTouch:Z

.field private mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mResizePopupRunnable:Ljava/lang/Runnable;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;

.field private mlastMoveTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    .line 136
    new-instance v2, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    .line 139
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 141
    iput-boolean v6, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 143
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 145
    iput v4, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 148
    iput-object v5, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 154
    new-instance v2, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;

    .line 159
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/AutoCompleteTextView;->mlastMoveTime:J

    .line 1118
    new-instance v2, Landroid/widget/AutoCompleteTextView$1;

    invoke-direct {v2, p0}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    .line 174
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 176
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 183
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 185
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 187
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 189
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 196
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 201
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 203
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 206
    const v2, 0x1090066

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 211
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    .line 212
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v6, :cond_9d

    .line 214
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 215
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 218
    :cond_9d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 222
    new-instance v2, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    new-instance v2, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 225
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AutoCompleteTextView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView$DropDownListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/AutoCompleteTextView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Landroid/widget/AutoCompleteTextView;->mlastMoveTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Landroid/widget/AutoCompleteTextView;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Landroid/widget/AutoCompleteTextView;->mlastMoveTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/AutoCompleteTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/AutoCompleteTextView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/AutoCompleteTextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private buildDropDown()I
    .registers 36

    .prologue
    .line 1295
    const/16 v29, 0x0

    .line 1297
    .local v29, otherHeights:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    .line 1298
    .local v11, adapter:Landroid/widget/ListAdapter;
    if-eqz v11, :cond_76

    .line 1299
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v25

    .line 1300
    .local v25, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v25, :cond_76

    .line 1301
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1302
    .local v15, count:I
    new-array v13, v15, [Landroid/view/inputmethod/CompletionInfo;

    .line 1303
    .local v13, completions:[Landroid/view/inputmethod/CompletionInfo;
    const/16 v31, 0x0

    .line 1305
    .local v31, realCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1f
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_55

    .line 1306
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1307
    add-int/lit8 v31, v31, 0x1

    .line 1308
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v26

    .line 1309
    .local v26, item:Ljava/lang/Object;
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 1310
    .local v22, id:J
    new-instance v5, Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v5

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v5, v13, v21

    .line 1305
    .end local v22           #id:J
    .end local v26           #item:Ljava/lang/Object;
    :cond_52
    add-int/lit8 v21, v21, 0x1

    goto :goto_1f

    .line 1315
    :cond_55
    move/from16 v0, v31

    move v1, v15

    if-eq v0, v1, :cond_6e

    .line 1316
    move/from16 v0, v31

    new-array v0, v0, [Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v32, v0

    .line 1317
    .local v32, tmp:[Landroid/view/inputmethod/CompletionInfo;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v13

    move v1, v5

    move-object/from16 v2, v32

    move v3, v6

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1318
    move-object/from16 v13, v32

    .line 1321
    .end local v32           #tmp:[Landroid/view/inputmethod/CompletionInfo;
    :cond_6e
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1325
    .end local v13           #completions:[Landroid/view/inputmethod/CompletionInfo;
    .end local v15           #count:I
    .end local v21           #i:I
    .end local v25           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v31           #realCount:I
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    if-nez v5, :cond_1ec

    .line 1326
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 1328
    .local v14, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$ListSelectorHider;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    .line 1336
    new-instance v5, Landroid/widget/AutoCompleteTextView$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$2;-><init>(Landroid/widget/AutoCompleteTextView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1346
    new-instance v5, Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-direct {v5, v14}, Landroid/widget/AutoCompleteTextView$DropDownListView;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusable(Z)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$3;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$PopupScrollListener;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$PopupScrollListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v5, v0

    if-eqz v5, :cond_11a

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1375
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object/from16 v16, v0

    .line 1377
    .local v16, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;->getHintView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v20

    .line 1378
    .local v20, hintView:Landroid/view/View;
    if-eqz v20, :cond_184

    .line 1381
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1382
    .local v18, hintContainer:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1384
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1387
    .local v19, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1392
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    .line 1393
    .local v34, widthSpec:I
    const/16 v17, 0x0

    .line 1394
    .local v17, heightSpec:I
    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1396
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1397
    .restart local v19       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v5, v6

    .line 1400
    move-object/from16 v16, v18

    .line 1403
    .end local v17           #heightSpec:I
    .end local v18           #hintContainer:Landroid/widget/LinearLayout;
    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #widthSpec:I
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1416
    .end local v14           #context:Landroid/content/Context;
    .end local v20           #hintView:Landroid/view/View;
    :cond_18f
    :goto_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_21b

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 1418
    .local v24, ignoreBottomDecorations:Z
    :goto_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    move v7, v0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v28

    .line 1423
    .local v28, maxHeight:I
    const/16 v30, 0x0

    .line 1424
    .local v30, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1425
    .local v12, background:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_1da

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v30, v5, v6

    .line 1430
    :cond_1da
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    move v5, v0

    if-nez v5, :cond_1e9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_21f

    .line 1431
    :cond_1e9
    add-int v5, v28, v30

    .line 1440
    :goto_1eb
    return v5

    .line 1405
    .end local v12           #background:Landroid/graphics/drawable/Drawable;
    .end local v16           #dropDownView:Landroid/view/ViewGroup;
    .end local v24           #ignoreBottomDecorations:Z
    .end local v28           #maxHeight:I
    .end local v30           #padding:I
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 1406
    .restart local v16       #dropDownView:Landroid/view/ViewGroup;
    const/16 v5, 0x17

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1407
    .local v33, view:Landroid/view/View;
    if-eqz v33, :cond_18f

    .line 1408
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1410
    .restart local v19       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v5, v6

    goto/16 :goto_18f

    .line 1416
    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #view:Landroid/view/View;
    :cond_21b
    const/4 v5, 0x0

    move/from16 v24, v5

    goto :goto_19e

    .line 1434
    .restart local v12       #background:Landroid/graphics/drawable/Drawable;
    .restart local v24       #ignoreBottomDecorations:Z
    .restart local v28       #maxHeight:I
    .restart local v30       #padding:I
    :cond_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    sub-int v9, v28, v29

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v27

    .line 1438
    .local v27, listContent:I
    if-lez v27, :cond_232

    add-int v29, v29, v30

    .line 1440
    :cond_232
    add-int v5, v27, v29

    goto :goto_1eb
.end method

.method private getDropDownAnchorView()Landroid/view/View;
    .registers 3

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_15

    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1161
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 1163
    :cond_15
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_1b

    move-object v0, p0

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_1a
.end method

.method private getHintView(Landroid/content/Context;)Landroid/view/View;
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1444
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 1445
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1447
    .local v0, hintView:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    move-object v1, v0

    .line 1451
    .end local v0           #hintView:Landroid/widget/TextView;
    :goto_2b
    return-object v1

    :cond_2c
    move-object v1, v3

    goto :goto_2b
.end method

.method private onClickImpl()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 242
    :cond_c
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .registers 12
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 941
    if-gez p2, :cond_19

    .line 942
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    .line 946
    .local v6, selectedItem:Ljava/lang/Object;
    :goto_e
    if-nez v6, :cond_20

    .line 947
    const-string v0, "AutoCompleteTextView"

    const-string/jumbo v2, "performCompletion: no selected item"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_18
    :goto_18
    return-void

    .line 944
    :cond_19
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #selectedItem:Ljava/lang/Object;
    goto :goto_e

    .line 951
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 952
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 955
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4b

    .line 956
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 958
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz p1, :cond_37

    if-gez p2, :cond_43

    .line 959
    :cond_37
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 960
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    .line 961
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    .line 963
    :cond_43
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 967
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_4b
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_18

    .line 968
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_18
.end method

.method private updateDropDownForFilter(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 1022
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 1038
    :cond_8
    :goto_8
    return-void

    .line 1031
    :cond_9
    if-gtz p1, :cond_f

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-eqz v0, :cond_25

    :cond_f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1032
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1033
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_8

    .line 1035
    :cond_25
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_8

    .line 1036
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_8
.end method


# virtual methods
.method public clearListSelection()V
    .registers 3

    .prologue
    .line 858
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 859
    .local v0, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz v0, :cond_e

    .line 861
    const/4 v1, 0x1

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 862
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->hideSelector()V

    .line 863
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestLayout()V

    .line 865
    :cond_e
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "selectedItem"

    .prologue
    .line 850
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1134
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1135
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 1136
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1138
    :cond_a
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1139
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1140
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1141
    return-void
.end method

.method doAfterTextChanged()V
    .registers 3

    .prologue
    .line 805
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 830
    :cond_4
    :goto_4
    return-void

    .line 812
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 818
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 819
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 820
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_4

    .line 825
    :cond_23
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 826
    :cond_2a
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 827
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method doBeforeTextChanged()V
    .registers 2

    .prologue
    .line 796
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 802
    :goto_4
    return-void

    .line 800
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_4
.end method

.method public enoughToFilter()Z
    .registers 3

    .prologue
    .line 776
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ensureImeVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1182
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1184
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1185
    return-void

    .line 1182
    :cond_c
    const/4 v1, 0x2

    goto :goto_5
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .prologue
    .line 402
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 1501
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_13

    .line 892
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 894
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .registers 2

    .prologue
    .line 489
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .registers 2

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPerformingCompletion()Z
    .registers 2

    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 1082
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1083
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1087
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1088
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 8
    .parameter "completion"

    .prologue
    .line 923
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 925
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 928
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_27

    .line 929
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 932
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 936
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    :cond_27
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1100
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_10

    .line 1106
    :goto_9
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1107
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1108
    return-void

    .line 1101
    :catch_10
    move-exception v0

    goto :goto_9
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .parameter "hint"

    .prologue
    .line 1050
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1051
    packed-switch p1, :pswitch_data_10

    .line 1058
    :cond_6
    :goto_6
    return-void

    .line 1053
    :pswitch_7
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_6

    .line 1054
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_6

    .line 1051
    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1018
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1062
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1064
    if-nez p1, :cond_8

    .line 1065
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1067
    :cond_8
    if-nez p1, :cond_11

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_11

    .line 1068
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1070
    :cond_11
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 676
    const/16 v8, 0x3e

    if-eq p1, v8, :cond_9d

    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v8

    if-gez v8, :cond_1a

    const/16 v8, 0x42

    if-eq p1, v8, :cond_9d

    const/16 v8, 0x17

    if-eq p1, v8, :cond_9d

    .line 680
    :cond_1a
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 683
    .local v4, curIndex:I
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v8

    if-nez v8, :cond_62

    const/4 v8, 0x1

    move v2, v8

    .line 685
    .local v2, below:Z
    :goto_2a
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 688
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 689
    .local v5, firstItem:I
    const/high16 v7, -0x8000

    .line 691
    .local v7, lastItem:I
    if-eqz v0, :cond_44

    .line 692
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 693
    .local v1, allEnabled:Z
    if-eqz v1, :cond_65

    const/4 v8, 0x0

    move v5, v8

    .line 695
    :goto_3b
    if-eqz v1, :cond_6f

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move v7, v8

    .line 699
    .end local v1           #allEnabled:Z
    :cond_44
    :goto_44
    if-eqz v2, :cond_4c

    const/16 v8, 0x13

    if-ne p1, v8, :cond_4c

    if-le v4, v5, :cond_54

    :cond_4c
    if-nez v2, :cond_7e

    const/16 v8, 0x14

    if-ne p1, v8, :cond_7e

    if-lt v4, v7, :cond_7e

    .line 703
    :cond_54
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 704
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 705
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 706
    const/4 v8, 0x1

    .line 764
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :goto_61
    return v8

    .line 683
    .restart local v4       #curIndex:I
    :cond_62
    const/4 v8, 0x0

    move v2, v8

    goto :goto_2a

    .line 693
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :cond_65
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    move v5, v8

    goto :goto_3b

    .line 695
    :cond_6f
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    move v7, v8

    goto :goto_44

    .line 710
    .end local v1           #allEnabled:Z
    :cond_7e
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v9, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v8, v9}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 713
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 716
    .local v3, consumed:Z
    if-eqz v3, :cond_b9

    .line 719
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 724
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestFocusFromTouch()Z

    .line 725
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 727
    sparse-switch p1, :sswitch_data_d6

    .line 756
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_9d
    :goto_9d
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 757
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 758
    .local v6, handled:Z
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 760
    if-eqz v6, :cond_b5

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_b5

    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v8, :cond_b5

    .line 761
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    :cond_b5
    move v8, v6

    .line 764
    goto :goto_61

    .line 734
    .end local v6           #handled:Z
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :sswitch_b7
    const/4 v8, 0x1

    goto :goto_61

    .line 737
    :cond_b9
    if-eqz v2, :cond_c3

    const/16 v8, 0x14

    if-ne p1, v8, :cond_c3

    .line 740
    if-ne v4, v7, :cond_9d

    .line 741
    const/4 v8, 0x1

    goto :goto_61

    .line 743
    :cond_c3
    if-nez v2, :cond_9d

    const/16 v8, 0x13

    if-ne p1, v8, :cond_9d

    if-ne v4, v5, :cond_9d

    .line 745
    const/4 v8, 0x1

    goto :goto_61

    .line 750
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_cd
    packed-switch p1, :pswitch_data_e8

    goto :goto_9d

    .line 752
    :pswitch_d1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_9d

    .line 727
    nop

    :sswitch_data_d6
    .sparse-switch
        0x13 -> :sswitch_b7
        0x14 -> :sswitch_b7
        0x17 -> :sswitch_b7
        0x42 -> :sswitch_b7
    .end sparse-switch

    .line 750
    :pswitch_data_e8
    .packed-switch 0x14
        :pswitch_d1
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 630
    const/4 v0, 0x4

    if-ne p1, v0, :cond_41

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_41

    .line 634
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_23

    .line 635
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v0, v1

    .line 645
    :goto_22
    return v0

    .line 637
    :cond_23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 638
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 639
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_41

    .line 640
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    move v0, v1

    .line 641
    goto :goto_22

    .line 645
    :cond_41
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_19

    .line 651
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 652
    .local v0, consumed:Z
    if-eqz v0, :cond_19

    .line 653
    sparse-switch p1, :sswitch_data_24

    .line 664
    .end local v0           #consumed:Z
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1d
    return v1

    .line 659
    .restart local v0       #consumed:Z
    :sswitch_1e
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 660
    const/4 v1, 0x1

    goto :goto_1d

    .line 653
    nop

    :sswitch_data_24
    .sparse-switch
        0x17 -> :sswitch_1e
        0x42 -> :sswitch_1e
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1042
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1043
    if-nez p1, :cond_c

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_c

    .line 1044
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1046
    :cond_c
    return-void
.end method

.method public performCompletion()V
    .registers 5

    .prologue
    .line 918
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 919
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 909
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 910
    return-void
.end method

.method public performValidation()V
    .registers 3

    .prologue
    .line 1486
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_5

    .line 1493
    :cond_4
    :goto_4
    return-void

    .line 1488
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1490
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1491
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 1006
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 1008
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1011
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1012
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v2, 0x0

    .line 609
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_2d

    .line 610
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 614
    :cond_c
    :goto_c
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 615
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_39

    .line 617
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 618
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 623
    :goto_21
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_2c

    .line 624
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 626
    :cond_2c
    return-void

    .line 611
    :cond_2d
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 612
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_c

    .line 620
    :cond_39
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_21
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 254
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 255
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 456
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 457
    return-void
.end method

.method public setDropDownAnchor(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 332
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 334
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .registers 3
    .parameter "animationStyle"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 419
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 366
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .registers 2
    .parameter "dropDownDismissedOnCompletion"

    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 478
    return-void
.end method

.method public setDropDownHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 308
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 309
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 393
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 394
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 375
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 376
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 280
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 281
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 1284
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 1285
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1147
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1148
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1151
    :cond_f
    return v0
.end method

.method public setListSelection(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 873
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_17

    .line 874
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 875
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 878
    :cond_17
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #setter for: Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->access$402(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 231
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 521
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 522
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 531
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 532
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 4
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 989
    if-eqz p2, :cond_6

    .line 990
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :goto_5
    return-void

    .line 992
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 993
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_5
.end method

.method public setThreshold(I)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 507
    if-gtz p1, :cond_3

    .line 508
    const/4 p1, 0x1

    .line 511
    :cond_3
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 512
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 2
    .parameter "validator"

    .prologue
    .line 1464
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1465
    return-void
.end method

.method public showDropDown()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1198
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildDropDown()I

    move-result v6

    .line 1200
    .local v6, height:I
    const/4 v4, 0x0

    .line 1201
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 1203
    .local v5, heightSpec:I
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v7

    .line 1205
    .local v7, noInputMethod:Z
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1206
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_4a

    .line 1209
    const/4 v4, -0x1

    .line 1216
    :goto_1b
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_6b

    .line 1219
    if-eqz v7, :cond_5a

    move v5, v6

    .line 1220
    :goto_22
    if-eqz v7, :cond_5e

    .line 1221
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_5c

    move v1, v8

    :goto_2b
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1236
    :goto_2e
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_74

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_74

    move v1, v9

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1238
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1274
    :goto_49
    return-void

    .line 1210
    :cond_4a
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_57

    .line 1211
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1b

    .line 1213
    :cond_57
    iget v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    goto :goto_1b

    :cond_5a
    move v5, v8

    .line 1219
    goto :goto_22

    :cond_5c
    move v1, v2

    .line 1221
    goto :goto_2b

    .line 1225
    :cond_5e
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_69

    move v1, v8

    :goto_65
    invoke-virtual {v0, v1, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_2e

    :cond_69
    move v1, v2

    goto :goto_65

    .line 1230
    :cond_6b
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_71

    .line 1231
    move v5, v6

    goto :goto_2e

    .line 1233
    :cond_71
    iget v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    goto :goto_2e

    :cond_74
    move v1, v2

    .line 1236
    goto :goto_39

    .line 1241
    :cond_76
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_be

    .line 1242
    const/4 v4, -0x1

    .line 1251
    :goto_7b
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_d8

    .line 1252
    const/4 v5, -0x1

    .line 1261
    :goto_80
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1262
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1266
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_ea

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_ea

    move v1, v9

    :goto_95
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1267
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1268
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1270
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 1271
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 1272
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_49

    .line 1244
    :cond_be
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_d0

    .line 1245
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7b

    .line 1247
    :cond_d0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7b

    .line 1254
    :cond_d8
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_e2

    .line 1255
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_80

    .line 1257
    :cond_e2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_80

    :cond_ea
    move v1, v2

    .line 1266
    goto :goto_95
.end method

.method public showDropDownAfterLayout()V
    .registers 2

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1173
    return-void
.end method
