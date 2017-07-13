.class public Lcom/android/exsettings/accounts/ManageAccountsSettings;
.super Lcom/android/exsettings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/android/exsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/accounts/ManageAccountsSettings$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 405
    .local v0, "prefs":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 403
    :cond_0
    return-void
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 518
    iget-object v8, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    iget-object v9, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 519
    .local v0, "authDesc":Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 520
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 521
    return v7

    .line 523
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 524
    .local v4, "resolvedActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 526
    .local v5, "resolvedAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 527
    .local v1, "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v8, :cond_1

    .line 528
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v9, :cond_2

    .line 527
    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    .line 528
    goto :goto_0

    .line 529
    .end local v1    # "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AccountSettings"

    .line 531
    const-string/jumbo v8, "Intent considered unsafe due to exception."

    .line 530
    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    return v7
.end method

.method private isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 350
    if-eqz v1, :cond_0

    .line 352
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 350
    :cond_0
    return v0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 340
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 341
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 342
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    const/4 v3, 0x1

    return v3

    .line 340
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 11
    .param p1, "sync"    # Z

    .prologue
    .line 209
    iget-object v9, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 210
    .local v8, "userId":I
    invoke-static {v8}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 211
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v9, "force"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 215
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 217
    .local v5, "pref":Landroid/preference/Preference;
    instance-of v9, v5, Lcom/android/exsettings/AccountPreference;

    if-eqz v9, :cond_2

    .line 218
    check-cast v5, Lcom/android/exsettings/AccountPreference;

    .end local v5    # "pref":Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/android/exsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 220
    .local v0, "account":Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v9, v7

    if-ge v4, v9, :cond_2

    .line 221
    aget-object v6, v7, v4

    .line 222
    .local v6, "sa":Landroid/content/SyncAdapterType;
    aget-object v9, v7, v4

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 223
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    .line 222
    if-eqz v9, :cond_0

    .line 225
    if-eqz p1, :cond_1

    .line 226
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8, v2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 220
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 229
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 215
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "j":I
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_3
    return-void
.end method

