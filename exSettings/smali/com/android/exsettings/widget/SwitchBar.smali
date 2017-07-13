.class public Lcom/android/exsettings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;,
        Lcom/android/exsettings/widget/SwitchBar$SavedState;
    }
.end annotation


# static fields
.field private static MARGIN_ATTRIBUTES:[I


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mStateOffLabel:I

.field private mStateOnLabel:I

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f010032

    const v1, 0x7f010033

    .line 65
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v8, 0x7f0c0ee9

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v4, 0x7f0c0ee8

    iput v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mStateOnLabel:I

    .line 60
    iput v8, p0, Lcom/android/exsettings/widget/SwitchBar;->mStateOffLabel:I

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iput-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040131

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    sget-object v4, Lcom/android/exsettings/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v3, v4

    .line 87
    .local v3, "switchBarMarginStart":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 88
    .local v2, "switchBarMarginEnd":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    const v4, 0x7f130242

    invoke-virtual {p0, v4}, Lcom/android/exsettings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 92
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/android/exsettings/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v6, 0x7f0d005b

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 93
    invoke-direct {p0}, Lcom/android/exsettings/widget/SwitchBar;->updateText()V

    .line 94
    iget-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 97
    const v4, 0x7f130243

    invoke-virtual {p0, v4}, Lcom/android/exsettings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/widget/ToggleSwitch;

    iput-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    .line 100
    iget-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v4, v7}, Lcom/android/exsettings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 101
    iget-object v4, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/exsettings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 104
    new-instance v4, Lcom/android/exsettings/widget/SwitchBar$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/widget/SwitchBar$1;-><init>(Lcom/android/exsettings/widget/SwitchBar;)V

    invoke-virtual {p0, v4}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/exsettings/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/exsettings/widget/SwitchBar;->setVisibility(I)V

    .line 80
    return-void
.end method

.method private updateText()V
    .locals 5

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/exsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 141
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/exsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 142
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 143
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public final getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/SwitchBar;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 205
    invoke-virtual {p0, p2}, Lcom/android/exsettings/widget/SwitchBar;->propagateChecked(Z)V

    .line 204
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 193
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 191
    return-void

    .line 192
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isChecked":Z
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 289
    check-cast v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;

    .line 291
    .local v0, "ss":Lcom/android/exsettings/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    iget-object v1, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 294
    iget v1, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->resOnLabel:I

    invoke-virtual {p0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setOnStateOnLabel(I)V

    .line 295
    iget v1, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->resOffLabel:I

    invoke-virtual {p0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setOnStateOffLabel(I)V

    .line 296
    iget-boolean v1, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 297
    iget-boolean v1, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/exsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->requestLayout()V

    .line 288
    return-void

    .line 297
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 298
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 279
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/exsettings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 280
    .local v0, "ss":Lcom/android/exsettings/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/exsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->checked:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->visible:Z

    .line 282
    iget v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mStateOnLabel:I

    iput v2, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->resOnLabel:I

    .line 283
    iget v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mStateOffLabel:I

    iput v2, v0, Lcom/android/exsettings/widget/SwitchBar$SavedState;->resOffLabel:I

    .line 284
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ToggleSwitch;->setChecked(Z)V

    .line 148
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 153
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method public setOnStateOffLabel(I)V
    .locals 0
    .param p1, "stringRes"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/exsettings/widget/SwitchBar;->mStateOffLabel:I

    .line 121
    return-void
.end method

.method public setOnStateOnLabel(I)V
    .locals 0
    .param p1, "stringRes"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/exsettings/widget/SwitchBar;->mStateOnLabel:I

    .line 117
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 127
    if-eqz p1, :cond_0

    const v0, 0x7f0c0ee8

    .line 126
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/android/exsettings/widget/SwitchBar;->updateText()V

    .line 125
    return-void

    .line 127
    :cond_0
    const v0, 0x7f0c0ee9

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/SwitchBar;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/widget/SwitchBar;->mSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    :cond_0
    return-void
.end method
