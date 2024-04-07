.class public final Landroidx/test/internal/runner/TestExecutor;
.super Ljava/lang/Object;
.source "TestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/TestExecutor$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestExecutor"


# instance fields
.field private final instr:Landroid/app/Instrumentation;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->access$000(Landroidx/test/internal/runner/TestExecutor$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    .line 46
    invoke-static {p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->access$100(Landroidx/test/internal/runner/TestExecutor$Builder;)Landroid/app/Instrumentation;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/TestExecutor;->instr:Landroid/app/Instrumentation;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestExecutor$Builder;Landroidx/test/internal/runner/TestExecutor$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestExecutor;-><init>(Landroidx/test/internal/runner/TestExecutor$Builder;)V

    return-void
.end method

.method private reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listeners",
            "summaryWriter",
            "resultBundle",
            "jUnitResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;",
            "Ljava/io/PrintStream;",
            "Landroid/os/Bundle;",
            "Lorg/junit/runner/Result;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/notification/RunListener;

    .line 90
    instance-of v1, v0, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    .line 92
    invoke-virtual {v0, p2, p3, p4}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setUpListeners(Lorg/junit/runner/JUnitCore;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRunner"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    const-string v2, "Adding listener "

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    const-string v3, "TestExecutor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1, v1}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 78
    instance-of v2, v1, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    if-eqz v2, :cond_0

    .line 79
    check-cast v1, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    iget-object v2, p0, Landroidx/test/internal/runner/TestExecutor;->instr:Landroid/app/Instrumentation;

    invoke-virtual {v1, v2}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->setInstrumentation(Landroid/app/Instrumentation;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Lorg/junit/runner/Request;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    const-string v0, "Fatal exception when running tests"

    const-string v1, "\n%s"

    const-string v2, "stream"

    .line 51
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    new-instance v4, Lorg/junit/runner/Result;

    invoke-direct {v4}, Lorg/junit/runner/Result;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 54
    :try_start_0
    new-instance v7, Lorg/junit/runner/JUnitCore;

    invoke-direct {v7}, Lorg/junit/runner/JUnitCore;-><init>()V

    .line 55
    invoke-direct {p0, v7}, Landroidx/test/internal/runner/TestExecutor;->setUpListeners(Lorg/junit/runner/JUnitCore;)V

    .line 56
    invoke-virtual {v7, p1}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    iget-object v7, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-direct {p0, v7, v4, v3, p1}, Landroidx/test/internal/runner/TestExecutor;->reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 66
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    new-array p1, v5, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_0
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v7, "TestExecutor"

    .line 59
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {v4}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/junit/runner/notification/Failure;

    new-array v9, v6, [Ljava/lang/annotation/Annotation;

    invoke-static {v0, v9}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-direct {v8, v0, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    iget-object v7, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-direct {p0, v7, v0, v3, v4}, Landroidx/test/internal/runner/TestExecutor;->reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    new-array v0, v5, [Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object v3

    :catchall_1
    move-exception p1

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    iget-object v8, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-direct {p0, v8, v7, v3, v4}, Landroidx/test/internal/runner/TestExecutor;->reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 66
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    new-array v4, v5, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    throw p1
.end method
