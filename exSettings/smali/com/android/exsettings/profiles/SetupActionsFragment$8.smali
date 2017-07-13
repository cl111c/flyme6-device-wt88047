.class Lcom/android/exsettings/profiles/SetupActionsFragment$8;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Lcyanogenmod/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/SetupActionsFragment;
    .param p2, "val$setting"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

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

    .line 724
    packed-switch p2, :pswitch_data_0

    .line 737
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    .line 738
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 739
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    invoke-static {v0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->-wrap4(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    .line 740
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 723
    return-void

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/AirplaneModeSettings;->setOverride(Z)V

    goto :goto_0

    .line 729
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/AirplaneModeSettings;->setOverride(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/AirplaneModeSettings;->setValue(I)V

    goto :goto_0

    .line 733
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/AirplaneModeSettings;->setOverride(Z)V

    .line 734
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/AirplaneModeSettings;->setValue(I)V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
