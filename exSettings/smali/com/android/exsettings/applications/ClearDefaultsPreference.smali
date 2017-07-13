.class public Lcom/android/exsettings/applications/ClearDefaultsPreference;
.super Landroid/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/exsettings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 56
    return-void
.end method

.method private isDefaultBrowser(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 179
    const v0, 0x7f0c09c3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->updateUI()Z

    .line 117
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f130031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/exsettings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/exsettings/applications/ClearDefaultsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setAppEntry(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 83
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public updateUI()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 125
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v11, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v6

    .line 127
    .local v6, "hasBindAppWidgetPermission":Z
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v11, 0x7f130030

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "autoLaunchView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/exsettings/Utils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 129
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v10

    .line 128
    if-nez v10, :cond_5

    .line 130
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v11, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/exsettings/Utils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v2

    .line 131
    :goto_0
    if-nez v2, :cond_0

    if-eqz v6, :cond_6

    .line 134
    :cond_0
    if-eqz v6, :cond_7

    move v9, v2

    .line 136
    :goto_1
    if-eqz v6, :cond_8

    .line 137
    const v10, 0x7f0c09ad

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 143
    .local v5, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 144
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 145
    const v11, 0x7f0b0045

    .line 144
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 146
    .local v4, "bulletIndent":I
    if-eqz v2, :cond_2

    .line 148
    const v10, 0x7f0c09c1

    .line 147
    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    .local v1, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    .local v7, "s":Landroid/text/SpannableString;
    if-eqz v9, :cond_1

    .line 151
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v12, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_1
    new-array v10, v14, [Ljava/lang/CharSequence;

    aput-object v7, v10, v12

    const-string/jumbo v11, "\n"

    aput-object v11, v10, v13

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 156
    .end local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v7    # "s":Landroid/text/SpannableString;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v6, :cond_4

    .line 158
    const v10, 0x7f0c09c2

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 159
    .local v0, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .restart local v7    # "s":Landroid/text/SpannableString;
    if-eqz v9, :cond_3

    .line 161
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 162
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 161
    invoke-virtual {v7, v10, v12, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 164
    :cond_3
    if-nez v8, :cond_9

    .line 165
    new-array v10, v14, [Ljava/lang/CharSequence;

    aput-object v7, v10, v12

    const-string/jumbo v11, "\n"

    aput-object v11, v10, v13

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 167
    .end local v0    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v7    # "s":Landroid/text/SpannableString;
    :cond_4
    :goto_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    .end local v4    # "bulletIndent":I
    .end local v5    # "context":Landroid/content/Context;
    :goto_4
    return v13

    .line 128
    :cond_5
    const/4 v2, 0x1

    .local v2, "autoLaunchEnabled":Z
    goto :goto_0

    .line 132
    .end local v2    # "autoLaunchEnabled":Z
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    goto :goto_4

    .line 134
    :cond_7
    const/4 v9, 0x0

    .local v9, "useBullets":Z
    goto :goto_1

    .line 139
    .end local v9    # "useBullets":Z
    :cond_8
    const v10, 0x7f0c09ac

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 165
    .restart local v0    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .restart local v4    # "bulletIndent":I
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v7    # "s":Landroid/text/SpannableString;
    :cond_9
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/CharSequence;

    aput-object v8, v10, v12

    const-string/jumbo v11, "\n"

    aput-object v11, v10, v13

    aput-object v7, v10, v14

    const-string/jumbo v11, "\n"

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .local v8, "text":Ljava/lang/CharSequence;
    goto :goto_3
.end method
