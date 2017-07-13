.class Lcom/android/exsettings/cyanogenmod/SpamList$2;
.super Ljava/lang/Object;
.source "SpamList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/SpamList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/SpamList;
    .param p2, "val$position"    # I

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/SpamList$2;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    iput p2, p0, Lcom/android/exsettings/cyanogenmod/SpamList$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$2;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get2(Lcom/android/exsettings/cyanogenmod/SpamList;)Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/cyanogenmod/SpamList$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->removeItem(I)V

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    return-void
.end method
