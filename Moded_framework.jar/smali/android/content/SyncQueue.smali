.class public Landroid/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/SyncStorageEngine;)V
    .registers 13
    .parameter "syncStorageEngine"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 45
    iget-object v1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v1}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v10

    .line 47
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 48
    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_16
    if-ge v8, v7, :cond_39

    .line 49
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 50
    .local v9, op:Landroid/content/SyncStorageEngine$PendingOperation;
    new-instance v0, Landroid/content/SyncOperation;

    iget-object v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v2, v9, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iget-object v3, v9, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    .line 52
    .local v0, syncOperation:Landroid/content/SyncOperation;
    iget-boolean v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v1, v0, Landroid/content/SyncOperation;->expedited:Z

    .line 53
    iput-object v9, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 54
    invoke-direct {p0, v0, v9}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    .line 48
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 56
    .end local v0           #syncOperation:Landroid/content/SyncOperation;
    .end local v9           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_39
    return-void
.end method

.method private add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .registers 15
    .parameter "operation"
    .parameter "pop"

    .prologue
    const/4 v11, 0x1

    .line 69
    iget-object v10, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    .line 70
    .local v10, operationKey:Ljava/lang/String;
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncOperation;

    .line 72
    .local v7, existingOperation:Landroid/content/SyncOperation;
    if-eqz v7, :cond_2f

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, changed:Z
    iget-boolean v0, v7, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v1, p1, Landroid/content/SyncOperation;->expedited:Z

    if-ne v0, v1, :cond_27

    .line 75
    iget-wide v0, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v2, p1, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 77
    .local v8, newRunTime:J
    iget-wide v0, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_25

    .line 78
    iput-wide v8, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    .line 79
    const/4 v6, 0x1

    .end local v8           #newRunTime:J
    :cond_25
    :goto_25
    move v0, v6

    .line 104
    .end local v6           #changed:Z
    :goto_26
    return v0

    .line 82
    .restart local v6       #changed:Z
    :cond_27
    iget-boolean v0, p1, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v0, :cond_25

    .line 83
    iput-boolean v11, v7, Landroid/content/SyncOperation;->expedited:Z

    .line 84
    const/4 v6, 0x1

    goto :goto_25

    .line 90
    .end local v6           #changed:Z
    :cond_2f
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 91
    iget-object v0, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    if-nez v0, :cond_68

    .line 92
    new-instance p2, Landroid/content/SyncStorageEngine$PendingOperation;

    .end local p2
    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->syncSource:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/content/SyncOperation;->expedited:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 95
    .restart local p2
    iget-object v0, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0, p2}, Landroid/content/SyncStorageEngine;->insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    .line 96
    if-nez p2, :cond_66

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error adding pending sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_66
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 103
    :cond_68
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v11

    .line 104
    goto :goto_26
.end method


# virtual methods
.method public add(Landroid/content/SyncOperation;)Z
    .registers 3
    .parameter "operation"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter "sb"

    .prologue
    .line 268
    const-string v2, "SyncQueue: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    .line 270
    .local v1, operation:Landroid/content/SyncOperation;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 272
    .end local v1           #operation:Landroid/content/SyncOperation;
    :cond_35
    return-void
.end method

.method getIsInitial(Landroid/content/SyncOperation;)Z
    .registers 6
    .parameter "op"

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    move v0, v3

    goto :goto_18
.end method

.method getOpTime(Landroid/content/SyncOperation;)J
    .registers 11
    .parameter "op"

    .prologue
    .line 151
    iget-wide v3, p1, Landroid/content/SyncOperation;->earliestRunTime:J

    .line 152
    .local v3, opRunTime:J
    iget-object v5, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v6, "ignore_backoff"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_33

    .line 153
    iget-object v5, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v7, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 154
    .local v0, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v7, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v1

    .line 155
    .local v1, delayUntil:J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    if-eqz v0, :cond_34

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_2f
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 159
    .end local v0           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v1           #delayUntil:J
    :cond_33
    return-wide v3

    .line 155
    .restart local v0       #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v1       #delayUntil:J
    .restart local p0
    :cond_34
    const-wide/16 v7, 0x0

    goto :goto_2f
.end method

