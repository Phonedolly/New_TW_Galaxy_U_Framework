.class public Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
.super Ljava/lang/Object;
.source "ErrorTableDataOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteExistingRow(Landroid/content/ContentResolver;)I
    .registers 7
    .parameter "r1"

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v1, 0x0

    .local v1, rowCount:I
    const/4 v2, 0x0

    .line 75
    .local v2, x:I
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->getRowCount(Landroid/content/ContentResolver;)I

    move-result v1

    .line 76
    const-string v0, "_id =1"

    .line 77
    .local v0, queryString:Ljava/lang/String;
    if-lez v1, :cond_11

    .line 79
    sget-object v3, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_DEL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 81
    :cond_11
    return v2
.end method

.method public getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/ErrorTableData;
    .registers 11
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "Get All Data _________"

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 262
    const/4 v8, 0x0

    .line 263
    .local v8, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    .local v6, c1:Landroid/database/Cursor;
    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 268
    new-instance v8, Lcom/sec/android/internal/ims/external/ErrorTableData;

    .end local v8           #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    invoke-direct {v8}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .line 270
    .restart local v8       #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 272
    const-string v0, "Timestamp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 273
    .local v7, coordIdx:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 278
    const-string v0, "ErrorCode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 279
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 281
    const-string v0, "ErrorString"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 282
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 325
    .end local v7           #coordIdx:I
    :cond_45
    return-object v8
.end method

.method public getRowCount(Landroid/content/ContentResolver;)I
    .registers 10
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, r:I
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_12

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 64
    :cond_12
    return v7
.end method

.method public insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 20
    .parameter "errData"
    .parameter "r1"

    .prologue
    .line 91
    const/4 v15, 0x0

    .line 92
    .local v15, uri:Landroid/net/Uri;
    if-eqz p1, :cond_28e

    if-eqz p2, :cond_28e

    .line 94
    const/4 v10, 0x0

    .line 95
    .local v10, cnt:I
    const/4 v14, 0x0

    .local v14, r:I
    const/4 v13, 0x0

    .line 96
    .local v13, j:I
    const/4 v9, 0x0

    .line 97
    .local v9, c1:Landroid/database/Cursor;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v16, values:Landroid/content/ContentValues;
    const/4 v3, 0x5

    new-array v12, v3, [Lcom/sec/android/internal/ims/external/ErrorTableData;

    .line 101
    .local v12, exist_ErrData:[Lcom/sec/android/internal/ims/external/ErrorTableData;
    sget-object v4, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 103
    const-string v3, "insertDataIntoDB __________"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 104
    if-eqz v9, :cond_28e

    .line 106
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count db exist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 109
    if-lez v14, :cond_206

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are already existing records r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 113
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    const/4 v10, 0x0

    :goto_63
    if-ge v10, v14, :cond_dc

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting records record NO :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 119
    new-instance v3, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v3}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    aput-object v3, v12, v13

    .line 121
    const-string v3, "Timestamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 122
    .local v11, coordIdx:I
    aget-object v3, v12, v13

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " time stamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v13

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 128
    const-string v3, "ErrorCode"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 129
    aget-object v3, v12, v13

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 131
    const-string v3, "ErrorString"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 132
    aget-object v3, v12, v13

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 134
    const-string v3, "insertDataIntoDB __________"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v13, v13, 0x1

    .line 115
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_63

    .line 140
    .end local v11           #coordIdx:I
    :cond_dc
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing New Value to DB_____TimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 143
    const-string v3, "Timestamp"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 147
    const-string v3, "ErrorCode"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 149
    const-string v3, "ErrorString"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 152
    const/4 v13, 0x1

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing New Value - first value inserted -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 154
    const/4 v10, 0x0

    :goto_183
    if-ge v10, v14, :cond_286

    const/4 v3, 0x5

    if-ge v13, v3, :cond_286

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing Next Values -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v10

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 159
    const-string v3, "Timestamp"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v12, v10

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v3, "ErrorCode"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v12, v10

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "ErrorString"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v12, v10

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Inserted values to DB time stamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v10

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 154
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_183

    .line 171
    :cond_206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing New Value to DB_____TimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 172
    const-string v3, "Timestamp"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 176
    const-string v3, "ErrorCode"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 178
    const-string v3, "ErrorString"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 180
    sget-object v3, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 182
    :cond_286
    const-string v3, "insertDataIntoDB __"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 249
    .end local v9           #c1:Landroid/database/Cursor;
    .end local v10           #cnt:I
    .end local v12           #exist_ErrData:[Lcom/sec/android/internal/ims/external/ErrorTableData;
    .end local v13           #j:I
    .end local v14           #r:I
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_28e
    return-object v15
.end method

.method log(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 330
    const-string v0, "ErrorTableDataOperation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method
