.class public Landroid/media/Metadata$TimedText;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimedText"
.end annotation


# instance fields
.field private mDuration:I

.field private mText:Ljava/lang/String;

.field private mTime:Ljava/util/Date;

.field final synthetic this$0:Landroid/media/Metadata;


# direct methods
.method public constructor <init>(Landroid/media/Metadata;Ljava/util/Date;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "time"
    .parameter "duration"
    .parameter "text"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/media/Metadata$TimedText;->this$0:Landroid/media/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Landroid/media/Metadata$TimedText;->mTime:Ljava/util/Date;

    .line 155
    iput p3, p0, Landroid/media/Metadata$TimedText;->mDuration:I

    .line 156
    iput-object p4, p0, Landroid/media/Metadata$TimedText;->mText:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v0, res:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/media/Metadata$TimedText;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/Metadata$TimedText;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Metadata$TimedText;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
