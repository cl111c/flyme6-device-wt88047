.class Lcom/android/exsettings/notification/ZenModeConditionSelection$2;
.super Ljava/lang/Object;
.source "ZenModeConditionSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModeConditionSelection;->newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeConditionSelection;

.field final synthetic val$button:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeConditionSelection;
    .param p2, "val$button"    # Landroid/widget/RadioButton;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection$2;->this$0:Lcom/android/exsettings/notification/ZenModeConditionSelection;

    iput-object p2, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection$2;->val$button:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection$2;->this$0:Lcom/android/exsettings/notification/ZenModeConditionSelection;

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection$2;->val$button:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->setCondition(Landroid/service/notification/Condition;)V

    .line 77
    :cond_0
    return-void
.end method
