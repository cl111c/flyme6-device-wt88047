.class public Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2123
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/exsettingslib/AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 2127
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;Ljava/lang/CharSequence;Z)V

    .line 2126
    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/exsettingslib/AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "addToBack"    # Z

    .prologue
    .line 2132
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2134
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2135
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2137
    new-instance v1, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 2138
    .local v1, "fragment":Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2139
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2140
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2141
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2142
    if-eqz p3, :cond_1

    .line 2143
    const-string/jumbo v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2146
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0ce8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2145
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 2147
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2131
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 2152
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2153
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary;

    .line 2154
    .local v0, "target":Lcom/android/exsettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/AppItem;

    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->-set1(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;)Lcom/android/exsettingslib/AppItem;

    .line 2155
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->-wrap11(Lcom/android/exsettings/DataUsageSummary;)V

    .line 2151
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2160
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2161
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary;

    .line 2162
    .local v0, "target":Lcom/android/exsettings/DataUsageSummary;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->-set1(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;)Lcom/android/exsettingslib/AppItem;

    .line 2163
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->-wrap11(Lcom/android/exsettings/DataUsageSummary;)V

    .line 2159
    return-void
.end method