.method isOpBetter(Landroid/content/SyncOperation;JZLandroid/content/SyncOperation;JZ)Z
    .registers 16
    .parameter "best"
    .parameter "bestRunTime"
    .parameter "bestIsInitial"
    .parameter "op"
    .parameter "opRunTime"
    .parameter "opIsInitial"

    .prologue
    const/4 v6, 0x2

    const-string v5, "SyncManager"

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, setBest:Z
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 182
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextOperation: Processing op: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_25
    if-nez p1, :cond_38

    .line 185
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 186
    const-string v3, "SyncManager"

    const-string v3, "   First op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_36
    const/4 v2, 0x1

    .line 231
    :cond_37
    :goto_37
    return v2

    .line 189
    :cond_38
    if-ne p4, p8, :cond_9f

    .line 190
    iget-boolean v3, p1, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v4, p5, Landroid/content/SyncOperation;->expedited:Z

    if-ne v3, v4, :cond_55

    .line 191
    cmp-long v3, p6, p2

    if-gez v3, :cond_37

    .line 193
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 194
    const-string v3, "SyncManager"

    const-string v3, "   Same expedite level - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_53
    const/4 v2, 0x1

    goto :goto_37

    .line 199
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 200
    .local v0, now:J
    iget-boolean v3, p5, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v3, :cond_86

    .line 201
    cmp-long v3, p6, v0

    if-lez v3, :cond_65

    cmp-long v3, p2, v0

    if-lez v3, :cond_76

    .line 203
    :cond_65
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 204
    const-string v3, "SyncManager"

    const-string v3, "   New op is expedited and can run - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_74
    const/4 v2, 0x1

    goto :goto_37

    .line 208
    :cond_76
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 209
    const-string v3, "SyncManager"

    const-string v3, "   New op is expedited but can\'t run and best can"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 213
    :cond_86
    cmp-long v3, p2, v0

    if-lez v3, :cond_37

    cmp-long v3, p6, v0

    if-gtz v3, :cond_37

    .line 215
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 216
    const-string v3, "SyncManager"

    const-string v3, "   New op is not expedited but can run - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_9d
    const/4 v2, 0x1

    goto :goto_37

    .line 224
    .end local v0           #now:J
    :cond_9f
    if-eqz p8, :cond_37

    .line 225
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 226
    const-string v3, "SyncManager"

    const-string v3, "   New op is init - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_b0
    const/4 v2, 0x1

    goto :goto_37
.end method

.method public nextOperation()Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/SyncOperation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, best:Landroid/content/SyncOperation;
    const-wide/16 v2, 0x0

    .line 133
    .local v2, bestRunTime:J
    const/4 v4, 0x0

    .line 134
    .local v4, bestIsInitial:Z
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncOperation;

    .line 135
    .local v5, op:Landroid/content/SyncOperation;
    invoke-virtual {p0, v5}, Landroid/content/SyncQueue;->getOpTime(Landroid/content/SyncOperation;)J

    move-result-wide v6

    .line 136
    .local v6, opRunTime:J
    invoke-virtual {p0, v5}, Landroid/content/SyncQueue;->getIsInitial(Landroid/content/SyncOperation;)Z

    move-result v8

    .local v8, opIsInitial:Z
    move-object v0, p0

    .line 137
    invoke-virtual/range {v0 .. v8}, Landroid/content/SyncQueue;->isOpBetter(Landroid/content/SyncOperation;JZLandroid/content/SyncOperation;JZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 138
    move-object v1, v5

    .line 139
    move v4, v8

    .line 140
    move-wide v2, v6

    goto :goto_e

    .line 143
    .end local v5           #op:Landroid/content/SyncOperation;
    .end local v6           #opRunTime:J
    .end local v8           #opIsInitial:Z
    :cond_2d
    if-nez v1, :cond_31

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_30
    return-object v0

    :cond_31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_30
.end method

.method public nextReadyToRun(J)Landroid/util/Pair;
    .registers 6
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/SyncOperation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/content/SyncQueue;->nextOperation()Landroid/util/Pair;

    move-result-object v0

    .line 242
    .local v0, nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    if-eqz v0, :cond_12

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_14

    .line 243
    :cond_12
    const/4 v1, 0x0

    .line 245
    :goto_13
    return-object v1

    :cond_14
    move-object v1, v0

    goto :goto_13
.end method

.method public remove(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 249
    iget-object v4, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 252
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncOperation;

    .line 253
    .local v3, syncOperation:Landroid/content/SyncOperation;
    if-eqz p1, :cond_26

    iget-object v4, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 256
    :cond_26
    if-eqz p2, :cond_30

    iget-object v4, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 259
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 260
    iget-object v4, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v5, v3, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v4, v5}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to find pending row for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, errorMessage:Ljava/lang/String;
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 265
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;"
    .end local v2           #errorMessage:Ljava/lang/String;
    .end local v3           #syncOperation:Landroid/content/SyncOperation;
    :cond_5c
    return-void
.end method

.method public remove(Landroid/content/SyncOperation;)V
    .registers 6
    .parameter "operation"

    .prologue
    .line 112
    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    .line 113
    .local v1, operationToRemove:Landroid/content/SyncOperation;
    if-nez v1, :cond_d

    .line 120
    :cond_c
    :goto_c
    return-void

    .line 116
    :cond_d
    iget-object v2, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v3, v1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, errorMessage:Ljava/lang/String;
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
