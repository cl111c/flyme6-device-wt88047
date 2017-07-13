.class Lcom/android/exsettings/print/PrintJobSettingsFragment$1;
.super Ljava/lang/Object;
.source "PrintJobSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintJobSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintJobSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintJobSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintJobSettingsFragment;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/exsettings/print/PrintJobSettingsFragment$1;->this$0:Lcom/android/exsettings/print/PrintJobSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/exsettings/print/PrintJobSettingsFragment$1;->this$0:Lcom/android/exsettings/print/PrintJobSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintJobSettingsFragment;->-wrap0(Lcom/android/exsettings/print/PrintJobSettingsFragment;)V

    .line 58
    return-void
.end method
