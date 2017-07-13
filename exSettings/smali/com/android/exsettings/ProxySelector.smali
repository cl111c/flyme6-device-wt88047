.class public Lcom/android/exsettings/ProxySelector;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/exsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ProxySelector$1;,
        Lcom/android/exsettings/ProxySelector$2;,
        Lcom/android/exsettings/ProxySelector$3;,
        Lcom/android/exsettings/ProxySelector$4;
    }
.end annotation


# instance fields
.field mClearButton:Landroid/widget/Button;

.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultButton:Landroid/widget/Button;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field private mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field mExclusionListField:Landroid/widget/EditText;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 243
    new-instance v0, Lcom/android/exsettings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ProxySelector$1;-><init>(Lcom/android/exsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    .line 251
    new-instance v0, Lcom/android/exsettings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ProxySelector$2;-><init>(Lcom/android/exsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/android/exsettings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ProxySelector$3;-><init>(Lcom/android/exsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    .line 266
    new-instance v0, Lcom/android/exsettings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ProxySelector$4;-><init>(Lcom/android/exsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 46
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    const v0, 0x7f1301c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    const v0, 0x7f1301c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    const v0, 0x7f1301c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    const v0, 0x7f1301c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f1301ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mClearButton:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f1301cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v0, "ProxySelector"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v0, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/exsettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    const-string/jumbo v0, "ProxySelector"

    const-string/jumbo v1, "Unknown proxy settings error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, -0x1

    return v0

    .line 187
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 189
    :pswitch_1
    const v0, 0x7f0c0596

    return v0

    .line 191
    :pswitch_2
    const v0, 0x7f0c0593

    return v0

    .line 193
    :pswitch_3
    const v0, 0x7f0c0595

    return v0

    .line 195
    :pswitch_4
    const v0, 0x7f0c0597

    return v0

    .line 197
    :pswitch_5
    const v0, 0x7f0c0594

    return v0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x52

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 82
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 84
    .local v1, "userSetGlobalProxy":Z
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 86
    iget-object v2, p0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    iget-object v2, p0, Lcom/android/exsettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/android/exsettings/ProxySelector;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object v2, p0, Lcom/android/exsettings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    return-void

    .line 82
    .end local v1    # "userSetGlobalProxy":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "userSetGlobalProxy":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v4, p0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "hostname":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "portStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "exclList":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v3, v0}, Lcom/android/exsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    const v5, 0x7f0c0591

    .line 102
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 104
    const v5, 0x7f0c0592

    .line 102
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 108
    .end local v0    # "exclList":Ljava/lang/String;
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "portStr":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const v0, 0x7f0400e9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ProxySelector;->mView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/exsettings/ProxySelector;->initView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->populateFields()V

    .line 73
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method

.method populateFields()V
    .locals 12

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v4, ""

    .line 143
    .local v4, "hostname":Ljava/lang/String;
    const/4 v6, -0x1

    .line 144
    .local v6, "port":I
    const-string/jumbo v3, ""

    .line 147
    .local v3, "exclList":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 149
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    .line 150
    .local v8, "proxy":Landroid/net/ProxyInfo;
    if-eqz v8, :cond_0

    .line 151
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    .line 153
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_0
    if-nez v4, :cond_1

    .line 157
    const-string/jumbo v4, ""

    .line 160
    :cond_1
    iget-object v10, p0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v10, -0x1

    if-ne v6, v10, :cond_4

    const-string/jumbo v7, ""

    .line 163
    .local v7, "portStr":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v10, p0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 169
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "button-label"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "buttonLabel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 171
    iget-object v10, p0, Lcom/android/exsettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    const-string/jumbo v10, "title"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 176
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    :cond_3
    return-void

    .line 162
    .end local v1    # "buttonLabel":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "portStr":Ljava/lang/String;
    goto :goto_0
.end method

.method saveToDb()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 210
    iget-object v8, p0, Lcom/android/exsettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "hostname":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/exsettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "portStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/exsettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "exclList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 215
    .local v5, "port":I
    invoke-static {v3, v6, v2}, Lcom/android/exsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 216
    .local v7, "result":I
    if-eqz v7, :cond_0

    .line 217
    invoke-direct {p0, v9}, Lcom/android/exsettings/ProxySelector;->showDialog(I)V

    .line 218
    return v9

    .line 221
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 223
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 229
    :cond_1
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v3, v5, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    .local v4, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 240
    const/4 v8, 0x1

    return v8

    .line 224
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "p":Landroid/net/ProxyInfo;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Ljava/lang/NumberFormatException;
    return v9
.end method
