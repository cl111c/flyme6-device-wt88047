.class final Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$1;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v14, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    const v32, 0x7f0c0a3b

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 788
    .local v24, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    .line 789
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;->-wrap1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 790
    .local v23, "localeName":Ljava/lang/String;
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 791
    .local v13, "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "phone_language"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 792
    const v32, 0x7f0c0a3e

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 793
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 794
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 795
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 796
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    .end local v23    # "localeName":Ljava/lang/String;
    :cond_0
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 801
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "spellcheckers_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 802
    const v32, 0x7f0c0d69

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 803
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 804
    const v32, 0x7f0c0e52

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 805
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 809
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 810
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "user_dict_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 811
    const v32, 0x7f0c0a57

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 812
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 813
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_1
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 818
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 819
    const v32, 0x7f0c0a3d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 820
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 821
    const v32, 0x7f0c0e60

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 822
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    .line 826
    .local v12, "immValues":Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v12}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 829
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 831
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "current_input_method"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 832
    const v32, 0x7f0c0a6f

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 833
    iput-object v6, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 834
    iput-object v6, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 835
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 836
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    const-string/jumbo v32, "input_method"

    .line 838
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 842
    .local v18, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v12}, Lcom/android/exsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v19

    .line 843
    .local v19, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v19, :cond_3

    const/16 v17, 0x0

    .line 844
    .local v17, "inputMethodCount":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 845
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 847
    .local v16, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v32, 0x1

    .line 848
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v29

    .line 850
    .local v29, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    .line 851
    .local v27, "subtypeCount":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 852
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodSubtype;

    .line 853
    .local v26, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_2

    .line 854
    const/16 v32, 0x2c

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    .line 856
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    .line 859
    .local v28, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 851
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 843
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "inputMethodCount":I
    .end local v20    # "j":I
    .end local v26    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "subtypeCount":I
    .end local v28    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .restart local v17    # "inputMethodCount":I
    goto :goto_0

    .line 861
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v20    # "j":I
    .restart local v27    # "subtypeCount":I
    .restart local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 863
    .local v30, "summary":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    .line 864
    .local v25, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 865
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 864
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 868
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 870
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 871
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 872
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 873
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 878
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "j":I
    .end local v25    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v27    # "subtypeCount":I
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v30    # "summary":Ljava/lang/String;
    :cond_5
    const-string/jumbo v32, "input"

    .line 877
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/input/InputManager;

    .line 879
    .local v15, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v9, 0x0

    .line 881
    .local v9, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 882
    .local v8, "devices":[I
    const/4 v10, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_9

    .line 883
    aget v32, v8, v10

    invoke-static/range {v32 .. v32}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 884
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v32

    if-nez v32, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 888
    const/4 v9, 0x1

    .line 890
    invoke-virtual {v7}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 892
    .local v11, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v15, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v22

    .line 893
    .local v22, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 894
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v21

    .line 897
    :goto_4
    if-eqz v21, :cond_8

    .line 898
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v30

    .line 903
    .restart local v30    # "summary":Ljava/lang/String;
    :goto_5
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 904
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 905
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 906
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 907
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 908
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 909
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 894
    .restart local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    .local v21, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    goto :goto_4

    .line 900
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_8
    const v32, 0x7f0c0a55

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "summary":Ljava/lang/String;
    goto :goto_5

    .line 912
    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_9
    if-eqz v9, :cond_a

    .line 914
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 915
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "builtin_keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 917
    const v32, 0x7f0c0a7c

    .line 916
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 918
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 919
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 923
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "auto_replace"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 924
    const v32, 0x7f0c0a40

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 925
    const v32, 0x7f0c0a41

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 926
    const v32, 0x7f0c0a41

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 927
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 928
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 932
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "auto_caps"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 933
    const v32, 0x7f0c0a42

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 934
    const v32, 0x7f0c0a43

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 935
    const v32, 0x7f0c0a43

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 936
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 937
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 941
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "auto_punctuate"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 942
    const v32, 0x7f0c0a44

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 943
    const v32, 0x7f0c0a46

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 944
    const v32, 0x7f0c0a46

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 945
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 946
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_a
    new-instance v31, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 951
    .local v31, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v31 .. v31}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_b

    .line 952
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 953
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "tts_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 954
    const v32, 0x7f0c0bcd

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 955
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 956
    const v32, 0x7f0c0e54

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 957
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_b
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 962
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "pointer_settings_category"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 963
    const v32, 0x7f0c0a4d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 964
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 965
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 968
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "pointer_speed"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 969
    const v32, 0x7f0c0a4e

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 970
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 971
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-static {}, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;->-wrap0()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 975
    new-instance v13, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 976
    .restart local v13    # "indexable":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string/jumbo v32, "vibrate_input_devices"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 977
    const v32, 0x7f0c0a50

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 978
    const v32, 0x7f0c0a51

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 979
    const v32, 0x7f0c0a51

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 980
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 981
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    :cond_c
    return-object v14
.end method
