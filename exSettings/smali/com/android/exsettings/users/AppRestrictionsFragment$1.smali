.class Lcom/android/exsettings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/AppRestrictionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/AppRestrictionsFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/exsettings/users/AppRestrictionsFragment;->-get0(Lcom/android/exsettings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/exsettings/users/AppRestrictionsFragment;->-wrap1(Lcom/android/exsettings/users/AppRestrictionsFragment;)V

    .line 119
    :cond_0
    return-void
.end method
