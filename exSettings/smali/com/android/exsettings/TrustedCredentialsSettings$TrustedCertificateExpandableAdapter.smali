.class Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateExpandableAdapter"
.end annotation


# instance fields
.field private mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/exsettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 284
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)V

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    .line 285
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->load()V

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 317
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p4, p5}, Lcom/android/exsettings/TrustedCredentialsSettings;->-wrap0(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 298
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 301
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 305
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 326
    if-nez p3, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 328
    const-string/jumbo v5, "layout_inflater"

    .line 327
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 329
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p4}, Lcom/android/exsettings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 332
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 334
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get3(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 335
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    const v4, 0x7f0c07f4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 342
    return-object p3

    .line 338
    :cond_1
    const v4, 0x7f0c07f3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getListViewId(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 360
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 355
    return-void
.end method

.method public remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 288
    return-void
.end method
