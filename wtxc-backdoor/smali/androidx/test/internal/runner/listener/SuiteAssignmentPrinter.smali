.class public Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;
.super Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.source "SuiteAssignmentPrinter.java"


# instance fields
.field endTime:J

.field startTime:J

.field timingValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .locals 2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 11
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

    .line 46
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->endTime:J

    .line 48
    iget-boolean v2, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    const-string v3, "SuiteAssignmentPrinter"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    iget-wide v7, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->startTime:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v7

    long-to-float v2, v0

    .line 57
    invoke-static {v2}, Landroidx/test/internal/runner/TestSize;->getTestSizeForRunTime(F)Landroidx/test/internal/runner/TestSize;

    move-result-object v2

    .line 58
    invoke-static {p1}, Landroidx/test/internal/runner/TestSize;->fromDescription(Lorg/junit/runner/Description;)Landroidx/test/internal/runner/TestSize;

    move-result-object v7

    .line 59
    invoke-virtual {v2, v7}, Landroidx/test/internal/runner/TestSize;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-nez v8, :cond_1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 65
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v7, v3, v6

    .line 67
    invoke-virtual {v2}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v9

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v10

    const-string p1, "\n%s#%s: current size: %s. suggested: %s runTime: %d ms\n"

    .line 62
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->sendString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v7, "."

    .line 70
    invoke-virtual {p0, v7}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->sendString(Ljava/lang/String;)V

    new-array v7, v10, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 76
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v4

    .line 77
    invoke-virtual {v2}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v9

    const-string p1, "%s#%s assigned correctly as %s. runTime: %d ms\n"

    .line 73
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "F"

    .line 49
    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->sendString(Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "%s#%s: skipping suite assignment due to test failure\n"

    .line 52
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->startTime:J

    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 0
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

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 2
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

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    .line 40
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->startTime:J

    return-void
.end method
