.class Lcom/android/exsettings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenAccessSettings;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenAccessSettings;

.field final synthetic val$label:Ljava/lang/CharSequence;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenAccessSettings;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$label"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->this$0:Lcom/android/exsettings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 130
    .local v0, "access":Z
    if-nez v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->this$0:Lcom/android/exsettings/notification/ZenAccessSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenAccessSettings;->-get0(Lcom/android/exsettings/notification/ZenAccessSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/exsettings/notification/ZenAccessSettings;->-wrap1(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 133
    const/4 v1, 0x1

    return v1

    .line 136
    :cond_0
    new-instance v1, Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenAccessSettings$1;->this$0:Lcom/android/exsettings/notification/ZenAccessSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    .line 136
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    return v1
.end method
