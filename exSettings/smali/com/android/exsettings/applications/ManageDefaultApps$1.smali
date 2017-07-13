.class Lcom/android/exsettings/applications/ManageDefaultApps$1;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ManageDefaultApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ManageDefaultApps;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageDefaultApps$1;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps$1;->this$0:Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageDefaultApps;->-wrap0(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    .line 67
    return-void
.end method
