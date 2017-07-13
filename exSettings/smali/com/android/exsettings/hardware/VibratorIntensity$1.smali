.class Lcom/android/exsettings/hardware/VibratorIntensity$1;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/hardware/VibratorIntensity;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/hardware/VibratorIntensity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/hardware/VibratorIntensity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/hardware/VibratorIntensity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/exsettings/hardware/VibratorIntensity$1;->this$0:Lcom/android/exsettings/hardware/VibratorIntensity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    return-void
.end method
