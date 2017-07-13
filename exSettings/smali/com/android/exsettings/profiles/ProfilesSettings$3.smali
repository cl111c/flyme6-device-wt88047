.class Lcom/android/exsettings/profiles/ProfilesSettings$3;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/ProfilesSettings;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/ProfilesSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/ProfilesSettings;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/exsettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/exsettings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/exsettings/profiles/ProfilesSettings;

    invoke-static {v0}, Lcom/android/exsettings/profiles/ProfilesSettings;->-get0(Lcom/android/exsettings/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileManager;->resetAll()V

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/exsettings/profiles/ProfilesSettings;

    invoke-static {v0}, Lcom/android/exsettings/profiles/ProfilesSettings;->-get0(Lcom/android/exsettings/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/exsettings/profiles/ProfilesSettings;

    invoke-static {v1}, Lcom/android/exsettings/profiles/ProfilesSettings;->-get0(Lcom/android/exsettings/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/exsettings/profiles/ProfilesSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/ProfilesSettings;->refreshList()V

    .line 232
    return-void
.end method
