.class public Lcom/android/exsettings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/accounts/AddAccountSettings$1;
    }
.end annotation


# instance fields
.field private mAddAccountCalled:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    new-instance v0, Lcom/android/exsettings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/accounts/AddAccountSettings$1;-><init>(Lcom/android/exsettings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 60
    return-void
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 199
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v9, "identityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "SHOULDN\'T RESOLVE!"

    const-string/jumbo v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-static {p0, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 215
    const-string/jumbo v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string/jumbo v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/exsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 223
    iget-object v6, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 225
    iget-object v8, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    .line 217
    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 198
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 172
    :pswitch_0
    if-nez p2, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/exsettings/accounts/AddAccountSettings;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    .line 175
    return-void

    .line 178
    :cond_0
    const-string/jumbo v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/exsettings/accounts/AddAccountSettings;->setResult(I)V

    .line 182
    iget-object v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 184
    iput-object v1, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v4, "AddAccountCalled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 135
    const-string/jumbo v4, "AccountSettings"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AccountSettings"

    const-string/jumbo v5, "restored"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 139
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 140
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 139
    invoke-static {v4, v3, v6, v5}, Lcom/android/exsettings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 141
    const-string/jumbo v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    const v4, 0x7f0c0d95

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    .line 146
    return-void

    .line 148
    :cond_1
    iget-boolean v4, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v4, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    .line 151
    return-void

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "authorities"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "authorities":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "account_types"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/exsettings/accounts/ChooseAccountActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 159
    const-string/jumbo v4, "authorities"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_3
    if-eqz v0, :cond_4

    .line 162
    const-string/jumbo v4, "account_types"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_4
    const-string/jumbo v4, "android.intent.extra.USER"

    iget-object v5, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v2, v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string/jumbo v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/exsettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const-string/jumbo v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccountSettings"

    const-string/jumbo v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-void
.end method