.method private showAccountsIfNeeded()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 364
    iget-object v11, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 363
    invoke-virtual {v1, v11}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v6

    .line 365
    .local v6, "accounts":[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 366
    iput-object v12, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 367
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 368
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v6

    .local v8, "n":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 369
    aget-object v2, v6, v7

    .line 371
    .local v2, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    :cond_1
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 374
    .local v4, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 375
    .local v10, "showAccount":Z
    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 376
    const/4 v10, 0x0

    .line 377
    iget-object v11, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    array-length v12, v11

    move v1, v5

    :goto_1
    if-ge v1, v12, :cond_2

    aget-object v9, v11, v1

    .line 378
    .local v9, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 379
    const/4 v10, 0x1

    .line 385
    .end local v9    # "requestedAuthority":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 386
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 388
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/exsettings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 389
    .local v0, "preference":Lcom/android/exsettings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 390
    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_3

    .line 391
    iput-object v2, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 368
    .end local v0    # "preference":Lcom/android/exsettings/AccountPreference;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "showAccount":Z
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 377
    .restart local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "requestedAuthority":Ljava/lang/String;
    .restart local v10    # "showAccount":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "requestedAuthority":Ljava/lang/String;
    .end local v10    # "showAccount":Z
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    .line 396
    invoke-direct {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 361
    :goto_2
    return-void

    .line 399
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->finish()V

    goto :goto_2
.end method

.method private showSyncState()V
    .locals 36

    .prologue
    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    if-eqz v32, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->isFinishing()Z

    move-result v32

    if-eqz v32, :cond_1

    :cond_0
    return-void

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v31

    .line 258
    .local v31, "userId":I
    invoke-static/range {v31 .. v31}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v13

    .line 260
    .local v13, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v7, 0x0

    .line 261
    .local v7, "anySyncFailed":Z
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 264
    .local v14, "date":Ljava/util/Date;
    invoke-static/range {v31 .. v31}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v24

    .line 265
    .local v24, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v30, "userFacing":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "k":I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "n":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 267
    aget-object v22, v24, v16

    .line 268
    .local v22, "sa":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v22 .. v22}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 269
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 272
    .end local v22    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    .local v12, "count":I
    :goto_1
    if-ge v15, v12, :cond_12

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v21

    .line 274
    .local v21, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/exsettings/AccountPreference;

    move/from16 v32, v0

    if-nez v32, :cond_5

    .line 272
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v5, v21

    .line 278
    check-cast v5, Lcom/android/exsettings/AccountPreference;

    .line 279
    .local v5, "accountPref":Lcom/android/exsettings/AccountPreference;
    invoke-virtual {v5}, Lcom/android/exsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 280
    .local v4, "account":Landroid/accounts/Account;
    const/16 v25, 0x0

    .line 281
    .local v25, "syncCount":I
    const-wide/16 v18, 0x0

    .line 282
    .local v18, "lastSuccessTime":J
    const/16 v27, 0x0

    .line 283
    .local v27, "syncIsFailing":Z
    invoke-virtual {v5}, Lcom/android/exsettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v8

    .line 284
    .local v8, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 285
    .local v28, "syncingNow":Z
    if-eqz v8, :cond_c

    .line 286
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v28    # "syncingNow":Z
    .local v10, "authority$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 287
    .local v9, "authority":Ljava/lang/String;
    move/from16 v0, v31

    invoke-static {v4, v9, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v23

    .line 289
    .local v23, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1, v4, v9}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v26

    .line 290
    .local v26, "syncEnabled":Z
    invoke-static {v4, v9}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 291
    .local v11, "authorityIsPending":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v9}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 292
    .local v6, "activelySyncing":Z
    if-eqz v23, :cond_9

    if-eqz v26, :cond_9

    .line 294
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_9

    .line 295
    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v32

    .line 296
    const/16 v33, 0x1

    .line 295
    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    const/16 v17, 0x1

    .line 297
    .local v17, "lastSyncFailed":Z
    :goto_4
    if-eqz v17, :cond_6

    if-eqz v6, :cond_a

    .line 301
    :cond_6
    :goto_5
    or-int v28, v28, v6

    .line 302
    .local v28, "syncingNow":Z
    if-eqz v23, :cond_7

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v18, v32

    if-gez v32, :cond_7

    .line 303
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    .line 305
    :cond_7
    if-eqz v26, :cond_b

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    const/16 v32, 0x1

    :goto_6
    add-int v25, v25, v32

    goto :goto_3

    .line 295
    .end local v17    # "lastSyncFailed":Z
    .end local v28    # "syncingNow":Z
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "lastSyncFailed":Z
    goto :goto_4

    .line 292
    .end local v17    # "lastSyncFailed":Z
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "lastSyncFailed":Z
    goto :goto_4

    .line 297
    :cond_a
    if-nez v11, :cond_6

    .line 298
    const/16 v27, 0x1

    .line 299
    const/4 v7, 0x1

    goto :goto_5

    .line 305
    .restart local v28    # "syncingNow":Z
    :cond_b
    const/16 v32, 0x0

    goto :goto_6

    .line 308
    .end local v6    # "activelySyncing":Z
    .end local v9    # "authority":Ljava/lang/String;
    .end local v10    # "authority$iterator":Ljava/util/Iterator;
    .end local v11    # "authorityIsPending":Z
    .end local v17    # "lastSyncFailed":Z
    .end local v23    # "status":Landroid/content/SyncStatusInfo;
    .end local v26    # "syncEnabled":Z
    .local v28, "syncingNow":Z
    :cond_c
    const-string/jumbo v32, "AccountSettings"

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 309
    const-string/jumbo v32, "AccountSettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "no syncadapters found for "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v28    # "syncingNow":Z
    :cond_d
    if-eqz v27, :cond_e

    .line 313
    const/16 v32, 0x2

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 314
    :cond_e
    if-nez v25, :cond_f

    .line 315
    const/16 v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 316
    :cond_f
    if-lez v25, :cond_11

    .line 317
    if-eqz v28, :cond_10

    .line 318
    const/16 v32, 0x3

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 320
    :cond_10
    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/AccountPreference;->setSyncStatus(IZ)V

    .line 321
    const-wide/16 v32, 0x0

    cmp-long v32, v18, v32

    if-lez v32, :cond_4

    .line 322
    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/AccountPreference;->setSyncStatus(IZ)V

    .line 323
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 324
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 325
    .local v29, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 326
    const/16 v34, 0x0

    aput-object v29, v33, v34

    const v34, 0x7f0c0c84

    .line 325
    move-object/from16 v0, v32

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/exsettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 330
    .end local v29    # "timeString":Ljava/lang/String;
    :cond_11
    const/16 v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 334
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountPref":Lcom/android/exsettings/AccountPreference;
    .end local v8    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "lastSuccessTime":J
    .end local v21    # "pref":Landroid/preference/Preference;
    .end local v25    # "syncCount":I
    .end local v27    # "syncIsFailing":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v33, v0

    if-eqz v7, :cond_13

    const/16 v32, 0x0

    :goto_7
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    return-void

    .line 334
    :cond_13
    const/16 v32, 0x8

    goto :goto_7
