.class Lcom/android/exsettings/inputmethod/InputMethodPreference;
.super Landroid/preference/SwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/inputmethod/InputMethodPreference;)Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/exsettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "isImeEnabler"    # Z
    .param p4, "isAllowedByOrganization"    # Z
    .param p5, "onSaveListener"    # Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v4, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 92
    iput-object p2, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 93
    iput-boolean p4, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    .line 94
    iput-object p5, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 95
    if-nez p3, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 100
    :cond_0
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 101
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "settingsActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    .line 114
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v2, p2, p1}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    .line 114
    :cond_1
    iput-boolean v2, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    .line 116
    invoke-virtual {p0, p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    return-void

    .line 109
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    iget-boolean v7, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v7, :cond_0

    .line 198
    const v7, 0x7f0c0aea

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 201
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 202
    .local v6, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v5, "subtypeLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subtype$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 205
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v7, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 204
    invoke-virtual {v3, v0, v7, v8}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 206
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const-string/jumbo v7, ", "

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private isImeEnabler()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x1

    .line 213
    iget-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 217
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 219
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 220
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 222
    .local v2, "label":Ljava/lang/CharSequence;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v4, 0x7f0c0a48

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 223
    new-instance v3, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    new-instance v3, Lcom/android/exsettings/inputmethod/InputMethodPreference$2;

    invoke-direct {v3, p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 242
    iget-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 212
    return-void
.end method


# virtual methods
.method compareTo(Lcom/android/exsettings/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 6
    .param p1, "rhs"    # Lcom/android/exsettings/inputmethod/InputMethodPreference;
    .param p2, "collator"    # Ljava/text/Collator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 246
    if-ne p0, p1, :cond_0

    .line 247
    const/4 v2, 0x0

    return v2

    .line 249
    :cond_0
    iget-boolean v4, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v5, p1, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-ne v4, v5, :cond_3

    .line 250
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 251
    .local v0, "t0":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 252
    .local v1, "t1":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    return v3

    .line 255
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    return v2

    .line 258
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 261
    .end local v0    # "t0":Ljava/lang/CharSequence;
    .end local v1    # "t1":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v4, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-eqz v4, :cond_4

    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V

    .line 142
    return v1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V

    .line 148
    return v1

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 152
    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 159
    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    return v7

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v7

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/exsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    new-array v4, v7, [Ljava/lang/Object;

    .line 175
    iget-object v5, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 174
    const v5, 0x7f0c0a4c

    .line 173
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method updatePreferenceViews()V
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    .line 183
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    .line 186
    .local v0, "isAlwaysChecked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
