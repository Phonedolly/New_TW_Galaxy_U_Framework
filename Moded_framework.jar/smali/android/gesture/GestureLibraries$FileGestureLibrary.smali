.class Landroid/gesture/GestureLibraries$FileGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileGestureLibrary"
.end annotation


# instance fields
.field private final mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 56
    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public load()Z
    .registers 9

    .prologue
    const-string v7, "Gestures"

    const-string v6, "Could not load the gesture library from "

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, result:Z
    iget-object v1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 93
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 95
    :try_start_13
    iget-object v3, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1e} :catch_20
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3d

    .line 96
    const/4 v2, 0x1

    .line 104
    :cond_1f
    :goto_1f
    return v2

    .line 97
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 98
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Gestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load the gesture library from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 99
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v3

    move-object v0, v3

    .line 100
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Gestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load the gesture library from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public save()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const-string v8, "Gestures"

    const-string v7, "Could not save the gesture library in "

    .line 64
    iget-object v4, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v4}, Landroid/gesture/GestureStore;->hasChanged()Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v5

    .line 87
    :goto_e
    return v4

    .line 66
    :cond_f
    iget-object v1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 68
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 69
    .local v2, parentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_23

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_23

    .line 71
    const/4 v4, 0x0

    goto :goto_e

    .line 75
    :cond_23
    const/4 v3, 0x0

    .line 78
    .local v3, result:Z
    :try_start_24
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 79
    iget-object v4, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_32} :catch_35
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_32} :catch_52

    .line 80
    const/4 v3, 0x1

    :goto_33
    move v4, v3

    .line 87
    goto :goto_e

    .line 81
    :catch_35
    move-exception v4

    move-object v0, v4

    .line 82
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not save the gesture library in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 83
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_52
    move-exception v4

    move-object v0, v4

    .line 84
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not save the gesture library in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method
