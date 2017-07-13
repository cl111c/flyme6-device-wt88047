.class Lcom/android/exsettings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/MasterClear;->establishInitialState()V
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
    .line 160
    iput-object p1, p0, Lcom/android/exsettings/MasterClear$2;->this$0:Lcom/android/exsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/exsettings/MasterClear$2;->this$0:Lcom/android/exsettings/MasterClear;

    invoke-static {v0}, Lcom/android/exsettings/MasterClear;->-get0(Lcom/android/exsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 163
    return-void
.end method
