.class public Lcom/android/internal/util/nx/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V
    .locals 10
    .param p0, "keycode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 269
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p0

    move v8, v6

    .line 270
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 272
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 273
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 274
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 268
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string/jumbo v0, "**home**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string/jumbo v0, "**back**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 231
    const-string/jumbo v0, "**search**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 232
    const-string/jumbo v0, "**menu**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 233
    const-string/jumbo v0, "**menu_big**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 234
    const-string/jumbo v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    if-eqz v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/nx/Action;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 53
    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z
    .param p3, "collapseShade"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    const-string/jumbo v14, "**null**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 61
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v8, 0x0

    .line 67
    .local v8, "isKeyguardShowing":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 73
    .end local v8    # "isKeyguardShowing":Z
    :goto_0
    const-string/jumbo v14, "statusbar"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 72
    invoke-static {v14}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 74
    .local v3, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v3, :cond_2

    .line 75
    return-void

    .line 68
    .end local v3    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v8    # "isKeyguardShowing":Z
    :catch_0
    move-exception v5

    .line 69
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "Action"

    const-string/jumbo v15, "Error getting window manager service"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 79
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v8    # "isKeyguardShowing":Z
    .restart local v3    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    const-string/jumbo v14, "**home**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 80
    const/4 v14, 0x3

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 81
    return-void

    .line 82
    :cond_3
    const-string/jumbo v14, "**back**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 83
    const/4 v14, 0x4

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 84
    return-void

    .line 85
    :cond_4
    const-string/jumbo v14, "**search**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 86
    const/16 v14, 0x54

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 87
    return-void

    .line 88
    :cond_5
    const-string/jumbo v14, "**menu**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 89
    const-string/jumbo v14, "**menu_big**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 88
    if-eqz v14, :cond_7

    .line 90
    :cond_6
    const/16 v14, 0x52

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 91
    return-void

    .line 92
    :cond_7
    const-string/jumbo v14, "**ime_nav_left**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 93
    const/16 v14, 0x15

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 94
    return-void

    .line 95
    :cond_8
    const-string/jumbo v14, "**ime_nav_right**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 96
    const/16 v14, 0x16

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 97
    return-void

    .line 98
    :cond_9
    const-string/jumbo v14, "**ime_nav_up**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 99
    const/16 v14, 0x13

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 100
    return-void

    .line 101
    :cond_a
    const-string/jumbo v14, "**ime_nav_down**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 102
    const/16 v14, 0x14

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->triggerVirtualKeypress(IZ)V

    .line 103
    return-void

    .line 104
    :cond_b
    const-string/jumbo v14, "**power**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 105
    const-string/jumbo v14, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 106
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 107
    return-void

    .line 108
    .end local v9    # "pm":Landroid/os/PowerManager;
    :cond_c
    const-string/jumbo v14, "**ime**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 109
    if-eqz v8, :cond_d

    .line 110
    return-void

    .line 113
    :cond_d
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v15, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v15, Landroid/os/UserHandle;

    const/16 v16, -0x2

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 115
    return-void

    .line 116
    :cond_e
    const-string/jumbo v14, "**voice_search**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 118
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    :try_start_1
    const-string/jumbo v14, "search"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    .line 125
    .local v11, "searchManager":Landroid/app/SearchManager;
    if-eqz v11, :cond_f

    .line 126
    invoke-virtual {v11}, Landroid/app/SearchManager;->stopSearch()V

    .line 128
    :cond_f
    move-object/from16 v0, p0

    invoke-static {v0, v7, v3, v8}, Lcom/android/internal/util/nx/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v11    # "searchManager":Landroid/app/SearchManager;
    :goto_1
    return-void

    .line 129
    :catch_1
    move-exception v4

    .line 130
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v14, "SlimActions:"

    const-string/jumbo v15, "No activity to handle assist long press action."

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 133
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_10
    const-string/jumbo v14, "**ring_vib**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 134
    const-string/jumbo v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 135
    .local v2, "am":Landroid/media/AudioManager;
    if-eqz v2, :cond_11

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 136
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    .line 137
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 138
    const-string/jumbo v14, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 139
    .local v13, "vib":Landroid/os/Vibrator;
    if-eqz v13, :cond_11

    .line 140
    const-wide/16 v14, 0x32

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 152
    .end local v13    # "vib":Landroid/os/Vibrator;
    :cond_11
    :goto_2
    return-void

    .line 143
    :cond_12
    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 144
    new-instance v12, Landroid/media/ToneGenerator;

    .line 145
    const/4 v14, 0x5

    .line 146
    const/16 v15, 0x55

    .line 144
    invoke-direct {v12, v14, v15}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 147
    .local v12, "tg":Landroid/media/ToneGenerator;
    if-eqz v12, :cond_11

    .line 148
    const/16 v14, 0x18

    invoke-virtual {v12, v14}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_2

    .line 153
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v12    # "tg":Landroid/media/ToneGenerator;
    :cond_13
    const-string/jumbo v14, "**ring_silent**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 154
    const-string/jumbo v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 155
    .restart local v2    # "am":Landroid/media/AudioManager;
    if-eqz v2, :cond_14

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 156
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    if-eqz v14, :cond_15

    .line 157
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 168
    :cond_14
    :goto_3
    return-void

    .line 159
    :cond_15
    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 160
    new-instance v12, Landroid/media/ToneGenerator;

    .line 161
    const/4 v14, 0x5

    .line 162
    const/16 v15, 0x55

    .line 160
    invoke-direct {v12, v14, v15}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 163
    .restart local v12    # "tg":Landroid/media/ToneGenerator;
    if-eqz v12, :cond_14

    .line 164
    const/16 v14, 0x18

    invoke-virtual {v12, v14}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_3

    .line 169
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v12    # "tg":Landroid/media/ToneGenerator;
    :cond_16
    const-string/jumbo v14, "**ring_vib_silent**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 170
    const-string/jumbo v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 171
    .restart local v2    # "am":Landroid/media/AudioManager;
    if-eqz v2, :cond_17

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v14

    if-eqz v14, :cond_17

    .line 172
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_18

    .line 173
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 174
    const-string/jumbo v14, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 175
    .restart local v13    # "vib":Landroid/os/Vibrator;
    if-eqz v13, :cond_17

    .line 176
    const-wide/16 v14, 0x32

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 190
    .end local v13    # "vib":Landroid/os/Vibrator;
    :cond_17
    :goto_4
    return-void

    .line 178
    :cond_18
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_19

    .line 179
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 181
    :cond_19
    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 182
    new-instance v12, Landroid/media/ToneGenerator;

    .line 183
    const/4 v14, 0x5

    .line 184
    const/16 v15, 0x55

    .line 182
    invoke-direct {v12, v14, v15}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 185
    .restart local v12    # "tg":Landroid/media/ToneGenerator;
    if-eqz v12, :cond_17

    .line 186
    const/16 v14, 0x18

    invoke-virtual {v12, v14}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_4

    .line 191
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v12    # "tg":Landroid/media/ToneGenerator;
    :cond_1a
    const-string/jumbo v14, "**camera**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 194
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v14, "android.media.action.STILL_IMAGE_CAMERA"

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v3, v8}, Lcom/android/internal/util/nx/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    .line 196
    return-void

    .line 197
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1b
    const-string/jumbo v14, "**media_previous**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 198
    const/16 v14, 0x58

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 199
    return-void

    .line 200
    :cond_1c
    const-string/jumbo v14, "**media_next**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 201
    const/16 v14, 0x57

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 202
    return-void

    .line 203
    :cond_1d
    const-string/jumbo v14, "**media_play_pause**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 204
    const/16 v14, 0x55

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/android/internal/util/nx/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 205
    return-void

    .line 206
    :cond_1e
    const-string/jumbo v14, "**wake_device**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 208
    const-string/jumbo v14, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 209
    .local v10, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    if-nez v14, :cond_1f

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 212
    :cond_1f
    return-void

    .line 215
    .end local v10    # "powerManager":Landroid/os/PowerManager;
    :cond_20
    const/4 v7, 0x0

    .line 217
    .local v7, "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 222
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v3, v8}, Lcom/android/internal/util/nx/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    .line 223
    return-void

    .line 218
    .local v7, "intent":Landroid/content/Intent;
    :catch_2
    move-exception v6

    .line 219
    .local v6, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v14, "SlimActions:"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "URISyntaxException: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "isKeyguardShowing"    # Z

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    if-eqz p3, :cond_1

    .line 248
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Action"

    const-string/jumbo v2, "Error starting custom intent on keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_1
    const/high16 v1, 0x34000000

    .line 259
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 263
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Action"

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 28
    .param p0, "keyCode"    # I
    .param p1, "longpress"    # Z

    .prologue
    .line 279
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 280
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 281
    .local v4, "now":J
    const/4 v14, 0x0

    .line 282
    .local v14, "downflags":I
    const/16 v26, 0x0

    .line 283
    .local v26, "upflags":I
    const/16 v6, 0x15

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 284
    const/16 v6, 0x16

    move/from16 v0, p0

    if-ne v0, v6, :cond_2

    .line 287
    :cond_0
    const/16 v26, 0x6

    const/4 v14, 0x6

    .line 291
    :goto_0
    if-eqz p1, :cond_1

    .line 292
    or-int/lit16 v14, v14, 0x80

    .line 295
    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 296
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 298
    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p0

    .line 295
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 299
    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 301
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    .line 302
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    .line 304
    const/16 v27, 0x101

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move/from16 v21, p0

    .line 301
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 305
    .local v15, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v15, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 278
    return-void

    .line 285
    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v15    # "upEvent":Landroid/view/KeyEvent;
    :cond_2
    const/16 v6, 0x13

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 286
    const/16 v6, 0x14

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 289
    const/16 v26, 0x48

    const/16 v14, 0x48

    goto :goto_0
.end method
