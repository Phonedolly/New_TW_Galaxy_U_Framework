.class Landroid/preference/VolumePreference$1;
.super Landroid/os/Handler;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Landroid/preference/VolumePreference$1;->this$0:Landroid/preference/VolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_18

    .line 78
    :cond_5
    :goto_5
    return-void

    .line 72
    :pswitch_6
    iget-object v1, p0, Landroid/preference/VolumePreference$1;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v1}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 73
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 70
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
