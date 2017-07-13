.class public Lcom/android/exsettings/ApnEditor;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroid/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/preference/SwitchPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mPppNumber:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-class v0, Lcom/android/exsettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 114
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "bearer_bitmask"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "mvno_type"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "mvno_match_data"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "ppp_number"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 114
    sput-object v0, Lcom/android/exsettings/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    .line 107
    iput v0, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    .line 51
    return-void
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a002c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, "values":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v5, "retVal":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 455
    .local v4, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bearer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    .local v0, "bearer":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 458
    .local v2, "bearerIndex":I
    if-eqz v4, :cond_0

    .line 459
    :try_start_0
    aget-object v8, v7, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/4 v4, 0x0

    goto :goto_0

    .line 462
    :cond_0
    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 468
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v2    # "bearerIndex":I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "val":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 470
    return-object v6

    .line 472
    :cond_2
    const/4 v8, 0x0

    return-object v8
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 877
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 880
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 869
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 870
    :cond_0
    sget-object v0, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    .line 872
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 852
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 853
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 851
    return-void
.end method

.method private fillUi()V
    .locals 15

    .prologue
    .line 282
    iget-boolean v12, p0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    if-eqz v12, :cond_5

    .line 283
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    .line 284
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v13, p0, Lcom/android/exsettings/ApnEditor;->mSubId:I

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "numeric":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x4

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x5

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 293
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xc

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 294
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xd

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 295
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x8

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 296
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x9

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 297
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xa

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 298
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xf

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 299
    iget-boolean v12, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-eqz v12, :cond_1

    .line 301
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_0

    .line 303
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "mcc":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 307
    .local v8, "mnc":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 308
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 309
    iput-object v8, p0, Lcom/android/exsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 310
    iput-object v7, p0, Lcom/android/exsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 312
    .end local v7    # "mcc":Ljava/lang/String;
    .end local v8    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    const v13, 0x7f0c03d5

    invoke-virtual {p0, v13}, Lcom/android/exsettings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 314
    :cond_1
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xe

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 315
    .local v0, "authVal":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_7

    .line 316
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v12, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 321
    :goto_0
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x10

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 323
    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x11

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_8

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 324
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x12

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    .line 326
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 327
    .local v4, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 328
    .local v3, "bearerBitmask":I
    if-nez v3, :cond_9

    .line 329
    iget v12, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    if-nez v12, :cond_2

    .line 330
    const-string/jumbo v12, "0"

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    iget v12, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_3
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v12, v4}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 349
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x15

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 350
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 351
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x16

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 352
    iget-boolean v12, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 353
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 354
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    :cond_4
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x17

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, "pppNumber":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 359
    if-nez v10, :cond_5

    .line 360
    iget-boolean v12, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-nez v12, :cond_b

    .line 361
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    .end local v0    # "authVal":I
    .end local v3    # "bearerBitmask":I
    .end local v4    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "numeric":Ljava/lang/String;
    .end local v10    # "pppNumber":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    .line 383
    .restart local v10    # "pppNumber":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 386
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v10}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    :cond_6
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 391
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 392
    .local v2, "authValIndex":I
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v12, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 394
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v13, 0x7f0a0028

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 395
    .local v11, "values":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v13, v11, v2

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    .end local v2    # "authValIndex":I
    .end local v11    # "values":[Ljava/lang/String;
    :goto_3
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 401
    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v13, v14}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 400
    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 403
    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v13, v14}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 402
    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    .line 405
    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 404
    invoke-virtual {v12, v13}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 407
    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 406
    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100010

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 411
    .local v5, "ceEditable":Z
    if-eqz v5, :cond_d

    .line 412
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 281
    :goto_4
    return-void

    .line 318
    .end local v1    # "authVal":Ljava/lang/String;
    .end local v5    # "ceEditable":Z
    .end local v10    # "pppNumber":Ljava/lang/String;
    .restart local v0    # "authVal":I
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_7
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 333
    .restart local v3    # "bearerBitmask":I
    .restart local v4    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    const/4 v6, 0x1

    .line 334
    .local v6, "i":I
    :goto_5
    if-eqz v3, :cond_2

    .line 335
    and-int/lit8 v12, v3, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 336
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_a
    shr-int/lit8 v3, v3, 0x1

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 362
    .end local v6    # "i":I
    .restart local v10    # "pppNumber":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100012

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 397
    .end local v0    # "authVal":I
    .end local v3    # "bearerBitmask":I
    .end local v4    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "numeric":Ljava/lang/String;
    .restart local v1    # "authVal":Ljava/lang/String;
    :cond_c
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v13, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 414
    .restart local v5    # "ceEditable":Z
    :cond_d
    iget-object v12, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 796
    const/4 v1, 0x0

    .line 798
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 804
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c08f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 805
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 806
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c08f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 807
    .local v1, "errorMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 808
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c08f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 809
    .local v1, "errorMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 810
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c08fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private isDuplicate(Landroid/content/ContentValues;)Z
    .locals 16
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    const/4 v1, 0x0

    return v1

    .line 736
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 738
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .local v12, "queryBuilder":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v13, "selectionArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 742
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 745
    .local v9, "key":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/exsettings/ApnEditor;->keyForDuplicateCheck(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string/jumbo v1, "=?"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string/jumbo v1, " AND "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    .end local v9    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 760
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 761
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-interface {v13, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 763
    const/4 v14, 0x0

    const/4 v11, 0x0

    .local v11, "query":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 764
    sget-object v3, Lcom/android/exsettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 763
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 765
    .local v11, "query":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-le v2, v1, :cond_5

    const/4 v1, 0x1

    .line 769
    :goto_2
    if-eqz v11, :cond_3

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    if-eqz v14, :cond_6

    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 766
    .end local v11    # "query":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 767
    .local v7, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error querying for duplicates"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    const/4 v1, 0x0

    return v1

    .line 765
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "query":Landroid/database/Cursor;
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 769
    :catch_1
    move-exception v14

    goto :goto_3

    .line 765
    :cond_6
    return v1

    .line 769
    .end local v11    # "query":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    :goto_4
    if-eqz v11, :cond_7

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :goto_5
    if-eqz v2, :cond_9

    :try_start_5
    throw v2

    :catch_3
    move-exception v3

    if-nez v2, :cond_8

    move-object v2, v3

    goto :goto_5

    :cond_8
    if-eq v2, v3, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v1

    move-object v2, v14

    goto :goto_4
.end method

.method private static keyForDuplicateCheck(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 780
    const-string/jumbo v0, "apn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 780
    :cond_1
    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mmsport"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mmsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mcc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mnc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 476
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v5, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, "mvnoIndex":I
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 480
    return-object v8

    .line 482
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "values":[Ljava/lang/String;
    aget-object v5, v4, v1

    const-string/jumbo v6, "None"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 488
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 489
    aget-object v5, v4, v1

    const-string/jumbo v6, "SPN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 490
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 500
    :cond_1
    :goto_1
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 486
    :cond_2
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0

    .line 491
    :cond_3
    aget-object v5, v4, v1

    const-string/jumbo v6, "IMSI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/exsettings/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "numeric":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 494
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v5, v4, v1

    const-string/jumbo v6, "GID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v8
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v5, 0x0

    .line 424
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 425
    .local v1, "protocolIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 426
    return-object v5

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v5
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 857
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 858
    :cond_0
    sget-object v2, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v2

    .line 860
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 861
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 862
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private validateAndSave(Z)Z
    .locals 17
    .param p1, "force"    # Z

    .prologue
    .line 622
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    if-eqz v13, :cond_0

    .line 623
    sget-object v13, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "Form is disabled. Nothing to save."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v13, 0x1

    return v13

    .line 627
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 628
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 630
    .local v8, "mcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 632
    .local v9, "mnc":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    if-eqz p1, :cond_2

    .line 637
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_3

    .line 638
    sget-object v13, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 639
    const-string/jumbo v14, "Could not go to the first row in the Cursor when saving data."

    .line 638
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v13, 0x0

    return v13

    .line 633
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exsettings/ApnEditor;->showDialog(I)V

    .line 634
    const/4 v13, 0x0

    return v13

    .line 644
    :cond_3
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-eqz v13, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 646
    const/4 v13, 0x0

    return v13

    .line 649
    :cond_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 653
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "name"

    .line 654
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0c4f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 653
    .end local v10    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string/jumbo v13, "apn"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string/jumbo v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string/jumbo v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string/jumbo v13, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string/jumbo v13, "mmsport"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string/jumbo v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string/jumbo v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string/jumbo v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string/jumbo v13, "mmsc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 667
    const-string/jumbo v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    :cond_6
    const-string/jumbo v13, "protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string/jumbo v13, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string/jumbo v13, "type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v13, "mcc"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string/jumbo v13, "mnc"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string/jumbo v13, "numeric"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 681
    .local v11, "pppNumber":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0341

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 687
    const-string/jumbo v13, "current"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v6

    .line 692
    .local v6, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 693
    .local v5, "bearerBitmask":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "bearer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 694
    .local v3, "bearer":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_b

    .line 695
    const/4 v5, 0x0

    .line 701
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_9
    const-string/jumbo v13, "bearer_bitmask"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    if-nez v13, :cond_c

    .line 705
    :cond_a
    const/4 v7, 0x0

    .line 714
    .local v7, "bearerVal":I
    :goto_1
    const-string/jumbo v13, "bearer"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string/jumbo v13, "mvno_type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string/jumbo v13, "mvno_match_data"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v14, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/ApnEditor;->isDuplicate(Landroid/content/ContentValues;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 722
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exsettings/ApnEditor;->showDialog(I)V

    .line 723
    const/4 v13, 0x0

    return v13

    .line 698
    .end local v7    # "bearerVal":I
    .restart local v3    # "bearer":Ljava/lang/String;
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v13

    or-int/2addr v5, v13

    goto/16 :goto_0

    .line 706
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    invoke-static {v5, v13}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 707
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    .restart local v7    # "bearerVal":I
    goto :goto_1

    .line 712
    .end local v7    # "bearerVal":I
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "bearerVal":I
    goto :goto_1

    .line 719
    :cond_e
    const/4 v13, 0x0

    goto :goto_2

    .line 726
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 728
    const/4 v13, 0x1

    return v13
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0xd

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->addPreferencesFromResource(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c08d7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 173
    const-string/jumbo v3, "apn_name"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 174
    const-string/jumbo v3, "apn_apn"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 175
    const-string/jumbo v3, "apn_http_proxy"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 176
    const-string/jumbo v3, "apn_http_port"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 177
    const-string/jumbo v3, "apn_user"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 178
    const-string/jumbo v3, "apn_server"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 179
    const-string/jumbo v3, "apn_password"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 180
    const-string/jumbo v3, "apn_mms_proxy"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 181
    const-string/jumbo v3, "apn_mms_port"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 182
    const-string/jumbo v3, "apn_mmsc"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 183
    const-string/jumbo v3, "apn_mcc"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 184
    const-string/jumbo v3, "apn_mnc"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 185
    const-string/jumbo v3, "apn_type"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 186
    const-string/jumbo v3, "apn_ppp_number"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    .line 188
    const-string/jumbo v3, "auth_type"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 189
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string/jumbo v3, "apn_protocol"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 192
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    const-string/jumbo v3, "apn_roaming_protocol"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 195
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    const-string/jumbo v3, "carrier_enabled"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    .line 199
    const-string/jumbo v3, "bearer_multi"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    .line 200
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    const-string/jumbo v3, "mvno_type"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 203
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string/jumbo v3, "mvno_match_data"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 208
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "sub_id"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/ApnEditor;->mSubId:I

    .line 212
    const-string/jumbo v3, "DISABLE_EDITOR"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    .line 213
    iget-boolean v3, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 215
    sget-object v3, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ApnEditor form is disabled."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    if-nez p1, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    .line 220
    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 254
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/exsettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v8, v8}, Lcom/android/exsettings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 255
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 259
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->fillUi()V

    .line 167
    return-void

    :cond_1
    move v3, v5

    .line 218
    goto :goto_0

    .line 222
    :cond_2
    const-string/jumbo v3, "android.intent.action.INSERT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 223
    iget-boolean v3, p0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    if-nez v3, :cond_3

    const-string/jumbo v3, "pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 224
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "protocol"

    const-string/jumbo v5, "IPV4V6"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v3, "roaming_protocol"

    const-string/jumbo v5, "IPV4V6"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 232
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_2
    iput-boolean v4, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    .line 233
    const-string/jumbo v3, "mvno_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 234
    const-string/jumbo v3, "mvno_match_data"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_5

    .line 239
    sget-object v3, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to insert new telephony provider into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 240
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 242
    return-void

    .line 229
    :cond_4
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 230
    const-string/jumbo v5, "pos"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    .line 229
    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_2

    .line 247
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v9, v3}, Lcom/android/exsettings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 251
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 819
    if-nez p1, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    const v2, 0x7f0c08f6

    .line 822
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 827
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 828
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 829
    const v2, 0x7f0c0342

    .line 828
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 831
    const v2, 0x7f0c0343

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 835
    :cond_1
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 554
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 555
    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Form is disabled. Do not create the options menu."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return v3

    .line 560
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    .line 561
    const v0, 0x7f0c08f2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 562
    const v1, 0x7f020088

    .line 561
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 564
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0c08f4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 565
    const v1, 0x108004e

    .line 564
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 566
    const/4 v0, 0x3

    const v1, 0x7f0c08f5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 567
    const v1, 0x1080038

    .line 566
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 568
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 594
    packed-switch p1, :pswitch_data_0

    .line 602
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 596
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 599
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 594
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 573
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 589
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 575
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->deleteApn()V

    .line 576
    return v2

    .line 578
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 581
    :cond_0
    return v2

    .line 583
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 587
    return v2

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 278
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 275
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 508
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 511
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 512
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 514
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v9

    .line 519
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 520
    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 522
    return v9

    .line 524
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 527
    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 528
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 529
    return v9

    .line 531
    :cond_4
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v7, "bearer_multi"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 534
    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/exsettings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 536
    return v9

    .line 538
    :cond_6
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    check-cast p2, Ljava/util/Set;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 539
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 540
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 541
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/exsettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    .line 543
    return v9

    .line 545
    :cond_8
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 546
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 840
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 842
    if-nez p1, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 846
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 839
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 270
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 268
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 607
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 608
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const-string/jumbo v0, "pos"

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 885
    invoke-virtual {p0, p2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 886
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 887
    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 892
    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
