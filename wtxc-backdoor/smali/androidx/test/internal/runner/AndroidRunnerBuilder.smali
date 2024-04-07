.class Landroidx/test/internal/runner/AndroidRunnerBuilder;
.super Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;
.source "AndroidRunnerBuilder.java"


# instance fields
.field private final androidAnnotatedBuilder:Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

.field private final androidJUnit3Builder:Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

.field private final androidJUnit4Builder:Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

.field private final androidSuiteBuilder:Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

.field private final customRunnerBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredBuilder:Lorg/junit/internal/builders/IgnoredBuilder;


# direct methods
.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath",
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    return-void
.end method

.method constructor <init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "suiteBuilder",
            "runnerParams",
            "scanningPath",
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/RunnerBuilder;",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>(Z)V

    .line 86
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

    invoke-direct {v0, p2, p3}, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit3Builder:Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

    .line 87
    new-instance v0, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

    invoke-direct {v0, p2, p3}, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit4Builder:Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

    .line 88
    new-instance p3, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

    invoke-direct {p3, p2}, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;)V

    iput-object p3, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidSuiteBuilder:Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

    .line 89
    new-instance p3, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

    if-nez p1, :cond_0

    move-object p1, p0

    .line 90
    :cond_0
    invoke-direct {p3, p1, p2}, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;)V

    iput-object p3, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidAnnotatedBuilder:Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

    .line 91
    new-instance p1, Lorg/junit/internal/builders/IgnoredBuilder;

    invoke-direct {p1}, Lorg/junit/internal/builders/IgnoredBuilder;-><init>()V

    iput-object p1, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->ignoredBuilder:Lorg/junit/internal/builders/IgnoredBuilder;

    .line 93
    invoke-direct {p0, p4}, Landroidx/test/internal/runner/AndroidRunnerBuilder;->instantiateRunnerBuilders(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->customRunnerBuilders:Ljava/util/List;

    return-void
.end method

.method private instantiateRunnerBuilders(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;"
        }
    .end annotation

    const-string v0, ", make sure that it is a public concrete class with a public no-argument constructor"

    const-string v1, "Could not create instance of "

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    .line 109
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runners/model/RunnerBuilder;

    .line 110
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", the constructor must not throw an exception"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 126
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception p1

    .line 119
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception p1

    .line 112
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v2
.end method


# virtual methods
.method protected annotatedBuilder()Lorg/junit/internal/builders/AnnotatedBuilder;
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidAnnotatedBuilder:Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

    return-object v0
.end method

.method protected ignoredBuilder()Lorg/junit/internal/builders/IgnoredBuilder;
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->ignoredBuilder:Lorg/junit/internal/builders/IgnoredBuilder;

    return-object v0
.end method

.method protected junit3Builder()Lorg/junit/internal/builders/JUnit3Builder;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit3Builder:Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

    return-object v0
.end method

.method protected junit4Builder()Lorg/junit/internal/builders/JUnit4Builder;
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit4Builder:Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

    return-object v0
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 2
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
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->customRunnerBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/RunnerBuilder;

    .line 147
    invoke-virtual {v1, p1}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 153
    :cond_1
    invoke-super {p0, p1}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object p1

    return-object p1
.end method

.method protected suiteMethodBuilder()Lorg/junit/runners/model/RunnerBuilder;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidSuiteBuilder:Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

    return-object v0
.end method
