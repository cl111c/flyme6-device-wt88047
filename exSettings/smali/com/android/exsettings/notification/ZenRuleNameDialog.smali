.class public abstract Lcom/android/exsettings/notification/ZenRuleNameDialog;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;,
        Lcom/android/exsettings/notification/ZenRuleNameDialog$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mEditText:Landroid/widget/EditText;

.field private final mExistingNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalRules:[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

.field private final mIsNew:Z

.field private final mOriginalRuleName:Ljava/lang/String;

.field private final mOriginalTint:Landroid/content/res/ColorStateList;

.field private final mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

.field private final mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

.field private final mTypes:Landroid/widget/RadioGroup;

.field private final mWarning:Landroid/view/View;

.field private final mWarningTint:Landroid/content/res/ColorStateList;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mIsNew:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ServiceListing$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->selectedRuleInfo()Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindExternalRules()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->updatePositiveButtonAndWarning()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeSettings;->DEBUG:Z

    sput-boolean v0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->DEBUG:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceListing"    # Lcom/android/exsettings/notification/ServiceListing;
    .param p3, "ruleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/exsettings/notification/ServiceListing;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "existingNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    .line 203
    new-instance v4, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

    .line 64
    iput-object p2, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    .line 65
    if-nez p3, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mIsNew:Z

    .line 66
    iput-object p3, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/String;

    .line 67
    const v4, 0x7f0e0090

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mWarningTint:Landroid/content/res/ColorStateList;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f04015f

    invoke-virtual {v4, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f1302ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    .line 70
    const v4, 0x7f1302eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mWarning:Landroid/view/View;

    .line 71
    iget-boolean v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mIsNew:Z

    if-nez v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x1010435

    invoke-virtual {v4, v6, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mOriginalTint:Landroid/content/res/ColorStateList;

    .line 77
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 78
    const v4, 0x7f1302ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mTypes:Landroid/widget/RadioGroup;

    .line 79
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    if-eqz v4, :cond_2

    .line 80
    invoke-static {}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->defaultNewSchedule()Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    const v5, 0x7f1302ed

    invoke-direct {p0, v5, v4}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindType(ILcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 81
    invoke-static {}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->defaultNewEvent()Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    const v5, 0x7f1302ee

    invoke-direct {p0, v5, v4}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindType(ILcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 82
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindExternalRules()V

    .line 83
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    iget-object v5, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

    invoke-virtual {v4, v5}, Lcom/android/exsettings/notification/ServiceListing;->addCallback(Lcom/android/exsettings/notification/ServiceListing$Callback;)V

    .line 84
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v4}, Lcom/android/exsettings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 88
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    iget-boolean v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mIsNew:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0c0eb0

    .line 88
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 91
    new-instance v5, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;

    invoke-direct {v5, p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;-><init>(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V

    const v6, 0x7f0c05d7

    .line 88
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 102
    new-instance v5, Lcom/android/exsettings/notification/ZenRuleNameDialog$3;

    invoke-direct {v5, p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog$3;-><init>(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V

    .line 88
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 110
    const v5, 0x7f0c05d6

    .line 88
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    .line 112
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/exsettings/notification/ZenRuleNameDialog$4;

    invoke-direct {v5, p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog$4;-><init>(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExistingNames:Landroid/util/ArraySet;

    .line 129
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "existingName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "existingName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExistingNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v0    # "existingName":Ljava/lang/String;
    .end local v1    # "existingName$iterator":Ljava/util/Iterator;
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    move v4, v6

    .line 65
    goto/16 :goto_0

    .line 86
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    .restart local v3    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mTypes:Landroid/widget/RadioGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_1

    .line 89
    :cond_3
    const v4, 0x7f0c0ead

    goto :goto_2

    .line 63
    .restart local v1    # "existingName$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private bindExternalRules()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v1, 0x7f1302ef

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindType(ILcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const v1, 0x7f1302f0

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindType(ILcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const v1, 0x7f1302f1

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->bindType(ILcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 197
    return-void
.end method

.method private bindType(ILcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "ri"    # Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mTypes:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 143
    .local v0, "rb":Landroid/widget/RadioButton;
    if-nez p2, :cond_0

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 145
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 148
    iget-object v1, p2, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->caption:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p2, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method private static defaultNewEvent()Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 189
    .local v0, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 190
    const/4 v2, 0x0

    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 191
    new-instance v1, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v1}, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 192
    .local v1, "rt":Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    const-string/jumbo v2, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    iput-object v2, v1, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 194
    return-object v1
.end method

.method private static defaultNewSchedule()Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 177
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 178
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 179
    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 180
    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 181
    new-instance v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 182
    .local v0, "rt":Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    const-string/jumbo v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 183
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 184
    return-object v0
.end method

.method private selectedRuleInfo()Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mTypes:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 156
    .local v0, "id":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mTypes:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 158
    .local v1, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    return-object v2
.end method

.method private trimmedText()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePositiveButtonAndWarning()V
    .locals 5

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mExistingNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 170
    .local v2, "validName":Z
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 172
    .local v1, "showWarning":Z
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mWarning:Landroid/view/View;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mWarningTint:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 165
    return-void

    .line 168
    .end local v1    # "showWarning":Z
    .end local v2    # "validName":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "validName":Z
    goto :goto_0

    .line 169
    .end local v2    # "validName":Z
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "validName":Z
    goto :goto_0

    .line 167
    .end local v2    # "validName":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "validName":Z
    goto :goto_0

    .line 171
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "showWarning":Z
    goto :goto_1

    .line 172
    :cond_5
    const/4 v3, 0x4

    goto :goto_2

    .line 173
    :cond_6
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mOriginalTint:Landroid/content/res/ColorStateList;

    goto :goto_3
.end method


# virtual methods
.method public abstract onOk(Ljava/lang/String;Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V
.end method

.method public show()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->updatePositiveButtonAndWarning()V

    .line 136
    return-void
.end method
