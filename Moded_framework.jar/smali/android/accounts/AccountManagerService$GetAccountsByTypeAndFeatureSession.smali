.class Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Landroid/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter "response"
    .parameter "type"
    .parameter "features"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1171
    iput-object p1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Landroid/accounts/AccountManagerService;

    .line 1172
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$Session;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    .line 1166
    iput-object v6, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 1167
    iput-object v6, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 1168
    iput v4, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1174
    iput-object p4, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 1175
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .registers 6

    .prologue
    const-string v4, "AccountManagerService"

    .line 1187
    iget v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iget-object v3, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v3, v3

    if-lt v2, v3, :cond_d

    .line 1188
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    .line 1209
    :cond_c
    :goto_c
    return-void

    .line 1192
    :cond_d
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1193
    .local v0, accountAuthenticator:Landroid/accounts/IAccountAuthenticator;
    if-nez v0, :cond_37

    .line 1198
    const-string v2, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1199
    const-string v2, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1205
    :cond_37
    :try_start_37
    iget-object v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v3, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_42} :catch_43

    goto :goto_c

    .line 1206
    :catch_43
    move-exception v2

    move-object v1, v2

    .line 1207
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x1

    const-string/jumbo v3, "remote exception"

    invoke-virtual {p0, v2, v3}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    goto :goto_c
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1212
    iget v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    .line 1213
    if-nez p1, :cond_10

    .line 1214
    const/4 v0, 0x5

    const-string/jumbo v1, "null bundle"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 1222
    :goto_f
    return-void

    .line 1217
    :cond_10
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1218
    iget-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_24
    iget v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1221
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    goto :goto_f
.end method

.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerService;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1183
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 1184
    return-void
.end method

.method public sendResult()V
    .registers 8

    .prologue
    const-string v6, "AccountManagerService"

    .line 1225
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 1226
    .local v3, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v3, :cond_2e

    .line 1228
    :try_start_8
    iget-object v5, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/accounts/Account;

    .line 1229
    .local v0, accounts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v5, v0

    if-ge v2, v5, :cond_21

    .line 1230
    iget-object v5, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    aput-object v5, v0, v2

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1232
    :cond_21
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1233
    .local v4, result:Landroid/os/Bundle;
    const-string v5, "accounts"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1234
    invoke-interface {v3, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2e} :catch_2f

    .line 1242
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v2           #i:I
    .end local v4           #result:Landroid/os/Bundle;
    :cond_2e
    :goto_2e
    return-void

    .line 1235
    :catch_2f
    move-exception v5

    move-object v1, v5

    .line 1237
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1238
    const-string v5, "AccountManagerService"

    const-string v5, "failure while notifying response"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6
    .parameter "now"

    .prologue
    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAccountsByTypeAndFeatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    if-eqz v1, :cond_2e

    const-string v1, ","

    iget-object v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v1, 0x0

    goto :goto_25
.end method
