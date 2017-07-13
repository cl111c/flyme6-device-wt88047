.class Lcom/android/exsettings/DreamSettings$DreamInfoAdapter$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;
    .param p2, "val$row"    # Landroid/view/View;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter$3;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    iget-object v0, p0, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter$3;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DreamBackend$DreamInfo;

    invoke-static {v1, v0}, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;->-wrap0(Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;Lcom/android/exsettings/DreamBackend$DreamInfo;)V

    .line 342
    return-void
.end method
