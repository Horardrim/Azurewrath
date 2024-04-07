.class public abstract Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
.super Ljava/lang/Object;
.source "OrchestrationRunListener.java"


# instance fields
.field private instrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->instrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public orchestrationRunStarted(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCount"
        }
    .end annotation

    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrumentation"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->instrumentation:Landroid/app/Instrumentation;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Instrumentation should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public testAssumptionFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    return-void
.end method

.method public testFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    return-void
.end method

.method public testFinished(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    return-void
.end method

.method public testIgnored(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    return-void
.end method

.method public testProcessFinished(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method

.method public testRunFinished(Landroidx/test/orchestrator/junit/ParcelableResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    return-void
.end method

.method public testRunStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    return-void
.end method

.method public testStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    return-void
.end method
