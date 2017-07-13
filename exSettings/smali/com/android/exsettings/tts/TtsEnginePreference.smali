.class public Lcom/android/exsettings/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;,
        Lcom/android/exsettings/tts/TtsEnginePreference$1;
    }
.end annotation


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSettingsActivity:Lcom/android/exsettings/SettingsActivity;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/tts/TtsEnginePreference;)Lcom/android/exsettings/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsActivity:Lcom/android/exsettings/SettingsActivity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/android/exsettings/SettingsActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/speech/tts/TextToSpeech$EngineInfo;
    .param p3, "state"    # Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;
    .param p4, "prefActivity"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/android/exsettings/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/tts/TtsEnginePreference$1;-><init>(Lcom/android/exsettings/tts/TtsEnginePreference;)V

    .line 89
    iput-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 100
    const v0, 0x7f0400cf

    invoke-virtual {p0, v0}, Lcom/android/exsettings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 102
    iput-object p3, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 103
    iput-object p4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsActivity:Lcom/android/exsettings/SettingsActivity;

    .line 104
    iput-object p2, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 107
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8
    .param p1, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v7, 0x1

    .line 198
    const-string/jumbo v2, "TtsEnginePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/android/exsettings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 203
    iget-object v5, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0c0be4

    .line 202
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 205
    const v3, 0x104000a

    .line 201
    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 206
    const/high16 v3, 0x1040000

    .line 201
    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 209
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 197
    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/exsettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 217
    :cond_0
    return-void

    .line 220
    :cond_1
    if-eqz p2, :cond_3

    .line 222
    invoke-direct {p0}, Lcom/android/exsettings/tts/TtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lcom/android/exsettings/tts/TtsEnginePreference$4;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/tts/TtsEnginePreference$4;-><init>(Lcom/android/exsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    .line 228
    new-instance v1, Lcom/android/exsettings/tts/TtsEnginePreference$5;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettings/tts/TtsEnginePreference$5;-><init>(Lcom/android/exsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/tts/TtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 214
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/exsettings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v6, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    .line 114
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "view":Landroid/view/View;
    const v6, 0x7f1301a9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 120
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/exsettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v7}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 124
    iget-object v6, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v1}, Lcom/android/exsettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 127
    :cond_1
    iput-boolean v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    iput-boolean v5, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 131
    iput-object v1, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 133
    const v6, 0x7f1301aa

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "textLayout":Landroid/view/View;
    new-instance v6, Lcom/android/exsettings/tts/TtsEnginePreference$2;

    invoke-direct {v6, p0, v1}, Lcom/android/exsettings/tts/TtsEnginePreference$2;-><init>(Lcom/android/exsettings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v6, 0x7f1301ab

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 144
    iget-object v6, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    if-nez v0, :cond_2

    .line 146
    iget-object v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/exsettings/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/exsettings/tts/TtsEnginePreference$3;-><init>(Lcom/android/exsettings/tts/TtsEnginePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v5, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    :cond_3
    return-object v3

    :cond_4
    move v4, v5

    .line 144
    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
