.class Lcom/android/exsettings/nx/WakeLockBlocker$1;
.super Ljava/lang/Object;
.source "WakeLockBlocker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/WakeLockBlocker;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nx/WakeLockBlocker;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/WakeLockBlocker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nx/WakeLockBlocker;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/exsettings/nx/WakeLockBlocker$1;->this$0:Lcom/android/exsettings/nx/WakeLockBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 290
    return-void
.end method
