.class public Landroidx/test/internal/runner/junit4/statement/RunAfters;
.super Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;
.source "RunAfters.java"


# instance fields
.field private final afters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final next:Lorg/junit/runners/model/Statement;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "next",
            "afters",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;-><init>(Lorg/junit/runners/model/Statement;Z)V

    .line 51
    iput-object p2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->next:Lorg/junit/runners/model/Statement;

    .line 52
    iput-object p3, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    .line 53
    iput-object p4, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/junit4/statement/RunAfters;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public evaluate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    .line 61
    :try_start_0
    iget-object v2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v2}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    iget-object v2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkMethod;

    .line 66
    invoke-static {v3}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    new-instance v4, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;

    invoke-direct {v4, p0, v3, v0}, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunAfters;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;)V

    invoke-static {v4}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 80
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 63
    :try_start_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 65
    iget-object v2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkMethod;

    .line 66
    invoke-static {v3}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    new-instance v4, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;

    invoke-direct {v4, p0, v3, v0}, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunAfters;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;)V

    invoke-static {v4}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 80
    :cond_1
    :try_start_3
    iget-object v4, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    return-void

    :catchall_3
    move-exception v2

    .line 65
    iget-object v3, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runners/model/FrameworkMethod;

    .line 66
    invoke-static {v4}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    new-instance v5, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;

    invoke-direct {v5, p0, v4, v0}, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunAfters;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;)V

    invoke-static {v5}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 80
    :cond_3
    :try_start_4
    iget-object v5, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v4

    .line 82
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_4
    throw v2
.end method
