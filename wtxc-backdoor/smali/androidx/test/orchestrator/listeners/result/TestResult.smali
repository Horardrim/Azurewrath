.class public Landroidx/test/orchestrator/listeners/result/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    }
.end annotation


# instance fields
.field private endTime:J

.field private metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stackTrace:Ljava/lang/String;

.field private startTime:J

.field private status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->startTime:J

    .line 47
    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->endTime:J

    .line 50
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->startTime:J

    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 122
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 125
    :cond_2
    check-cast p1, Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 126
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    iget-object v3, p1, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    invoke-static {v2, v3}, Landroidx/test/orchestrator/listeners/result/TestResult;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    iget-object v3, p1, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    .line 127
    invoke-static {v2, v3}, Landroidx/test/orchestrator/listeners/result/TestResult;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    iget-object p1, p1, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 128
    invoke-static {v2, p1}, Landroidx/test/orchestrator/listeners/result/TestResult;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->endTime:J

    return-wide v0
.end method

.method public getMetrics()Ljava/util/Map;
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

    .line 69
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->startTime:J

    return-wide v0
.end method

.method public getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEndTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTimeMillis"
        }
    .end annotation

    .line 106
    iput-wide p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->endTime:J

    return-void
.end method

.method public setMetrics(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trace"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)Landroidx/test/orchestrator/listeners/result/TestResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object p0
.end method
