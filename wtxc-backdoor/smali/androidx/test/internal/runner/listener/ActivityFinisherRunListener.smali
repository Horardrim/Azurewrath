.class public Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;
.super Lorg/junit/runner/notification/RunListener;
.source "ActivityFinisherRunListener.java"


# instance fields
.field private final activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "finisher",
            "waitForActivitiesToFinishRunnable"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 40
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Instrumentation;

    iput-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->instrumentation:Landroid/app/Instrumentation;

    .line 41
    invoke-static {p2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    iput-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 42
    invoke-static {p3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->getInstance()Landroidx/test/internal/runner/InstrumentationConnection;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/internal/runner/InstrumentationConnection;->requestRemoteInstancesActivityCleanup()V

    .line 54
    iget-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->instrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-virtual {p1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 55
    iget-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->instrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-virtual {p1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 48
    iget-object p1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
