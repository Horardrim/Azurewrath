.class Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables$5;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->transform(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromIterable:Ljava/lang/Iterable;

.field final synthetic val$function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables$5;->val$function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables$5;->val$function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->transform(Ljava/util/Iterator;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
