.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    const-string/jumbo v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 159
    .end local v1           #u:Landroid/net/Uri;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static final getDefaultPort()I
    .registers 3

    .prologue
    .line 169
    const-string/jumbo v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 171
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 174
    .end local v1           #u:Landroid/net/Uri;
    :goto_11
    return v2

    :cond_12
    const/4 v2, -0x1

    goto :goto_11
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 53
    const-string v5, "http_proxy"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 57
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 58
    .local v2, i:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1b

    move-object v5, v7

    .line 93
    .end local v2           #i:I
    :goto_1a
    return-object v5

    .line 64
    .restart local v2       #i:I
    :cond_1b
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 70
    .end local v2           #i:I
    :cond_21
    const/4 v3, 0x0

    .line 71
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 72
    .local v4, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_30

    .line 73
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 77
    :cond_30
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_68

    .line 82
    const-string/jumbo v5, "wifi_http_proxy"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_66

    .line 85
    const-string v5, "Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI-Proxy host: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    .line 87
    goto :goto_1a

    :cond_66
    move-object v5, v7

    .line 90
    goto :goto_1a

    .line 93
    :cond_68
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a
.end method

.method public static final getPort(Landroid/content/Context;)I
    .registers 10
    .parameter "ctx"

    .prologue
    const/4 v8, -0x1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 104
    const-string v6, "http_proxy"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 108
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 109
    .local v2, i:I
    if-ne v2, v8, :cond_1a

    move v6, v8

    .line 144
    .end local v2           #i:I
    :goto_19
    return v6

    .line 118
    .restart local v2       #i:I
    :cond_1a
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_19

    .line 124
    .end local v2           #i:I
    :cond_25
    const/4 v3, 0x0

    .line 125
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 126
    .local v4, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_34

    .line 127
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 129
    :cond_34
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4a

    .line 134
    const-string/jumbo v6, "wifi_http_port"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 138
    .local v5, port:I
    if-ne v5, v8, :cond_48

    .line 139
    const/16 v5, 0x1f90

    :cond_48
    move v6, v5

    .line 140
    goto :goto_19

    .line 144
    .end local v5           #port:I
    :cond_4a
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    goto :goto_19
.end method
