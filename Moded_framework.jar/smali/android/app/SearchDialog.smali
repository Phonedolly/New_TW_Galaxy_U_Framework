.class public Landroid/app/SearchDialog;
.super Landroid/app/Dialog;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchDialog$SearchAutoComplete;,
        Landroid/app/SearchDialog$SearchBar;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOG_TIMING:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final INSTANCE_KEY_APPDATA:Ljava/lang/String; = "data"

.field private static final INSTANCE_KEY_COMPONENT:Ljava/lang/String; = "comp"

.field private static final INSTANCE_KEY_STORED_APPDATA:Ljava/lang/String; = "sData"

.field private static final INSTANCE_KEY_USER_QUERY:Ljava/lang/String; = "uQry"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchDialog"

.field private static final REWRITE_QUERIES:Z = true

.field private static final SEARCH_PLATE_LEFT_PADDING_GLOBAL:I = 0xc

.field private static final SEARCH_PLATE_LEFT_PADDING_NON_GLOBAL:I = 0x7


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mBadgeLabel:Landroid/widget/TextView;

.field mButtonsKeyListener:Landroid/view/View$OnKeyListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mGoButton:Landroid/widget/Button;

.field mGoButtonClickListener:Landroid/view/View$OnClickListener;

.field private mInitialQuery:Ljava/lang/String;

.field private mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLaunchComponent:Landroid/content/ComponentName;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

.field private mSearchAutoCompleteImeOptions:I

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUserQuery:Ljava/lang/String;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/widget/ImageButton;

.field mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;

.field private mWorkingSpinner:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchManager;)V
    .registers 7
    .parameter "context"
    .parameter "searchManager"

    .prologue
    const/high16 v3, 0x1000

    .line 153
    const v0, 0x10300a4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchDialog;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 138
    new-instance v0, Landroid/app/SearchDialog$1;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$1;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 685
    new-instance v0, Landroid/app/SearchDialog$2;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$2;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 762
    new-instance v0, Landroid/app/SearchDialog$3;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$3;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    .line 787
    new-instance v0, Landroid/app/SearchDialog$4;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$4;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mGoButtonClickListener:Landroid/view/View$OnClickListener;

    .line 800
    new-instance v0, Landroid/app/SearchDialog$5;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$5;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

    .line 931
    new-instance v0, Landroid/app/SearchDialog$6;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$6;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1542
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    iput-object p2, p0, Landroid/app/SearchDialog;->mSearchManager:Landroid/app/SearchManager;

    .line 164
    return-void
.end method

.method static synthetic access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/SearchDialog;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/SearchDialog;Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/app/SearchDialog;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/SearchDialog;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/app/SearchDialog;Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/app/SearchDialog;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/app/SearchDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/app/SearchDialog;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/app/SearchDialog;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/SearchDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/SearchDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateWidgetState()V

    return-void
.end method

