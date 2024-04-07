.class public Landroidx/test/internal/runner/listener/CoverageListener;
.super Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.source "CoverageListener.java"


# static fields
.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"


# instance fields
.field private final coverageFilePath:Ljava/lang/String;

.field private coverageReporter:Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;

.field private runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customCoverageFilePath"
        }
    .end annotation

    .line 52
    new-instance v0, Landroidx/test/internal/runner/storage/RunnerFileIO;

    invoke-direct {v0}, Landroidx/test/internal/runner/storage/RunnerFileIO;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/listener/CoverageListener;-><init>(Ljava/lang/String;Landroidx/test/internal/runner/storage/RunnerIO;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customCoverageFilePath",
            "coverageReporter"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageReporter:Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/test/internal/runner/storage/RunnerIO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customCoverageFilePath",
            "runnerIO"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroidx/test/internal/runner/listener/CoverageListener;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    return-void
.end method


# virtual methods
.method public instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "results",
            "junitResults"
        }
    .end annotation

    .line 89
    iget-object p3, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageReporter:Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;

    iget-object v0, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    invoke-virtual {p3, v0, p1}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->generateCoverageReport(Ljava/lang/String;Ljava/io/PrintStream;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "coverageFilePath"

    .line 90
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 84
    new-instance p1, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;

    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/CoverageListener;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/internal/runner/listener/CoverageListener;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    invoke-direct {p1, v0, v1}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;-><init>(Landroid/app/Instrumentation;Landroidx/test/internal/runner/storage/RunnerIO;)V

    iput-object p1, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageReporter:Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;

    return-void
.end method
