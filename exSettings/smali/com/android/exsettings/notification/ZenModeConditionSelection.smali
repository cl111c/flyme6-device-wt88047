.class public Lcom/android/exsettings/notification/ZenModeConditionSelection;
.super Landroid/widget/RadioGroup;
.source "ZenModeConditionSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeConditionSelection$H;,
        Lcom/android/exsettings/notification/ZenModeConditionSelection$1;
    }
.end annotation


# instance fields
.field private mCondition:Landroid/service/notification/Condition;

.field private final mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/exsettings/notification/ZenModeConditionSelection$H;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mNoMan:Landroid/app/INotificationManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeConditionSelection;)Lcom/android/exsettings/notification/ZenModeConditionSelection$H;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mHandler:Lcom/android/exsettings/notification/ZenModeConditionSelection$H;

    return-object v0
.end method

.method private static computeConditionText(Landroid/service/notification/Condition;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 73
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "button":Landroid/widget/RadioButton;
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/android/exsettings/notification/ZenModeConditionSelection$2;

    invoke-direct {v1, p0, v0}, Lcom/android/exsettings/notification/ZenModeConditionSelection$2;-><init>(Lcom/android/exsettings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->addView(Landroid/view/View;)V

    .line 84
    return-object v0
.end method


# virtual methods
.method protected handleCondition(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mConditions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v2, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 117
    .local v0, "v":Landroid/widget/RadioButton;
    iget v2, p1, Landroid/service/notification/Condition;->state:I

    if-eq v2, v1, :cond_1

    iget v2, p1, Landroid/service/notification/Condition;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 118
    :cond_1
    if-nez v0, :cond_2

    .line 119
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;

    move-result-object v0

    .line 122
    :cond_2
    if-eqz v0, :cond_3

    .line 123
    invoke-static {p1}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->computeConditionText(Landroid/service/notification/Condition;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget v2, p1, Landroid/service/notification/Condition;->state:I

    if-ne v2, v1, :cond_4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mConditions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void

    .line 124
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleConditions([Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 109
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 110
    .local v0, "c":Landroid/service/notification/Condition;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->handleCondition(Landroid/service/notification/Condition;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "c":Landroid/service/notification/Condition;
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/RadioGroup;->onAttachedToWindow()V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->requestZenModeConditions(I)V

    .line 88
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeConditionSelection;->requestZenModeConditions(I)V

    .line 94
    return-void
.end method

.method protected requestZenModeConditions(I)V
    .locals 4
    .param p1, "relevance"    # I

    .prologue
    .line 100
    const-string/jumbo v1, "ZenModeConditionSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestZenModeConditions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mListener:Landroid/service/notification/IConditionListener;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected setCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 130
    const-string/jumbo v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeConditionSelection;->mCondition:Landroid/service/notification/Condition;

    .line 129
    return-void
.end method
