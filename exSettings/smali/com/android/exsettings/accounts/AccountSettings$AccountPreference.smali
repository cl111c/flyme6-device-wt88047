.class Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exsettings/accounts/AccountSettings;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/accounts/AccountSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "titleResPackageName"    # Ljava/lang/String;
    .param p5, "titleResId"    # I
    .param p6, "fragment"    # Ljava/lang/String;
    .param p7, "fragmentArguments"    # Landroid/os/Bundle;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    .line 496
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 497
    iput-object p3, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 498
    iput-object p4, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 499
    iput p5, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    .line 500
    iput-object p6, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    .line 501
    iput-object p7, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 502
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    .line 504
    invoke-virtual {p0, p3}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {p0, p8}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-virtual {p0, p0}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 495
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 514
    iget-object v5, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 515
    iget v6, p0, Lcom/android/exsettings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    .line 513
    invoke-static/range {v0 .. v7}, Lcom/android/exsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    .line 516
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_0
    return v4
.end method
