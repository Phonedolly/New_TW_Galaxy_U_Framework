.class Landroid/accounts/AccountManagerService$RemoveAccountSession;
.super Landroid/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccountSession"
.end annotation


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .registers 10
    .parameter
    .parameter "response"
    .parameter "account"

    .prologue
    .line 545
    iput-object p1, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->this$0:Landroid/accounts/AccountManagerService;

    .line 546
    iget-object v3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$Session;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    .line 548
    iput-object p3, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    .line 549
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 8
    .parameter "result"

    .prologue
    const-string v5, "booleanResult"

    .line 561
    if-eqz p1, :cond_36

    const-string v3, "booleanResult"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 563
    const-string v3, "booleanResult"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 564
    .local v0, removalAllowed:Z
    if-eqz v0, :cond_23

    .line 565
    iget-object v3, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v4, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #calls: Landroid/accounts/AccountManagerService;->removeAccount(Landroid/accounts/Account;)V
    invoke-static {v3, v4}, Landroid/accounts/AccountManagerService;->access$000(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;)V

    .line 567
    :cond_23
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$RemoveAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 568
    .local v1, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_36

    .line 569
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v2, result2:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 572
    :try_start_33
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_3a

    .line 578
    .end local v0           #removalAllowed:Z
    .end local v1           #response:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #result2:Landroid/os/Bundle;
    :cond_36
    :goto_36
    invoke-super {p0, p1}, Landroid/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 579
    return-void

    .line 573
    .restart local v0       #removalAllowed:Z
    .restart local v1       #response:Landroid/accounts/IAccountManagerResponse;
    .restart local v2       #result2:Landroid/os/Bundle;
    :catch_3a
    move-exception v3

    goto :goto_36
.end method

.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 558
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 5
    .parameter "now"

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removeAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
