.class Landroidx/test/internal/runner/junit3/NonExecutingTestResult;
.super Landroidx/test/internal/runner/junit3/DelegatingTestResult;
.source "NonExecutingTestResult.java"


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

    .line 27
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;-><init>(Ljunit/framework/TestResult;)V

    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "test"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/junit3/NonExecutingTestResult;->startTest(Ljunit/framework/Test;)V

    .line 34
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/junit3/NonExecutingTestResult;->endTest(Ljunit/framework/Test;)V

    return-void
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "p"
        }
    .end annotation

    return-void
.end method
