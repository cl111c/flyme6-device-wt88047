.class Lcom/android/exsettings/applications/ManageDefaultApps$4;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ManageDefaultApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageDefaultApps$4;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 140
    if-nez p2, :cond_0

    .line 141
    return v4

    :cond_0
    move-object v1, p2

    .line 143
    check-cast v1, Ljava/lang/CharSequence;

    .line 144
    .local v1, "packageName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    return v4

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageDefaultApps$4;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/android/exsettings/applications/ManageDefaultApps;->-get2(Lcom/android/exsettings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 148
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps$4;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-static {v5}, Lcom/android/exsettings/applications/ManageDefaultApps;->-get4(Lcom/android/exsettings/applications/ManageDefaultApps;)I

    move-result v5

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v2

    .line 149
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 150
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageDefaultApps$4;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/android/exsettings/applications/ManageDefaultApps;->-get0(Lcom/android/exsettings/applications/ManageDefaultApps;)Lcom/android/exsettings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageDefaultApps$4;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/android/exsettings/applications/ManageDefaultApps;->-get0(Lcom/android/exsettings/applications/ManageDefaultApps;)Lcom/android/exsettings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, "appName":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageDefaultApps$4;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/android/exsettings/applications/ManageDefaultApps;->-get0(Lcom/android/exsettings/applications/ManageDefaultApps;)Lcom/android/exsettings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    .end local v0    # "appName":Ljava/lang/CharSequence;
    :cond_2
    return v2
.end method
