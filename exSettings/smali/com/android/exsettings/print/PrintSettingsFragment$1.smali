.class Lcom/android/exsettings/print/PrintSettingsFragment$1;
.super Landroid/os/Handler;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintSettingsFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$1;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$1;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-wrap0(Lcom/android/exsettings/print/PrintSettingsFragment;)V

    .line 109
    return-void
.end method
