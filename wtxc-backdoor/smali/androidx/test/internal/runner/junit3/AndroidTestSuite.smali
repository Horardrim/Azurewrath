.class Landroidx/test/internal/runner/junit3/AndroidTestSuite;
.super Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;
.source "AndroidTestSuite.java"


# annotations
.annotation runtime Lorg/junit/Ignore;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidTestSuite"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClass",
            "runnerParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, p2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;-><init>(Ljunit/framework/TestSuite;Landroidx/test/internal/util/AndroidRunnerParams;)V

    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestSuite;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "runnerParams"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    .line 51
    iput-object p2, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    return-void
.end method

.method private getStackTraces()Ljava/lang/String;
    .locals 8

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "\tat "

    if-ge v5, v3, :cond_0

    aget-object v7, v1, v5

    .line 188
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 194
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runTestWithTimeout(Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "test",
            "androidTestResult",
            "timeout"
        }
    .end annotation

    const-string v0, "Exception from the execution thread"

    const-string v1, "AndroidTestSuite"

    .line 86
    new-instance v2, Landroidx/test/internal/runner/junit3/AndroidTestSuite$1;

    invoke-direct {v2, p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite$1;-><init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;)V

    .line 87
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 97
    new-instance v3, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;

    invoke-direct {v3, p0, p1, p2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;-><init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;)V

    .line 105
    invoke-virtual {p2, p3, p4}, Landroidx/test/internal/runner/junit3/AndroidTestResult;->setCurrentTimeout(J)V

    .line 107
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 110
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 112
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p3, p4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-wide/16 v5, 0x1

    .line 118
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Failed to to stop test execution thread, the correctness of the test runner is at risk. Abort all execution!"

    .line 120
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v5, 0x0

    .line 127
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v5, v6, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    :try_start_2
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Test timed out after %d milliseconds but execution thread failed to terminate\nDumping instr and main threads:\n%s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 140
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->getStackTraces()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p2

    .line 136
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string p3, "The correctness of the test runner is at risk. Abort all execution!"

    .line 144
    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance p3, Ljava/lang/IllegalStateException;

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p1, p4, v3

    .line 150
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->getStackTraces()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p2

    const-string p1, "Test execution thread got interrupted:\n%s\nDumping instr and main threads:\n%s"

    .line 147
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p3}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private runTestsWithTimeout(JLandroidx/test/internal/runner/junit3/AndroidTestResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "result"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->testCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v2

    .line 77
    invoke-direct {p0, v2, p3, p1, p2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->runTestWithTimeout(Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exception"
        }
    .end annotation

    .line 160
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;

    invoke-direct {v0, p0, p1}, Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;-><init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;Ljava/lang/RuntimeException;)V

    .line 167
    new-instance p1, Ljava/lang/Thread;

    const-string v1, "Terminator"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidTestResult;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 59
    invoke-virtual {v1}, Landroidx/test/internal/util/AndroidRunnerParams;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v2}, Landroidx/test/internal/util/AndroidRunnerParams;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Landroidx/test/internal/runner/junit3/AndroidTestResult;-><init>(Landroid/os/Bundle;Landroid/app/Instrumentation;Ljunit/framework/TestResult;)V

    .line 61
    iget-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {p1}, Landroidx/test/internal/util/AndroidRunnerParams;->getPerTestTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 63
    invoke-direct {p0, v1, v2, v0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->runTestsWithTimeout(JLandroidx/test/internal/runner/junit3/AndroidTestResult;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, v0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->run(Ljunit/framework/TestResult;)V

    :goto_0
    return-void
.end method
