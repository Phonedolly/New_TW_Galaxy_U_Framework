.class final Landroid/net/sip/SipProfile$1;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/sip/SipProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/sip/SipProfile;
    .registers 4
    .parameter "in"

    .prologue
    .line 61
    new-instance v0, Landroid/net/sip/SipProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/sip/SipProfile;-><init>(Landroid/os/Parcel;Landroid/net/sip/SipProfile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/net/sip/SipProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/sip/SipProfile;
    .registers 3
    .parameter "size"

    .prologue
    .line 65
    new-array v0, p1, [Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/net/sip/SipProfile$1;->newArray(I)[Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method
