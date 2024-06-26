.class public abstract Landroidx/test/runner/internal/deps/aidl/BaseStub;
.super Landroid/os/Binder;
.source "BaseStub.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static globalInterceptor:Landroidx/test/runner/internal/deps/aidl/TransactionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    invoke-virtual {p0, p0, p1}, Landroidx/test/runner/internal/deps/aidl/BaseStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized installTransactionInterceptorPackagePrivate(Landroidx/test/runner/internal/deps/aidl/TransactionInterceptor;)V
    .locals 2

    const-class v0, Landroidx/test/runner/internal/deps/aidl/BaseStub;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 34
    :try_start_0
    sget-object v1, Landroidx/test/runner/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/runner/internal/deps/aidl/TransactionInterceptor;

    if-nez v1, :cond_0

    .line 40
    sput-object p0, Landroidx/test/runner/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/runner/internal/deps/aidl/TransactionInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate TransactionInterceptor installation."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null interceptor"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/runner/internal/deps/aidl/BaseStub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 77
    :cond_0
    sget-object v0, Landroidx/test/runner/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/runner/internal/deps/aidl/TransactionInterceptor;

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/runner/internal/deps/aidl/BaseStub;->dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 80
    invoke-interface/range {v0 .. v5}, Landroidx/test/runner/internal/deps/aidl/TransactionInterceptor;->interceptTransaction(Landroidx/test/runner/internal/deps/aidl/BaseStub;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method protected routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    if-le p1, v0, :cond_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroidx/test/runner/internal/deps/aidl/BaseStub;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
