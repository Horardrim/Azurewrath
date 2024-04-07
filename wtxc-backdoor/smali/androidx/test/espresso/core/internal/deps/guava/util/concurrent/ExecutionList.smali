.class public final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executed:Z

.field private runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 4
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "androidx.test.espresso.core.internal.deps.guava.util.concurrent.ExecutionList"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "Runnable was null."

    .line 1
    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executed:Z

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v0, p1, p2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executed:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executed:Z

    .line 5
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    iget-object v2, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 11
    iput-object v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 14
    iget-object v0, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    iget-object v2, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
