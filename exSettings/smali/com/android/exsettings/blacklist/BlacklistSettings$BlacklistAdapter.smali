.class Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BlacklistSettings.java"

# interfaces
.implements Lcom/android/exsettings/blacklist/ToggleImageView$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/blacklist/BlacklistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;,
        Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;,
        Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;
    }
.end annotation


# instance fields
.field private mContactNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mQueryHandler:Landroid/os/Handler;

.field private mRequestedLookups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 301
    const v1, 0x7f040019

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;

    .line 225
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;

    .line 228
    new-instance v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;-><init>(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)V

    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mMainHandler:Landroid/os/Handler;

    .line 304
    const-string/jumbo v1, "country_detector"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 305
    .local v0, "detector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 300
    return-void
.end method

.method private scheduleNameLookup(ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v3, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 376
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "blacklist_contact_query"

    .line 377
    const/16 v4, 0xa

    .line 376
    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 378
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 379
    new-instance v2, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;-><init>(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v3

    .line 383
    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void

    .line 374
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;

    .line 333
    .local v1, "holder":Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 336
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 335
    invoke-static {v4, v8, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    iget-object v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    :goto_0
    if-nez v3, :cond_0

    .line 348
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 349
    .local v2, "id":I
    invoke-direct {p0, v2, v4}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->scheduleNameLookup(ILjava/lang/String;)V

    .line 352
    .end local v2    # "id":I
    :cond_0
    iget-object v8, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5, v7}, Lcom/android/exsettings/blacklist/ToggleImageView;->setCheckedInternal(ZZ)V

    .line 353
    iget-object v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/exsettings/blacklist/ToggleImageView;->setCheckedInternal(ZZ)V

    .line 354
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    iput v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->position:I

    .line 331
    return-void

    .line 342
    :cond_1
    iget-object v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v5, v1, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 352
    goto :goto_1

    :cond_3
    move v6, v7

    .line 353
    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 313
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;-><init>(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;)V

    .line 314
    .local v0, "holder":Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
    const v2, 0x7f130035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    .line 315
    const v2, 0x7f130036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    .line 316
    const v2, 0x7f130037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/blacklist/ToggleImageView;

    iput-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    .line 317
    const v2, 0x7f130038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/blacklist/ToggleImageView;

    iput-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    .line 319
    iget-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/exsettings/blacklist/ToggleImageView;->setTag(Ljava/lang/Object;)V

    .line 320
    iget-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/blacklist/ToggleImageView;->setOnCheckedChangeListener(Lcom/android/exsettings/blacklist/ToggleImageView$OnCheckedChangeListener;)V

    .line 322
    iget-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Lcom/android/exsettings/blacklist/ToggleImageView;->setTag(Ljava/lang/Object;)V

    .line 323
    iget-object v2, v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/blacklist/ToggleImageView;->setOnCheckedChangeListener(Lcom/android/exsettings/blacklist/ToggleImageView$OnCheckedChangeListener;)V

    .line 325
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 327
    return-object v1
.end method

.method public onCheckedChanged(Lcom/android/exsettings/blacklist/ToggleImageView;Z)V
    .locals 10
    .param p1, "view"    # Lcom/android/exsettings/blacklist/ToggleImageView;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 359
    invoke-virtual {p1}, Lcom/android/exsettings/blacklist/ToggleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 360
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;

    .line 361
    .local v2, "holder":Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
    invoke-virtual {p1}, Lcom/android/exsettings/blacklist/ToggleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "column":Ljava/lang/String;
    iget v8, v2, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->position:I

    invoke-virtual {p0, v8}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->getItemId(I)J

    move-result-wide v4

    .line 363
    .local v4, "id":J
    sget-object v8, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 364
    .local v6, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/exsettings/blacklist/ToggleImageView;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    iget-object v7, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->notifyDataSetChanged()V

    .line 358
    :cond_1
    return-void
.end method
