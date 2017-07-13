.class Lcom/android/exsettings/profiles/SetupActionsFragment$12;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/SetupActionsFragment;->requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

.field final synthetic val$override:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;

.field final synthetic val$streamSettings:Lcyanogenmod/profiles/StreamSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/StreamSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/SetupActionsFragment;
    .param p2, "val$seekBar"    # Landroid/widget/SeekBar;
    .param p3, "val$streamSettings"    # Lcyanogenmod/profiles/StreamSettings;
    .param p4, "val$override"    # Landroid/widget/CheckBox;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    iput-object p4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$override:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 917
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$override:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/profiles/StreamSettings;->setOverride(Z)V

    .line 918
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v1, v0}, Lcyanogenmod/profiles/StreamSettings;->setValue(I)V

    .line 919
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 920
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 921
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    invoke-static {v1}, Lcom/android/exsettings/profiles/SetupActionsFragment;->-wrap4(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    .line 915
    return-void
.end method
