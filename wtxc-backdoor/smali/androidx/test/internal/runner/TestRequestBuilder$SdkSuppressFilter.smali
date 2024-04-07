.class Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdkSuppressFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/runner/TestRequestBuilder;


# direct methods
.method private constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder;Landroidx/test/internal/runner/TestRequestBuilder$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;-><init>(Landroidx/test/internal/runner/TestRequestBuilder;)V

    return-void
.end method

.method private getAnnotationForTest(Lorg/junit/runner/Description;)Landroidx/test/filters/SdkSuppress;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 274
    const-class v0, Landroidx/test/filters/SdkSuppress;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/test/filters/SdkSuppress;

    if-eqz v0, :cond_0

    return-object v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 280
    const-class v0, Landroidx/test/filters/SdkSuppress;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Landroidx/test/filters/SdkSuppress;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "skip tests annotated with SdkSuppress if necessary"

    .line 288
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    .line 261
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->getAnnotationForTest(Lorg/junit/runner/Description;)Landroidx/test/filters/SdkSuppress;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 263
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    invoke-static {v1}, Landroidx/test/internal/runner/TestRequestBuilder;->access$200(Landroidx/test/internal/runner/TestRequestBuilder;)I

    move-result v1

    invoke-interface {p1}, Landroidx/test/filters/SdkSuppress;->minSdkVersion()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    .line 264
    invoke-static {v1}, Landroidx/test/internal/runner/TestRequestBuilder;->access$200(Landroidx/test/internal/runner/TestRequestBuilder;)I

    move-result v1

    invoke-interface {p1}, Landroidx/test/filters/SdkSuppress;->maxSdkVersion()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    .line 265
    invoke-static {v1}, Landroidx/test/internal/runner/TestRequestBuilder;->access$300(Landroidx/test/internal/runner/TestRequestBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroidx/test/filters/SdkSuppress;->codeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method
