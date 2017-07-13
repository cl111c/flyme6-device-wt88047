.class Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/print/PrintSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintSettingsFragment;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/print/PrintSettingsFragment;Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintSettingsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/exsettings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get1(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get1(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get1(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get1(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 386
    return-void
.end method
