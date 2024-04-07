.class final Landroidx/test/espresso/InteractionResultsHandler;
.super Ljava/lang/Object;
.source "InteractionResultsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    }
.end annotation


# static fields
.field private static final LOCAL_OR_REMOTE_ERROR_PRIORITY:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "InteractionResultsHandl"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler;->adaptResult(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method private static adaptResult(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success(Ljava/lang/Object;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 6
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    .line 8
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p0

    .line 10
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler;->getPriority(Ljava/lang/Throwable;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;Z)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method private static finalResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 8
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "Unknown error during interactions"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 11
    :cond_3
    instance-of p0, v0, Ljava/lang/InterruptedException;

    if-eqz p0, :cond_4

    .line 12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Interrupted while interacting remotely"

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Error interacting remotely"

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method static gatherAnyResult(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/test/espresso/InteractionResultsHandler;->gatherAnyResult(Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static gatherAnyResult(Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 7
    new-instance v5, Landroidx/test/espresso/InteractionResultsHandler$1;

    invoke-direct {v5, v4, v2}, Landroidx/test/espresso/InteractionResultsHandler$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-interface {v4, v5, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isPriority()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    add-int/lit8 v0, v0, -0x1

    .line 13
    invoke-static {p1, v3}, Landroidx/test/espresso/InteractionResultsHandler;->pickResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_2
    :goto_2
    invoke-static {p1}, Landroidx/test/espresso/InteractionResultsHandler;->finalResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 19
    invoke-interface {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_3

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while interacting"

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 19
    invoke-interface {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_5

    .line 21
    :cond_4
    throw p1
.end method

.method private static getPriority(Ljava/lang/Throwable;)I
    .locals 1

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-nez v0, :cond_1

    const p0, -0x7fffffff

    return p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/remote/NoRemoteEspressoInstanceException;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroidx/test/espresso/NoActivityResumedException;

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const p0, 0x7fffffff

    return p0
.end method

.method private static pickResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;)",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/InteractionResultsHandler;->getPriority(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/InteractionResultsHandler;->getPriority(Ljava/lang/Throwable;)I

    move-result v1

    if-le v0, v1, :cond_4

    return-object p0

    :cond_4
    return-object p1
.end method
