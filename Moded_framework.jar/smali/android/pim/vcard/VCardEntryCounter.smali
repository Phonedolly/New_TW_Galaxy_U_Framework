.class public Landroid/pim/vcard/VCardEntryCounter;
.super Ljava/lang/Object;
.source "VCardEntryCounter.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method public endEntry()V
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Landroid/pim/vcard/VCardEntryCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/pim/vcard/VCardEntryCounter;->mCount:I

    .line 41
    return-void
.end method

.method public endProperty()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Landroid/pim/vcard/VCardEntryCounter;->mCount:I

    return v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .registers 2
    .parameter "group"

    .prologue
    .line 50
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 53
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 56
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 59
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public propertyValues(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public startEntry()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public startProperty()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method
