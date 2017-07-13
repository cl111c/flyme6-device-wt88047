.class Lcom/android/exsettings/DevelopmentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DevelopmentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DevelopmentSettings;

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/android/exsettings/DevelopmentSettings$1;->this$0:Lcom/android/exsettings/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2249
    const-string/jumbo v1, "unlocked"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2250
    .local v0, "isUnlocked":Z
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings$1;->this$0:Lcom/android/exsettings/DevelopmentSettings;

    invoke-static {v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->-wrap4(Lcom/android/exsettings/DevelopmentSettings;Z)V

    .line 2248
    return-void
.end method
