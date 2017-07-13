.class Lcom/android/exsettings/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/AppNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/AppNotificationSettings;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/exsettings/notification/AppNotificationSettings$5;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings$5;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get2(Lcom/android/exsettings/notification/AppNotificationSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/AppNotificationSettings$5;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get0(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    const/4 v0, 0x1

    return v0
.end method
