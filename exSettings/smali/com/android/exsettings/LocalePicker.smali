.class public Lcom/android/exsettings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/exsettings/DialogCreatable;


# instance fields
.field private mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/LocalePicker;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 43
    invoke-virtual {p0, p0}, Lcom/android/exsettings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-eqz p1, :cond_0

    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 47
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/exsettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/android/exsettings/LocalePicker$1;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettings/LocalePicker$1;-><init>(Lcom/android/exsettings/LocalePicker;I)V

    .line 93
    const v2, 0x7f0c0db6

    .line 92
    invoke-static {v0, v2, v1}, Lcom/android/exsettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 59
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/exsettings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 60
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/android/exsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LocalePicker;->showDialog(I)V

    .line 64
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 70
    invoke-static {p1}, Lcom/android/exsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/android/exsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 104
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "LocalePicker"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    new-instance v0, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/exsettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/LocalePicker;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/exsettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method
