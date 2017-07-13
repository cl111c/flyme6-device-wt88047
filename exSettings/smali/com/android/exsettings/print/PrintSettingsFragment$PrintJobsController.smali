.class final Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobsController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/print/PrintSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintSettingsFragment;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/print/PrintSettingsFragment;Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintSettingsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/exsettings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 415
    new-instance v0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;

    iget-object v1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "printJobs"    # Ljava/lang/Object;

    .prologue
    .line 421
    check-cast p2, Ljava/util/List;

    .end local p2    # "printJobs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    .local p2, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get0(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_1
    return-void

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "print_jobs_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get0(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get0(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 432
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    .line 433
    .local v10, "printJobCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 434
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/print/PrintJobInfo;

    .line 436
    .local v9, "printJob":Landroid/print/PrintJobInfo;
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 439
    .local v8, "preference":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 440
    const-class v0, Lcom/android/exsettings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    :goto_1
    :pswitch_0
    iget-object v11, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    .line 477
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v12, v1

    .line 478
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    .line 479
    const/4 v4, 0x3

    const/4 v5, 0x3

    .line 477
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v12, v1

    .line 476
    const v0, 0x7f0c0b2c

    invoke-virtual {v11, v0, v12}, Lcom/android/exsettings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 493
    :goto_2
    :pswitch_1
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 494
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get0(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 433
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 446
    .end local v6    # "extras":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 447
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 449
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 448
    const v2, 0x7f0c0b2d

    .line 447
    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 451
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 453
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 452
    const v2, 0x7f0c0b2e

    .line 451
    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 458
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 460
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 459
    const v2, 0x7f0c0b2f

    .line 458
    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 464
    :pswitch_4
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 467
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 466
    const v2, 0x7f0c0b30

    .line 465
    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 469
    :cond_5
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 471
    invoke-virtual {v9}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 470
    const v2, 0x7f0c0b2e

    .line 469
    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 484
    :pswitch_5
    const v0, 0x7f020097

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    goto/16 :goto_2

    .line 489
    :pswitch_6
    const v0, 0x7f020098

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    goto/16 :goto_2

    .line 443
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 481
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintSettingsFragment;->-get0(Lcom/android/exsettings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    return-void
.end method
