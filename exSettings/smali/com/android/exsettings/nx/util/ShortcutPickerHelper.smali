.class public Lcom/android/exsettings/nx/util/ShortcutPickerHelper;
.super Ljava/lang/Object;
.source "ShortcutPickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;
    }
.end annotation


# instance fields
.field private lastFragmentId:I

.field private mListener:Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    .line 54
    iget-object v0, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    iput-object p2, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mListener:Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;

    .line 52
    return-void
.end method

.method private completeSetCustomApp(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mListener:Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/util/nx/AppHelper;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 139
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 138
    return-void
.end method

.method private completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 13
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 144
    const-string/jumbo v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 146
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.extra.shortcut.NAME"

    .line 147
    const-string/jumbo v10, "android.intent.extra.shortcut.NAME"

    .line 146
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v7, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "appUri":Ljava/lang/String;
    const-string/jumbo v9, "com.android.contacts.action.QUICK_CONTACT"

    .line 150
    const-string/jumbo v10, "android.intent.action.VIEW"

    .line 149
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const-string/jumbo v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 155
    .local v4, "extra":Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    instance-of v9, v4, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    move-object v2, v4

    .line 156
    check-cast v2, Landroid/graphics/Bitmap;

    .line 159
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v2, :cond_1

    .line 160
    const-string/jumbo v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_1

    instance-of v9, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_1

    .line 163
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0

    .line 165
    .local v5, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iget-object v9, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 166
    .local v8, "resources":Landroid/content/res/Resources;
    iget-object v9, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 167
    .local v6, "id":I
    invoke-static {v8, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 173
    .end local v5    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v6    # "id":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mListener:Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;

    .line 174
    iget-object v10, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    iget-object v11, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/nx/AppHelper;->getFriendlyShortcutName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    .line 173
    invoke-interface {v9, v1, v10, v2, v12}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 143
    return-void

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private processShortcut(Landroid/content/Intent;II)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCodeApplication"    # I
    .param p3, "requestCodeShortcut"    # I

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0428

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "applicationName":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "shortcutName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0, v2, p2}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 121
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startFragmentOrActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "pickIntent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 110
    iget v1, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->lastFragmentId:I

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->lastFragmentId:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 114
    .local v0, "cFrag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_2
    const/16 v0, 0x65

    const/16 v1, 0x66

    invoke-direct {p0, p3, v0, v1}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickShortcut(I)V
    .locals 1
    .param p1, "fragmentId"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 74
    return-void
.end method

.method public pickShortcut(IZ)V
    .locals 8
    .param p1, "fragmentId"    # I
    .param p2, "fullAppsOnly"    # Z

    .prologue
    .line 79
    iput p1, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->lastFragmentId:I

    .line 81
    if-eqz p2, :cond_0

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const/16 v5, 0x65

    invoke-direct {p0, v2, v5}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 78
    .end local v1    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v4, "shortcutNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    const v6, 0x7f0c0428

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, "shortcutIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v5, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    .line 97
    const v6, 0x1080093

    .line 96
    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string/jumbo v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.INTENT"

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v5, "android.intent.extra.TITLE"

    iget-object v6, p0, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    .line 103
    const v7, 0x7f0c0429

    .line 102
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    const/16 v5, 0x64

    invoke-direct {p0, v2, v5}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method
