.class Lcom/android/exsettings/users/UserSettings$9;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/UserSettings;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/exsettings/users/UserSettings$9;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$9;->this$0:Lcom/android/exsettings/users/UserSettings;

    if-nez p2, :cond_0

    .line 581
    const/4 v0, 0x1

    .line 580
    :goto_0
    invoke-static {v1, v0}, Lcom/android/exsettings/users/UserSettings;->-wrap7(Lcom/android/exsettings/users/UserSettings;I)V

    .line 579
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
