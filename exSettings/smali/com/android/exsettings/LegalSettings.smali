.class public Lcom/android/exsettings/LegalSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/LegalSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/android/exsettings/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/LegalSettings$1;-><init>()V

    .line 66
    sput-object v0, Lcom/android/exsettings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/android/exsettings/LegalSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/exsettings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/exsettings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 51
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string/jumbo v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 53
    const-string/jumbo v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 55
    const-string/jumbo v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 57
    const-string/jumbo v2, "webview_license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 44
    return-void
.end method
