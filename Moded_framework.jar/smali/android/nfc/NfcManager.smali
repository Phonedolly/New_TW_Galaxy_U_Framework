.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_3
    new-instance v0, Landroid/nfc/NfcAdapter;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_b

    .line 47
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    :goto_8
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 48
    return-void

    .line 44
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :catch_b
    move-exception v2

    move-object v1, v2

    .line 45
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    goto :goto_8
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
