.class Lcom/android/exsettings/notification/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$4;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 500
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 501
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$4;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->-wrap0(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 502
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 503
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 501
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 503
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
