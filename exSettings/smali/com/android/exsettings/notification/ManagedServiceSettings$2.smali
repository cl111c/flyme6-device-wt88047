.class Lcom/android/exsettings/notification/ManagedServiceSettings$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ManagedServiceSettings;->updateList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ManagedServiceSettings;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ManagedServiceSettings;
    .param p2, "val$cn"    # Landroid/content/ComponentName;
    .param p3, "val$title"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/exsettings/notification/ManagedServiceSettings$2;->this$0:Lcom/android/exsettings/notification/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/exsettings/notification/ManagedServiceSettings$2;->val$cn:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/exsettings/notification/ManagedServiceSettings$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 114
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/exsettings/notification/ManagedServiceSettings$2;->this$0:Lcom/android/exsettings/notification/ManagedServiceSettings;

    iget-object v2, p0, Lcom/android/exsettings/notification/ManagedServiceSettings$2;->val$cn:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/exsettings/notification/ManagedServiceSettings$2;->val$title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->-wrap0(Lcom/android/exsettings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
