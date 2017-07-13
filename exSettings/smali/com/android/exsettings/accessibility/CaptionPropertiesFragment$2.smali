.class Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/exsettings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/exsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 241
    const-string/jumbo v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 240
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 246
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 241
    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
