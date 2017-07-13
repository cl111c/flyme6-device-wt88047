.class Lcom/android/exsettings/HomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/HomeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/HomeSettings;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/exsettings/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/exsettings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/HomeSettings;Lcom/android/exsettings/HomeSettings$HomePackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/HomeSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/HomeSettings$HomePackageReceiver;-><init>(Lcom/android/exsettings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/exsettings/HomeSettings;

    invoke-static {v0}, Lcom/android/exsettings/HomeSettings;->-wrap0(Lcom/android/exsettings/HomeSettings;)V

    .line 78
    invoke-static {p1}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v0

    .line 79
    const-class v1, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 76
    return-void
.end method
