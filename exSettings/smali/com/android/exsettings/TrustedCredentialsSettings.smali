.class public Lcom/android/exsettings/TrustedCredentialsSettings;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/TrustedCredentialsSettings$Tab;,
        Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;,
        Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;,
        Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;
    }
.end annotation


# instance fields
.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/exsettings/TrustedCredentialsSettings$Tab;",
            "Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 64
    return-void
.end method

.method private addCertChain(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 718
    .local v5, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 719
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    .line 718
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 720
    .local v11, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v13

    .line 721
    .local v13, "service":Landroid/security/IKeyChainService;
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 722
    .local v7, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .line 723
    .local v12, "n":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .local v6, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v10, 0x0

    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 725
    :try_start_1
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v8

    .line 726
    .local v8, "encodedCertificate":[B
    invoke-static {v8}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 727
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 729
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "encodedCertificate":[B
    .end local v10    # "i":I
    .end local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v12    # "n":I
    .end local v13    # "service":Landroid/security/IKeyChainService;
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v9

    .line 730
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v9, "ex":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v14, "TrustedCredentialsSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException while retrieving certificate chain for root "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 731
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v16

    .line 730
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    return-void

    .line 734
    .end local v9    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    .restart local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v12    # "n":I
    .restart local v13    # "service":Landroid/security/IKeyChainService;
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "certificate$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 735
    .restart local v3    # "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/exsettings/TrustedCredentialsSettings;->addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 714
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    return-void

    .line 729
    .end local v4    # "certificate$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v9

    .restart local v9    # "ex":Landroid/os/RemoteException;
    move-object v5, v6

    .end local v6    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_1
.end method

.method private addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 742
    .local v0, "sslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    return-void
.end method

.method private addTab(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V
    .locals 9
    .param p1, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    const/4 v8, 0x0

    .line 219
    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get5(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 219
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 221
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get6(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v6

    .line 219
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 222
    .local v4, "systemSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 224
    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 225
    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 227
    .local v2, "lv":Landroid/widget/ExpandableListView;
    new-instance v1, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {v1, p0, p1, v8}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V

    .line 228
    .local v1, "adapter":Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 229
    new-instance v5, Lcom/android/exsettings/TrustedCredentialsSettings$1;

    invoke-direct {v5, p0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$1;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 218
    .end local v1    # "adapter":Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    .end local v2    # "lv":Landroid/widget/ExpandableListView;
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 239
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {v0, p0, p1, v8}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    .line 240
    .local v0, "adapter":Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    new-instance v5, Lcom/android/exsettings/TrustedCredentialsSettings$2;

    invoke-direct {v5, p0, v0}, Lcom/android/exsettings/TrustedCredentialsSettings$2;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private closeKeyChainConnections()V
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 212
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 210
    return-void
.end method

.method private getViewForCertificate(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 601
    if-nez p3, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 603
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040137

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 604
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;

    invoke-direct {v0, v5}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;)V

    .line 606
    .local v0, "holder":Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;
    const v2, 0x7f130249

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 605
    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-set0(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 608
    const v2, 0x7f13024a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 607
    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-set1(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 610
    const v2, 0x7f13024b

    .line 609
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    invoke-static {v0, v2}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-set2(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 611
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 615
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get3(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get4(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get4(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v5

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 619
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 620
    const-string/jumbo v6, "no_config_credentials"

    .line 621
    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 619
    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 622
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 624
    :cond_1
    return-object p3

    .line 613
    .end local v0    # "holder":Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/android/exsettings/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    :cond_3
    move v2, v4

    .line 618
    goto :goto_1
.end method

.method private showCertDialog(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 18
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 634
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 635
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const v14, 0x104051b

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 637
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v13, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v12, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v12}, Lcom/android/exsettings/TrustedCredentialsSettings;->addCertChain(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 641
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 642
    const v15, 0x1090008

    .line 641
    invoke-direct {v2, v14, v15, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 644
    .local v2, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v14, 0x1090009

    invoke-virtual {v2, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 645
    new-instance v11, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 646
    .local v11, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 647
    new-instance v14, Lcom/android/exsettings/TrustedCredentialsSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/android/exsettings/TrustedCredentialsSettings$3;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 659
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v7, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 660
    .local v7, "container":Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 661
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_1

    .line 663
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 664
    .local v6, "certificateView":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 665
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_0
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 669
    .end local v6    # "certificateView":Landroid/view/View;
    :cond_1
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 670
    new-instance v14, Lcom/android/exsettings/TrustedCredentialsSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/exsettings/TrustedCredentialsSettings$4;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;)V

    const v15, 0x104000a

    invoke-virtual {v4, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 677
    .local v5, "certDialog":Landroid/app/Dialog;
    const v14, 0x10203a4

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 678
    .local v3, "body":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 679
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040138

    .line 681
    const/4 v15, 0x0

    .line 679
    invoke-virtual {v9, v14, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 682
    .local v10, "removeButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v15, "no_config_credentials"

    .line 683
    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    .line 682
    invoke-virtual/range {v14 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 684
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 686
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get5(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-wrap2(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setText(I)V

    .line 687
    new-instance v14, Lcom/android/exsettings/TrustedCredentialsSettings$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/exsettings/TrustedCredentialsSettings$5;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 633
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x5c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    const v0, 0x7f040139

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 187
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 188
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/exsettings/TrustedCredentialsSettings;->addTab(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V

    .line 190
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/exsettings/TrustedCredentialsSettings;->addTab(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get5(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 199
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aliasLoader$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 200
    .local v0, "aliasLoader":Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v3}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 202
    .end local v0    # "aliasLoader":Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 204
    iput-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 207
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onDestroy()V

    .line 198
    return-void
.end method
