.class Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 477
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1058
    return-void

    .line 1067
    :catchall_0
    move-exception v2

    .line 1068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1067
    throw v2
.end method

.method public appTransitionPending()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1047
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    return-void

    .line 1050
    :catchall_0
    move-exception v2

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1050
    throw v2
.end method

.method public appTransitionStarting(JJ)V
    .locals 5
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1087
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1088
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    return-void

    .line 1091
    :catchall_0
    move-exception v2

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    return-void

    .line 993
    :catchall_0
    move-exception v2

    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    throw v2
.end method

.method public clearNotificationEffects()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    return-void

    .line 769
    :catchall_0
    move-exception v2

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    throw v2
.end method

.method public collapsePanels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    return-void

    .line 512
    :catchall_0
    move-exception v2

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    throw v2
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 525
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    return-void

    .line 529
    :catchall_0
    move-exception v2

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    throw v2
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 560
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-void

    .line 564
    :catchall_0
    move-exception v2

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw v2
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 577
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    return-void

    .line 582
    :catchall_0
    move-exception v2

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw v2
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 542
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    return-void

    .line 547
    :catchall_0
    move-exception v2

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    throw v2
.end method

.method public expandNotificationsPanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    return-void

    .line 498
    :catchall_0
    move-exception v2

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    throw v2
.end method

.method public expandSettingsPanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 673
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    return-void

    .line 679
    :catchall_0
    move-exception v2

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 679
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBarService"

    return-object v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    return-void

    :cond_0
    move v4, v3

    .line 946
    goto :goto_0

    :cond_1
    move v2, v3

    .line 947
    goto :goto_1

    .line 951
    :catchall_0
    move-exception v2

    .line 952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 951
    throw v2
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    return-void

    .line 836
    :catchall_0
    move-exception v2

    .line 837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 836
    throw v2
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 792
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    return-void

    .line 800
    :catchall_0
    move-exception v2

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    throw v2
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    return-void

    .line 854
    :catchall_0
    move-exception v2

    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    throw v2
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 777
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 779
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 781
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    return-void

    .line 784
    :catchall_0
    move-exception v2

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    throw v2
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    return-void

    .line 821
    :catchall_0
    move-exception v2

    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    throw v2
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 878
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 880
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 882
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    return-void

    :cond_0
    move v4, v3

    .line 882
    goto :goto_0

    :cond_1
    move v2, v3

    .line 883
    goto :goto_1

    .line 887
    :catchall_0
    move-exception v2

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 5
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 866
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 867
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    return-void

    .line 870
    :catchall_0
    move-exception v2

    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 870
    throw v2
.end method

.method public onPanelHidden()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    return-void

    .line 753
    :catchall_0
    move-exception v2

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 5
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 733
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    return-void

    .line 739
    :catchall_0
    move-exception v2

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    throw v2
.end method

.method public preloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    return-void

    .line 979
    :catchall_0
    move-exception v2

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw v2
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 5
    .param p1, "callbacks"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v2, 0x0

    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 708
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 709
    if-nez p3, :cond_2

    .line 710
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    :goto_0
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    invoke-virtual {p2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->readFromParcel(Landroid/os/Parcel;)V

    .line 720
    :cond_1
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 721
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    return-void

    .line 713
    :cond_2
    :try_start_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v2

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 723
    throw v2
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    return-void

    .line 632
    :catchall_0
    move-exception v2

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    throw v2
.end method

.method public setAutoRotate(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 998
    return-void

    .line 1008
    :catchall_0
    move-exception v2

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    throw v2
.end method

.method public setCurrentUser(I)V
    .locals 5
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    return-void

    .line 694
    :catchall_0
    move-exception v2

    .line 695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw v2
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    return-void

    .line 601
    :catchall_0
    move-exception v2

    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    throw v2
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    return-void

    .line 617
    :catchall_0
    move-exception v2

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    throw v2
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    if-eqz p4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    return-void

    .line 665
    :catchall_0
    move-exception v2

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 665
    throw v2
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 897
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    return-void

    .line 904
    :catchall_0
    move-exception v2

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 904
    throw v2
.end method

.method public setWindowState(II)V
    .locals 5
    .param p1, "window"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 912
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    return-void

    .line 920
    :catchall_0
    move-exception v2

    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    throw v2
.end method

.method public showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1016
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    if-eqz p1, :cond_1

    .line 1020
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1026
    :goto_0
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    invoke-virtual {p1, v1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1013
    return-void

    .line 1024
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1032
    :catchall_0
    move-exception v2

    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    throw v2
.end method

.method public showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    return-void

    .line 935
    :catchall_0
    move-exception v2

    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    throw v2
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1109
    :goto_0
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    return-void

    .line 1107
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1112
    :catchall_0
    move-exception v2

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    throw v2
.end method

.method public toggleRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 956
    return-void

    .line 965
    :catchall_0
    move-exception v2

    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    throw v2
.end method

.method public topAppWindowChanged(Z)V
    .locals 5
    .param p1, "menuVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    return-void

    .line 647
    :catchall_0
    move-exception v2

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    throw v2
.end method
