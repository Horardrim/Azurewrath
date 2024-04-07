.class final enum Landroidx/test/espresso/util/TreeIterables$TraversalStrategy$2;
.super Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
.source "TreeIterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;-><init>(Ljava/lang/String;ILandroidx/test/espresso/util/TreeIterables$1;)V

    return-void
.end method


# virtual methods
.method combineNewChildren(Ljava/util/LinkedList;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method
