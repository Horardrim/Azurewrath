.class Landroidx/test/internal/runner/AndroidLogOnlyBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "AndroidLogOnlyBuilder.java"


# instance fields
.field private final builder:Landroidx/test/internal/runner/AndroidRunnerBuilder;

.field private runnerCount:I

.field private final runnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

.field private final scanningPath:Z


# direct methods
.method constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath",
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    const-string v0, "runnerParams cannot be null!"

    .line 60
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/util/AndroidRunnerParams;

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 61
    iput-boolean p2, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->scanningPath:Z

    .line 66
    new-instance v0, Landroidx/test/internal/runner/AndroidRunnerBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->builder:Landroidx/test/internal/runner/AndroidRunnerBuilder;

    return-void
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    iget v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    .line 76
    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->isJUnit3Test(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    iget-boolean v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->scanningPath:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->hasJUnit3TestMethod(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    new-instance v0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v1, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;

    invoke-direct {v1, p1}, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object v0

    .line 84
    :cond_1
    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v0}, Landroidx/test/internal/util/AndroidRunnerParams;->isIgnoreSuiteMethods()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 89
    :cond_2
    invoke-static {p1}, Lorg/junit/internal/runners/SuiteMethod;->testFromSuiteMethod(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v0

    .line 90
    instance-of v1, v0, Ljunit/framework/TestSuite;

    if-eqz v1, :cond_3

    .line 95
    new-instance p1, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v1, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;

    check-cast v0, Ljunit/framework/TestSuite;

    invoke-direct {v1, v0}, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    invoke-direct {p1, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object p1

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#suite() did not return a TestSuite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_4
    iget v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    .line 100
    iget-object v2, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->builder:Landroidx/test/internal/runner/AndroidRunnerBuilder;

    invoke-virtual {v2, p1}, Landroidx/test/internal/runner/AndroidRunnerBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v1

    .line 104
    :cond_5
    instance-of v1, p1, Lorg/junit/internal/runners/ErrorReportingRunner;

    if-eqz v1, :cond_6

    return-object p1

    .line 109
    :cond_6
    iget v1, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    if-le v1, v0, :cond_7

    return-object p1

    .line 116
    :cond_7
    new-instance v0, Landroidx/test/internal/runner/NonExecutingRunner;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/NonExecutingRunner;-><init>(Lorg/junit/runner/Runner;)V

    return-object v0
.end method
