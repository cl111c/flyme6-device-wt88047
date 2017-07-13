.class Lcom/android/exsettings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;->addTab(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "val$adapter"    # Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings;->-wrap1(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method
