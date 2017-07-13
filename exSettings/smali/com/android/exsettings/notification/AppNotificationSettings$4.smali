.class Lcom/android/exsettings/notification/AppNotificationSettings$4;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/AppNotificationSettings;
    .param p2, "val$pkg"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/exsettings/notification/AppNotificationSettings$4;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/exsettings/notification/AppNotificationSettings$4;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 195
    .local v0, "sensitive":Z
    iget-object v1, p0, Lcom/android/exsettings/notification/AppNotificationSettings$4;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get1(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings$4;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings$4;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get3(Lcom/android/exsettings/notification/AppNotificationSettings;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/exsettings/notification/NotificationBackend;->setSensitive(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method
