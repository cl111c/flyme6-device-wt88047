.class public Lcom/android/exsettings/notificationlight/LightSettingsDialog;
.super Landroid/app/AlertDialog;
.source "LightSettingsDialog.java"

# interfaces
.implements Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;,
        Lcom/android/exsettings/notificationlight/LightSettingsDialog$1;,
        Lcom/android/exsettings/notificationlight/LightSettingsDialog$2;
    }
.end annotation


# instance fields
.field private mColorPanel:Landroid/widget/LinearLayout;

.field private mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

.field private mHexColorInput:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLedHandler:Landroid/os/Handler;

.field private mLedLastColor:I

.field private mLedLastSpeedOff:I

.field private mLedLastSpeedOn:I

.field private mLightsDialogDivider:Landroid/view/View;

.field private mListener:Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Lcom/android/exsettings/notificationlight/ColorPanelView;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPulseSpeedOff:Landroid/widget/Spinner;

.field private mPulseSpeedOn:Landroid/widget/Spinner;

.field private mReadyForLed:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I
    .param p3, "initialSpeedOn"    # I
    .param p4, "initialSpeedOff"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v0, Lcom/android/exsettings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V

    .line 184
    iput-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 264
    new-instance v0, Lcom/android/exsettings/notificationlight/LightSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog$2;-><init>(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->init(Landroid/content/Context;IIIZ)V

    .line 102
    return-void
.end method

.method private init(Landroid/content/Context;IIIZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "speedOn"    # I
    .param p4, "speedOff"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 111
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 110
    iput-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iput-boolean v1, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    .line 114
    iput v1, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 117
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 118
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->setUp(IIIZ)V

    .line 109
    return-void
.end method

.method private setUp(IIIZ)V
    .locals 8
    .param p1, "color"    # I
    .param p2, "speedOn"    # I
    .param p3, "speedOff"    # I
    .param p4, "onOffChangeable"    # Z

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 130
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 131
    const-string/jumbo v4, "layout_inflater"

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04005a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "layout":Landroid/view/View;
    const v3, 0x7f1300d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/notificationlight/ColorPickerView;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    .line 135
    const v3, 0x7f1300d2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPanel:Landroid/widget/LinearLayout;

    .line 136
    const v3, 0x7f1300d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    .line 137
    const v3, 0x7f1300d4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/notificationlight/ColorPanelView;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/exsettings/notificationlight/ColorPanelView;

    .line 138
    const v3, 0x7f1300d6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLightsDialogDivider:Landroid/view/View;

    .line 139
    const v3, 0x7f1300d7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    .line 140
    const v3, 0x7f1300d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    .line 142
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, p0}, Lcom/android/exsettings/notificationlight/ColorPickerView;->setOnColorChangedListener(Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;)V

    .line 143
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, p1, v7}, Lcom/android/exsettings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 145
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    if-eqz p4, :cond_1

    .line 148
    new-instance v1, Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 149
    const v4, 0x7f0a0080

    .line 150
    const v5, 0x7f0a0081

    .line 148
    invoke-direct {v1, p0, v4, v5, v3}, Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/exsettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 152
    .local v1, "pulseSpeedAdapter":Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 153
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 154
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 156
    new-instance v1, Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    .line 158
    .end local v1    # "pulseSpeedAdapter":Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 156
    const v4, 0x7f0a0082

    .line 157
    const v5, 0x7f0a0083

    .line 156
    invoke-direct {v1, p0, v4, v5, v3}, Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/exsettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 159
    .restart local v1    # "pulseSpeedAdapter":Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 160
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 161
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 167
    .end local v1    # "pulseSpeedAdapter":Lcom/android/exsettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v3, p4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    if-eq p2, v7, :cond_2

    .end local p4    # "onOffChangeable":Z
    :goto_1
    invoke-virtual {v3, p4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->setView(Landroid/view/View;)V

    .line 171
    const v3, 0x7f0c010a

    invoke-virtual {p0, v3}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->setTitle(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    const v4, 0x1120048

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, v6}, Lcom/android/exsettings/notificationlight/ColorPickerView;->setVisibility(I)V

    .line 176
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLightsDialogDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_0
    iput-boolean v7, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    .line 181
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 129
    return-void

    .line 163
    .restart local p4    # "onOffChangeable":Z
    :cond_1
    const v3, 0x7f1300d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "speedSettingsGroup":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 168
    .end local v2    # "speedSettingsGroup":Landroid/view/View;
    :cond_2
    const/4 p4, 0x0

    goto :goto_1
.end method

.method private updateLed()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 271
    iget-boolean v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    if-nez v5, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v5

    const v6, 0xffffff

    and-int v2, v5, v6

    .line 277
    .local v2, "color":I
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v4

    .line 279
    .local v4, "speedOn":I
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v3

    .line 285
    .local v3, "speedOff":I
    :goto_0
    iget v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    if-ne v5, v2, :cond_2

    iget v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    if-ne v5, v4, :cond_2

    .line 286
    iget v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    if-ne v5, v3, :cond_2

    .line 287
    return-void

    .line 281
    .end local v3    # "speedOff":I
    .end local v4    # "speedOn":I
    :cond_1
    const/4 v4, 0x1

    .line 282
    .restart local v4    # "speedOn":I
    const/4 v3, 0x0

    .restart local v3    # "speedOff":I
    goto :goto_0

    .line 291
    :cond_2
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    return-void

    .line 294
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    iput v2, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 297
    iput v4, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    .line 298
    iput v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "android.forceShowLights"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 305
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 308
    const v5, 0x7f0200a1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 309
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c012f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 310
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0130

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 311
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 313
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 270
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 414
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "hexColor":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v3}, Lcom/android/exsettings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, v0}, Lcom/android/exsettings/notificationlight/ColorPickerView;->setColor(I)V

    .line 422
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/exsettings/notificationlight/ColorPanelView;

    invoke-virtual {v3, v0}, Lcom/android/exsettings/notificationlight/ColorPanelView;->setColor(I)V

    .line 423
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 424
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v3, v0}, Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "color":I
    :cond_1
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 405
    return-void
.end method

.method public dismissLed()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 316
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getPulseSpeedOff()I
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPulseSpeedOn()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onColorChanged(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v3}, Lcom/android/exsettings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v1

    .line 227
    .local v1, "hasAlpha":Z
    if-eqz v1, :cond_1

    const-string/jumbo v0, "%08x"

    .line 228
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    .line 230
    .local v2, "mask":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/exsettings/notificationlight/ColorPanelView;

    invoke-virtual {v3, p1}, Lcom/android/exsettings/notificationlight/ColorPanelView;->setColor(I)V

    .line 231
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v3, p1}, Lcom/android/exsettings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 225
    return-void

    .line 227
    .end local v0    # "format":Ljava/lang/String;
    .end local v2    # "mask":I
    :cond_1
    const-string/jumbo v0, "%06x"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_2
    const v2, 0xffffff

    .restart local v2    # "mask":I
    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 435
    if-nez p2, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 438
    const-string/jumbo v2, "input_method"

    .line 437
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 439
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 434
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    const-string/jumbo v1, "LightSettingsDialog:color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 207
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "LightSettingsDialog:color"

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 221
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 219
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 215
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->dismissLed()V

    .line 213
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 409
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/exsettings/notificationlight/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 240
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method
