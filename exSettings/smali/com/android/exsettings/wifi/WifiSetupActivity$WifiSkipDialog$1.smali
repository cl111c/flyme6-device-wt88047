.class Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog$1;
.super Ljava/lang/Object;
.source "WifiSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog$1;->this$1:Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog$1;->this$1:Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/WifiSetupActivity;

    .line 267
    .local v0, "activity":Lcom/android/exsettings/wifi/WifiSetupActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/WifiSetupActivity;->finish(I)V

    .line 265
    return-void
.end method
