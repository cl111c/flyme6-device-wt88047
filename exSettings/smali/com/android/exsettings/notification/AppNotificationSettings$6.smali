.class Lcom/android/exsettings/notification/AppNotificationSettings$6;
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
    .line 217
    iput-object p1, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 220
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 221
    .local v1, "showOnKeyguard":Z
    iget-object v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get1(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->val$pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v4}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get3(Lcom/android/exsettings/notification/AppNotificationSettings;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exsettings/notification/NotificationBackend;->getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, "keyguard":I
    if-eqz v1, :cond_0

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 224
    or-int/lit8 v0, v0, 0x1

    .line 228
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get1(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->val$pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings$6;->this$0:Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-static {v4}, Lcom/android/exsettings/notification/AppNotificationSettings;->-get3(Lcom/android/exsettings/notification/AppNotificationSettings;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/exsettings/notification/NotificationBackend;->setShowNotificationForPackageOnKeyguard(Ljava/lang/String;II)Z

    move-result v2

    return v2

    .line 226
    :cond_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
