.class Lcom/android/exsettings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MasterClear;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/MasterClear;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/exsettings/MasterClear$1;->this$0:Lcom/android/exsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/exsettings/MasterClear$1;->this$0:Lcom/android/exsettings/MasterClear;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/exsettings/MasterClear;->-wrap0(Lcom/android/exsettings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/MasterClear$1;->this$0:Lcom/android/exsettings/MasterClear;

    invoke-static {v0}, Lcom/android/exsettings/MasterClear;->-wrap1(Lcom/android/exsettings/MasterClear;)V

    .line 113
    :cond_0
    return-void
.end method
