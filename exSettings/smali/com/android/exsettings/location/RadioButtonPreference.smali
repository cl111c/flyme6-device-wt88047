.class public Lcom/android/exsettings/location/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/location/RadioButtonPreference;->mListener:Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;

    .line 46
    const v0, 0x7f0400d3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/location/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 72
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 75
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/exsettings/location/RadioButtonPreference;->mListener:Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/exsettings/location/RadioButtonPreference;->mListener:Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/exsettings/location/RadioButtonPreference;)V

    .line 62
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/exsettings/location/RadioButtonPreference;->mListener:Lcom/android/exsettings/location/RadioButtonPreference$OnClickListener;

    .line 57
    return-void
.end method
