.class final Landroid/app/ContextImpl$ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationPackageManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    }
.end annotation


# static fields
.field private static mDbStoragePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrefStoragePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2965
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 2966
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    .line 2968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .registers 4
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 2562
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 2542
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mCachedSafeMode:I

    .line 2563
    iput-object p1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 2564
    iput-object p2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2565
    return-void
.end method

.method static configurationChanged()V
    .registers 2

    .prologue
    .line 2555
    sget-object v0, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2556
    :try_start_3
    sget-object v1, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2557
    sget-object v1, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2558
    monitor-exit v0

    .line 2559
    return-void

    .line 2558
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private getCachedIcon(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "name"

    .prologue
    .line 2568
    sget-object v2, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2569
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2572
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_1d

    .line 2573
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2574
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 2577
    monitor-exit v2

    move-object v2, v0

    .line 2583
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :goto_17
    return-object v2

    .line 2580
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_18
    sget-object v3, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1d
    monitor-exit v2

    .line 2583
    const/4 v2, 0x0

    goto :goto_17

    .line 2582
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method

.method private getCachedString(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "name"

    .prologue
    .line 2688
    sget-object v2, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2689
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2690
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1d

    .line 2691
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2692
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_18

    .line 2693
    monitor-exit v2

    move-object v2, v0

    .line 2699
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_17
    return-object v2

    .line 2696
    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_18
    sget-object v3, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2698
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_1d
    monitor-exit v2

    .line 2699
    const/4 v2, 0x0

    goto :goto_17

    .line 2698
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method

.method static final handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .registers 13
    .parameter "cmd"
    .parameter "pkgList"
    .parameter "hasPkgInfo"

    .prologue
    .line 2596
    const/4 v2, 0x0

    .line 2597
    .local v2, immediateGc:Z
    const/4 v8, 0x1

    if-ne p0, v8, :cond_5

    .line 2598
    const/4 v2, 0x1

    .line 2600
    :cond_5
    if-eqz p1, :cond_7f

    array-length v8, p1

    if-lez v8, :cond_7f

    .line 2601
    const/4 v5, 0x0

    .line 2602
    .local v5, needCleanup:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v4, :cond_72

    aget-object v7, v0, v1

    .line 2603
    .local v7, ssp:Ljava/lang/String;
    sget-object v8, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2604
    :try_start_15
    sget-object v9, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_40

    .line 2605
    sget-object v9, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2606
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;>;"
    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 2607
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;

    .line 2608
    .local v6, nm:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    iget-object v9, v6, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 2610
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2611
    const/4 v5, 0x1

    goto :goto_27

    .line 2615
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;>;"
    .end local v6           #nm:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    :cond_40
    sget-object v9, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_6b

    .line 2616
    sget-object v9, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2617
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;>;"
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 2618
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;

    .line 2619
    .restart local v6       #nm:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    iget-object v9, v6, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 2621
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2622
    const/4 v5, 0x1

    goto :goto_52

    .line 2626
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;>;"
    .end local v6           #nm:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    :cond_6b
    monitor-exit v8

    .line 2602
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2626
    :catchall_6f
    move-exception v9

    monitor-exit v8
    :try_end_71
    .catchall {:try_start_15 .. :try_end_71} :catchall_6f

    throw v9

    .line 2628
    .end local v7           #ssp:Ljava/lang/String;
    :cond_72
    if-nez v5, :cond_76

    if-eqz p2, :cond_7f

    .line 2629
    :cond_76
    if-eqz v2, :cond_80

    .line 2631
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 2637
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #needCleanup:Z
    :cond_7f
    :goto_7f
    return-void

    .line 2633
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #needCleanup:Z
    :cond_80
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto :goto_7f
.end method

.method private putCachedIcon(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "name"
    .parameter "dr"

    .prologue
    .line 2587
    sget-object v0, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2588
    :try_start_3
    sget-object v1, Landroid/app/ContextImpl$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    monitor-exit v0

    .line 2592
    return-void

    .line 2591
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private putCachedString(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "name"
    .parameter "cs"

    .prologue
    .line 2703
    sget-object v0, Landroid/app/ContextImpl$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2704
    :try_start_3
    sget-object v1, Landroid/app/ContextImpl$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    monitor-exit v0

    .line 2706
    return-void

    .line 2705
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2857
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2861
    :goto_5
    return-void

    .line 2858
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 5
    .parameter "info"

    .prologue
    .line 2151
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2152
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2153
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 5
    .parameter "info"

    .prologue
    .line 2160
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2161
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2162
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 2886
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2890
    :goto_5
    return-void

    .line 2887
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "names"

    .prologue
    .line 1935
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 1936
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1937
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 2142
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2143
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2144
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(II)I
    .registers 6
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 2187
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2188
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2189
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 2178
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2179
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2180
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 2813
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2817
    :goto_5
    return-void

    .line 2814
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2905
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2909
    :goto_5
    return-void

    .line 2906
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "names"

    .prologue
    .line 1926
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 1927
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1928
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 2822
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2826
    :goto_5
    return-void

    .line 2823
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .registers 5
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 2804
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2808
    :goto_5
    return-void

    .line 2805
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .registers 5
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 2839
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorage(JLandroid/content/IntentSender;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2843
    :goto_5
    return-void

    .line 2840
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .registers 5
    .parameter "idealStorageSize"
    .parameter "observer"

    .prologue
    .line 2830
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2834
    :goto_5
    return-void

    .line 2831
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2456
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2457
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ContextImpl$ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2463
    :goto_e
    return-object v1

    .line 2460
    :cond_f
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ContextImpl$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2462
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1e

    .line 2463
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_e

    .line 2466
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2056
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 2057
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_13

    .line 2058
    return-object v0

    .line 2060
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 2061
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2064
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2492
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2493
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ContextImpl$ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2499
    :goto_e
    return-object v1

    .line 2496
    :cond_f
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ContextImpl$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2498
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1e

    .line 2499
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_e

    .line 2502
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2031
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2032
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2033
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2955
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2959
    :goto_6
    return v0

    .line 2956
    :catch_7
    move-exception v0

    .line 2959
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "info"

    .prologue
    .line 2475
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2041
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 2042
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_13

    .line 2043
    return-object v0

    .line 2045
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 2046
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2049
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "info"

    .prologue
    .line 2769
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "info"

    .prologue
    .line 2507
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "componentName"

    .prologue
    .line 2935
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2939
    :goto_6
    return v0

    .line 2936
    :catch_7
    move-exception v0

    .line 2939
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDatabaseStoragePackageList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1870
    sget-object v2, Landroid/app/ContextImpl$ApplicationPackageManager;->mDbStoragePackageList:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 1871
    sget-object v2, Landroid/app/ContextImpl$ApplicationPackageManager;->mDbStoragePackageList:Ljava/util/List;

    .line 1883
    :goto_6
    return-object v2

    .line 1874
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getDatabaseStoragePackageList()Ljava/util/List;

    move-result-object v1

    .line 1875
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1d

    .line 1876
    sput-object v1, Landroid/app/ContextImpl$ApplicationPackageManager;->mDbStoragePackageList:Ljava/util/List;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    move-object v2, v1

    .line 1877
    goto :goto_6

    .line 1879
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1880
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1883
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 2470
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 2407
    new-instance v2, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2408
    .local v2, name:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ContextImpl$ApplicationPackageManager;->getCachedIcon(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2409
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    move-object v4, v0

    .line 2446
    :goto_f
    return-object v4

    .line 2412
    :cond_10
    if-nez p3, :cond_17

    .line 2414
    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {p0, p1, v4}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_24

    move-result-object p3

    .line 2420
    :cond_17
    :try_start_17
    invoke-virtual {p0, p3}, Landroid/app/ContextImpl$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2421
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2434
    invoke-direct {p0, v2, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->putCachedIcon(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_22} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_45

    move-object v4, v0

    .line 2435
    goto :goto_f

    .line 2415
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_24
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v6

    .line 2416
    goto :goto_f

    .line 2436
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_27
    move-exception v4

    move-object v1, v4

    .line 2437
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_43
    move-object v4, v6

    .line 2446
    goto :goto_f

    .line 2439
    :catch_45
    move-exception v4

    move-object v1, v4

    .line 2442
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving icon 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .registers 9
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2249
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2250
    .local v0, applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 2254
    .local v2, lastItem:Landroid/content/pm/ApplicationInfo;
    :cond_6
    if-eqz v2, :cond_20

    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v3, v5

    .line 2255
    .local v3, lastKey:Ljava/lang/String;
    :goto_b
    iget-object v5, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2256
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2257
    .restart local v2       #lastItem:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_23

    move-result v5

    if-eqz v5, :cond_6

    .line 2259
    return-object v0

    .line 2254
    .end local v3           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_20
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_b

    .line 2260
    .end local v0           #applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    :catch_23
    move-exception v5

    move-object v1, v5

    .line 2261
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Package manager has died"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .registers 9
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2229
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .local v3, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 2234
    .local v1, lastItem:Landroid/content/pm/PackageInfo;
    :cond_6
    if-eqz v1, :cond_20

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v2, v5

    .line 2235
    .local v2, lastKey:Ljava/lang/String;
    :goto_b
    iget-object v5, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2236
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2237
    .restart local v1       #lastItem:Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_23

    move-result v5

    if-eqz v5, :cond_6

    .line 2239
    return-object v3

    .line 2234
    .end local v2           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :cond_20
    const/4 v5, 0x0

    move-object v2, v5

    goto :goto_b

    .line 2240
    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    .end local v3           #packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_23
    move-exception v5

    move-object v0, v5

    .line 2241
    .local v0, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Package manager has died"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2794
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 2798
    :goto_6
    return-object v0

    .line 2795
    :catch_7
    move-exception v0

    .line 2798
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2383
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 2385
    .local v1, ii:Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_13

    .line 2386
    return-object v1

    .line 2388
    .end local v1           #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 2389
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2392
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    const-string v6, "android.intent.category.INFO"

    const-string v5, "android.intent.action.MAIN"

    .line 1946
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v1, intentToResolve:Landroid/content/Intent;
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1948
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    invoke-virtual {p0, v1, v4}, Landroid/app/ContextImpl$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1952
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2b

    .line 1954
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 1955
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1956
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1957
    invoke-virtual {p0, v1, v4}, Landroid/app/ContextImpl$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1959
    :cond_2b
    if-nez v2, :cond_2f

    .line 1960
    const/4 v3, 0x0

    .line 1965
    :goto_2e
    return-object v3

    .line 1962
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1963
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v3, v0

    .line 1965
    goto :goto_2e
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 5
    .parameter "uid"

    .prologue
    .line 2205
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2206
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2207
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1972
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v1

    .line 1973
    .local v1, gids:[I
    if-eqz v1, :cond_b

    array-length v2, v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c

    if-lez v2, :cond_16

    .line 1974
    :cond_b
    return-object v1

    .line 1976
    .end local v1           #gids:[I
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1977
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1980
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #gids:[I
    :cond_16
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 7
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1912
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1913
    .local v1, pi:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_13

    .line 1914
    return-object v1

    .line 1916
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1917
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1920
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 2849
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2853
    :goto_5
    return-void

    .line 2850
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 5
    .parameter "uid"

    .prologue
    .line 2196
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2197
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2198
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 7
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2017
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 2018
    .local v1, pgi:Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_13

    .line 2019
    return-object v1

    .line 2021
    .end local v1           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 2022
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2025
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pgi:Landroid/content/pm/PermissionGroupInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 7
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1987
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1988
    .local v1, pi:Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_13

    .line 1989
    return-object v1

    .line 1991
    .end local v1           #pi:Landroid/content/pm/PermissionInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1992
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1995
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PermissionInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferenceStoragePackageList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1892
    sget-object v2, Landroid/app/ContextImpl$ApplicationPackageManager;->mPrefStoragePackageList:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 1893
    sget-object v2, Landroid/app/ContextImpl$ApplicationPackageManager;->mPrefStoragePackageList:Ljava/util/List;

    .line 1905
    :goto_6
    return-object v2

    .line 1896
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPreferenceStoragePackageList()Ljava/util/List;

    move-result-object v1

    .line 1897
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1d

    .line 1898
    sput-object v1, Landroid/app/ContextImpl$ApplicationPackageManager;->mPrefStoragePackageList:Ljava/util/List;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    move-object v2, v1

    .line 1899
    goto :goto_6

    .line 1901
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1902
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1905
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2915
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2919
    :goto_6
    return v0

    .line 2916
    :catch_7
    move-exception v0

    .line 2919
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .registers 3
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2875
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 2879
    :goto_6
    return-object v0

    .line 2876
    :catch_7
    move-exception v0

    .line 2879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2101
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 2102
    .local v1, pi:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_13

    .line 2103
    return-object v1

    .line 2105
    .end local v1           #pi:Landroid/content/pm/ProviderInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 2106
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2109
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/ProviderInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2071
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 2072
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_13

    .line 2073
    return-object v0

    .line 2075
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 2076
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2079
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .registers 3
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .registers 6
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2524
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2525
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v1, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2531
    :goto_17
    return-object v1

    .line 2527
    :cond_18
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v1, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_32

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_26
    iget-object v3, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v3, v3, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2530
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_35

    move-object v1, v0

    .line 2531
    goto :goto_17

    .line 2527
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_32
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_26

    .line 2533
    .restart local v0       #r:Landroid/content/res/Resources;
    :cond_35
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 3
    .parameter "appPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2086
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 2087
    .local v1, si:Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_13

    .line 2088
    return-object v1

    .line 2090
    .end local v1           #si:Landroid/content/pm/ServiceInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 2091
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2094
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #si:Landroid/content/pm/ServiceInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .registers 4

    .prologue
    .line 2124
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2125
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2126
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 2115
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2116
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2117
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 2711
    new-instance v1, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;

    invoke-direct {v1, p1, p2}, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2712
    .local v1, name:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v1}, Landroid/app/ContextImpl$ApplicationPackageManager;->getCachedString(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2713
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_10

    move-object v4, v3

    .line 2738
    :goto_f
    return-object v4

    .line 2716
    :cond_10
    if-nez p3, :cond_17

    .line 2718
    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {p0, p1, v4}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_24

    move-result-object p3

    .line 2724
    :cond_17
    :try_start_17
    invoke-virtual {p0, p3}, Landroid/app/ContextImpl$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 2725
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2726
    invoke-direct {p0, v1, v3}, Landroid/app/ContextImpl$ApplicationPackageManager;->putCachedString(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_22} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_45

    move-object v4, v3

    .line 2727
    goto :goto_f

    .line 2719
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_24
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v6

    .line 2720
    goto :goto_f

    .line 2728
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_27
    move-exception v4

    move-object v0, v4

    .line 2729
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_43
    move-object v4, v6

    .line 2738
    goto :goto_f

    .line 2731
    :catch_45
    move-exception v4

    move-object v0, v4

    .line 2734
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving text 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 7
    .parameter "sharedUserName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2215
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    move-result v1

    .line 2216
    .local v1, uid:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 2217
    return v1

    .line 2219
    .end local v1           #uid:I
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 2220
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2222
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #uid:I
    :cond_14
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .registers 10
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    const-string v5, "PackageManager"

    .line 2744
    if-nez p3, :cond_a

    .line 2746
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, p1, v2}, Landroid/app/ContextImpl$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_13

    move-result-object p3

    .line 2752
    :cond_a
    :try_start_a
    invoke-virtual {p0, p3}, Landroid/app/ContextImpl$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2753
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_11} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_11} :catch_40

    move-result-object v2

    .line 2764
    .end local v1           #r:Landroid/content/res/Resources;
    :goto_12
    return-object v2

    .line 2747
    :catch_13
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v4

    .line 2748
    goto :goto_12

    .line 2754
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 2757
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure retrieving xml 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_3e
    move-object v2, v4

    .line 2764
    goto :goto_12

    .line 2760
    :catch_40
    move-exception v2

    move-object v0, v2

    .line 2761
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure retrieving resources for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 2133
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2134
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2135
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .registers 6
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 2776
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2780
    :goto_5
    return-void

    .line 2777
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public isSafeMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2545
    :try_start_2
    iget v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v1, :cond_11

    .line 2546
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    :goto_f
    iput v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mCachedSafeMode:I

    .line 2548
    :cond_11
    iget v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_1b

    if-eqz v1, :cond_19

    move v1, v3

    :goto_16
    return v1

    :cond_17
    move v1, v2

    .line 2546
    goto :goto_f

    :cond_19
    move v1, v2

    .line 2548
    goto :goto_16

    .line 2549
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 2550
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .registers 5
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 2785
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2789
    :goto_5
    return-void

    .line 2786
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2325
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2329
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2330
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2372
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2373
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2374
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2399
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2400
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2401
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2281
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2285
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2286
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .registers 20
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2294
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2296
    .local v12, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 2297
    .local v5, specificTypes:[Ljava/lang/String;
    if-eqz p2, :cond_23

    .line 2298
    move-object/from16 v0, p2

    array-length v0, v0

    move v9, v0

    .line 2299
    .local v9, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_e
    if-ge v11, v9, :cond_23

    .line 2300
    aget-object v13, p2, v11

    .line 2301
    .local v13, sp:Landroid/content/Intent;
    if-eqz v13, :cond_20

    .line 2302
    invoke-virtual {v13, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 2303
    .local v14, t:Ljava/lang/String;
    if-eqz v14, :cond_20

    .line 2304
    if-nez v5, :cond_1e

    .line 2305
    new-array v5, v9, [Ljava/lang/String;

    .line 2307
    :cond_1e
    aput-object v14, v5, v11

    .line 2299
    .end local v14           #t:Ljava/lang/String;
    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 2314
    .end local v9           #N:I
    .end local v11           #i:I
    .end local v13           #sp:Landroid/content/Intent;
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_37} :catch_39

    move-result-object v2

    return-object v2

    .line 2317
    :catch_39
    move-exception v2

    move-object v10, v2

    .line 2318
    .local v10, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2349
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2353
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2354
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2002
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 2003
    .local v1, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_13

    .line 2004
    return-object v1

    .line 2006
    .end local v1           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 2007
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2010
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2866
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2870
    :goto_5
    return-void

    .line 2867
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 2169
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2173
    return-void

    .line 2170
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 2171
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 2896
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2900
    :goto_5
    return-void

    .line 2897
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 2268
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2272
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2273
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 6
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2362
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2363
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2364
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 2337
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2341
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2342
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .registers 5
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 2946
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2950
    :goto_5
    return-void

    .line 2947
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .registers 5
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 2926
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2930
    :goto_5
    return-void

    .line 2927
    :catch_6
    move-exception v0

    goto :goto_5
.end method
