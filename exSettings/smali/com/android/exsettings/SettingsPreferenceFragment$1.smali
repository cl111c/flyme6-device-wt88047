.class Lcom/android/exsettings/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/SettingsPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/SettingsPreferenceFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/exsettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/exsettings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/exsettings/SettingsPreferenceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    .line 74
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/exsettings/SettingsPreferenceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    .line 79
    return-void
.end method