.method static synthetic access$500(Landroid/app/SearchDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/app/SearchDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/SearchDialog;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->updateVoiceButton(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/SearchDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return v0
.end method

.method static synthetic access$902(Landroid/app/SearchDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return p1
.end method

.method private closeSuggestionsAdapter()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    move-object v0, v2

    check-cast v0, Landroid/app/SuggestionsAdapter;

    move-object v1, v0

    invoke-virtual {v3, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v1, :cond_13

    .line 360
    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v1}, Landroid/app/SuggestionsAdapter;->close()V

    .line 362
    :cond_13
    iput-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    .line 363
    return-void
.end method

.method private createContentView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 194
    const v1, 0x1090061

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->setContentView(I)V

    .line 197
    const v1, 0x102023c

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/app/SearchDialog$SearchBar;

    .line 198
    .local v0, searchBar:Landroid/app/SearchDialog$SearchBar;
    invoke-virtual {v0, p0}, Landroid/app/SearchDialog$SearchBar;->setSearchDialog(Landroid/app/SearchDialog;)V

    .line 200
    const v1, 0x102023e

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    .line 201
    const v1, 0x1020241

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/app/SearchDialog$SearchAutoComplete;

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    .line 203
    const v1, 0x1020240

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    .line 204
    const v1, 0x1020242

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    .line 205
    const v1, 0x1020243

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    .line 206
    const v1, 0x102023d

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    .line 207
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v2, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->setWorking(Z)V

    .line 214
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v2, p0, Landroid/app/SearchDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v2, p0, Landroid/app/SearchDialog;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 216
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 218
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/app/SearchDialog;->mGoButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 220
    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 224
    iget-object v1, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 228
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 11
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "componentName"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1262
    if-eqz p2, :cond_f

    .line 1263
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1265
    :cond_f
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    if-eqz p4, :cond_1f

    .line 1267
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    :cond_1f
    if-eqz p3, :cond_26

    .line 1270
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    :cond_26
    iget-object v1, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_31

    .line 1273
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1275
    :cond_31
    if-eqz p6, :cond_3d

    .line 1276
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1277
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    :cond_3d
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1280
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 17
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1189
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    .local v1, action:Ljava/lang/String;
    const-string v0, "android.search.action.ZILCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1193
    const/4 v0, 0x0

    .line 1234
    .end local v1           #action:Ljava/lang/String;
    :goto_10
    return-object v0

    .line 1196
    .restart local v1       #action:Ljava/lang/String;
    :cond_11
    if-nez v1, :cond_19

    .line 1197
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1199
    :cond_19
    if-nez v1, :cond_1d

    .line 1200
    const-string v1, "android.intent.action.SEARCH"

    .line 1204
    :cond_1d
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1205
    .local v8, data:Ljava/lang/String;
    if-nez v8, :cond_2c

    .line 1206
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v8

    .line 1209
    :cond_2c
    if-eqz v8, :cond_52

    .line 1210
    const-string/jumbo v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1211
    .local v11, id:Ljava/lang/String;
    if-eqz v11, :cond_52

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1215
    .end local v11           #id:Ljava/lang/String;
    :cond_52
    if-nez v8, :cond_74

    const/4 v0, 0x0

    move-object v2, v0

    .line 1217
    .local v2, dataUri:Landroid/net/Uri;
    :goto_56
    const-string/jumbo v0, "suggest_intent_component"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    .local v5, componentName:Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1221
    .local v4, query:Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v6, p2

    move-object/from16 v7, p3

    .line 1223
    invoke-direct/range {v0 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_10

    .line 1215
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v5           #componentName:Ljava/lang/String;
    :cond_74
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_77} :catch_7a

    move-result-object v0

    move-object v2, v0

    goto :goto_56

    .line 1225
    .end local v1           #action:Ljava/lang/String;
    .end local v8           #data:Ljava/lang/String;
    :catch_7a
    move-exception v0

    move-object v9, v0

    .line 1228
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_7c
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_7f} :catch_a9

    move-result v12

    .line 1232
    .local v12, rowNum:I
    :goto_80
    const-string v0, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Suggestions cursor at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 1229
    .end local v12           #rowNum:I
    :catch_a9
    move-exception v10

    .line 1230
    .local v10, e2:Ljava/lang/RuntimeException;
    const/4 v12, -0x1

    .restart local v12       #rowNum:I
    goto :goto_80
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 16
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 845
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 850
    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 852
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 859
    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 860
    .local v5, queryExtras:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_29

    .line 861
    const-string v10, "app_data"

    iget-object v11, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 867
    :cond_29
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 870
    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .line 871
    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .line 872
    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 873
    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .line 874
    .local v2, maxResults:I
    iget-object v10, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 875
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_47

    .line 876
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 878
    :cond_47
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_55

    .line 879
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 881
    :cond_55
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_63

    .line 882
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_63
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_6d

    .line 885
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 887
    :cond_6d
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    const-string v10, "calling_package"

    if-nez v8, :cond_94

    const/4 v11, 0x0

    :goto_86
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 896
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 898
    return-object v9

    .line 891
    :cond_94
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    goto :goto_86
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 7
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 830
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 831
    .local v1, voiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 832
    .local v0, searchActivity:Landroid/content/ComponentName;
    const-string v2, "calling_package"

    if-nez v0, :cond_12

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    return-object v1

    .line 832
    :cond_12
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e
.end method

.method private dbgLogTiming(Ljava/lang/String;)V
    .registers 11
    .parameter "caller"

    .prologue
    .line 1544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1545
    .local v2, millis:J
    iget-object v7, p0, Landroid/app/SearchDialog;->mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 1546
    .local v4, oldTime:J
    sub-long v0, v2, v4

    .line 1547
    .local v0, delta:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") ticks for Search keystroke in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1548
    .local v6, report:Ljava/lang/String;
    const-string v7, "SearchDialog"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    return-void
.end method

.method private doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "componentName"
    .parameter "appSearchData"

    .prologue
    .line 255
    invoke-direct {p0, p3, p4}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 256
    const/4 v0, 0x0

    .line 266
    :goto_7
    return v0

    .line 259
    :cond_8
    if-nez p1, :cond_1a

    const-string v0, ""

    :goto_c
    iput-object v0, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    .line 261
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    .line 262
    if-eqz p2, :cond_18

    .line 263
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->selectAll()V

    .line 266
    :cond_18
    const/4 v0, 0x1

    goto :goto_7

    :cond_1a
    move-object v0, p1

    .line 259
    goto :goto_c
.end method

.method private fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "inUrl"

    .prologue
    const-string v4, "http://"

    const-string v3, "://"

    .line 909
    const-string v1, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    move-object v0, p1

    .line 924
    .end local p1
    .local v0, inUrl:Ljava/lang/String;
    :goto_15
    return-object v0

    .line 912
    .end local v0           #inUrl:Ljava/lang/String;
    .restart local p1
    :cond_16
    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 913
    :cond_26
    const-string v1, "http:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "https:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 914
    :cond_36
    const-string v1, "/"

    const-string v2, "//"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 920
    :cond_3e
    :goto_3e
    const-string v1, "://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5a
    move-object v0, p1

    .line 924
    .end local p1
    .restart local v0       #inUrl:Ljava/lang/String;
    goto :goto_15

    .line 916
    .end local v0           #inUrl:Ljava/lang/String;
    .restart local p1
    :cond_5c
    const-string v1, ":"

    const-string v2, "://"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .registers 4
    .parameter "c"
    .parameter "actionKey"

    .prologue
    .line 1293
    const/4 v1, 0x0

    .line 1295
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1297
    invoke-static {p0, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1301
    :cond_b
    if-nez v1, :cond_11

    .line 1302
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1304
    :cond_11
    return-object v1
.end method

.method private isBrowserSearch()Z
    .registers 3

    .prologue
    .line 622
    iget-object v0, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 647
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 648
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 649
    .local v2, y:I
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 650
    .local v0, slop:I
    neg-int v3, v0

    if-lt v1, v3, :cond_28

    neg-int v3, v0

    if-lt v2, v3, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_2a

    :cond_28
    const/4 v3, 0x1

    :goto_29
    return v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const-string v3, "SearchDialog"

    .line 1129
    if-nez p1, :cond_5

    .line 1149
    :goto_4
    return-void

    .line 1132
    :cond_5
    const-string v1, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :try_start_1d
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1145
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_4

    .line 1146
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 1147
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1007
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v5, :cond_a

    move v5, v6

    .line 1065
    :goto_9
    return v5

    .line 1010
    :cond_a
    iget-object v5, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-nez v5, :cond_10

    move v5, v6

    .line 1011
    goto :goto_9

    .line 1013
    :cond_10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9c

    .line 1019
    const/16 v5, 0x42

    if-eq p2, v5, :cond_1e

    const/16 v5, 0x54

    if-ne p2, v5, :cond_29

    .line 1020
    :cond_1e
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1021
    .local v3, position:I
    invoke-virtual {p0, v3}, Landroid/app/SearchDialog;->launchSuggestion(I)Z

    move-result v5

    goto :goto_9

    .line 1025
    .end local v3           #position:I
    :cond_29
    if-eq p2, v8, :cond_2f

    const/16 v5, 0x16

    if-ne p2, v5, :cond_50

    .line 1029
    :cond_2f
    if-ne p2, v8, :cond_48

    move v4, v6

    .line 1031
    .local v4, selPoint:I
    :goto_32
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v4}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    .line 1032
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/app/SearchDialog$SearchAutoComplete;->setListSelection(I)V

    .line 1033
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->clearListSelection()V

    .line 1034
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v7}, Landroid/app/SearchDialog$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v7

    .line 1036
    goto :goto_9

    .line 1029
    .end local v4           #selPoint:I
    :cond_48
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->length()I

    move-result v5

    move v4, v5

    goto :goto_32

    .line 1040
    :cond_50
    const/16 v5, 0x13

    if-ne p2, v5, :cond_61

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v5

    if-nez v5, :cond_61

    .line 1042
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    move v5, v6

    .line 1044
    goto :goto_9

    .line 1048
    :cond_61
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v5, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1049
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_75

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9c

    .line 1053
    :cond_75
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1054
    .restart local v3       #position:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_9c

    .line 1055
    iget-object v5, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v5}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1056
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1057
    invoke-static {v2, v0}, Landroid/app/SearchDialog;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, actionMsg:Ljava/lang/String;
    if-eqz v1, :cond_9c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9c

    .line 1059
    invoke-virtual {p0, v3, p2, v1}, Landroid/app/SearchDialog;->launchSuggestion(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_9

    .end local v0           #actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    .end local v1           #actionMsg:Ljava/lang/String;
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #position:I
    :cond_9c
    move v5, v6

    .line 1065
    goto/16 :goto_9
.end method

.method private restoreUserQuery()V
    .registers 2

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/SearchDialog;->setQuery(Ljava/lang/CharSequence;)V

    .line 1510
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 1480
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1481
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_9

    .line 1502
    :goto_8
    return-void

    .line 1484
    :cond_9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1486
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2, v0}, Landroid/app/SuggestionsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1487
    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1b

    .line 1491
    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1495
    :cond_1b
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    goto :goto_8

    .line 1499
    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_1f
    const-string v2, "SearchDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad suggestion position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    goto :goto_8
