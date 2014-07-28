.class Lcom/sec/android/internal/ims/IMSService$5;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const-string v11, "IMS/IMSService"

    .line 547
    const/4 v3, 0x0

    .line 548
    .local v3, isNwkConnect:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, action:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside HiddenMenuChangeReceiver onReceive the action intent is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 551
    const-string v8, "com.android.receiver.activities.PREFERENCE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 553
    const-string v8, "Enter if onReceive HiddenMenuChangeReceiver"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 554
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v5

    .line 555
    .local v5, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 557
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, nwkTypeName:Ljava/lang/String;
    const-string v8, "CDMA - EvDo rev. A"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 560
    const/4 v3, 0x1

    .line 564
    :cond_4d
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-boolean v8, v8, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v8, :cond_59

    .line 566
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 657
    .end local v5           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v6           #nwkTypeName:Ljava/lang/String;
    :cond_58
    :goto_58
    return-void

    .line 569
    .restart local v5       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .restart local v6       #nwkTypeName:Ljava/lang/String;
    :cond_59
    iget-object v8, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17f

    .line 571
    const-string v8, "myObject.mAlwaysOnVal and myHiddenMenuObject.mAlwaysOnVal are not equal"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 573
    const-string v8, "0"

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15e

    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$100(Lcom/sec/android/internal/ims/IMSService;)Z

    move-result v8

    if-nez v8, :cond_15e

    .line 575
    const-string v8, "mAlwaysOnVal flag is set from Cancel to Setup.. calling frmwork init"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v8

    if-nez v8, :cond_132

    .line 579
    const-string v8, "Initing IMS after change from Cancel to Setup"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 582
    invoke-static {v10}, Lcom/sec/android/internal/ims/IMSService;->access$202(Z)Z

    .line 587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Telephony Manager Network Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 589
    if-ne v3, v10, :cond_132

    .line 591
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 592
    .local v1, dnsFlag:I
    if-ne v1, v10, :cond_150

    .line 594
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v9, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    #calls: Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v10, :cond_147

    .line 598
    :try_start_d0
    iget-object v8, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 599
    .local v7, pcscfAddr:Ljava/net/InetAddress;
    const-string v8, "IMS/IMSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ip address string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_fe} :catch_139

    .line 618
    .end local v7           #pcscfAddr:Ljava/net/InetAddress;
    :goto_fe
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 619
    const-string/jumbo v8, "registering after enabling in hidden app"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 620
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, localIP:Ljava/lang/String;
    if-eqz v4, :cond_158

    .line 623
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v4}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 624
    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v8, :cond_132

    .line 625
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local IP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 655
    .end local v1           #dnsFlag:I
    .end local v4           #localIP:Ljava/lang/String;
    :cond_132
    :goto_132
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto/16 :goto_58

    .line 601
    .restart local v1       #dnsFlag:I
    :catch_139
    move-exception v8

    move-object v2, v8

    .line 603
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "IMS/IMSService"

    const-string v8, "DNS Query Failed"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_58

    .line 610
    .end local v2           #e:Ljava/lang/Exception;
    :cond_147
    const-string v8, "IMS/IMSService"

    const-string v8, "Invalid DNS name!!!!"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 616
    :cond_150
    const-string v8, "IMS/IMSService"

    const-string v8, " NO DNS Query required- Using IP "

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 629
    .restart local v4       #localIP:Ljava/lang/String;
    :cond_158
    const-string v8, "local IP = null"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_132

    .line 636
    .end local v1           #dnsFlag:I
    .end local v4           #localIP:Ljava/lang/String;
    :cond_15e
    const-string v8, "mAlwaysOnVal flag is set from Setup to Cancel.. calling frmwork Deinit"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 638
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v8

    if-ne v8, v10, :cond_132

    .line 640
    const-string v8, "De-Initing IMS after change from Cancel to Setup"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 645
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 646
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$202(Z)Z

    goto :goto_132

    .line 653
    :cond_17f
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto :goto_132
.end method
