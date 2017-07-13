.class public Lcom/android/exsettings/HostnamePreference;
.super Landroid/preference/EditTextPreference;
.source "HostnamePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/HostnamePreference$1;
    }
.end annotation


# instance fields
.field private final DEFAULT_HOSTNAME:Ljava/lang/String;

.field mHostnameInputFilter:Landroid/text/InputFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/HostnamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/HostnamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v1, Lcom/android/exsettings/HostnamePreference$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/HostnamePreference$1;-><init>(Lcom/android/exsettings/HostnamePreference;)V

    iput-object v1, p0, Lcom/android/exsettings/HostnamePreference;->mHostnameInputFilter:Landroid/text/InputFilter;

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    const-string/jumbo v2, "android_id"

    .line 55
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    const-string/jumbo v1, "android-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/HostnamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/android/exsettings/HostnamePreference;->mHostnameInputFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 51
    return-void

    .line 60
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/exsettings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "hostname":Ljava/lang/String;
    const-string/jumbo v1, "(?:\\.|-)+$"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "^(?:\\.|-)+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/exsettings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/HostnamePreference;->setText(Ljava/lang/String;)V

    .line 77
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_1
    return-void

    .line 92
    .restart local v0    # "hostname":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/HostnamePreference;->persistHostname(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public persistHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/HostnamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "device_hostname"

    .line 126
    invoke-static {v0, v1, p1}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const-string/jumbo v0, "HostnamePreference"

    const-string/jumbo v1, "tried to set null hostname, request ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "HostnamePreference"

    const-string/jumbo v1, "setting empty hostname"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/exsettings/HostnamePreference;->persistHostname(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/exsettings/HostnamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    return-void

    .line 107
    :cond_1
    const-string/jumbo v0, "HostnamePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hostname has been set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
