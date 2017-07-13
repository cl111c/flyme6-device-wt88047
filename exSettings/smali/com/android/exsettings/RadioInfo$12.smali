.class Lcom/android/exsettings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/RadioInfo;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1019
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    const-string/jumbo v4, "toggle VoLTE provisioned: currently %s"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    .line 1020
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap1(Lcom/android/exsettings/RadioInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "on"

    :goto_0
    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 1019
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/exsettings/RadioInfo;->-wrap6(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 1021
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap1(Lcom/android/exsettings/RadioInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 1022
    .local v1, "newValue":Z
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get10(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get10(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v3}, Lcom/android/exsettings/RadioInfo;->-get10(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1024
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1025
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/RadioInfo$12$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/exsettings/RadioInfo$12$1;-><init>(Lcom/android/exsettings/RadioInfo$12;Lcom/android/ims/ImsManager;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1038
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$12;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap19(Lcom/android/exsettings/RadioInfo;)V

    .line 1018
    return-void

    .line 1020
    .end local v1    # "newValue":Z
    :cond_1
    const-string/jumbo v2, "off"

    goto :goto_0

    .line 1021
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "newValue":Z
    goto :goto_1
.end method
