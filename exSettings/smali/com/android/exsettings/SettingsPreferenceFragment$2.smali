.class Lcom/android/exsettings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/SettingsPreferenceFragment;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/SettingsPreferenceFragment;
    .param p2, "val$listView"    # Landroid/widget/ListView;
    .param p3, "val$position"    # I
    .param p4, "val$highlight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->this$0:Lcom/android/exsettings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$position:I

    iput-object p4, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/exsettings/SettingsPreferenceFragment$2$1;

    iget v2, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$position:I

    iget-object v3, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/exsettings/SettingsPreferenceFragment$2;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/exsettings/SettingsPreferenceFragment$2$1;-><init>(Lcom/android/exsettings/SettingsPreferenceFragment$2;ILandroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V

    .line 261
    const-wide/16 v2, 0x258

    .line 248
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method
