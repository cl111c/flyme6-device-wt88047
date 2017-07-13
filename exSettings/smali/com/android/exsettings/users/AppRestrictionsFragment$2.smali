.class Lcom/android/exsettings/users/AppRestrictionsFragment$2;
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
    .line 131
    iput-object p1, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-static {v0, p2}, Lcom/android/exsettings/users/AppRestrictionsFragment;->-wrap3(Lcom/android/exsettings/users/AppRestrictionsFragment;Landroid/content/Intent;)V

    .line 133
    return-void
.end method
