.class Lcom/android/exsettings/nfc/HowItWorks$1;
.super Ljava/lang/Object;
.source "HowItWorks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nfc/HowItWorks;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nfc/HowItWorks;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nfc/HowItWorks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nfc/HowItWorks;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/exsettings/nfc/HowItWorks$1;->this$0:Lcom/android/exsettings/nfc/HowItWorks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/exsettings/nfc/HowItWorks$1;->this$0:Lcom/android/exsettings/nfc/HowItWorks;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/HowItWorks;->finish()V

    .line 18
    return-void
.end method
