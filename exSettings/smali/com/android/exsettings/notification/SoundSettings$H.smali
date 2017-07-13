.class final Lcom/android/exsettings/notification/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    .line 595
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 594
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/SoundSettings$H;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 600
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 602
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 603
    .local v2, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 604
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-get4(Lcom/android/exsettings/notification/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 605
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    .end local v0    # "i":I
    .end local v1    # "preference":Landroid/preference/Preference;
    .end local v2    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-get3(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-get5(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 613
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-get2(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-get2(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->stopSample()V

    goto :goto_0

    .line 618
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-wrap2(Lcom/android/exsettings/notification/SoundSettings;)V

    goto :goto_0

    .line 621
    :pswitch_4
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/SoundSettings;->-wrap4(Lcom/android/exsettings/notification/SoundSettings;)V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
