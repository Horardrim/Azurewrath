.class final Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$8;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/TransformedIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/bumptech/glide/repackaged/com/google/common/base/Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/TransformedIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/bumptech/glide/repackaged/com/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/bumptech/glide/repackaged/com/google/common/base/Function;)V
    .locals 0

    .line 814
    iput-object p2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$8;->val$function:Lcom/bumptech/glide/repackaged/com/google/common/base/Function;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$8;->val$function:Lcom/bumptech/glide/repackaged/com/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method