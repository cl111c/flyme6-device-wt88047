.class public Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIZZ)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "which"    # I
    .param p2, "longpress"    # Z
    .param p3, "newAction"    # Z

    .prologue
    .line 659
    new-instance v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;-><init>()V

    .line 660
    .local v1, "frag":Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    const-string/jumbo v2, "which"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 663
    const-string/jumbo v2, "longpress"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    const-string/jumbo v2, "newAction"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 665
    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 666
    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 902
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 676
    .local v16, "id":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "which"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 677
    .local v5, "which":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "longpress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 678
    .local v6, "longpress":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "newAction"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 679
    .local v7, "newAction":Z
    packed-switch v16, :pswitch_data_0

    .line 898
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unknown id "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 681
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    const v3, 0x7f0c0418

    .line 681
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 683
    const v3, 0x7f0c0401

    .line 681
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 684
    const v3, 0x7f0c05d6

    const/16 v20, 0x0

    .line 681
    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 686
    new-instance v3, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 685
    const v20, 0x7f0c09e2

    .line 681
    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 719
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 722
    .local v17, "res":Landroid/content/res/Resources;
    const-string/jumbo v15, ""

    .line 723
    .local v15, "icon":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 736
    const v2, 0x7f0c0422

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 739
    .local v9, "actionMode":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get7(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    const v2, 0x7f0c0424

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 742
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 743
    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    const v3, 0x7f0c0425

    .line 742
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "finalHelpMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I

    move-result v2

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v2, v0, :cond_2

    .line 747
    const v2, 0x7f0c0427

    .line 745
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 748
    const/16 v21, 0x0

    aput-object v9, v20, v21

    .line 745
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 750
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    const v3, 0x7f0c0dcd

    .line 750
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 754
    new-instance v3, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$2;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 753
    const v20, 0x7f0c09e2

    .line 750
    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 726
    .end local v9    # "actionMode":Ljava/lang/String;
    .end local v12    # "finalHelpMessage":Ljava/lang/String;
    :pswitch_2
    const v2, 0x7f0c0421

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "actionMode":Ljava/lang/String;
    goto/16 :goto_0

    .line 729
    .end local v9    # "actionMode":Ljava/lang/String;
    :pswitch_3
    const v2, 0x7f0c0423

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "actionMode":Ljava/lang/String;
    goto/16 :goto_0

    .line 748
    .restart local v12    # "finalHelpMessage":Ljava/lang/String;
    :cond_2
    const v2, 0x7f0c0426

    goto :goto_1

    .line 761
    .end local v9    # "actionMode":Ljava/lang/String;
    .end local v12    # "finalHelpMessage":Ljava/lang/String;
    .end local v15    # "icon":Ljava/lang/String;
    .end local v17    # "res":Landroid/content/res/Resources;
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    const v3, 0x7f0c041c

    .line 761
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 763
    const v3, 0x7f0c041d

    .line 761
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 765
    new-instance v3, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$3;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 764
    const v20, 0x7f0c09e2

    .line 761
    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 773
    :pswitch_5
    if-eqz v6, :cond_4

    .line 774
    const v18, 0x7f0c0415

    .line 784
    .local v18, "title":I
    :goto_2
    const/16 v19, 0x0

    .line 785
    .local v19, "values":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 786
    .local v10, "entries":[Ljava/lang/String;
    if-nez v6, :cond_7

    .line 787
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v11, "finalEntriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v13, "finalValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v14, v2, :cond_6

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v14

    .line 792
    const-string/jumbo v3, "**null**"

    .line 791
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v14

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v14

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 775
    .end local v10    # "entries":[Ljava/lang/String;
    .end local v11    # "finalEntriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "finalValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v18    # "title":I
    .end local v19    # "values":[Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 776
    const v18, 0x7f0c0417

    .restart local v18    # "title":I
    goto :goto_2

    .line 778
    .end local v18    # "title":I
    :cond_5
    const v18, 0x7f0c0416

    .restart local v18    # "title":I
    goto :goto_2

    .line 798
    .restart local v10    # "entries":[Ljava/lang/String;
    .restart local v11    # "finalEntriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "finalValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "i":I
    .restart local v19    # "values":[Ljava/lang/String;
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "entries":[Ljava/lang/String;
    check-cast v10, [Ljava/lang/String;

    .line 799
    .local v10, "entries":[Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "values":[Ljava/lang/String;
    check-cast v19, [Ljava/lang/String;

    .line 803
    .end local v10    # "entries":[Ljava/lang/String;
    .end local v11    # "finalEntriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "finalValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "i":I
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "finalDialogValues":[Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v8

    .line 807
    .local v8, "finalDialogEntries":[Ljava/lang/String;
    :goto_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 809
    const v3, 0x7f0c05d6

    const/16 v20, 0x0

    .line 807
    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 811
    new-instance v2, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;[Ljava/lang/String;IZZ[Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 803
    .end local v4    # "finalDialogValues":[Ljava/lang/String;
    .end local v8    # "finalDialogEntries":[Ljava/lang/String;
    :cond_8
    move-object/from16 v4, v19

    .restart local v4    # "finalDialogValues":[Ljava/lang/String;
    goto :goto_4

    .line 805
    :cond_9
    move-object v8, v10

    .restart local v8    # "finalDialogEntries":[Ljava/lang/String;
    goto :goto_5

    .line 834
    .end local v4    # "finalDialogValues":[Ljava/lang/String;
    .end local v8    # "finalDialogEntries":[Ljava/lang/String;
    .end local v18    # "title":I
    :pswitch_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 835
    const v3, 0x7f0c042a

    .line 834
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 836
    const v3, 0x7f0c05d6

    const/16 v20, 0x0

    .line 834
    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 838
    new-instance v3, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 837
    const v20, 0x7f0a00ae

    .line 834
    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 723
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
