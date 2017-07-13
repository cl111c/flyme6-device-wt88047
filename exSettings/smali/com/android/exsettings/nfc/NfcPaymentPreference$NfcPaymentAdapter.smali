.class Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

.field final synthetic this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/nfc/NfcPaymentPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nfc/NfcPaymentPreference;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->getItem(I)Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v2, p1

    .line 165
    .local v0, "appInfo":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    if-nez p2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-static {v2}, Lcom/android/exsettings/nfc/NfcPaymentPreference;->-get1(Lcom/android/exsettings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 167
    const v3, 0x7f0400a1

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 168
    new-instance v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;)V

    .line 169
    .local v1, "holder":Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    const v2, 0x7f13015a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 170
    const v2, 0x7f130159

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 171
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    :goto_0
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 177
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v3, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 184
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    iget-object v2, v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 187
    return-object p2

    .line 173
    .end local v1    # "holder":Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    goto :goto_0
.end method

.method makeDefault(Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .prologue
    .line 230
    iget-boolean v0, p1, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-static {v0}, Lcom/android/exsettings/nfc/NfcPaymentPreference;->-get2(Lcom/android/exsettings/nfc/NfcPaymentPreference;)Lcom/android/exsettings/nfc/PaymentBackend;

    move-result-object v0

    iget-object v1, p1, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/NfcPaymentPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 229
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 198
    .local v0, "appInfo":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 204
    .local v0, "appInfo":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 202
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 210
    .local v0, "appInfo":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v4, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 211
    const-string/jumbo v4, "NfcPaymentPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LongClick: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v4, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-static {v4}, Lcom/android/exsettings/nfc/NfcPaymentPreference;->-get0(Lcom/android/exsettings/nfc/NfcPaymentPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 214
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 215
    .local v2, "gsmaIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 216
    const-string/jumbo v4, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-static {v4}, Lcom/android/exsettings/nfc/NfcPaymentPreference;->-get0(Lcom/android/exsettings/nfc/NfcPaymentPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2    # "gsmaIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 221
    .restart local v2    # "gsmaIntent":Landroid/content/Intent;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "NfcPaymentPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Settings activity for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateApps([Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0
    .param p1, "appInfos"    # [Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    .param p2, "currentDefault"    # Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 143
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method
