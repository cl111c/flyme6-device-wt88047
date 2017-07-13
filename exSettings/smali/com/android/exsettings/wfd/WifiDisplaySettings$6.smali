.class Lcom/android/exsettings/wfd/WifiDisplaySettings$6;
.super Landroid/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-get2(Lcom/android/exsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-set1(Lcom/android/exsettings/wfd/WifiDisplaySettings;Z)Z

    .line 371
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-get2(Lcom/android/exsettings/wfd/WifiDisplaySettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap2(Lcom/android/exsettings/wfd/WifiDisplaySettings;Z)V

    .line 372
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-get2(Lcom/android/exsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$6;->setChecked(Z)V

    .line 369
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
