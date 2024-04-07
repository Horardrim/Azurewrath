.class Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "TestLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanningRunnerBuilder"
.end annotation


# instance fields
.field private final runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;


# direct methods
.method constructor <init>(Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerBuilder"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 130
    iput-object p1, p0, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    return-void
.end method


# virtual methods
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

    .line 139
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Skipping abstract class %s: not a test"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/TestLoader;->access$000(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    invoke-virtual {v0, p1}, Lorg/junit/runners/model/RunnerBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object p1

    return-object p1
.end method
