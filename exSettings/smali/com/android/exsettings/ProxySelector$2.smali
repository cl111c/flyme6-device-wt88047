.class Lcom/android/exsettings/ProxySelector$2;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ProxySelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/ProxySelector;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/exsettings/ProxySelector$2;->this$0:Lcom/android/exsettings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector$2;->this$0:Lcom/android/exsettings/ProxySelector;

    iget-object v0, v0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector$2;->this$0:Lcom/android/exsettings/ProxySelector;

    iget-object v0, v0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector$2;->this$0:Lcom/android/exsettings/ProxySelector;

    iget-object v0, v0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method
