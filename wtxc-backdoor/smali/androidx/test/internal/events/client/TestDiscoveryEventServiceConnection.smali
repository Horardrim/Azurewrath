.class public Landroidx/test/internal/events/client/TestDiscoveryEventServiceConnection;
.super Landroidx/test/internal/events/client/TestEventServiceConnectionBase;
.source "TestDiscoveryEventServiceConnection.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestDiscoveryEventService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/internal/events/client/TestEventServiceConnectionBase<",
        "Landroidx/test/services/events/discovery/ITestDiscoveryEvent;",
        ">;",
        "Landroidx/test/internal/events/client/TestDiscoveryEventService;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceName",
            "listener"
        }
    .end annotation

    .line 33
    sget-object v0, Landroidx/test/internal/events/client/TestDiscoveryEventServiceConnection$$Lambda$0;->$instance:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;-><init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    return-void
.end method


# virtual methods
.method public send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testDiscoveryEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/events/client/TestEventClientException;
        }
    .end annotation

    const-string v0, "testDiscoveryEvent cannot be null"

    .line 39
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Landroidx/test/internal/events/client/TestDiscoveryEventServiceConnection;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestDiscoveryEventServiceConnection;->service:Landroid/os/IInterface;

    check-cast v0, Landroidx/test/services/events/discovery/ITestDiscoveryEvent;

    invoke-interface {v0, p1}, Landroidx/test/services/events/discovery/ITestDiscoveryEvent;->send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Landroidx/test/internal/events/client/TestEventClientException;

    const-string v1, "Failed to send test case"

    invoke-direct {v0, v1, p1}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 41
    :cond_0
    new-instance p1, Landroidx/test/internal/events/client/TestEventClientException;

    const-string v0, "Can\'t add test, service not connected"

    invoke-direct {p1, v0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
