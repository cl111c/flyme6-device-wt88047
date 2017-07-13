.class Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;->this$1:Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 207
    return-void
.end method
