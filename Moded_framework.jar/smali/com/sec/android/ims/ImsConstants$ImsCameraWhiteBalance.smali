.class public Lcom/sec/android/ims/ImsConstants$ImsCameraWhiteBalance;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsCameraWhiteBalance"
.end annotation


# static fields
.field public static final WHITE_BALANCE_AUTO:I = 0x0

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:I = 0x2

.field public static final WHITE_BALANCE_DAYLIGHT:I = 0x1

.field public static final WHITE_BALANCE_FLUORESCENT:I = 0x4

.field public static final WHITE_BALANCE_INCANDESCENT:I = 0x3

.field public static final WHITE_BALANCE_SHADE:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
