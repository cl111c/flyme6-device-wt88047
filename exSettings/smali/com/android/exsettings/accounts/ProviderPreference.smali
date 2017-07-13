.class public Lcom/android/exsettings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/android/exsettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p3}, Lcom/android/exsettings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 36
    invoke-virtual {p0, p4}, Lcom/android/exsettings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
