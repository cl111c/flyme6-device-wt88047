.class Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness$1;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness$1;->this$0:Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 96
    return-void
.end method
