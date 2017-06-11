.class final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Landroid/view/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 11985
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    .prologue
    .line 12125
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;I)V

    .line 12124
    return-void
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 12007
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 12008
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12009
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    monitor-exit v3

    .line 12010
    return-object v5

    .line 12012
    :cond_0
    const/4 v0, 0x0

    .line 12013
    .local v0, "spec":Landroid/view/MagnificationSpec;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_1

    .line 12014
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 12016
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    monitor-exit v3

    .line 12017
    return-object v5

    .line 12019
    :cond_3
    if-nez v0, :cond_4

    :try_start_2
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 12020
    .local v0, "spec":Landroid/view/MagnificationSpec;
    :goto_0
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v4

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 12021
    return-object v0

    .line 12019
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_4
    :try_start_3
    invoke-static {v0}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    goto :goto_0

    .line 12007
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12060
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 12061
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-wrap1(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 12062
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 12063
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 12065
    return-object v3

    .line 12060
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 12081
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 12082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 12083
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 12084
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 12080
    return-void

    .line 12086
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12081
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 12071
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 12143
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 12144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 12142
    return-void

    .line 12143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "removeWindows"    # Z

    .prologue
    .line 12130
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 12131
    if-eqz p2, :cond_0

    .line 12132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 12133
    .local v0, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    .line 12134
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeAllWindows()V

    .line 12137
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 12129
    return-void

    .line 12130
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public requestTraversalFromDisplayManager()V
    .locals 1

    .prologue
    .line 11988
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 11987
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 12055
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 12054
    return-void
.end method

.method public setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 4
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .prologue
    .line 12027
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 12028
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_0

    .line 12029
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    .line 12030
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 12029
    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 12032
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 12033
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12034
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 12026
    return-void

    .line 12027
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 11993
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11994
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_1

    .line 11995
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 12000
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 12001
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    .line 11992
    :cond_0
    return-void

    .line 11997
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Magnification callbacks not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11993
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 12041
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 12042
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_0

    .line 12043
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    .line 12044
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 12043
    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 12046
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 12047
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12048
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 12040
    return-void

    .line 12041
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showGlobalActions()V
    .locals 1

    .prologue
    .line 12076
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    .line 12075
    return-void
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V
    .locals 12
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .prologue
    const/16 v10, 0x18

    .line 12093
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 12094
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 12095
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 12096
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "winNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 12097
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 12098
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    .line 12099
    .local v0, "isForceHiding":Z
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12100
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_0

    .line 12099
    if-eqz v0, :cond_2

    .line 12101
    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x1

    iput v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 12103
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 12104
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12107
    if-eqz v0, :cond_2

    .line 12112
    .end local v0    # "isForceHiding":Z
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 12114
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 12115
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12116
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12092
    :goto_1
    return-void

    .line 12096
    .restart local v0    # "isForceHiding":Z
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 12093
    .end local v0    # "isForceHiding":Z
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 12118
    .restart local v2    # "winNdx":I
    .restart local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v10, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 12119
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    goto :goto_1
.end method
