.class final Landroid/text/util/Linkify$4;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 513
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    if-ge v0, v1, :cond_a

    move v0, v2

    .line 529
    :goto_9
    return v0

    .line 517
    :cond_a
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    if-le v0, v1, :cond_12

    move v0, v3

    .line 518
    goto :goto_9

    .line 521
    :cond_12
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-ge v0, v1, :cond_1a

    move v0, v3

    .line 522
    goto :goto_9

    .line 525
    :cond_1a
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-le v0, v1, :cond_22

    move v0, v2

    .line 526
    goto :goto_9

    .line 529
    :cond_22
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 511
    check-cast p1, Landroid/text/util/LinkSpec;

    .end local p1
    check-cast p2, Landroid/text/util/LinkSpec;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/text/util/Linkify$4;->compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method
