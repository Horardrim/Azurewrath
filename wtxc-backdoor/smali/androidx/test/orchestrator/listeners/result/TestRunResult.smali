.class public Landroidx/test/orchestrator/listeners/result/TestRunResult;
.super Ljava/lang/Object;
.source "TestRunResult.java"

# interfaces
.implements Landroidx/test/orchestrator/listeners/result/ITestRunListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestRunResult"


# instance fields
.field private aggregateMetrics:Z

.field private elapsedTime:J

.field private isCountDirty:Z

.field private isRunComplete:Z

.field private runFailureError:Ljava/lang/String;

.field private runMetrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCounts:[I

.field private testResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Landroidx/test/orchestrator/listeners/result/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private testRunName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    .line 47
    invoke-static {}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->aggregateMetrics:Z

    const-string v0, "not started"

    .line 57
    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testRunName:Ljava/lang/String;

    return-void
.end method

.method private addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "testResult"
        }
    .end annotation

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    .line 168
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private combineValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingValue",
            "newValue"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 251
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 252
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 258
    :catch_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 259
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_0
    return-object p2
.end method

.method private updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "test",
            "status",
            "trace"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "received test event %s without test start for %s. trace: %s"

    .line 176
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-direct {v0}, Landroidx/test/orchestrator/listeners/result/TestResult;-><init>()V

    .line 181
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/test/orchestrator/listeners/result/TestResult;->setStatus(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 182
    invoke-virtual {v0, p3}, Landroidx/test/orchestrator/listeners/result/TestResult;->setStackTrace(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V

    return-void
.end method


# virtual methods
.method public getCompletedTests()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getTestResults()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-virtual {v3}, Landroidx/test/orchestrator/listeners/result/TestResult;->getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v3

    sget-object v4, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v3, v4}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/orchestrator/listeners/result/TestIdentifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getElapsedTime()J
    .locals 2

    .line 146
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testRunName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAllFailedTests()I
    .locals 1

    .line 141
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {p0, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I

    move-result v0

    return v0
.end method

.method public getNumCompleteTests()I
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTests()I

    move-result v0

    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {p0, v1}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumTests()I
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 112
    :goto_0
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 113
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 117
    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    invoke-virtual {v2}, Landroidx/test/orchestrator/listeners/result/TestResult;->getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ordinal()I

    move-result v2

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    goto :goto_1

    .line 119
    :cond_1
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    .line 121
    :cond_2
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    invoke-virtual {p1}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getRunFailureMessage()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    return-object v0
.end method

.method public getRunMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    return-object v0
.end method

.method public getTestResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Landroidx/test/orchestrator/listeners/result/TestResult;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    return-object v0
.end method

.method public getTextSummary()Ljava/lang/String;
    .locals 9

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 276
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTests()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Total tests %d, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 278
    invoke-virtual {p0, v6}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 282
    invoke-virtual {v6}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v1

    const-string v6, "%s %d, "

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFailedTests()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumAllFailedTests()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunComplete()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    return v0
.end method

.method public isRunFailure()Z
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAggregateMetrics(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metricAggregation"
        }
    .end annotation

    .line 61
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->aggregateMetrics:Z

    return-void
.end method

.method public setRunComplete(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runComplete"
        }
    .end annotation

    .line 105
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    return-void
.end method

.method public testAssumptionFailure(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "trace"
        }
    .end annotation

    .line 193
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V

    return-void
.end method

.method public testEnded(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "testMetrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-direct {v0}, Landroidx/test/orchestrator/listeners/result/TestResult;-><init>()V

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroidx/test/orchestrator/listeners/result/TestResult;->getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v1

    sget-object v2, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v0, v1}, Landroidx/test/orchestrator/listeners/result/TestResult;->setStatus(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 210
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult;->setEndTime(J)V

    .line 211
    invoke-virtual {v0, p2}, Landroidx/test/orchestrator/listeners/result/TestResult;->setMetrics(Ljava/util/Map;)V

    .line 212
    invoke-direct {p0, p1, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V

    return-void
.end method

.method public testFailed(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "trace"
        }
    .end annotation

    .line 188
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V

    return-void
.end method

.method public testIgnored(Landroidx/test/orchestrator/listeners/result/TestIdentifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 198
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V

    return-void
.end method

.method public testRunEnded(JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapsedTime",
            "runMetrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->aggregateMetrics:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->combineValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 237
    :cond_1
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    return-void
.end method

.method public testRunFailed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    return-void
.end method

.method public testRunStarted(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runName",
            "testCount"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testRunName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    return-void
.end method

.method public testRunStopped(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elapsedTime"
        }
    .end annotation

    .line 222
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    return-void
.end method

.method public testStarted(Landroidx/test/orchestrator/listeners/result/TestIdentifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 163
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-direct {v0}, Landroidx/test/orchestrator/listeners/result/TestResult;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V

    return-void
.end method
