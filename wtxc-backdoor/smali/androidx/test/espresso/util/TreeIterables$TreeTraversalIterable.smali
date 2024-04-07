.class Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;
.super Ljava/lang/Object;
.source "TreeIterables.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/util/TreeIterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TreeTraversalIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final root:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final traversalStrategy:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

.field private final treeViewer:Landroidx/test/espresso/util/TreeIterables$TreeViewer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/TreeIterables$TreeViewer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;",
            "Landroidx/test/espresso/util/TreeIterables$TreeViewer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->root:Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    iput-object p1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->traversalStrategy:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    .line 4
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    iput-object p1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->treeViewer:Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;Landroidx/test/espresso/util/TreeIterables$TreeViewer;Landroidx/test/espresso/util/TreeIterables$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;-><init>(Ljava/lang/Object;Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;Landroidx/test/espresso/util/TreeIterables$TreeViewer;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;)Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->traversalStrategy:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;)Landroidx/test/espresso/util/TreeIterables$TreeViewer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->treeViewer:Landroidx/test/espresso/util/TreeIterables$TreeViewer;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;->root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;

    invoke-direct {v1, p0, v0}, Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable$1;-><init>(Landroidx/test/espresso/util/TreeIterables$TreeTraversalIterable;Ljava/util/LinkedList;)V

    return-object v1
.end method
