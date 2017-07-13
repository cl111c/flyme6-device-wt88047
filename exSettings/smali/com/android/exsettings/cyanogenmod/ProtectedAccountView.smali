.class public Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;
.super Landroid/widget/LinearLayout;
.source "ProtectedAccountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
    }
.end annotation


# instance fields
.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mNotifyAccountResetCb:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mNotifyAccountResetCb:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "st"    # Landroid/util/AttributeSet;
    .param p3, "ds"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 81
    return-void
.end method

.method private asyncCheckPassword()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "login":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "password":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 237
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V

    .line 239
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v2, "options":Landroid/os/Bundle;
    const-string/jumbo v0, "password"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 245
    new-instance v4, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;

    invoke-direct {v4, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)V

    .line 265
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v3

    .line 244
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 233
    return-void
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 13
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x40

    const/4 v8, 0x0

    .line 197
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string/jumbo v9, "com.google"

    .line 198
    new-instance v10, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 197
    invoke-virtual {v7, v9, v10}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 204
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 205
    .local v3, "bestAccount":Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 206
    .local v4, "bestScore":I
    array-length v9, v2

    move v7, v8

    .end local v3    # "bestAccount":Landroid/accounts/Account;
    :goto_0
    if-ge v7, v9, :cond_6

    aget-object v0, v2, v7

    .line 207
    .local v0, "a":Landroid/accounts/Account;
    const/4 v6, 0x0

    .line 208
    .local v6, "score":I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 209
    const/4 v6, 0x4

    .line 223
    :cond_0
    :goto_1
    if-le v6, v4, :cond_5

    .line 224
    move-object v3, v0

    .line 225
    .local v3, "bestAccount":Landroid/accounts/Account;
    move v4, v6

    .line 206
    .end local v3    # "bestAccount":Landroid/accounts/Account;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 210
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    const/4 v6, 0x3

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 213
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 214
    .local v5, "i":I
    if-ltz v5, :cond_0

    .line 215
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "aUsername":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 217
    const/4 v6, 0x2

    goto :goto_1

    .line 218
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 219
    const/4 v6, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "aUsername":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_5
    if-ne v6, v4, :cond_1

    .line 227
    const/4 v3, 0x0

    .local v3, "bestAccount":Landroid/accounts/Account;
    goto :goto_2

    .line 230
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v3    # "bestAccount":Landroid/accounts/Account;
    .end local v6    # "score":I
    :cond_6
    return-object v3
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 271
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 272
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0332

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 276
    const/16 v1, 0x7d9

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$1;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public clearFocusOnInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 118
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 122
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 124
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->asyncCheckPassword()V

    .line 140
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    const v0, 0x7f1301c3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v2}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 93
    const v0, 0x7f1301c4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f1301c5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mOk:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->reset()V

    .line 88
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    return-void
.end method

.method public setOnNotifyAccountResetCb(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->mNotifyAccountResetCb:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    .line 112
    return-void
.end method