.end method

.method private startAccountSettings(Lcom/android/exsettings/AccountPreference;)V
    .locals 7
    .param p1, "acctPref"    # Lcom/android/exsettings/AccountPreference;

    .prologue
    .line 168
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "account"

    invoke-virtual {p1}, Lcom/android/exsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 172
    const-class v1, Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Lcom/android/exsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const v3, 0x7f0c0c77

    .line 174
    const/4 v6, 0x1

    move-object v5, p0

    .line 171
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 167
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "prefs"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 448
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 449
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 450
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 451
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 467
    const-string/jumbo v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 466
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    new-instance v5, Lcom/android/exsettings/accounts/ManageAccountsSettings$FragmentStarter;

    .line 471
    const-class v6, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 472
    const v7, 0x7f0c0615

    .line 470
    invoke-direct {v5, p0, v6, v7}, Lcom/android/exsettings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/exsettings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 507
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/high16 v6, 0x10000

    .line 474
    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 476
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_2

    .line 477
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 480
    :cond_2
    const-string/jumbo v5, "account"

    iget-object v6, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 481
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    new-instance v5, Lcom/android/exsettings/accounts/ManageAccountsSettings$1;

    invoke-direct {v5, p0, v2}, Lcom/android/exsettings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/exsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 446
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0xb

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 358
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 356
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 132
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f13000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 540
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 542
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/exsettings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 543
    check-cast v0, Lcom/android/exsettings/AccountPreference;

    .line 544
    .local v0, "accPref":Lcom/android/exsettings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/exsettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/exsettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    .end local v0    # "accPref":Lcom/android/exsettings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 103
    :cond_0
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 179
    const v0, 0x7f0c0c88

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 180
    const v1, 0x7f02008a

    .line 179
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 181
    const v0, 0x7f0c0c89

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 182
    const v1, 0x1080038

    .line 181
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 183
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 119
    const v2, 0x7f040092

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 121
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 122
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 199
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 200
    return v1

    .line 202
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 203
    return v1

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 144
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    instance-of v0, p2, Lcom/android/exsettings/AccountPreference;

    if-eqz v0, :cond_0

    .line 160
    check-cast p2, Lcom/android/exsettings/AccountPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p2}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/exsettings/AccountPreference;)V

    .line 164
    const/4 v0, 0x1

    return v0

    .line 162
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-super {p0, p1}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 190
    iget-object v2, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 189
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 191
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    return-void

    .line 189
    .end local v0    # "syncActive":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "syncActive":Z
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/exsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 111
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 112
    invoke-direct {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 113
    invoke-direct {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->showSyncState()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->onStop()V

    .line 152
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->showSyncState()V

    .line 241
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 238
    :cond_0
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/exsettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
