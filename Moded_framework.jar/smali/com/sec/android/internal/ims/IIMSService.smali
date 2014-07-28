.class public interface abstract Lcom/sec/android/internal/ims/IIMSService;
.super Ljava/lang/Object;
.source "IIMSService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVOIPEnabler()Lcom/sec/android/ims/voip/IVOIPEnabler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
