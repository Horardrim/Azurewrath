.class public final Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderHead:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 3
    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V

    .line 2
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 1

    .line 4
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 8
    iput-object p2, v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 0

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public omitNullValues()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderHead:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v2, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 6
    iget-object v4, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 8
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v3, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 10
    iget-object v3, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 14
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 18
    :cond_3
    iget-object v2, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
