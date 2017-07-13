.class public Lcom/android/exsettings/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/AppPicker$MyApplicationInfo;,
        Lcom/android/exsettings/AppPicker$AppListAdapter;,
        Lcom/android/exsettings/AppPicker$1;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/exsettings/AppPicker$AppListAdapter;

.field private mDebuggableOnly:Z

.field private mPermissionName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/AppPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/AppPicker;->mDebuggableOnly:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/AppPicker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/AppPicker;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/exsettings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/android/exsettings/AppPicker$1;

    invoke-direct {v0}, Lcom/android/exsettings/AppPicker$1;-><init>()V

    .line 171
    sput-object v0, Lcom/android/exsettings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/AppPicker;->mPermissionName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/exsettings/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/AppPicker;->mDebuggableOnly:Z

    .line 59
    new-instance v0, Lcom/android/exsettings/AppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/exsettings/AppPicker$AppListAdapter;-><init>(Lcom/android/exsettings/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/AppPicker;->mAdapter:Lcom/android/exsettings/AppPicker$AppListAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/exsettings/AppPicker;->mAdapter:Lcom/android/exsettings/AppPicker$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/AppPicker$AppListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/exsettings/AppPicker;->finish()V

    .line 53
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/AppPicker;->mAdapter:Lcom/android/exsettings/AppPicker$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/exsettings/AppPicker;->mAdapter:Lcom/android/exsettings/AppPicker$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/exsettings/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/AppPicker$MyApplicationInfo;

    .line 80
    .local v0, "app":Lcom/android/exsettings/AppPicker$MyApplicationInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/exsettings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/exsettings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/exsettings/AppPicker;->finish()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 73
    return-void
.end method
