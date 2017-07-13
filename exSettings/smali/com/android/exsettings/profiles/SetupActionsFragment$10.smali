.class Lcom/android/exsettings/profiles/SetupActionsFragment$10;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lcyanogenmod/profiles/ConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/ConnectionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/SetupActionsFragment;
    .param p2, "val$setting"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 865
    packed-switch p2, :pswitch_data_0

    .line 878
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 879
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 880
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    invoke-static {v0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->-wrap4(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    .line 881
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 864
    return-void

    .line 867
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 870
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 871
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    goto :goto_0

    .line 874
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    goto :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
