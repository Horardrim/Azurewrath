.class public final Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;
.super Lorg/junit/runner/notification/RunListener;
.source "OrchestratedInstrumentationListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrchestrationListener"


# instance fields
.field private description:Lorg/junit/runner/Description;

.field private final isTestFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final notificationService:Landroidx/test/internal/events/client/TestRunEventService;

.field private final testFinishedCondition:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Landroidx/test/internal/events/client/TestRunEventService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationService"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 55
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->testFinishedCondition:Landroid/os/ConditionVariable;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->isTestFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    iput-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->description:Lorg/junit/runner/Description;

    const-string v0, "notificationService cannot be null"

    .line 67
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    return-void
.end method

.method private getTestFailureEventFromCachedDescription(Lorg/junit/runner/notification/Failure;)Landroidx/test/services/events/run/TestFailureEvent;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    const-string v0, "failure cannot be null"

    .line 184
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->description:Lorg/junit/runner/Description;

    invoke-static {v0}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v0
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    new-instance v1, Landroidx/test/services/events/run/TestFailureEvent;

    new-instance v2, Landroidx/test/services/events/FailureInfo;

    .line 196
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTestHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1, v0}, Landroidx/test/services/events/FailureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/test/services/events/TestCaseInfo;)V

    invoke-direct {v1, v0, v2}, Landroidx/test/services/events/run/TestFailureEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/FailureInfo;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 190
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->description:Lorg/junit/runner/Description;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to determine test case from description ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OrchestrationListener"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private reportProcessCrash(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 253
    new-instance v0, Lorg/junit/runner/notification/Failure;

    iget-object v1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->description:Lorg/junit/runner/Description;

    invoke-direct {v0, v1, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->testFailure(Lorg/junit/runner/notification/Failure;)V

    .line 254
    iget-object p1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->description:Lorg/junit/runner/Description;

    invoke-virtual {p0, p1}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->testFinished(Lorg/junit/runner/Description;)V

    return-void
.end method

.method private waitUntilTestFinished(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutMillis"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->testFinishedCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "OrchestrationListener"

    const-string p2, "Timeout waiting for the test to finish"

    .line 266
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public reportProcessCrash(Ljava/lang/Throwable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "timeoutMillis"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p2, p3}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->waitUntilTestFinished(J)V

    .line 245
    iget-object p2, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->isTestFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "OrchestrationListener"

    const-string p3, "No test failure has been reported. Report the process crash."

    .line 246
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, p1}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->reportProcessCrash(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    new-instance v1, Landroidx/test/services/events/run/TestAssumptionFailureEvent;

    .line 205
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v2

    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getFailure(Lorg/junit/runner/notification/Failure;)Landroidx/test/services/events/FailureInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroidx/test/services/events/run/TestAssumptionFailureEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/FailureInfo;)V

    .line 203
    invoke-interface {v0, v1}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OrchestrationListener"

    const-string v1, "Unable to send TestAssumptionFailureEvent to Orchestrator"

    .line 207
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->isTestFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroidx/test/internal/events/client/JUnitValidator;->validateDescription(Lorg/junit/runner/Description;)Z

    move-result v1

    const-string v2, "OrchestrationListener"

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {v0}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "testFailure: JUnit reported "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; discarding as bogus."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/test/services/events/run/TestFailureEvent;

    .line 166
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v1

    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getFailure(Lorg/junit/runner/notification/Failure;)Landroidx/test/services/events/FailureInfo;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroidx/test/services/events/run/TestFailureEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/FailureInfo;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to determine test case from failure ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-direct {p0, p1}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->getTestFailureEventFromCachedDescription(Lorg/junit/runner/notification/Failure;)Landroidx/test/services/events/run/TestFailureEvent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 175
    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    invoke-interface {p1, v0}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_1
    .catch Landroidx/test/services/events/TestEventException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to send TestFailureEvent, terminating"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Landroidx/test/internal/events/client/JUnitValidator;->validateDescription(Lorg/junit/runner/Description;)Z

    move-result v0

    const-string v1, "OrchestrationListener"

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "testFinished: JUnit reported "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; discarding as bogus."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    new-instance v2, Landroidx/test/services/events/run/TestFinishedEvent;

    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/test/services/events/run/TestFinishedEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    invoke-interface {v0, v2}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to send TestFinishedEvent to Orchestrator"

    .line 136
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    const-string v0, "OrchestrationListener"

    .line 215
    :try_start_0
    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {v1}, Landroidx/test/services/events/TestCaseInfo;->getClassAndMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TestIgnoredEvent("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    new-instance v2, Landroidx/test/services/events/run/TestIgnoredEvent;

    invoke-direct {v2, v1}, Landroidx/test/services/events/run/TestIgnoredEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    invoke-interface {p1, v2}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to send TestIgnoredEvent to Orchestrator"

    .line 228
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "OrchestrationListener"

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/services/events/ParcelableConverter;->getFailuresFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failure event doesn\'t contain a test case"

    .line 88
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v9, v1

    .line 91
    :try_start_1
    iget-object v1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    new-instance v2, Landroidx/test/services/events/run/TestRunFinishedEvent;

    .line 93
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getRunCount()I

    move-result v5

    invoke-virtual {p1}, Lorg/junit/runner/Result;->getIgnoreCount()I

    move-result v6

    invoke-virtual {p1}, Lorg/junit/runner/Result;->getRunTime()J

    move-result-wide v7

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroidx/test/services/events/run/TestRunFinishedEvent;-><init>(IIJLjava/util/List;)V

    .line 91
    invoke-interface {v1, v2}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_1
    .catch Landroidx/test/services/events/TestEventException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Unable to send TestRunFinishedEvent to Orchestrator"

    .line 95
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    new-instance v1, Landroidx/test/services/events/run/TestRunStartedEvent;

    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/test/services/events/run/TestRunStartedEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    invoke-interface {v0, v1}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OrchestrationListener"

    const-string v1, "Unable to send TestRunStartedEvent to Orchestrator"

    .line 77
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->description:Lorg/junit/runner/Description;

    .line 103
    invoke-static {p1}, Landroidx/test/internal/events/client/JUnitValidator;->validateDescription(Lorg/junit/runner/Description;)Z

    move-result v0

    const-string v1, "OrchestrationListener"

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "testStarted: JUnit reported "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; discarding as bogus."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->notificationService:Landroidx/test/internal/events/client/TestRunEventService;

    new-instance v2, Landroidx/test/services/events/run/TestStartedEvent;

    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/test/services/events/run/TestStartedEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    invoke-interface {v0, v2}, Landroidx/test/internal/events/client/TestRunEventService;->send(Landroidx/test/services/events/run/TestRunEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to send TestStartedEvent to Orchestrator"

    .line 116
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
