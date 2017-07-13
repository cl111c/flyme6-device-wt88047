.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x64

    .line 840
    packed-switch p2, :pswitch_data_0

    .line 839
    :goto_0
    return-void

    .line 842
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    .line 843
    const-string/jumbo v3, "empty"

    .line 844
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get10(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I

    move-result v4

    move-object v2, v1

    .line 842
    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 845
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    goto :goto_0

    .line 848
    :pswitch_1
    new-instance v10, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 849
    .local v10, "list":Landroid/widget/ListView;
    new-instance v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 850
    new-instance v8, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 852
    .local v8, "holoDialog":Landroid/app/Dialog;
    const v0, 0x7f0c042e

    .line 851
    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 853
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 854
    new-instance v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;

    invoke-direct {v0, p0, v8}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;Landroid/app/Dialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 866
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 869
    .end local v8    # "holoDialog":Landroid/app/Dialog;
    .end local v10    # "list":Landroid/widget/ListView;
    :pswitch_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.GET_CONTENT"

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 870
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "image/*"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string/jumbo v0, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string/jumbo v0, "scale"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 873
    const-string/jumbo v0, "outputFormat"

    .line 874
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string/jumbo v0, "aspectX"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    const-string/jumbo v0, "aspectY"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const-string/jumbo v0, "outputX"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    const-string/jumbo v0, "outputY"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get9(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 881
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get9(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 882
    const-string/jumbo v0, "output"

    .line 883
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get9(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 882
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 884
    const-string/jumbo v0, "return-data"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    .line 886
    const/16 v1, 0x3e8

    .line 885
    invoke-virtual {v0, v9, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 887
    :catch_0
    move-exception v7

    .line 888
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 889
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 890
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
