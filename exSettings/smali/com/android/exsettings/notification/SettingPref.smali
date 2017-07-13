.class public Lcom/android/exsettings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Lcom/android/exsettings/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/exsettings/notification/SettingPref;->mType:I

    .line 49
    iput-object p2, p0, Lcom/android/exsettings/notification/SettingPref;->mKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/exsettings/notification/SettingPref;->mSetting:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/android/exsettings/notification/SettingPref;->mDefault:I

    .line 52
    iput-object p5, p0, Lcom/android/exsettings/notification/SettingPref;->mValues:[I

    .line 53
    iget v0, p0, Lcom/android/exsettings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/exsettings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exsettings/notification/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/SettingPref;->mUri:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 148
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 138
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/exsettings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/exsettings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/android/exsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 10
    .param p1, "settings"    # Lcom/android/exsettings/SettingsPreferenceFragment;

    .prologue
    const/4 v9, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 67
    .local v1, "p":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    :goto_0
    instance-of v3, v1, Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_3

    move-object v3, v1

    .line 72
    check-cast v3, Landroid/preference/TwoStatePreference;

    iput-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    .line 79
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 80
    iget-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_4

    .line 81
    new-instance v3, Lcom/android/exsettings/notification/SettingPref$1;

    invoke-direct {v3, p0, v0}, Lcom/android/exsettings/notification/SettingPref$1;-><init>(Lcom/android/exsettings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    return-object v3

    .line 68
    .restart local v1    # "p":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    const/4 v1, 0x0

    .local v1, "p":Landroid/preference/Preference;
    goto :goto_0

    .line 73
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_3
    instance-of v3, v1, Lcom/android/exsettings/DropDownPreference;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 74
    check-cast v3, Lcom/android/exsettings/DropDownPreference;

    iput-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    .line 75
    iget-object v4, p0, Lcom/android/exsettings/notification/SettingPref;->mValues:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget v2, v4, v3

    .line 76
    .local v2, "value":I
    iget-object v6, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/android/exsettings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exsettings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v2    # "value":I
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    if-eqz v3, :cond_5

    .line 91
    iget-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    new-instance v4, Lcom/android/exsettings/notification/SettingPref$2;

    invoke-direct {v4, p0, v0}, Lcom/android/exsettings/notification/SettingPref$2;-><init>(Lcom/android/exsettings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 97
    iget-object v3, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    return-object v3

    .line 99
    :cond_5
    return-object v9
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 103
    iget v0, p0, Lcom/android/exsettings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/exsettings/notification/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget v2, p0, Lcom/android/exsettings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v5, p0, Lcom/android/exsettings/notification/SettingPref;->mDefault:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/exsettings/notification/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, "val":I
    iget-object v2, p0, Lcom/android/exsettings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/exsettings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/exsettings/notification/SettingPref;->mDropDown:Lcom/android/exsettings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
