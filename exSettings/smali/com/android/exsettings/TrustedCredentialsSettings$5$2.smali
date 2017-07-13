.class Lcom/android/exsettings/TrustedCredentialsSettings$5$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/TrustedCredentialsSettings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;


# direct methods
.method constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/TrustedCredentialsSettings$5;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5$2;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 702
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 701
    return-void
.end method
