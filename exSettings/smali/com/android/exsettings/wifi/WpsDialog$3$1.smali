.class Lcom/android/exsettings/wifi/WpsDialog$3$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WpsDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/wifi/WpsDialog$3;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WpsDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/wifi/WpsDialog$3;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/exsettings/wifi/WpsDialog$3$1;->this$1:Lcom/android/exsettings/wifi/WpsDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$3$1;->this$1:Lcom/android/exsettings/wifi/WpsDialog$3;

    iget-object v0, v0, Lcom/android/exsettings/wifi/WpsDialog$3;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get6(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 202
    return-void
.end method
