.class Landroidx/test/internal/runner/TestLoader;
.super Ljava/lang/Object;
.source "TestLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;,
        Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestLoader"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

.field private final runnersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "runnerBuilder"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Landroidx/test/internal/runner/TestLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 61
    iput-object p2, p0, Landroidx/test/internal/runner/TestLoader;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p0}, Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private doCreateRunner(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "isScanningPath"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    :try_start_0
    iget-object v3, p0, Landroidx/test/internal/runner/TestLoader;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 73
    iget-object v4, p0, Landroidx/test/internal/runner/TestLoader;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    invoke-virtual {v4, v3}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "Skipping class %s: not a test"

    new-array v6, v1, [Ljava/lang/Object;

    .line 75
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v5, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

    if-ne v4, v5, :cond_2

    const-string v4, "Skipping class %s: not a valid test"

    new-array v5, v1, [Ljava/lang/Object;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_0
    move-object v0, v4

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v4, "Could not find class: %s"

    .line 82
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "TestLoader"

    .line 83
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v2, [Ljava/lang/annotation/Annotation;

    .line 84
    invoke-static {p1, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 85
    new-instance v2, Lorg/junit/runner/notification/Failure;

    invoke-direct {v2, v1, v3}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    if-nez p2, :cond_3

    .line 91
    new-instance v0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;

    invoke-direct {v0, v1, v2}, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;-><init>(Lorg/junit/runner/Description;Lorg/junit/runner/notification/Failure;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 96
    iget-object p2, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static logDebug(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const-string v0, "TestLoader"

    const/4 v1, 0x3

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static testLoader(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;Z)Landroidx/test/internal/runner/TestLoader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "runnerBuilder",
            "scanningPath"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 49
    new-instance p2, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;

    invoke-direct {p2, p1}, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;)V

    move-object p1, p2

    :cond_0
    if-nez p0, :cond_1

    .line 53
    const-class p0, Landroidx/test/internal/runner/TestLoader;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 56
    :cond_1
    new-instance p2, Landroidx/test/internal/runner/TestLoader;

    invoke-direct {p2, p0, p1}, Landroidx/test/internal/runner/TestLoader;-><init>(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;)V

    return-object p2
.end method


# virtual methods
.method getRunnersFor(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classNames",
            "isScanningPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-direct {p0, v0, p2}, Landroidx/test/internal/runner/TestLoader;->doCreateRunner(Ljava/lang/String;Z)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
