.class Lcom/android/exsettings/profiles/AppGroupConfig$4;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/AppGroupConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/AppGroupConfig;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/exsettings/profiles/AppGroupConfig$4;->this$0:Lcom/android/exsettings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig$4;->this$0:Lcom/android/exsettings/profiles/AppGroupConfig;

    invoke-static {v0}, Lcom/android/exsettings/profiles/AppGroupConfig;->-get1(Lcom/android/exsettings/profiles/AppGroupConfig;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig$4;->this$0:Lcom/android/exsettings/profiles/AppGroupConfig;

    invoke-static {v1}, Lcom/android/exsettings/profiles/AppGroupConfig;->-get0(Lcom/android/exsettings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 304
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig$4;->this$0:Lcom/android/exsettings/profiles/AppGroupConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/profiles/AppGroupConfig;->-set0(Lcom/android/exsettings/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;

    .line 305
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig$4;->this$0:Lcom/android/exsettings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/AppGroupConfig;->finish()V

    .line 302
    return-void
.end method
