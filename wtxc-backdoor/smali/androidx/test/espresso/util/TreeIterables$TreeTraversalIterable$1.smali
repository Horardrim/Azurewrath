.class Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;
.source "TreeIterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

.field final synthetic val$nodes:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->this$0:Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

    iput-object p2, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->val$nodes:Ljava/util/LinkedList;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->val$nodes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->this$0:Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

    invoke-static {v0}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->access$200(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;)Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->val$nodes:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->next(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Null items not allowed!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->this$0:Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

    invoke-static {v1}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->access$200(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;)Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->val$nodes:Ljava/util/LinkedList;

    iget-object v3, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;->this$0:Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;

    invoke-static {v3}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->access$300(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;)Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    move-result-object v3

    invoke-interface {v3, v0}, Landroidx/test/espresso/util/TreeIterables$TreeViewer;->children(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->combineNewChildren(Ljava/util/LinkedList;Ljava/util/Collection;)V

    return-object v0
.end method
