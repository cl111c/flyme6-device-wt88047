.class Lcom/android/exsettings/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ButtonSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ButtonSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ButtonSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/ButtonSettings;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/exsettings/ButtonSettings$1;->this$0:Lcom/android/exsettings/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings$1;->this$0:Lcom/android/exsettings/ButtonSettings;

    invoke-static {v0}, Lcom/android/exsettings/ButtonSettings;->-get0(Lcom/android/exsettings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings$1;->this$0:Lcom/android/exsettings/ButtonSettings;

    invoke-static {v0}, Lcom/android/exsettings/ButtonSettings;->-get1(Lcom/android/exsettings/ButtonSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings$1;->this$0:Lcom/android/exsettings/ButtonSettings;

    invoke-static {v1}, Lcom/android/exsettings/ButtonSettings;->-get0(Lcom/android/exsettings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings$1;->this$0:Lcom/android/exsettings/ButtonSettings;

    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings$1;->this$0:Lcom/android/exsettings/ButtonSettings;

    invoke-static {v1}, Lcom/android/exsettings/ButtonSettings;->-get0(Lcom/android/exsettings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/exsettings/ButtonSettings;->-wrap0(Lcom/android/exsettings/ButtonSettings;Z)V

    .line 733
    return-void
.end method
