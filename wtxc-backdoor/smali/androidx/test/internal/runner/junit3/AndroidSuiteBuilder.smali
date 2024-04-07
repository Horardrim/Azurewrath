.class public Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;
.super Lorg/junit/internal/builders/SuiteMethodBuilder;
.source "AndroidSuiteBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidSuiteBuilder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/junit/internal/builders/SuiteMethodBuilder;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

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

    .line 45
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v0}, Landroidx/test/internal/util/AndroidRunnerParams;->isIgnoreSuiteMethods()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {p1}, Lorg/junit/internal/runners/SuiteMethod;->testFromSuiteMethod(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v0

    .line 51
    instance-of v1, v0, Ljunit/framework/TestSuite;

    if-eqz v1, :cond_1

    .line 56
    new-instance p1, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v1, Landroidx/test/internal/runner/junit3/AndroidTestSuite;

    check-cast v0, Ljunit/framework/TestSuite;

    iget-object v2, p0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-direct {v1, v0, v2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;-><init>(Ljunit/framework/TestSuite;Landroidx/test/internal/util/AndroidRunnerParams;)V

    invoke-direct {p1, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object p1

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#suite() did not return a TestSuite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    const-string v0, "AndroidSuiteBuilder"

    const-string v1, "Error constructing runner"

    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    throw p1
.end method
