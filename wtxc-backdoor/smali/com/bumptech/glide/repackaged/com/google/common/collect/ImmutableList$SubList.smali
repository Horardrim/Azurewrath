.class Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient length:I

.field final transient offset:I

.field final synthetic this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;II)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;-><init>()V

    .line 391
    iput p2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->offset:I

    .line 392
    iput p3, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->length:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 402
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Lcom/bumptech/glide/repackaged/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;->iterator()Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;->listIterator()Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;->listIterator(I)Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->length:I

    return v0
.end method

.method public subList(II)Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 408
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/repackaged/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;->subList(II)Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList$SubList;->subList(II)Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
