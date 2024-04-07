.class public Landroidx/test/runner/AndroidJUnitRunner;
.super Landroidx/test/runner/MonitoringInstrumentation;
.source "AndroidJUnitRunner.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestEventClientConnectListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidJUnitRunner"

.field private static final MILLIS_TO_WAIT_FOR_TEST_FINISH:J


# instance fields
.field private arguments:Landroid/os/Bundle;

.field private instrumentationResultPrinter:Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

.field private runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

.field private runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

.field private testEventClient:Landroidx/test/internal/events/client/TestEventClient;

.field private usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 284
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/test/runner/AndroidJUnitRunner;->MILLIS_TO_WAIT_FOR_TEST_FINISH:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 279
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;-><init>()V

    .line 287
    new-instance v0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->instrumentationResultPrinter:Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    .line 291
    sget-object v0, Landroidx/test/internal/events/client/TestEventClient;->NO_OP_CLIENT:Landroidx/test/internal/events/client/TestEventClient;

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    .line 292
    new-instance v0, Landroidx/test/internal/runner/storage/RunnerFileIO;

    invoke-direct {v0}, Landroidx/test/internal/runner/storage/RunnerFileIO;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    return-void
.end method

.method private addCoverageListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 555
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->codeCoverage:Z

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Landroidx/test/internal/runner/listener/CoverageListener;

    iget-object p1, p1, Landroidx/test/internal/runner/RunnerArgs;->codeCoveragePath:Ljava/lang/String;

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    invoke-direct {v0, p1, v1}, Landroidx/test/internal/runner/listener/CoverageListener;-><init>(Ljava/lang/String;Landroidx/test/internal/runner/storage/RunnerIO;)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    :cond_0
    return-void
.end method

