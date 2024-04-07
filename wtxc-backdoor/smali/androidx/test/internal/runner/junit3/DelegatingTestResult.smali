.class Landroidx/test/internal/runner/junit3/DelegatingTestResult;
.super Ljunit/framework/TestResult;
.source "DelegatingTestResult.java"


# instance fields
.field private wrappedResult:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/framework/TestResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrappedResult"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljunit/framework/TestResult;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "t"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "t"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    return-void
.end method

.method public addListener(Ljunit/framework/TestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    return-void
.end method

.method public errorCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->errorCount()I

    move-result v0

    return v0
.end method

.method public errors()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->errors()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public failureCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    return v0
.end method

.method public failures()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->failures()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljunit/framework/TestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->removeListener(Ljunit/framework/TestListener;)V

    return-void
.end method

.method public runCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->runCount()I

    move-result v0

    return v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 1
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

    .line 87
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    return-void
.end method

.method public shouldStop()Z
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v0

    return v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->stop()V

    return-void
.end method

.method public wasSuccessful()Z
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v0

    return v0
.end method
