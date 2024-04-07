.class abstract enum Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
.super Ljava/lang/Enum;
.source "TreeIterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/util/TreeIterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "TraversalStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

.field public static final enum BREADTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

.field public static final enum DEPTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    .line 1
    sget-object v1, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->BREADTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->DEPTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy$1;

    const-string v1, "BREADTH_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->BREADTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    .line 2
    new-instance v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy$2;

    const-string v1, "DEPTH_FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->DEPTH_FIRST:Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    .line 3
    invoke-static {}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->$values()[Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->$VALUES:[Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

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

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/util/TreeIterables$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
    .locals 1

    const-class v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->$VALUES:[Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    invoke-virtual {v0}, [Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/util/TreeIterables$TraversalStrategy;

    return-object v0
.end method


# virtual methods
.method abstract combineNewChildren(Ljava/util/LinkedList;Ljava/util/Collection;)V
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
.end method

.method next(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
