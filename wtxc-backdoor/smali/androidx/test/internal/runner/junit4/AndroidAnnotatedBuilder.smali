.class public Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;
.super Lorg/junit/internal/builders/AnnotatedBuilder;
.source "AndroidAnnotatedBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidAnnotatedBuilder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "suiteBuilder",
            "runnerParams"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;)V

    .line 36
    iput-object p2, p0, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    return-void
.end method


# virtual methods
.method public buildAndroidRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerClass",
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runner/Runner;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 69
    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroidx/test/internal/util/AndroidRunnerParams;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    iget-object p2, p0, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    aput-object p2, v0, v4

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/junit/runner/Runner;

    return-object p1
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    :try_start_0
    const-class v0, Lorg/junit/runner/RunWith;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/RunWith;

    if-eqz v0, :cond_0

    .line 44
    const-class v1, Landroidx/test/runner/AndroidJUnit4;

    invoke-interface {v0}, Lorg/junit/runner/RunWith;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v0}, Lorg/junit/runner/RunWith;->value()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;->buildAndroidRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    return-object v0

    .line 55
    :catch_0
    :try_start_2
    invoke-super {p0, v0, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;->buildRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "AndroidAnnotatedBuilder"

    const-string v1, "Error constructing runner"

    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    throw p1
.end method
