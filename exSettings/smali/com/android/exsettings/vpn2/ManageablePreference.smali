.class public Lcom/android/exsettings/vpn2/ManageablePreference;
.super Landroid/preference/Preference;
.source "ManageablePreference.java"


# instance fields
.field mListener:Landroid/view/View$OnClickListener;

.field mManageView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "onManage"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p3, p0, Lcom/android/exsettings/vpn2/ManageablePreference;->mListener:Landroid/view/View$OnClickListener;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/ManageablePreference;->setOrder(I)V

    .line 40
    const v0, 0x7f0400d2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/ManageablePreference;->setWidgetLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    const v0, 0x7f1301b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/exsettings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/exsettings/vpn2/ManageablePreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/exsettings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 44
    return-void
.end method
