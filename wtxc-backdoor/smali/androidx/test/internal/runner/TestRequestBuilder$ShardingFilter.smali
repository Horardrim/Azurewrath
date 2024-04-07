.class Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;
.super Lorg/junit/runner/manipulation/Filter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShardingFilter"
.end annotation


# instance fields
.field private final numShards:I

.field private final shardIndex:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numShards",
            "shardIndex"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 331
    iput p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->numShards:I

    .line 332
    iput p2, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->shardIndex:I

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 350
    iget v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->shardIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->numShards:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Shard %s of %s shards"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p1}, Lorg/junit/runner/Description;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->numShards:I

    rem-int/2addr p1, v0

    iget v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->shardIndex:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
