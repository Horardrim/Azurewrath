.class Landroidx/test/internal/runner/junit3/AndroidTestResult;
.super Landroidx/test/internal/runner/junit3/DelegatingTestResult;
.source "AndroidTestResult.java"


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final instr:Landroid/app/Instrumentation;

.field private timeout:J


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/app/Instrumentation;Ljunit/framework/TestResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "instr",
            "result"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p3}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;-><init>(Ljunit/framework/TestResult;)V

    .line 39
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->bundle:Landroid/os/Bundle;

    .line 40
    iput-object p2, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->instr:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "test"
        }
    .end annotation

    .line 45
    instance-of v0, p1, Landroid/test/AndroidTestCase;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/test/AndroidTestCase;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->instr:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    .line 48
    :cond_0
    instance-of v0, p1, Landroid/test/InstrumentationTestCase;

    if-eqz v0, :cond_1

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/test/InstrumentationTestCase;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->instr:Landroid/app/Instrumentation;

    invoke-virtual {v0, v1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 51
    :cond_1
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->run(Ljunit/framework/TestCase;)V

    return-void
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "test",
            "p"
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :catch_0
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->timeout:J

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Test timed out after %d milliseconds"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 77
    throw p1

    :catch_2
    move-exception p2

    .line 75
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    :goto_0
    return-void
.end method

.method setCurrentTimeout(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->timeout:J

    return-void
.end method
