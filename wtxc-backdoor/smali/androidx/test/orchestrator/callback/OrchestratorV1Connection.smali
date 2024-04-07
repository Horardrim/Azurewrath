.class public final Landroidx/test/orchestrator/callback/OrchestratorV1Connection;
.super Landroidx/test/internal/events/client/TestEventServiceConnectionBase;
.source "OrchestratorV1Connection.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestRunEventService;
.implements Landroidx/test/internal/events/client/TestDiscoveryEventService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/internal/events/client/TestEventServiceConnectionBase<",
        "Landroidx/test/orchestrator/callback/OrchestratorCallback;",
        ">;",
        "Landroidx/test/internal/events/client/TestRunEventService;",
        "Landroidx/test/internal/events/client/TestDiscoveryEventService;"
    }
.end annotation


# static fields
.field private static final ORCHESTRATOR_SERVICE:Ljava/lang/String; = "androidx.test.orchestrator/.OrchestratorService"


# direct methods
.method public constructor <init>(Landroidx/test/internal/events/client/TestEventClientConnectListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 50
    sget-object v0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection$$Lambda$0;->$instance:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    const-string v1, "androidx.test.orchestrator/.OrchestratorService"

    invoke-direct {p0, v1, v0, p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;-><init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    return-void
.end method


# virtual methods
.method public send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/events/client/TestEventClientException;
        }
    .end annotation

    const-string v0, "event cannot be null"

    .line 72
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    .line 76
    instance-of v0, p1, Landroidx/test/services/events/discovery/TestFoundEvent;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Landroidx/test/services/events/discovery/TestFoundEvent;

    iget-object p1, p1, Landroidx/test/services/events/discovery/TestFoundEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {p1}, Landroidx/test/services/events/TestCaseInfo;->getClassAndMethodName()Ljava/lang/String;

    move-result-object p1

    .line 79
    :try_start_0
    iget-object v0, p0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection;->service:Landroid/os/IInterface;

    check-cast v0, Landroidx/test/orchestrator/callback/OrchestratorCallback;

    invoke-interface {v0, p1}, Landroidx/test/orchestrator/callback/OrchestratorCallback;->addTest(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Landroidx/test/internal/events/client/TestEventClientException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to add test ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance p1, Landroidx/test/internal/events/client/TestEventClientException;

    const-string v0, "Unable to add test, Orchestrator callback is null"

    invoke-direct {p1, v0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Landroidx/test/services/events/run/TestRunEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/events/client/TestEventClientException;
        }
    .end annotation

    const-string v0, "event cannot be null"

    .line 56
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection;->service:Landroid/os/IInterface;

    check-cast v0, Landroidx/test/orchestrator/callback/OrchestratorCallback;

    invoke-static {p1}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromTestRunEvent(Landroidx/test/services/events/run/TestRunEvent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/test/orchestrator/callback/OrchestratorCallback;->sendTestNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Landroidx/test/internal/events/client/TestEventClientException;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to send test run event ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_0
    new-instance p1, Landroidx/test/internal/events/client/TestEventClientException;

    const-string v0, "Unable to send notification, Orchestrator callback is null"

    invoke-direct {p1, v0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
