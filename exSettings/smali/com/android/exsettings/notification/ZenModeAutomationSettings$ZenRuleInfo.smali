.class Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZenRuleInfo"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field rule:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;-><init>()V

    return-void
.end method
