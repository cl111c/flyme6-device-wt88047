.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;
.super Ljava/util/TimerTask;
.source "DpmNsrmBackgroundEventHdlr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->pollBackgroundEvents()V
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    .line 346
    return-void
.end method
