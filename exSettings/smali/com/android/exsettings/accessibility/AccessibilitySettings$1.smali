.class Lcom/android/exsettings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 124
    iput-object p1, p0, Lcom/android/exsettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/exsettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/AccessibilitySettings;->-wrap0(Lcom/android/exsettings/accessibility/AccessibilitySettings;)V

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/AccessibilitySettings;->-wrap2(Lcom/android/exsettings/accessibility/AccessibilitySettings;)V

    .line 126
    return-void
.end method
