.class Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->createAsList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->access$000(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkElementIndex(II)I

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->access$100(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->access$200(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)I

    move-result v1

    add-int/2addr p1, p1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 4
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->access$100(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->access$200(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v1, p1

    .line 5
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->access$000(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)I

    move-result v0

    return v0
.end method
