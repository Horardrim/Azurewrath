.class public Landroidx/test/internal/util/AndroidRunnerParams;
.super Ljava/lang/Object;
.source "AndroidRunnerParams.java"


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final ignoreSuiteMethods:Z

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final perTestTimeout:J

.field private final skipExecution:Z


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/os/Bundle;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "bundle",
            "perTestTimeout",
            "ignoreSuiteMethods"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/test/internal/util/AndroidRunnerParams;->instrumentation:Landroid/app/Instrumentation;

    .line 64
    iput-object p2, p0, Landroidx/test/internal/util/AndroidRunnerParams;->bundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Landroidx/test/internal/util/AndroidRunnerParams;->skipExecution:Z

    .line 66
    iput-wide p3, p0, Landroidx/test/internal/util/AndroidRunnerParams;->perTestTimeout:J

    .line 67
    iput-boolean p5, p0, Landroidx/test/internal/util/AndroidRunnerParams;->ignoreSuiteMethods:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Landroid/os/Bundle;ZJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "bundle",
            "skipExecution",
            "perTestTimeout",
            "ignoreSuiteMethods"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/test/internal/util/AndroidRunnerParams;->instrumentation:Landroid/app/Instrumentation;

    .line 46
    iput-object p2, p0, Landroidx/test/internal/util/AndroidRunnerParams;->bundle:Landroid/os/Bundle;

    .line 47
    iput-boolean p3, p0, Landroidx/test/internal/util/AndroidRunnerParams;->skipExecution:Z

    .line 48
    iput-wide p4, p0, Landroidx/test/internal/util/AndroidRunnerParams;->perTestTimeout:J

    .line 49
    iput-boolean p6, p0, Landroidx/test/internal/util/AndroidRunnerParams;->ignoreSuiteMethods:Z

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/test/internal/util/AndroidRunnerParams;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/test/internal/util/AndroidRunnerParams;->instrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getPerTestTimeout()J
    .locals 2

    .line 88
    iget-wide v0, p0, Landroidx/test/internal/util/AndroidRunnerParams;->perTestTimeout:J

    return-wide v0
.end method

.method public isIgnoreSuiteMethods()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Landroidx/test/internal/util/AndroidRunnerParams;->ignoreSuiteMethods:Z

    return v0
.end method

.method public isSkipExecution()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iget-boolean v0, p0, Landroidx/test/internal/util/AndroidRunnerParams;->skipExecution:Z

    return v0
.end method
