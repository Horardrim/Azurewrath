.class Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassAndMethodFilter"
.end annotation


# instance fields
.field private methodFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 394
    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V
    .locals 0

    .line 394
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public addMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;-><init>(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->addInclusionMethod(Ljava/lang/String;)V

    return-void
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    const-string v0, "Class and method filter"

    return-object v0
.end method

.method public evaluateTest(Lorg/junit/runner/Description;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 403
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public removeMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;-><init>(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->addExclusionMethod(Ljava/lang/String;)V

    return-void
.end method
