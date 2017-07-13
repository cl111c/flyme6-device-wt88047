.class final Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppProtectList"
.end annotation


# instance fields
.field public final componentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final state:Z

.field final synthetic this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ProtectedAppsActivity;
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p2, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;->componentNames:Ljava/util/ArrayList;

    .line 304
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 305
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;->componentNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    iput-boolean p3, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;->state:Z

    .line 302
    return-void
.end method
