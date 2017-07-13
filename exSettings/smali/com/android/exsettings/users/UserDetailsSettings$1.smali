.class Lcom/android/exsettings/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/UserDetailsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/UserDetailsSettings;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/exsettings/users/UserDetailsSettings$1;->this$0:Lcom/android/exsettings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/exsettings/users/UserDetailsSettings$1;->this$0:Lcom/android/exsettings/users/UserDetailsSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/users/UserDetailsSettings;->removeUser()V

    .line 166
    return-void
.end method
