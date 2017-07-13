.class Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    iget-object v0, p1, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 419
    iget-object v0, p1, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 26
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 433
    .local v14, "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get3(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v24

    .line 434
    .local v24, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v22

    .line 437
    .local v22, "n":I
    new-instance v12, Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 439
    .local v12, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    const/16 v21, 0x0

    .line 440
    .local v21, "max":I
    const/16 v25, 0x0

    .line 441
    .local v25, "progress":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 442
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserHandle;

    .line 443
    .local v23, "profile":Landroid/os/UserHandle;
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 444
    .local v8, "profileId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v20

    .line 447
    .local v20, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    invoke-virtual/range {v20 .. v20}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 449
    .local v3, "service":Landroid/security/IKeyChainService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-wrap3(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v11

    .line 450
    .local v11, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 453
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int v21, v21, v2

    .line 454
    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 456
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v20    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v23    # "profile":Landroid/os/UserHandle;
    :cond_1
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 457
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserHandle;

    .line 458
    .restart local v23    # "profile":Landroid/os/UserHandle;
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 459
    .restart local v8    # "profileId":I
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 460
    .restart local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 463
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 465
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    .local v13, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 467
    .local v10, "aliasMax":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 468
    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/ParcelableString;

    iget-object v6, v2, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    .line 470
    .local v6, "alias":Ljava/lang/String;
    const/4 v2, 0x1

    .line 469
    invoke-interface {v3, v6, v2}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v17

    .line 471
    .local v17, "encodedCertificate":[B
    invoke-static/range {v17 .. v17}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 472
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v4

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v5}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v5

    .line 472
    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 467
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 476
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v17    # "encodedCertificate":[B
    :cond_3
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 477
    invoke-virtual {v14, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 479
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v10    # "aliasMax":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v13    # "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;"
    .end local v19    # "j":I
    .end local v23    # "profile":Landroid/os/UserHandle;
    :cond_4
    return-object v14

    .line 483
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v18    # "i":I
    .end local v21    # "max":I
    .end local v22    # "n":I
    .end local v24    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v25    # "progress":I
    :catch_0
    move-exception v16

    .line 484
    .local v16, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "TrustedCredentialsSettings"

    const-string/jumbo v4, "InterruptedException while loading aliases."

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 480
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v15

    .line 481
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TrustedCredentialsSettings"

    const-string/jumbo v4, "Remote exception while loading aliases."

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 429
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "certHolders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;>;"
    const/4 v5, 0x0

    .line 497
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 498
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 499
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 503
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 506
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v3}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "certHolders"    # Ljava/lang/Object;

    .prologue
    .line 496
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "certHolders":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 424
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-get3(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 425
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->getListViewId(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    .line 426
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .prologue
    .line 489
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 490
    .local v1, "progress":I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 491
    .local v0, "max":I
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 488
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progressAndMax"    # [Ljava/lang/Object;

    .prologue
    .line 488
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "progressAndMax":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
