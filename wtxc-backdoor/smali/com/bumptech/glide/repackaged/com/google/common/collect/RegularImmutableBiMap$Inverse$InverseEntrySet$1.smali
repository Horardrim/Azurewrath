.class Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->createAsList()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    iget-object v0, v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->access$400(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object p1, v0, p1

    .line 237
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
