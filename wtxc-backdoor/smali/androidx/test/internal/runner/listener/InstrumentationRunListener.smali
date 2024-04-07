.class public abstract Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.super Lorg/junit/runner/notification/RunListener;
.source "InstrumentationRunListener.java"


# instance fields
.field private instr:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->instr:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamResult",
            "resultBundle",
            "junitResults"
        }
    .end annotation

    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "bundle"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "stream"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->sendStatus(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->instr:Landroid/app/Instrumentation;

    return-void
.end method