.method private addDelayListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 562
    iget v0, p1, Landroidx/test/internal/runner/RunnerArgs;->delayInMillis:I

    if-lez v0, :cond_0

    .line 563
    new-instance v0, Landroidx/test/internal/runner/listener/DelayInjector;

    iget p1, p1, Landroidx/test/internal/runner/RunnerArgs;->delayInMillis:I

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/listener/DelayInjector;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_0

    .line 564
    :cond_0
    iget-boolean p1, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    .line 567
    new-instance p1, Landroidx/test/internal/runner/listener/DelayInjector;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Landroidx/test/internal/runner/listener/DelayInjector;-><init>(I)V

    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method private addListenersFromArg(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 579
    iget-object p1, p1, Landroidx/test/internal/runner/RunnerArgs;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/notification/RunListener;

    .line 580
    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addListenersFromClasspath(Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 573
    const-class v0, Lorg/junit/runner/notification/RunListener;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    .line 574
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addListenersLegacyOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 476
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_1

    .line 480
    :cond_0
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->suiteAssignment:Z

    if-eqz v0, :cond_1

    .line 481
    new-instance v0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_1

    .line 483
    :cond_1
    new-instance v0, Landroidx/test/internal/runner/listener/LogRunListener;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/LogRunListener;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 484
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {v0}, Landroidx/test/internal/events/client/TestEventClient;->isTestRunEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {v0}, Landroidx/test/internal/events/client/TestEventClient;->getRunListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 490
    :goto_0
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->shouldWaitForActivitiesToComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    new-instance v0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    new-instance v2, Landroidx/test/runner/AndroidJUnitRunner$1;

    invoke-direct {v2, p0}, Landroidx/test/runner/AndroidJUnitRunner$1;-><init>(Landroidx/test/runner/AndroidJUnitRunner;)V

    invoke-direct {v0, p0, v1, v2}, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;-><init>(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 504
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addDelayListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 505
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addCoverageListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 507
    :goto_1
    invoke-static {p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersFromClasspath(Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 508
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersFromArg(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    return-void
.end method

.method private addListenersNewOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 515
    invoke-static {p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersFromClasspath(Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 516
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersFromArg(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 517
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_1

    .line 521
    :cond_0
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->suiteAssignment:Z

    if-eqz v0, :cond_1

    .line 522
    new-instance p1, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;

    invoke-direct {p1}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_1

    .line 524
    :cond_1
    new-instance v0, Landroidx/test/internal/runner/listener/LogRunListener;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/LogRunListener;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 525
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addDelayListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 526
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addCoverageListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 527
    iget-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {p1}, Landroidx/test/internal/events/client/TestEventClient;->isTestRunEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 528
    iget-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {p1}, Landroidx/test/internal/events/client/TestEventClient;->getRunListener()Lorg/junit/runner/notification/RunListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 532
    :goto_0
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->shouldWaitForActivitiesToComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 533
    new-instance p1, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;

    new-instance v0, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v0, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    new-instance v1, Landroidx/test/runner/AndroidJUnitRunner$2;

    invoke-direct {v1, p0}, Landroidx/test/runner/AndroidJUnitRunner$2;-><init>(Landroidx/test/runner/AndroidJUnitRunner;)V

    invoke-direct {p1, p0, v0, v1}, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;-><init>(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    :cond_3
    :goto_1
    return-void
.end method

.method private addScreenCaptureProcessors(Landroidx/test/internal/runner/RunnerArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Landroidx/test/internal/runner/RunnerArgs;->screenCaptureProcessors:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Landroidx/test/runner/screenshot/Screenshot;->addScreenCaptureProcessors(Ljava/util/Set;)V

    return-void
.end method

.method private getArguments()Landroid/os/Bundle;
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method private isOrchestratorServiceProvided()Z
    .locals 3

    .line 337
    invoke-static {}, Landroidx/test/internal/events/client/TestEventClientArgs;->builder()Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    sget-object v1, Landroidx/test/runner/AndroidJUnitRunner$$Lambda$0;->$instance:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    .line 338
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setConnectionFactory(Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->orchestratorService:Ljava/lang/String;

    .line 339
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setOrchestratorService(Ljava/lang/String;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    .line 340
    invoke-virtual {p0, v1}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setPrimaryInstProcess(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-boolean v1, v1, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    .line 342
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setTestDiscoveryRequested(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-boolean v1, v1, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 343
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setTestRunEventsRequested(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->testDiscoveryService:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setTestDiscoveryService(Ljava/lang/String;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->testRunEventsService:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setTestRunEventService(Ljava/lang/String;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-boolean v1, v1, Landroidx/test/internal/runner/RunnerArgs;->testPlatformMigration:Z

    .line 347
    invoke-virtual {v0, v1}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->setTestPlatformMigration(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->build()Landroidx/test/internal/events/client/TestEventClientArgs;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v0}, Landroidx/test/internal/events/client/TestEventClient;->connect(Landroid/content/Context;Landroidx/test/internal/events/client/TestEventClientConnectListener;Landroidx/test/internal/events/client/TestEventClientArgs;)Landroidx/test/internal/events/client/TestEventClient;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    .line 350
    invoke-virtual {v0}, Landroidx/test/internal/events/client/TestEventClient;->isTestDiscoveryEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {v0}, Landroidx/test/internal/events/client/TestEventClient;->isTestRunEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private parseRunnerArgs(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 390
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$Builder;

    invoke-direct {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromManifest(Landroid/app/Instrumentation;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->build()Landroidx/test/internal/runner/RunnerArgs;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    return-void
.end method

.method private registerUserTracker()V
    .locals 3

    .line 617
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    new-instance v2, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    invoke-direct {v2, v0}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v2}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->buildIfPossible()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v0

    .line 619
    invoke-virtual {v1, v0}, Landroidx/test/runner/UsageTrackerFacilitator;->registerUsageTracker(Landroidx/test/internal/runner/tracker/UsageTracker;)V

    :cond_0
    return-void
.end method

.method private waitForDebugger(Landroidx/test/internal/runner/RunnerArgs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 355
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->debug:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method final addListeners(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 468
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->newRunListenerMode:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersNewOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    goto :goto_0

    .line 471
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersLegacyOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    :goto_0
    return-void
.end method

.method buildRequest(Landroidx/test/internal/runner/RunnerArgs;Landroid/os/Bundle;)Lorg/junit/runner/Request;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerArgs",
            "bundleArgs"
        }
    .end annotation

    .line 604
    invoke-virtual {p0, p0, p2}, Landroidx/test/runner/AndroidJUnitRunner;->createTestRequestBuilder(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/TestRequestBuilder;

    move-result-object p2

    .line 605
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->classpathToScan:Ljava/util/Set;

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->addPathsToScan(Ljava/lang/Iterable;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 606
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->classpathToScan:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-static {p0}, Landroidx/test/internal/runner/ClassPathScanner;->getDefaultClasspaths(Landroid/app/Instrumentation;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->addPathsToScan(Ljava/lang/Iterable;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 609
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/test/internal/runner/TestRequestBuilder;->addFromRunnerArgs(Landroidx/test/internal/runner/RunnerArgs;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 611
    invoke-direct {p0}, Landroidx/test/runner/AndroidJUnitRunner;->registerUserTracker()V

    .line 613
    invoke-virtual {p2}, Landroidx/test/internal/runner/TestRequestBuilder;->build()Lorg/junit/runner/Request;

    move-result-object p1

    return-object p1
.end method

.method createTestRequestBuilder(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/TestRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "arguments"
        }
    .end annotation

    .line 626
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder;

    invoke-direct {v0, p1, p2}, Landroidx/test/internal/runner/TestRequestBuilder;-><init>(Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "results"
        }
    .end annotation

    const-string v0, "AndroidJUnitRunner"

    .line 458
    :try_start_0
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    const-string v2, "1.4.0"

    invoke-virtual {v1, v0, v2}, Landroidx/test/runner/UsageTrackerFacilitator;->trackUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    invoke-virtual {v1}, Landroidx/test/runner/UsageTrackerFacilitator;->sendUsages()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to send analytics."

    .line 461
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/test/runner/MonitoringInstrumentation;->finish(ILandroid/os/Bundle;)V

    return-void
.end method

.method getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;
    .locals 1

    .line 404
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->instrumentationResultPrinter:Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 297
    invoke-super {p0, p1}, Landroidx/test/runner/MonitoringInstrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 298
    iput-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->arguments:Landroid/os/Bundle;

    .line 299
    invoke-direct {p0, p1}, Landroidx/test/runner/AndroidJUnitRunner;->parseRunnerArgs(Landroid/os/Bundle;)V

    .line 301
    iget-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0, p1}, Landroidx/test/runner/AndroidJUnitRunner;->waitForDebugger(Landroidx/test/internal/runner/RunnerArgs;)Z

    move-result p1

    const-string v0, "AndroidJUnitRunner"

    if-eqz p1, :cond_0

    const-string p1, "Waiting for debugger to connect..."

    .line 302
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    const-string p1, "Debugger connected."

    .line 304
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object p1, p1, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    new-instance p1, Landroidx/test/runner/UsageTrackerFacilitator;

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p1, v1}, Landroidx/test/runner/UsageTrackerFacilitator;-><init>(Landroidx/test/internal/runner/RunnerArgs;)V

    iput-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    goto :goto_0

    .line 311
    :cond_1
    new-instance p1, Landroidx/test/runner/UsageTrackerFacilitator;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroidx/test/runner/UsageTrackerFacilitator;-><init>(Z)V

    iput-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    .line 314
    :goto_0
    iget-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object p1, p1, Landroidx/test/internal/runner/RunnerArgs;->appListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 315
    invoke-static {}, Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;->addLifecycleCallback(Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;)V

    goto :goto_1

    .line 318
    :cond_2
    iget-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0, p1}, Landroidx/test/runner/AndroidJUnitRunner;->addScreenCaptureProcessors(Landroidx/test/internal/runner/RunnerArgs;)V

    .line 320
    invoke-direct {p0}, Landroidx/test/runner/AndroidJUnitRunner;->isOrchestratorServiceProvided()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Waiting to connect to the Orchestrator service..."

    .line 321
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 325
    :cond_3
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->start()V

    :goto_2
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "e"
        }
    .end annotation

    const-string v0, "AndroidJUnitRunner"

    const-string v1, "An unhandled exception was thrown by the app."

    .line 586
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {v1, p2}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->reportProcessCrash(Ljava/lang/Throwable;)V

    .line 592
    :cond_0
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {v1}, Landroidx/test/internal/events/client/TestEventClient;->isTestRunEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    sget-wide v2, Landroidx/test/runner/AndroidJUnitRunner;->MILLIS_TO_WAIT_FOR_TEST_FINISH:J

    invoke-virtual {v1, p2, v2, v3}, Landroidx/test/internal/events/client/TestEventClient;->reportProcessCrash(Ljava/lang/Throwable;J)V

    :cond_1
    const-string v1, "Bringing down the entire Instrumentation process."

    .line 596
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-super {p0, p1, p2}, Landroidx/test/runner/MonitoringInstrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public onOrchestratorConnect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->onTestEventClientConnect()V

    return-void
.end method

.method public onStart()V
    .locals 6

    const-string v0, "androidx.test.espresso.web.bridge.JavaScriptBridge"

    .line 409
    invoke-virtual {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->setJsBridgeClassName(Ljava/lang/String;)V

    .line 410
    invoke-super {p0}, Landroidx/test/runner/MonitoringInstrumentation;->onStart()V

    .line 411
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/test/runner/AndroidJUnitRunner;->buildRequest(Landroidx/test/internal/runner/RunnerArgs;Landroid/os/Bundle;)Lorg/junit/runner/Request;

    move-result-object v0

    .line 419
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {v1}, Landroidx/test/internal/events/client/TestEventClient;->isTestDiscoveryEnabled()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->testEventClient:Landroidx/test/internal/events/client/TestEventClient;

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/test/internal/events/client/TestEventClient;->addTests(Lorg/junit/runner/Description;)V

    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v2, v0}, Landroidx/test/runner/AndroidJUnitRunner;->finish(ILandroid/os/Bundle;)V

    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v3, v3, Landroidx/test/internal/runner/RunnerArgs;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    iget-object v3, v3, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/test/internal/util/ReflectionUtil;->reflectivelyInvokeRemoteMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v1, v1, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "AndroidJUnitRunner"

    if-nez v1, :cond_2

    const-string v0, "Runner is idle..."

    .line 432
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 436
    :cond_2
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-boolean v1, v1, Landroidx/test/internal/runner/RunnerArgs;->useTestStorageService:Z

    if-eqz v1, :cond_3

    .line 437
    new-instance v1, Landroidx/test/internal/runner/storage/RunnerTestStorageIO;

    invoke-direct {v1}, Landroidx/test/internal/runner/storage/RunnerTestStorageIO;-><init>()V

    iput-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    .line 440
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 442
    :try_start_0
    new-instance v4, Landroidx/test/internal/runner/TestExecutor$Builder;

    invoke-direct {v4, p0}, Landroidx/test/internal/runner/TestExecutor$Builder;-><init>(Landroid/app/Instrumentation;)V

    .line 443
    iget-object v5, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-virtual {p0, v5, v4}, Landroidx/test/runner/AndroidJUnitRunner;->addListeners(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 444
    invoke-virtual {v4}, Landroidx/test/internal/runner/TestExecutor$Builder;->build()Landroidx/test/internal/runner/TestExecutor;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/test/internal/runner/TestExecutor;->execute(Lorg/junit/runner/Request;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "Fatal exception when running tests"

    .line 447
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "Fatal exception when running tests\n"

    .line 450
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "stream"

    .line 449
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_1
    invoke-virtual {p0, v2, v1}, Landroidx/test/runner/AndroidJUnitRunner;->finish(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onTestEventClientConnect()V
    .locals 0

    .line 378
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->start()V

    return-void
.end method
