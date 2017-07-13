.class Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/exsettings/TrustedCredentialsSettings;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 402
    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 408
    iput-object p3, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .line 409
    iput-object p2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V

    return-void
.end method


# virtual methods
.method public remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 3
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 513
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 510
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;"
    :cond_0
    return-void
.end method
