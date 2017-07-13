.class Lcom/android/exsettings/DisplaySettings$6;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DisplaySettings;->showLcdConfirmationDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DisplaySettings;

.field final synthetic val$lcdDensity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DisplaySettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DisplaySettings;
    .param p2, "val$lcdDensity"    # Ljava/lang/String;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/exsettings/DisplaySettings$6;->this$0:Lcom/android/exsettings/DisplaySettings;

    iput-object p2, p0, Lcom/android/exsettings/DisplaySettings$6;->val$lcdDensity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 775
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings$6;->val$lcdDensity:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 776
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings$6;->this$0:Lcom/android/exsettings/DisplaySettings;

    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings$6;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/exsettings/DisplaySettings;->-wrap7(Lcom/android/exsettings/DisplaySettings;Landroid/content/Context;I)V

    .line 777
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings$6;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-static {v2, v1}, Lcom/android/exsettings/DisplaySettings;->-wrap6(Lcom/android/exsettings/DisplaySettings;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v1    # "value":I
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "DisplaySettings"

    const-string/jumbo v3, "could not persist display density setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
