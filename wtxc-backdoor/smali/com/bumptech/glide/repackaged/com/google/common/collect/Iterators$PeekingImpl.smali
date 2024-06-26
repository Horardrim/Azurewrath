.class Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Lcom/bumptech/glide/repackaged/com/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/PeekingIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hasPeeked:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private peekedElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    invoke-static {p1}, Lcom/bumptech/glide/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1171
    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1176
    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1180
    iput-boolean v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    const/4 v1, 0x0

    .line 1181
    iput-object v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1193
    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1195
    iput-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1187
    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/bumptech/glide/repackaged/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1188
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
