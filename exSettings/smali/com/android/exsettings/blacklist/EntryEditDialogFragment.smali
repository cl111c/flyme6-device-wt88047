.class public Lcom/android/exsettings/blacklist/EntryEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;
    }
.end annotation


# static fields
.field private static final BLACKLIST_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBlockCalls:Landroid/widget/CheckBox;

.field private mBlockMessages:Landroid/widget/CheckBox;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mCountryCode:Landroid/widget/Spinner;

.field private mEditText:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/blacklist/EntryEditDialogFragment;Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->onDeleteConfirmResult(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone"

    aput-object v1, v0, v4

    const-string/jumbo v1, "message"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    .line 75
    sput-object v0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->NUMBER_PROJECTION:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 102
    return-void
.end method

.method private createDialogView(JLandroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "id"    # J
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 216
    .local v6, "activity":Landroid/app/Activity;
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 215
    check-cast v8, Landroid/view/LayoutInflater;

    .line 217
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 219
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f1300cb

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 221
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    const v0, 0x7f1300ca

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mCountryCode:Landroid/widget/Spinner;

    .line 226
    const v0, 0x7f1300cc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$3;-><init>(Lcom/android/exsettings/blacklist/EntryEditDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v0, 0x7f1300ce

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    .line 238
    const v0, 0x7f1300cf

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    .line 240
    if-eqz p3, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "number"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "edit_enabled"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const-string/jumbo v2, "phone"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const-string/jumbo v2, "message"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 271
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    :cond_2
    invoke-direct {p0, v9, p3}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->populateCountryCodes(Landroid/view/View;Landroid/os/Bundle;)V

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 277
    return-object v9

    .line 245
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 246
    sget-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    sget-object v2, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 257
    :goto_3
    if-eqz v7, :cond_0

    .line 258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 252
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 253
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 255
    :cond_7
    const-wide/16 p1, -0x1

    goto :goto_3
.end method

.method private getEntryId()J
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLocaleCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(J)Lcom/android/exsettings/blacklist/EntryEditDialogFragment;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    new-instance v1, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;

    invoke-direct {v1}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;-><init>()V

    .line 98
    .local v1, "fragment":Lcom/android/exsettings/blacklist/EntryEditDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v1
.end method

.method private onDeleteConfirmResult(Z)V
    .locals 5
    .param p1, "confirmed"    # Z

    .prologue
    const/4 v4, 0x0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->dismiss()V

    .line 152
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private populateCountryCodes(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 173
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 175
    .local v6, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v2, "countryCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "region$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 177
    .local v7, "region":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v7    # "region":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$2;

    invoke-direct {v10, p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$2;-><init>(Lcom/android/exsettings/blacklist/EntryEditDialogFragment;)V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistRegexEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 189
    const-string/jumbo v10, "*"

    invoke-interface {v4, v12, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    :cond_1
    const/4 v9, 0x0

    .line 194
    .local v9, "selectedIndex":I
    if-nez p2, :cond_2

    .line 195
    invoke-static {}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getLocaleCountry()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {v6, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, "currentCode":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 202
    .end local v1    # "country":Ljava/lang/String;
    .end local v3    # "currentCode":I
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 203
    const v11, 0x1090008

    .line 202
    invoke-direct {v0, v10, v11, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 204
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v10, 0x1090009

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 205
    iget-object v10, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mCountryCode:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 206
    iget-object v10, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mCountryCode:Landroid/widget/Spinner;

    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    const v10, 0x7f1300c9

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 210
    .local v5, "parent":Landroid/view/View;
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 172
    return-void

    .line 199
    .end local v0    # "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "parent":Landroid/view/View;
    :cond_2
    const-string/jumbo v10, "edit_country_code"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1
.end method

.method private updateBlacklistEntry()V
    .locals 7

    .prologue
    .line 281
    const v4, 0x7f0c03bc

    invoke-virtual {p0, v4}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "plusSymbol":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mCountryCode:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 283
    iget-object v5, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 285
    .local v0, "flags":I
    const/16 v3, 0x11

    .line 286
    .local v3, "valid":I
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    or-int/lit8 v0, v0, 0x10

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v0, v3}, Lcom/android/internal/telephony/util/BlacklistUtils;->addOrUpdate(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c030b

    invoke-virtual {p0, v5}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    const/4 v6, 0x1

    .line 295
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 280
    :cond_2
    return-void
.end method

.method private updateOkButtonState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 301
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v4, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 303
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 304
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 308
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const/4 v3, 0x0

    .line 309
    .local v3, "validInput":Z
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "input":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isValidBlacklistInput(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 313
    .local v2, "normalizeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    const/4 v3, 0x1

    .line 318
    .end local v2    # "normalizeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 324
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 325
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    :cond_3
    return-void

    .line 319
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const v5, 0x7f0c070d

    invoke-virtual {p0, v5}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->updateOkButtonState()V

    .line 351
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 347
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 357
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 358
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 359
    return-void

    .line 362
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 364
    sget-object v2, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->NUMBER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 363
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->updateBlacklistEntry()V

    .line 146
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v2

    .line 109
    .local v2, "id":J
    if-eqz p1, :cond_1

    .line 110
    const-string/jumbo v4, "blacklist_edit_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 112
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    const v5, 0x7f0c02f6

    .line 112
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 114
    const v5, 0x104000a

    .line 112
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 115
    const/high16 v5, 0x1040000

    .line 112
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 116
    invoke-direct {p0, v2, v3, v1}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->createDialogView(JLandroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 119
    const v4, 0x7f0c02f8

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 110
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v1, 0x0

    .local v1, "dialogState":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, "dialogState":Landroid/os/Bundle;
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 335
    const-string/jumbo v1, "phone"

    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    const-string/jumbo v1, "edit_enabled"

    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    const-string/jumbo v1, "edit_country_code"

    iget-object v2, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->mCountryCode:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string/jumbo v1, "blacklist_edit_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 330
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 129
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 130
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 131
    .local v1, "neutralButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$1;-><init>(Lcom/android/exsettings/blacklist/EntryEditDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->updateOkButtonState()V

    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 343
    return-void
.end method
