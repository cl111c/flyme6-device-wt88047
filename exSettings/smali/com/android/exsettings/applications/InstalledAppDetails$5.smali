.class Lcom/android/exsettings/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/InstalledAppDetails;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 647
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 646
    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->-wrap2(Lcom/android/exsettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V

    .line 644
    return-void
.end method
