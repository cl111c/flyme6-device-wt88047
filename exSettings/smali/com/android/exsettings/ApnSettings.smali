.class public Lcom/android/exsettings/ApnSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;,
        Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/exsettings/ApnSettings$1;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERRED_MSIM_APN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAllowAddingApns:Z

.field private mHideImsApn:Z

.field private mImsi:Ljava/lang/String;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/exsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->fillList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "content://telephony/carriers/preferapn/subIdImsi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/exsettings/ApnSettings;->PREFERRED_MSIM_APN_URI:Landroid/net/Uri;

    .line 100
    const-string/jumbo v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 101
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/android/exsettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ApnSettings$1;-><init>(Lcom/android/exsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private addApnToList(Lcom/android/exsettings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/exsettings/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iput-object p5, p0, Lcom/android/exsettings/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 344
    iput-object p6, p0, Lcom/android/exsettings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 386
    .local v1, "subId":I
    :goto_0
    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/exsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void

    .line 385
    .end local v1    # "subId":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "subId":I
    goto :goto_0

    .line 388
    :cond_2
    const-string/jumbo v2, "mvno_type"

    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string/jumbo v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private fillList()V
    .locals 30

    .prologue
    .line 245
    const/16 v19, 0x0

    .line 246
    .local v19, "isSelectedKeyMatch":Z
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 247
    .local v27, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_3

    const-string/jumbo v21, ""

    .line 249
    .local v21, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mccmnc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v29, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "numeric=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v9, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    .line 250
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v29, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/ApnSettings;->mHideImsApn:Z

    if-eqz v2, :cond_0

    .line 254
    const-string/jumbo v2, " AND NOT (type=\'ims\')"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x7

    new-array v4, v9, [Ljava/lang/String;

    .line 258
    const-string/jumbo v9, "_id"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const-string/jumbo v9, "name"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const-string/jumbo v9, "apn"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string/jumbo v9, "type"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    const-string/jumbo v9, "mvno_type"

    const/4 v10, 0x4

    aput-object v9, v4, v10

    const-string/jumbo v9, "mvno_match_data"

    const/4 v10, 0x5

    aput-object v9, v4, v10

    const-string/jumbo v9, "read_only"

    const/4 v10, 0x6

    aput-object v9, v4, v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    const-string/jumbo v7, "name ASC"

    const/4 v6, 0x0

    .line 257
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 261
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_b

    .line 262
    const/4 v6, 0x0

    .line 263
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 264
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    .line 265
    const/4 v10, 0x1

    .line 264
    invoke-virtual {v2, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    .line 267
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string/jumbo v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 268
    .local v17, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v4, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v11, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v12, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 276
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 278
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 279
    .local v22, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 280
    .local v16, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 281
    .local v20, "key":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 282
    .local v28, "type":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "mvnoMatchData":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    const/16 v25, 0x1

    .line 286
    .local v25, "readOnly":Z
    :goto_2
    new-instance v3, Lcom/android/exsettings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/exsettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 288
    .local v3, "pref":Lcom/android/exsettings/ApnPreference;
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setApnReadOnly(Z)V

    .line 289
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/exsettings/ApnPreference;->setPersistent(Z)V

    .line 293
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    if-eqz v28, :cond_5

    const-string/jumbo v2, "mms"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v26, 0x0

    .line 296
    .local v26, "selectable":Z
    :goto_3
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setSelectable(Z)V

    .line 297
    if-eqz v26, :cond_6

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->setChecked()V

    .line 300
    const/16 v19, 0x1

    .line 301
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "find select key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v2, p0

    .line 303
    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/ApnSettings;->addApnToList(Lcom/android/exsettings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 248
    .end local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v16    # "apn":Ljava/lang/String;
    .end local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "mccmnc":Ljava/lang/String;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "readOnly":Z
    .end local v26    # "selectable":Z
    .end local v28    # "type":Ljava/lang/String;
    .end local v29    # "where":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "mccmnc":Ljava/lang/String;
    goto/16 :goto_0

    .line 284
    .restart local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v7    # "mvnoType":Ljava/lang/String;
    .restart local v8    # "mvnoMatchData":Ljava/lang/String;
    .restart local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v16    # "apn":Ljava/lang/String;
    .restart local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "key":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v28    # "type":Ljava/lang/String;
    .restart local v29    # "where":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v25, 0x0

    .restart local v25    # "readOnly":Z
    goto/16 :goto_2

    .line 295
    .restart local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    :cond_5
    const/16 v26, 0x1

    .restart local v26    # "selectable":Z
    goto :goto_3

    :cond_6
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 305
    invoke-direct/range {v9 .. v15}, Lcom/android/exsettings/ApnSettings;->addApnToList(Lcom/android/exsettings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 309
    .end local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v16    # "apn":Ljava/lang/String;
    .end local v20    # "key":Ljava/lang/String;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "readOnly":Z
    .end local v26    # "selectable":Z
    .end local v28    # "type":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 311
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 312
    move-object v4, v5

    .line 313
    move-object v11, v12

    .line 318
    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "preference$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/exsettings/ApnPreference;

    .line 319
    .local v23, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 323
    .end local v23    # "preference":Landroid/preference/Preference;
    :cond_9
    if-nez v19, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 324
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/ApnPreference;

    .line 325
    .restart local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->setChecked()V

    .line 326
    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set key to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    :cond_a
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/exsettings/ApnPreference;

    .line 331
    .restart local v23    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 244
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v23    # "preference":Landroid/preference/Preference;
    .end local v24    # "preference$iterator":Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    const-string/jumbo v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 150
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 430
    const/4 v7, 0x0

    .line 433
    .local v7, "key":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 434
    sget-object v0, Lcom/android/exsettings/ApnSettings;->PREFERRED_MSIM_APN_URI:Landroid/net/Uri;

    .line 435
    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 436
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mImsi:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 440
    :goto_0
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 441
    const-string/jumbo v5, "name ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 440
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 442
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 444
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 446
    .end local v7    # "key":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-eqz v8, :cond_6

    throw v8

    .line 438
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/android/exsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 446
    .end local v7    # "key":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :goto_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v0

    .line 447
    .end local v7    # "key":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    return-object v7

    .line 446
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v2, v8

    goto :goto_2
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 451
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ApnSettings;->showDialog(I)V

    .line 452
    sput-boolean v3, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 454
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/exsettings/ApnSettings;Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 460
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    .line 461
    const-string/jumbo v1, "Restore default APN Handler: Process Thread"

    .line 460
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 462
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 463
    new-instance v0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    .line 464
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    .line 463
    invoke-direct {v0, p0, v1, v2}, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/exsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 469
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 414
    iput-object p1, p0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 417
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "apn_id"

    iget-object v4, p0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mImsi:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 420
    sget-object v3, Lcom/android/exsettings/ApnSettings;->PREFERRED_MSIM_APN_URI:Landroid/net/Uri;

    .line 421
    iget-object v4, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    .local v0, "qUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mImsi:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 423
    invoke-virtual {v1, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    .end local v0    # "qUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 425
    :cond_0
    sget-object v3, Lcom/android/exsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0xc

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 193
    const v1, 0x7f0c0a83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_1
    iput-boolean v3, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    .line 200
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 201
    return-void

    .line 204
    :cond_2
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "sub_id"

    .line 164
    const/4 v6, -0x1

    .line 163
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "subId":I
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "imsi"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mImsi:Ljava/lang/String;

    .line 168
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 170
    new-instance v4, Landroid/content/IntentFilter;

    .line 171
    const-string/jumbo v5, "android.intent.action.ANY_DATA_STATE"

    .line 170
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 173
    iget-object v4, p0, Lcom/android/exsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v5, "no_config_mobile_networks"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 177
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 181
    const-string/jumbo v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 180
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 182
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 183
    .local v1, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v4, "hide_ims_apn_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/ApnSettings;->mHideImsApn:Z

    .line 184
    const-string/jumbo v4, "allow_adding_apns_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/ApnSettings;->mAllowAddingApns:Z

    .line 160
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 519
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 520
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c08fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 522
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 523
    return-object v0

    .line 525
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 354
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mAllowAddingApns:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c08f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 357
    const v1, 0x7f020087

    .line 355
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c08fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    const v1, 0x1080055

    .line 360
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 365
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 352
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 236
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 370
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 379
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 372
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->addNewApn()V

    .line 373
    return v1

    .line 376
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->restoreDefaultApn()Z

    .line 377
    return v1

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 228
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 403
    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    const-string/jumbo v2, ", newValue - "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    const-string/jumbo v2, ", newValue type - "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 407
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/exsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 410
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 396
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 398
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 399
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 213
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    sget-boolean v0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->fillList()V

    .line 210
    :cond_1
    return-void
.end method
