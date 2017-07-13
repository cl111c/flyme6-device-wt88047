.class Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$2;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$2;->this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$2;->this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->-get1(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    return-void
.end method
