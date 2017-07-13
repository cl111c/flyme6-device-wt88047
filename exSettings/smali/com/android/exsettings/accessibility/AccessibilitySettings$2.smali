.class Lcom/android/exsettings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/accessibility/AccessibilitySettings;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/AccessibilitySettings;->-get0(Lcom/android/exsettings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/exsettings/accessibility/AccessibilitySettings;->-get1(Lcom/android/exsettings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 134
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 139
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 144
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 149
    return-void
.end method
