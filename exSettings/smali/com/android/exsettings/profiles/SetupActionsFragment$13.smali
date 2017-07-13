.class Lcom/android/exsettings/profiles/SetupActionsFragment$13;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$volumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/SetupActionsFragment;
    .param p2, "val$volumizer"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 928
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    invoke-static {v0, v1}, Lcom/android/exsettings/profiles/SetupActionsFragment;->-wrap3(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 927
    return-void
.end method
