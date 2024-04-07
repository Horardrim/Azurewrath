.class Landroidx/test/internal/runner/NonExecutingRunner;
.super Lorg/junit/runner/Runner;
.source "NonExecutingRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Sortable;
.implements Lorg/junit/runner/manipulation/Filterable;


# instance fields
.field private final runner:Lorg/junit/runner/Runner;


# direct methods
.method constructor <init>(Lorg/junit/runner/Runner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runner"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    return-void
.end method

.method private generateListOfTests(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runNotifier",
            "description"
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1, p2}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 71
    invoke-virtual {p1, p2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    goto :goto_1

    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 74
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/NonExecutingRunner;->generateListOfTests(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Landroidx/test/internal/runner/NonExecutingRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/NonExecutingRunner;->generateListOfTests(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sorter"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    return-void
.end method
