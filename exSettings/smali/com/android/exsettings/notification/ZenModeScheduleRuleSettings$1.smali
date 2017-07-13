.class Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$1;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$1;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->-wrap0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
