.class Landroidx/test/internal/runner/junit4/statement/RunBefores$1;
.super Ljava/lang/Object;
.source "RunBefores.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/runner/junit4/statement/RunBefores;->evaluate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/runner/junit4/statement/RunBefores;

.field final synthetic val$before:Lorg/junit/runners/model/FrameworkMethod;

.field final synthetic val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/junit4/statement/RunBefores;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$before",
            "val$exceptionRef"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;->this$0:Landroidx/test/internal/runner/junit4/statement/RunBefores;

    iput-object p2, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;->val$before:Lorg/junit/runners/model/FrameworkMethod;

    iput-object p3, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;->val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;->val$before:Lorg/junit/runners/model/FrameworkMethod;

    iget-object v1, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;->this$0:Landroidx/test/internal/runner/junit4/statement/RunBefores;

    invoke-static {v1}, Landroidx/test/internal/runner/junit4/statement/RunBefores;->access$000(Landroidx/test/internal/runner/junit4/statement/RunBefores;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 65
    iget-object v1, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;->val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
