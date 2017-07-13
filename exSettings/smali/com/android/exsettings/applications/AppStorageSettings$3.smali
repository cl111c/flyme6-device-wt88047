.class Lcom/android/exsettings/applications/AppStorageSettings$3;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/AppStorageSettings;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AppStorageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppStorageSettings;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/exsettings/applications/AppStorageSettings$3;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings$3;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/exsettings/applications/AppStorageSettings;->-get0(Lcom/android/exsettings/applications/AppStorageSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings$3;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    invoke-virtual {v0, v1, v1}, Lcom/android/exsettings/applications/AppStorageSettings;->setIntentAndFinish(ZZ)V

    .line 434
    return-void
.end method
