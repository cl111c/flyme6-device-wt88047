.class Lcom/android/exsettings/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DreamSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DreamSettings;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/exsettings/DreamSettings$4;->this$0:Lcom/android/exsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings$4;->this$0:Lcom/android/exsettings/DreamSettings;

    invoke-static {v0}, Lcom/android/exsettings/DreamSettings;->-get0(Lcom/android/exsettings/DreamSettings;)Lcom/android/exsettings/DreamBackend;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/exsettings/DreamBackend;->setActivatedOnDock(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings$4;->this$0:Lcom/android/exsettings/DreamSettings;

    invoke-static {v0}, Lcom/android/exsettings/DreamSettings;->-get0(Lcom/android/exsettings/DreamSettings;)Lcom/android/exsettings/DreamBackend;

    move-result-object v0

    if-eq p2, v1, :cond_1

    if-ne p2, v4, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/exsettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    return-void

    :cond_2
    move v0, v2

    .line 210
    goto :goto_0

    :cond_3
    move v1, v2

    .line 211
    goto :goto_1
.end method
