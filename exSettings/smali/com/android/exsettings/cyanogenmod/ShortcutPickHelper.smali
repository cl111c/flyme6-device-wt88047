.class public Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;,
        Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    }
.end annotation


# instance fields
.field private lastFragmentId:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mParent:Landroid/app/Activity;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;Landroid/content/Intent;)V
    .locals 0
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    .line 63
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    .line 61
    return-void
.end method

.method private completeSetCustomApp(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    return-void
.end method

.method private completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string/jumbo v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 280
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "appUri":Ljava/lang/String;
    const-string/jumbo v2, "com.android.contacts.action.QUICK_CONTACT"

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    invoke-direct {p0, v1}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v4}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    return-void
.end method

.method private getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "labelOnly"    # Z

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 288
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 289
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "friendlyName":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz p2, :cond_2

    .line 295
    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    :goto_1
    return-object v1

    .line 292
    .restart local v1    # "friendlyName":Ljava/lang/String;
    :cond_2
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 295
    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "activityName":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 305
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private processShortcut(Landroid/content/Intent;II)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCodeApplication"    # I
    .param p3, "requestCodeShortcut"    # I

    .prologue
    const/4 v11, 0x0

    .line 127
    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const/high16 v10, 0x7f0c0000

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "applicationName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f0c0001

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "application2name":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, "shortcutName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 131
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v5, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v7, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    invoke-direct {p0, v7, p2}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 125
    .end local v5    # "mainIntent":Landroid/content/Intent;
    .end local v7    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 138
    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 139
    .local v6, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/widget/ExpandableListView;

    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v9}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, "appListView":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;

    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v0, p0, v6, v9}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;-><init>(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;Ljava/util/List;Landroid/content/Context;)V

    .line 141
    .local v0, "appAdapter":Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    new-instance v9, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$1;

    invoke-direct {v9, p0}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$1;-><init>(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)V

    invoke-virtual {v1, v9}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 157
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 160
    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v11, 0x7f0c0003

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 162
    iget-object v9, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$2;

    invoke-direct {v10, p0}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$2;-><init>(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 169
    .end local v0    # "appAdapter":Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    .end local v1    # "appListView":Landroid/widget/ExpandableListView;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startFragmentOrActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "pickIntent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 115
    iget v1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 119
    .local v0, "cFrag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 309
    if-nez p1, :cond_0

    .line 310
    return-object v2

    .line 314
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 315
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 318
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 319
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/net/URISyntaxException;
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 68
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v0, 0x65

    const/16 v1, 0x66

    invoke-direct {p0, p3, v0, v1}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V
    .locals 9
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "icons"    # [Landroid/content/Intent$ShortcutIconResource;
    .param p3, "fragmentId"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v5, "shortcutNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 88
    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v3, p1, v7

    .line 89
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const/high16 v8, 0x7f0c0000

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v8, 0x7f0c0001

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v7, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v4, "shortcutIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    if-eqz p2, :cond_1

    .line 98
    array-length v7, p2

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v2, p2, v6

    .line 99
    .local v2, "s":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 102
    .end local v2    # "s":Landroid/content/Intent$ShortcutIconResource;
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v7, 0x1080093

    invoke-static {v6, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const/high16 v7, 0x7f020000

    invoke-static {v6, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string/jumbo v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.extra.INTENT"

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v6, "android.intent.extra.TITLE"

    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v8, 0x7f0c0002

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    iput p3, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    .line 111
    const/16 v6, 0x64

    invoke-direct {p0, v1, v6}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method
