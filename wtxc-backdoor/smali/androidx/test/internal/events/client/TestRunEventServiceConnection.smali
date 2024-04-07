.class public Landroidx/test/internal/events/client/TestRunEventServiceConnection;
.super Landroidx/test/internal/events/client/TestEventServiceConnectionBase;
.source "TestRunEventServiceConnection.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestRunEventService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/internal/events/client/TestEventServiceConnectionBase<",
        "Landroidx/test/services/events/run/ITestRunEvent;",
        ">;",
        "Landroidx/test/internal/events/client/TestRunEventService;"
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

    .line 32
    sget-object v0, Landroidx/test/internal/events/client/TestRunEventServiceConnection$$Lambda$0;->$instance:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;-><init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    return-void
.end method


# virtual methods
.method public send(Landroidx/test/services/events/run/TestRunEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRunEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/events/client/TestEventClientException;
        }
    .end annotation

    const-string v0, "testRunEvent cannot be null"

    .line 38
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Landroidx/test/internal/events/client/TestRunEventServiceConnection;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestRunEventServiceConnection;->service:Landroid/os/IInterface;

    check-cast v0, Landroidx/test/services/events/run/ITestRunEvent;

    invoke-interface {v0, p1}, Landroidx/test/services/events/run/ITestRunEvent;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Landroidx/test/internal/events/client/TestEventClientException;

    const-string v1, "Failed to send test run event"

    invoke-direct {v0, v1, p1}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 40
    :cond_0
    new-instance p1, Landroidx/test/internal/events/client/TestEventClientException;

    const-string v0, "Can\'t send test run event, service not connected"

    invoke-direct {p1, v0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
