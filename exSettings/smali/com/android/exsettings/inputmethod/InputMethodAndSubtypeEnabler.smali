.class public Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAutoSelectionPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/TwoStatePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCollator:Ljava/text/Collator;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V
    .locals 19
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 163
    .local v5, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v14

    .line 164
    .local v14, "subtypeCount":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v14, v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "imiId":Ljava/lang/String;
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-direct {v8, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 169
    .local v8, "keyboardSettingsCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 171
    .local v10, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 173
    .local v9, "label":Ljava/lang/CharSequence;
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 176
    new-instance v3, Lcom/android/exsettings/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v3, v5}, Lcom/android/exsettings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 177
    .local v3, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 182
    .local v2, "activeInputMethodsCategory":Landroid/preference/PreferenceCategory;
    const v17, 0x7f0c0a77

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 183
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    const/4 v4, 0x0

    .line 186
    .local v4, "autoSubtypeLabel":Ljava/lang/CharSequence;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v16, "subtypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v7, 0x0

    .end local v4    # "autoSubtypeLabel":Ljava/lang/CharSequence;
    .local v7, "index":I
    :goto_0
    if-ge v7, v14, :cond_3

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 189
    .local v13, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 190
    if-nez v4, :cond_1

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    .line 191
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v5, v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 187
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 195
    :cond_2
    new-instance v15, Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;

    move-object/from16 v0, p1

    invoke-direct {v15, v5, v13, v0}, Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 197
    .local v15, "subtypePref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    .end local v13    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v15    # "subtypePref":Landroid/preference/Preference;
    :cond_3
    new-instance v17, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 210
    .local v12, "prefCount":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_4

    .line 211
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    .line 212
    .local v11, "pref":Landroid/preference/Preference;
    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    invoke-static {v11}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 216
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 219
    const v17, 0x7f0c0a78

    .line 218
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    .line 161
    :goto_3
    return-void

    .line 221
    :cond_5
    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 92
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "fromIntent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    return-object v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 227
    .local v2, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 228
    .local v0, "pref":Landroid/preference/Preference;
    instance-of v3, v0, Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    const/4 v3, 0x0

    return v3

    .line 232
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "autoSelectionEnabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v4, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 238
    .local v0, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    if-nez v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 242
    iget-object v4, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 243
    .local v3, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 244
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_1

    .line 248
    if-eqz p2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    if-eqz p2, :cond_1

    .line 250
    check-cast v1, Landroid/preference/TwoStatePreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .restart local v1    # "pref":Landroid/preference/Preference;
    :cond_2
    move v4, v6

    .line 248
    goto :goto_1

    .line 254
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_3
    if-eqz p2, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v7, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 255
    invoke-static {p0, v4, v5, v7}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 257
    invoke-direct {p0, p1, v6}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 236
    :cond_4
    return-void
.end method

.method private updateAutoSelectionPreferences()V
    .locals 4

    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imiId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, "imiId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 307
    .end local v0    # "imiId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 303
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "targetImiId"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    .line 263
    iget-object v4, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 264
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "imiId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 268
    .local v0, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_0

    .line 272
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;Z)V

    goto :goto_0

    .line 261
    .end local v0    # "autoSelectionPref":Landroid/preference/TwoStatePreference;
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imiId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;Z)V
    .locals 12
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "check"    # Z

    .prologue
    const/4 v11, 0x1

    .line 278
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "imiId":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 281
    .local v8, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9, p1, v11}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, "implicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v8, :cond_0

    if-nez v2, :cond_1

    .line 283
    :cond_0
    return-void

    .line 285
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 286
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v9, v3, Landroid/preference/TwoStatePreference;

    if-eqz v9, :cond_2

    move-object v7, v3

    .line 289
    check-cast v7, Landroid/preference/TwoStatePreference;

    .line 290
    .local v7, "subtypePref":Landroid/preference/TwoStatePreference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 291
    if-eqz p2, :cond_2

    .line 292
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 293
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 295
    invoke-virtual {v7, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 277
    .end local v1    # "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtype$iterator":Ljava/util/Iterator;
    .end local v7    # "subtypePref":Landroid/preference/TwoStatePreference;
    :cond_4
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x3c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-direct {p0, v1}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 66
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 73
    const-string/jumbo v6, "input_method_id"

    .line 72
    invoke-direct {p0, v6}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "targetImi":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    .line 76
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    .line 78
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 79
    .local v4, "root":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 80
    .local v2, "imiCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 81
    iget-object v6, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 83
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    :cond_0
    invoke-direct {p0, v1, v4}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V

    .line 80
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "imiCount":I
    .end local v3    # "index":I
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    .end local v5    # "targetImi":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 87
    .restart local v2    # "imiCount":I
    .restart local v3    # "index":I
    .restart local v4    # "root":Landroid/preference/PreferenceScreen;
    .restart local v5    # "targetImi":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 126
    invoke-static {p0, v0, v1, v2}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 122
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    instance-of v5, p2, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 133
    return v7

    .line 135
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 136
    .local v3, "isChecking":Z
    iget-object v5, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imiId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "imiId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move-object v0, p1

    .line 139
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 140
    .local v0, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    .line 143
    return v6

    .line 147
    .end local v0    # "autoSelectionPref":Landroid/preference/TwoStatePreference;
    .end local v1    # "imiId":Ljava/lang/String;
    :cond_2
    instance-of v5, p1, Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 148
    check-cast v4, Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;

    .line 149
    .local v4, "subtypePref":Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;
    invoke-virtual {v4, v3}, Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 150
    invoke-virtual {v4}, Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 153
    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionPreferences()V

    .line 155
    :cond_3
    return v6

    .line 157
    .end local v4    # "subtypePref":Lcom/android/exsettings/inputmethod/InputMethodSubtypePreference;
    :cond_4
    return v7
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 117
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 116
    invoke-static {p0, v0, v1, v2}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 118
    invoke-direct {p0}, Lcom/android/exsettings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionPreferences()V

    .line 110
    return-void
.end method