.end method

.method private setBrowserApplicationId(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1157
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1158
    .local v0, data:Landroid/net/Uri;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    .line 1159
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1160
    .local v1, scheme:Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1161
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    .end local v1           #scheme:Ljava/lang/String;
    :cond_29
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1517
    if-eqz p1, :cond_11

    .line 1518
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    .line 1520
    :cond_11
    return-void
.end method

.method private setUserQuery(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 1526
    if-nez p1, :cond_4

    .line 1527
    const-string p1, ""

    .line 1529
    :cond_4
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 1530
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    .line 1532
    return-void
.end method

.method private show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "componentName"
    .parameter "appSearchData"

    .prologue
    .line 281
    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 284
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    .line 286
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_17

    .line 287
    const/4 v1, 0x0

    .line 304
    :goto_16
    return v1

    .line 290
    :cond_17
    iput-object p1, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 291
    iput-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 292
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_33

    .line 298
    invoke-direct {p0}, Landroid/app/SearchDialog;->createContentView()V

    .line 300
    invoke-virtual {p0}, Landroid/app/SearchDialog;->show()V

    .line 302
    :cond_33
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateUI()V

    .line 304
    const/4 v1, 0x1

    goto :goto_16
.end method

.method private updateQueryHint()V
    .registers 4

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, hint:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_19

    .line 573
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 574
    .local v1, hintId:I
    if-eqz v1, :cond_19

    .line 575
    iget-object v2, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .end local v1           #hintId:I
    :cond_19
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 580
    .end local v0           #hint:Ljava/lang/String;
    :cond_1e
    return-void
.end method

.method private updateSearchAppIcon()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 514
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 515
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/16 v5, 0xc

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 539
    :goto_2c
    return-void

    .line 522
    :cond_2d
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 525
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_35
    iget-object v4, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 526
    .local v2, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_41} :catch_65

    move-result-object v1

    .line 532
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :goto_42
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/4 v5, 0x7

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2c

    .line 528
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :catch_65
    move-exception v4

    move-object v0, v4

    .line 529
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    const-string v4, "SearchDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found, using generic app icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private updateSearchAutoComplete()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 478
    invoke-direct {p0}, Landroid/app/SearchDialog;->closeSuggestionsAdapter()V

    .line 480
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 481
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setThreshold(I)V

    .line 483
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownDismissedOnCompletion(Z)V

    .line 485
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setForceIgnoreOutsideTouch(Z)V

    .line 489
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 490
    new-instance v0, Landroid/app/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v3, p0, Landroid/app/SearchDialog;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/app/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/app/SearchDialog;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    .line 492
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 494
    :cond_3d
    return-void
.end method

.method private updateSearchBadge()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 546
    const/16 v2, 0x8

    .line 547
    .local v2, visibility:I
    const/4 v0, 0x0

    .line 548
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 551
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeIcon()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 552
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 553
    const/4 v2, 0x0

    .line 561
    :cond_1e
    :goto_1e
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    return-void

    .line 555
    :cond_2e
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeLabel()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 556
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getLabelId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private updateSearchButton()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, textLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 499
    .local v0, iconLabel:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSearchButtonText()I

    move-result v1

    .line 500
    .local v1, textId:I
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 501
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    :goto_1e
    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 511
    return-void

    .line 503
    :cond_29
    if-eqz v1, :cond_36

    .line 504
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 506
    :cond_36
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108019d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e
.end method

.method private updateUI()V
    .registers 4

    .prologue
    .line 434
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_60

    .line 435
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAutoComplete()V

    .line 437
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchButton()V

    .line 438
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 439
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 440
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateQueryHint()V

    .line 441
    iget-object v1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->updateVoiceButton(Z)V

    .line 448
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 451
    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 454
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 455
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 456
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 459
    :cond_3c
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    .line 460
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 461
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget v2, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    .line 465
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 466
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const-string/jumbo v2, "nm"

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 471
    .end local v0           #inputType:I
    :cond_60
    :goto_60
    return-void

    .line 468
    .restart local v0       #inputType:I
    :cond_61
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_60
.end method

.method private updateVoiceButton(Z)V
    .registers 8
    .parameter "empty"

    .prologue
    .line 590
    const/16 v2, 0x8

    .line 591
    .local v2, visibility:I
    iget-object v3, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    const-string v4, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_11
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_39

    if-eqz p1, :cond_39

    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, testIntent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 596
    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 600
    :cond_26
    :goto_26
    if-eqz v1, :cond_39

    .line 601
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 603
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_39

    .line 604
    const/4 v2, 0x0

    .line 608
    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_39
    iget-object v3, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 609
    return-void

    .line 597
    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_3f
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 598
    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_26
.end method

.method private updateWidgetState()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 735
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    #calls: Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z
    invoke-static {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_35

    move v0, v3

    .line 736
    .local v0, enabled:Z
    :goto_b
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 739
    if-eqz v0, :cond_37

    iget-object v1, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 740
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const v2, 0x108034e

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setBackgroundResource(I)V

    .line 742
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 744
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 745
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 756
    :goto_34
    return-void

    .end local v0           #enabled:Z
    :cond_35
    move v0, v4

    .line 735
    goto :goto_b

    .line 747
    .restart local v0       #enabled:Z
    :cond_37
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const v2, 0x1080350

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setBackgroundResource(I)V

    .line 749
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_34

    .line 753
    :cond_47
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 754
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_34
.end method


# virtual methods
.method public hide()V
    .registers 4

    .prologue
    .line 987
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 999
    :goto_6
    return-void

    .line 991
    :cond_7
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 993
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_25

    .line 994
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 998
    :cond_25
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    goto :goto_6
.end method

.method public launchQuerySearch()V
    .registers 3

    .prologue
    .line 1072
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    .line 1073
    return-void
.end method

.method protected launchQuerySearch(ILjava/lang/String;)V
    .registers 12
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v2, 0x0

    .line 1084
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, query:Ljava/lang/String;
    const-string v1, "android.intent.action.SEARCH"

    .local v1, action:Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move v6, p1

    move-object v7, p2

    .line 1086
    invoke-direct/range {v0 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1088
    .local v8, intent:Landroid/content/Intent;
    invoke-direct {p0, v8}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    .line 1089
    return-void
.end method

.method protected launchSuggestion(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 1098
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/SearchDialog;->launchSuggestion(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected launchSuggestion(IILjava/lang/String;)Z
    .registers 7
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1112
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1113
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1115
    invoke-direct {p0, v0, p2, p3}, Landroid/app/SearchDialog;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1118
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    .line 1120
    const/4 v2, 0x1

    .line 1122
    .end local v1           #intent:Landroid/content/Intent;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1440
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1446
    :goto_27
    return-void

    .line 1445
    :cond_28
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    goto :goto_27
.end method

.method public onConfigurationChanged()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 414
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchButton()V

    .line 415
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 416
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 417
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateQueryHint()V

    .line 418
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SearchDialog;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 419
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 421
    :cond_26
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->showDropDownAfterLayout()V

    .line 423
    :cond_2b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 172
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 175
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 176
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 182
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 183
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setCanceledOnTouchOutside(Z)V

    .line 187
    return-void
.end method

.method onDataSetChanged()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v0, :cond_13

    .line 614
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v1}, Landroid/app/SuggestionsAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->onFilterComplete(I)V

    .line 616
    :cond_13
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1453
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Landroid/app/SearchDialog;->launchSuggestion(I)Z

    .line 1454
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Landroid/app/SearchDialog;->rewriteQueryFromSuggestion(I)V

    .line 1466
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 667
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_6

    .line 668
    const/4 v1, 0x0

    .line 679
    :goto_5
    return v1

    .line 673
    :cond_6
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 674
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 675
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    .line 676
    const/4 v1, 0x1

    goto :goto_5

    .line 679
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_5
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1473
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 395
    if-nez p1, :cond_3

    .line 406
    :cond_2
    :goto_2
    return-void

    .line 397
    :cond_3
    const-string v3, "comp"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 398
    .local v1, launchComponent:Landroid/content/ComponentName;
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 399
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string/jumbo v3, "uQry"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, userQuery:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 382
    :goto_7
    return-object v1

    .line 375
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "comp"

    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 379
    const-string v1, "data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 380
    const-string/jumbo v1, "uQry"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 382
    goto :goto_7
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 325
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 327
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    invoke-direct {p0}, Landroid/app/SearchDialog;->closeSuggestionsAdapter()V

    .line 332
    iput-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 333
    iput-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 334
    iput-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    .line 335
    iput-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 336
    iput-object v2, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Landroid/app/SearchDialog;->isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 639
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    .line 640
    const/4 v0, 0x1

    .line 643
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public setListSelection(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setListSelection(I)V

    .line 1171
    return-void
.end method

.method public setWorking(Z)V
    .registers 5
    .parameter "working"

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_15

    const/16 v1, 0xff

    :goto_7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 347
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 348
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 349
    return-void

    :cond_15
    move v1, v2

    .line 346
    goto :goto_7
.end method

.method public show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "componentName"
    .parameter "appSearchData"

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 238
    .local v0, success:Z
    if-eqz v0, :cond_b

    .line 241
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->showDropDownAfterLayout()V

    .line 243
    :cond_b
    return v0
.end method
