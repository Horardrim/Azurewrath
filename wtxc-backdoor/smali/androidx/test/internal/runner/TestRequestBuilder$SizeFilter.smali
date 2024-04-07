.class Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeFilter"
.end annotation


# instance fields
.field private final testSize:Landroidx/test/internal/runner/TestSize;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/TestSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testSize"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    .line 185
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;->testSize:Landroidx/test/internal/runner/TestSize;

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected evaluateTest(Lorg/junit/runner/Description;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;->testSize:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestSize;->testMethodIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 198
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;->testSize:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestSize;->testClassIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getAnnotations()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 202
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/runner/TestSize;->isAnyTestSize(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method
