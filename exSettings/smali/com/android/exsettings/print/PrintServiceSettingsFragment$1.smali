.class Lcom/android/exsettings/print/PrintServiceSettingsFragment$1;
.super Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintServiceSettingsFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-wrap4(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    .line 88
    return-void
.end method
