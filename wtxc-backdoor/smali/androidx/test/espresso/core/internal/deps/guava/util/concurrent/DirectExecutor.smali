.class final enum Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

.field public static final enum INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    .line 1
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    .line 2
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->$values()[Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
