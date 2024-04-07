.class Landroidx/test/orchestrator/callback/BundleConverter;
.super Ljava/lang/Object;
.source "BundleConverter.java"


# static fields
.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_FAILURE:Ljava/lang/String; = "failure"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBundleFromFailureEvent(Landroidx/test/services/events/run/TestFailureEvent;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "testFailureEventType"
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableDescription;

    iget-object v2, p0, Landroidx/test/services/events/run/TestFailureEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    .line 90
    invoke-virtual {v2}, Landroidx/test/services/events/TestCaseInfo;->getClassAndMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v2, Landroidx/test/orchestrator/junit/ParcelableFailure;

    iget-object p0, p0, Landroidx/test/services/events/run/TestFailureEvent;->failure:Landroidx/test/services/events/FailureInfo;

    iget-object p0, p0, Landroidx/test/services/events/FailureInfo;->stackTrace:Ljava/lang/String;

    invoke-direct {v2, v1, p0}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/String;)V

    const-string p0, "failure"

    .line 92
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TestEvent"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBundleFromTestCaseEvent(Landroidx/test/services/events/run/TestRunEventWithTestCase;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "testEventType"
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableDescription;

    iget-object p0, p0, Landroidx/test/services/events/run/TestRunEventWithTestCase;->testCase:Landroidx/test/services/events/TestCaseInfo;

    .line 102
    invoke-virtual {p0}, Landroidx/test/services/events/TestCaseInfo;->getClassAndMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Ljava/lang/String;)V

    const-string p0, "description"

    .line 103
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TestEvent"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBundleFromTestRunEvent(Landroidx/test/services/events/run/TestRunEvent;)Landroid/os/Bundle;
    .locals 3
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

    .line 65
    instance-of v0, p0, Landroidx/test/services/events/run/TestAssumptionFailureEvent;

    if-eqz v0, :cond_0

    .line 66
    check-cast p0, Landroidx/test/services/events/run/TestAssumptionFailureEvent;

    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p0, v0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromFailureEvent(Landroidx/test/services/events/run/TestFailureEvent;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    instance-of v0, p0, Landroidx/test/services/events/run/TestFailureEvent;

    if-eqz v0, :cond_1

    .line 69
    check-cast p0, Landroidx/test/services/events/run/TestFailureEvent;

    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p0, v0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromFailureEvent(Landroidx/test/services/events/run/TestFailureEvent;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    instance-of v0, p0, Landroidx/test/services/events/run/TestFinishedEvent;

    if-eqz v0, :cond_2

    .line 71
    check-cast p0, Landroidx/test/services/events/run/TestFinishedEvent;

    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p0, v0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromTestCaseEvent(Landroidx/test/services/events/run/TestRunEventWithTestCase;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 72
    :cond_2
    instance-of v0, p0, Landroidx/test/services/events/run/TestIgnoredEvent;

    if-eqz v0, :cond_3

    .line 73
    check-cast p0, Landroidx/test/services/events/run/TestIgnoredEvent;

    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p0, v0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromTestCaseEvent(Landroidx/test/services/events/run/TestRunEventWithTestCase;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 74
    :cond_3
    instance-of v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;

    if-eqz v0, :cond_4

    .line 75
    check-cast p0, Landroidx/test/services/events/run/TestRunFinishedEvent;

    invoke-static {p0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromTestRunFinishedEvent(Landroidx/test/services/events/run/TestRunFinishedEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 76
    :cond_4
    instance-of v0, p0, Landroidx/test/services/events/run/TestRunStartedEvent;

    if-eqz v0, :cond_5

    .line 77
    check-cast p0, Landroidx/test/services/events/run/TestRunStartedEvent;

    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p0, v0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromTestCaseEvent(Landroidx/test/services/events/run/TestRunEventWithTestCase;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 78
    :cond_5
    instance-of v0, p0, Landroidx/test/services/events/run/TestStartedEvent;

    if-eqz v0, :cond_6

    .line 79
    check-cast p0, Landroidx/test/services/events/run/TestStartedEvent;

    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p0, v0}, Landroidx/test/orchestrator/callback/BundleConverter;->getBundleFromTestCaseEvent(Landroidx/test/services/events/run/TestRunEventWithTestCase;Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 81
    :cond_6
    new-instance v0, Landroidx/test/internal/events/client/TestEventClientException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unrecognized test run event type ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/internal/events/client/TestEventClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBundleFromTestRunFinishedEvent(Landroidx/test/services/events/run/TestRunFinishedEvent;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableResult;

    iget-object p0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->failures:Ljava/util/List;

    invoke-static {p0}, Landroidx/test/orchestrator/callback/BundleConverter;->getParcelableFailureFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableResult;-><init>(Ljava/util/List;)V

    const-string p0, "result"

    .line 112
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    sget-object p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TestEvent"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getParcelableFailureFromList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/test/services/events/FailureInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/test/orchestrator/junit/ParcelableFailure;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/services/events/FailureInfo;

    .line 122
    new-instance v2, Landroidx/test/orchestrator/junit/ParcelableDescription;

    iget-object v3, v1, Landroidx/test/services/events/FailureInfo;->testCase:Landroidx/test/services/events/TestCaseInfo;

    .line 123
    invoke-virtual {v3}, Landroidx/test/services/events/TestCaseInfo;->getClassAndMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v3, Landroidx/test/orchestrator/junit/ParcelableFailure;

    iget-object v1, v1, Landroidx/test/services/events/FailureInfo;->stackTrace:Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/String;)V

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
